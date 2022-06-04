const pool = require('../db/db');
const e = require('../utils/lang')
const queries = require('../sqlqueries/singinqueries');
const webtoken = require('jsonwebtoken');
const settings = require('../settings/usersettings');
const admin = require('../utils/firebase-config');
const {validationResult} = require("express-validator");
const sender = require('../utils/sendRespond')
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
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
    var registrationToken = ""
    try {
        let hasToken = await queryExequterWithThenBlock("select fcm_token from sms_apps order by id desc limit 1")
            .then(rows => {
                if (rows.length) {
                    registrationToken = rows[0].fcm_token
                    return true
                } else {
                    return false
                }
            }).catch(err => {
                console.log(err)
                return false
            })
        if (!hasToken) {
            console.log("No sms app registred!");
            return res.status(500).json({
                success: false,
                message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
            })
        }
    } catch (err) {
        console.log(err);
        return res.status(500).json({
            success: false,
            message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
        })
    }
    for (var i = 0; i < 5; i++) {
        sn += Math.floor(GETRANDOM());
    }
    const payload = {
        notification: {
            title: _number,
            body: "Nomer tassyklamak ucin kodunyz: " + sn,
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
    await pool.query(queries.DELETEUPTIMEVERIF + Date.now(), async (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).json({
                success: false,
                msg: e.MsgTmFlags.INTERNAL_SERVER_ERROR
            });
        }
        await pool.query(queries.CHECKANDVERIFIE + _number, async (err, rows) => {
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
        await pool.query(queries.DELETENUMBER + _number);
        return await queryExequterWithThenBlock(queries.GET_USER_FOR_LOGIN, _number)
            .then(async rows => {
                if (rows.length) {
                    await pool.query(queries.UPDATEUSER, [{
                        name: _name,
                        adress_welayat_id,
                        jynsy,
                        register_kod: _fcmtocken
                    }, rows[0].id])
                    return rows[0].id
                } else {
                    let result = await queryExequterWithThenBlock(queries.CREATEUSER, {
                        name: _name,
                        tel: _number,
                        adress_welayat_id,
                        jynsy,
                        register_kod: _fcmtocken
                    });
                    console.log(result)
                    return result.insertId
                }
            }).then(user_id => {
                var token = webtoken.sign({
                        user_id,
                        number: _number
                    }, settings.APISECRETKEY,
                    {
                        expiresIn: '1000000h'
                    });
                return res.status(200).json({
                    success: true,
                    token: token
                });
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang);
            })
    } catch (err) {
        console.log(err);
        return res.status(500).json({
            success: false,
            message: e.MsgTmFlags.INTERNAL_SERVER_ERROR
        });
    }
}
let checkNumberFunction = async (req, res) => {
    let {tel} = req.body;
    if (!tel) {
        return sender.sendRespondInvalidParams(res, req.lang)
    }
    return await queryExequterWithThenBlock(queries.GET_USER_FOR_LOGIN, tel)
        .then(async rows => {
            if (rows && rows.length) {
                return res.status(200).json({
                    success: true,
                    isRegistred:true
                });
            } else {
                return res.status(200).json({
                    success: true,
                    isRegistred:false
                });
            }
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang);
        })
}


let loginFunction = async (req, res) => {
    let {tel, code} = req.body;
    if (!tel || !code) {
        return sender.sendRespondInvalidParams(res, req.lang)
    }
    return await queryExequterWithThenBlock(queries.DELETEUPTIMEVERIF + Date.now())
        .then(async () => {
            return await queryExequterWithThenBlock(queries.CHECKANDVERIFIE + tel)
        }).then(async rows => {
            if (rows.length === 0) {
                return false
            }
            for (let i = 0; i < rows.length; i++) {
                if (rows[i].code === code) {
                    return true
                }
            }
            return false
        }).then(async isVerified => {
            if (!isVerified) {
                return false;
            } else {
                return await queryExequterWithThenBlock(queries.GET_USER_FOR_LOGIN, tel)
            }
        }).then(async rows => {
            if (rows && rows.length) {
                console.log(rows);
                await pool.query(queries.DELETENUMBER + tel);
                var token = webtoken.sign({
                        user_id: rows[0].id,
                        number: tel
                    }, settings.APISECRETKEY,
                    {
                        expiresIn: '1000000h'
                    });
                return res.status(200).json({
                    success: true,
                    token: token
                });
            } else {
                return res.status(400).json({
                    success: false,
                    token: e.MsgTmFlags.INVALID_PARAMS
                });
            }
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang);
        })
}

let updateUserDatas = async (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return sender.sendRespondInvalidParams(res, req.lang, errors)
    }
    let userData = req.body;
    let userId = req.params.id;
    await pool.query(queries.UPDATEUSER, [userData, userId], (err) => {
        if (err) {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        }
        return sender.sendSuccess(res, {updated: true})
    })
}
let getAllUsers = async (req, res) => {
    await pool.query(queries.gte_all_users, (err, rows) => {
        if (err) {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        }
        return sender.sendSuccess(res, rows)
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
    getAllUsers,
    loginFunction,
    checkNumberFunction,
    async getUserCounts(req,res){
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        return  await queryExequterWithThenBlock(queries.GET_ALL_USER_COUNTS,[user_id,user_id,user_id,user_id,user_id])
            .then(async rows=>{
                let addressList=await queryExequterWithThenBlock(queries.GET_USER_ADDRESSES,[user_id])
                rows[0]['addressList']=addressList
                return sender.sendSuccess(res,rows[0])
            }).catch(err=>{
                console.log(err)
                return sender.sendRespondInternalSErr(res,req.lang)
            })
    }
}
