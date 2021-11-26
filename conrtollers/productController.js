const pool = require('../db/db');
const queries = require('../sqlqueries/productsQuery');
const sender = require('../utils/sendRespond');
const {PRODUCTSIZE} = require("../sqlqueries/productsQuery");
var productDetailsMini=async (req,res)=>{
    var p_id=req.params.id;
    if(p_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.DETAILMINI({id:p_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return  sender.sendSuccess(res,rows);
    });
}
var productDetailsFull=async (req,res)=>{
    var p_id=req.params.id;
    if(p_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.DETAILSFULL({id:p_id}), async (err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        if(rows.length===0){
            return sender.sendNoProductDetails(res,req.lang);
        }
        await pool.query(queries.PRODUCTSIZE({id:p_id}),(err1,rows1)=>{
            if(err1){
                console.log(err1);
                return sender.sendRespondInternalSErr(res,req.lang);
            }
            return  sender.sendSuccess(res,{
                detail:rows[0],
                sizes:rows1
            });
        })

    });
}

module.exports = {
    productDetailsFull,
    productDetailsMini
}