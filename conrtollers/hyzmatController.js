const pool=require('../db/db');
const queries=require('../sqlqueries/hyzmatlarQueries');
const sender=require('../utils/sendRespond');

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
    await pool.query(queries.SERVICESHOPS({}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
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