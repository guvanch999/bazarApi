const pool=require('../db/db');
const queries=require('../sqlqueries/CayalogsQueries');
const sender=require('../utils/sendRespond');

var getShopCatalogs=async (req,res)=>{
    var _bid=req.params.b_id;
    var _sid=req.params.s_id;
    if(_sid==undefined || _bid==undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.KATALOGSOFSHOP({
        shop_id:_sid,
        bolum_id:_bid
    }),
        (err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getAllCatalogs=async (req,res)=>{
    await pool.query(queries.ALLCATALOGS({})).then((rows)=>{
        return sender.sendSuccess(res,rows);
    }).catch(err=>{
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    })
}
var getCategoriesForCatalog=async (req,res)=>{
    let catalog_id=req.params.k_id||null;
    if(catalog_id==null){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.CATEGORIESFORKATALOG({catalog_id:catalog_id})).then((rows)=>{
        return sender.sendSuccess(res,rows);
    }).catch((err)=>{
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    })
}


module.exports = {
    getShopCatalogs,
    getAllCatalogs,
    getCategoriesForCatalog
}