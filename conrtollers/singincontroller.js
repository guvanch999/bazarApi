const pool = require('../db/db');
const e = require('../utils/lang')
const queries = require('../sqlqueries/singinqueries');
const webtoken = require('jsonwebtoken');
const settings = require('../settings/usersettings');
const admin = require('../utils/firebase-config');
const {validationResult} = require("express-validator");
const sender=require('../utils/sendRespond')
const notification_options = {
    priority: "high",
    timeToLive: 60 * 60 * 24
};
var PostCode = async (req, res) => {
    var _number = req.body.number;
    if (!_number) {
        return res.status(400).json({
            success: false,
            message: e.MsgTmFlags.INVALID_PARAMS
        });
    }
    var sn = "";
    var registrationToken = "ewOm0PjwRxG5Z8va7mzCJy:APA91bEBguXxAXppCB-QI2P_5U_WCFEYygB92EPiBoP2IfQkz0as-xGvduEtW31iSYyq8yhuXie4t-FAt2LNvQsjZIsW4Mhe2Ft5laDBmHlVJwSoqnSLVBT3qAmpeO9oFojHH45dadBe"
    // try {
    //     var result = await pool.query("select fcm_token from sms_apps");
    //     if (result) {
    //         registrationToken = result.rows[0].fcm_tocken;
    //     } else {
    //         console.log("No sms app registred!");
    //         return res.status(500).json({
    //             success: false,
    //             message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
    //         })
    //     }
    // } catch (err) {
    //     console.log(err);
    //     return res.status(500).json({
    //         success: false,
    //         message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
    //     })
    // }
    for (var i = 0; i < 5; i++) {
        sn += Math.floor(GETRANDOM());
    }
    const payload = {
        notification: {
            title: _number,
            body: "Nomer tassyklamak ucin kodunyz: "+sn,
        },
    };
    const options = notification_options;

    await admin.messaging().sendToDevice(registrationToken, payload, options)
        .then(async (response) => {
            if (response.successCount === 1) {

                await pool.query(queries.INSERTNEWNUMBER, {
                    tel: _number,
                    code: sn,
                    timee: Date.now() + 24 * 60 * 60 * 1000
                }, (err, result) => {
                    if (err) {
                        console.log(err);
                        return res.status(400).json({
                            success: false,
                            msg: e.MsgTmFlags.INTERNAL_SERVER_ERROR
                        });
                    }
                    return res.status(200).json({
                        success: true
                    });
                });

            } else {
                console.log("No sms app registred!");
                return res.status(500).json({
                    success: false,
                    message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
                });
            }
        })
        .catch(error => {
            console.log(error);
            return res.status(500).json({
                success: false,
                message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
            });
        });
}

var verificationCode = async (req, res) => {
    var _number = req.body.number;
    var _code = req.body.code;
    if (!_code || !_number) {
        return res.status(400).json({
            success: false,
            message: e.MsgTmFlags.INVALID_PARAMS
        });
    }
    await pool.query(queries.DELETEUPTIMEVERIF+Date.now(), async (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).json({
                success: false,
                msg: e.MsgTmFlags.INTERNAL_SERVER_ERROR
            });
        }
        await pool.query(queries.CHECKANDVERIFIE+_number, async (err, rows) => {
            if (err) {
                console.log(err);
                return res.status(500).json({
                    success: false,
                    msg: e.MsgTmFlags.INTERNAL_SERVER_ERROR
                });
            }
            if (rows.length === 0) {
                return res.status(400).json({
                    success: false,
                    message: e.MsgTmFlags.INVALID_PARAMS
                });
            }
            for (let i = 0; i < rows.length; i++) {
                if (rows[i].code === _code) {
                    return res.status(200).json({
                        success: true
                    });
                }
            }
            return res.status(400).json({
                success: false,
                message: e.MsgTmFlags.INVALID_PARAMS
            });

        });

    });
}
var finishsingup = async (req, res) => {
    var _number = req.body.number;
    var _name = req.body.name;
    var _fcmtocken = req.body.fcmtoken;
    let adress_welayat_id = req.body.adress_welayat_id;
    let jynsy = req.body.jynsy
    if (!_fcmtocken || !_number || !jynsy || !adress_welayat_id || !_name) {
        return res.status(400).json({
            success: false,
            message: e.MsgTmFlags.INVALID_PARAMS
        });
    }
    try {
        await pool.query(queries.DELETENUMBER+_number);

        let result = await pool.query(queries.CREATEUSER, {
            name: _name,
            tel: _number,
            adress_welayat_id,
            jynsy,
            register_kod: _fcmtocken
        });


        var token = webtoken.sign({
                user_id: result.insertId,
                number: _number

            }, settings.APISECRETKEY,
            {
                expiresIn: '1000000h'
            });
        return res.status(200).json({
            success: true,
            token: token
        });

    } catch (err) {
        console.log(err);
        return res.status(500).json({
            success: false,
            message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
        });
    }

}
let updateUserDatas=async (req,res)=>{
    const errors=validationResult(req)
    if(!errors.isEmpty()){
        return sender.sendRespondInvalidParams(res,req.lang,errors)
    }
    let userData=req.body;
    let userId=req.params.id;
    await pool.query(queries.UPDATEUSER,[userData,userId],(err)=>{
        if(err){
            console.log(err)
            return sender.sendRespondInternalSErr(res,req.lang)
        }
        return sender.sendSuccess(res,{updated:true})
    })
}
let getAllUsers=async (req,res)=>{
    await pool.query(queries.gte_all_users,(err,rows)=>{
        if(err){
            console.log(err)
            return sender.sendRespondInternalSErr(res,req.lang)
        }
        return sender.sendSuccess(res,rows)
    })
}


function GETRANDOM() {
    return Math.random() * 9;
}

module.exports = {
    PostCode,
    verificationCode,
    finishsingup,
    updateUserDatas,
    getAllUsers
}
