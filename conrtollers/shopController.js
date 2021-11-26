const pool=require('../db/db');
const queries=require('../sqlqueries/shopQueries');
const sender=require('../utils/sendRespond');
const functionsUSE=require('../db/bigRequersts');

var getShopMiniById=async (req,res)=>{
      var shop_id=req.params.id;
      if(shop_id===undefined){
          return sender.sendRespondInvalidParams(res,req.lang);
      }
      await pool.query(queries.SHOPDETAILSMINI({id:shop_id}),(err,rows)=>{
          if(err){
              console.log(err);
              return sender.sendRespondInternalSErr(res,req.lang);
          }
          return sender.sendSuccess(res,rows);
      })
}
var getShopFullById=async (req,res)=>{
    var shop_id=req.params.id;
    if(shop_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SHOPDETAILSFULL({id:shop_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getShopAds=async (req,res)=>{
    var shop_id=req.params.id;
    if(shop_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SHOPADSBYID({id:shop_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getShopBanners=async (req,res)=>{
    var shop_id=req.params.id;
    if(shop_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SHOPBANNERS({id:shop_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getShopCatalogs=async (req,res)=>{
    var shop_id=req.params.id;
    if(shop_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SHOPKATALOGS({id:shop_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}



var getShopsWithCckg=async (req,res)=>{
    let catalog_id=req.params.catalog_id||null;
    if(catalog_id==null){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    let resultRows=functionsUSE.getShopsWithChecking(catalog_id,0);
    if(resultRows){
        return sender.sendSuccess(res,resultRows);
    } else {
        return sender.sendRespondInternalSErr(res,req.lang);
    }
}


module.exports = {
    getShopMiniById,
    getShopFullById,
    getShopAds,
    getShopBanners,
    getShopCatalogs,
    getShopsWithCckg
}