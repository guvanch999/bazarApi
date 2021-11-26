const pool = require('../db/db');
const queries = require('../sqlqueries/homeQueries');
const sender = require('../utils/sendRespond');
const functionsforUSE=require('../db/bigRequersts');
const {use} = require("express/lib/router");
var getAllBanners = async (req, res) => {
    await pool.query(queries.GETALLBANNERS, (err, result) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, result);
    })
};
var getAdsAdmin = async (req, res) => {
    await pool.query(queries.ADSADMIN, (err, rows) => {
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
var getAdsFromShops=async (req,res)=>{
    await pool.query(queries.ADSFROMSHOP,(err,rows)=>{
        if(err){
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
var getBannerL2=async  (req,res)=>{
    var b_id=req.params.id;
    if(b_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.BANNERL2({id:b_id}), async (err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        if(rows.length>0) {
            return sender.sendSuccess(res, rows);
        } else {
            await pool.query(queries.BANNERL2({id:0})).then((response)=>{
                return sender.sendSuccess(res,response);
            }).catch(err=>{
               console.log(err);
               return sender.sendRespondInternalSErr(res,req.lang);
            });
        }
    })
}
var getCatalogsByBolumId=async (req,res)=>{
    var b_id=req.params.b_id;
    if(b_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.CATALOG({id:b_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getVipShopsc6=async (req,res)=>{
    var b_id=req.params.b_id;
    if(b_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.SHOPSL2,(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}

var getProductsCard=async (req,res)=>{
    //if(req.url_queries.count)
    if(!req.url_queries.page){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    var params=Object.assign({},req.body);
    Object.assign(params,{
        page:req.url_queries.page,
        count:req.url_queries.count
    });
    await  pool.query(queries.PRODUCTSCARD(params),(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
var getCategoriesByBid=async (req,res)=>{
    var k_id=req.params.k_id;
    if(k_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await  pool.query(queries.CATEGORIES({id:k_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
var getSubCategories=async (req,res)=>{
    var c_id=req.params.k_id;
    if(c_id===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await  pool.query(queries.SUBCATEGORIES({id:c_id}),(err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    });
}
var getAllShopsOfBolum=async (req,res)=>{
    var _bid=req.params.b_id;
    if(_bid===undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.ALLSHOPS({id:_bid}),(err,rows)=>{
       if(err){
           console.log(err);
           return sender.sendRespondInternalSErr(res,req.lang);
       }
       return  sender.sendSuccess(res,rows);
    });
}
var secondpageDetails=async (req,res)=>{
    let result= await  functionsforUSE.getadsSHopsForSecondPage();
    if(result){
        return  sender.sendSuccess(res,result);
    } else {
        return  sender.sendRespondInternalSErr(res,req.lang);
    }
}
var theeShopsForHomePage=async (req,res)=>{
    await pool.query(queries.GETMAINSHOPS({})).then((resultData)=>{
        return sender.sendSuccess(res,resultData);
    }).catch(err=>{
        console.log(err);
        return  sender.sendRespondInternalSErr(res,req.lang);
    })
}
var followFunction=async (req,res)=>{
    let user_id=req.body.user_id||null;
    let shop_id= req.body.shop_id||0;
    let service_id=req.body.service_id||0;
    if(user_id==null){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    if(shop_id===0 && service_id===0){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.FOLLOW({user_id:user_id,shop_id:shop_id,service_id:service_id})).
        then((result)=>{
        return sender.sendSuccess(res,result);
    }).catch(err=>{
        console.log(err);
        return  sender.sendRespondInternalSErr(res,req.lang);
    })
}


module.exports = {
    getAllBanners,
    getAdsAdmin,
    getAdsFromShops,
    getBannerL2,
    getCatalogsByBolumId,
    getVipShopsc6,
    getProductsCard,
    getCategoriesByBid,
    getSubCategories,
    getAllShopsOfBolum,


    secondpageDetails,
    theeShopsForHomePage,
    followFunction
}