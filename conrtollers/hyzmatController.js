const pool=require('../db/db');
const queries=require('../sqlqueries/hyzmatlarQueries');
const sender=require('../utils/sendRespond');
const {isUndefined} = require("util");


var getServiceKatalogs=async (req,res)=>{
    var id=req.params.id;
    if(id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SERVICEKATALOGS({id:id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}

var getServiceShops=async (req,res)=>{
    let catalog_id=req.params.catalog_id||null;
    let {page}=req.url_queries
    if(isUndefined(page)){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    if(catalog_id==null){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    let resultRows=await queries.getServiceShopsWithChecking(catalog_id,-1,page);
    if(resultRows){
        return sender.sendSuccess(res,resultRows);
    } else {
        return sender.sendRespondInternalSErr(res,req.lang);
    }
}
var getServiceProduct=async (req,res)=>{
    if(!req.url_queries.page){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    var params=Object.assign({},req.body);
    Object.assign(params,{
        page:req.url_queries.page,
        count:req.url_queries.count
    });
    await  pool.query(queries.SERVICEPRODUCTS(params),(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
module.exports = {
    getServiceKatalogs,
    getServiceShops,
    getServiceProduct
}
