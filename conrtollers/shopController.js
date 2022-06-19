const pool = require('../db/db');
const queries = require('../sqlqueries/shopQueries');
const sender = require('../utils/sendRespond');
const functionsUSE = require('../db/bigRequersts');
const promiseFunctions = require('../utils/promisiFunctions');
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
const {calculateRating} = require("../utils/useFullFunctions");

var getShopMiniById = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SHOPDETAILSMINI({id: shop_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getShopFullById = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    let data = await getFullShopDetail(shop_id)
    if (!data) {
        return sender.sendRespondInternalSErr(res, req.lang)
    }
    return sender.sendSuccess(res, data)
}
var getShopAds = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SHOPADSBYID({id: shop_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getShopLenta = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    let page = req.url_queries.page || 1;
    let limit = req.url_queries.limit || 20;
    let offset = (page - 1) * limit;
    await pool.query(queries.SHOP_LENTA({shop_id, offset, limit}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getShopBanners = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SHOPBANNERS({id: shop_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getShopCatalogs = async (req, res) => {
    var shop_id = req.params.id;
    if (shop_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SHOPKATALOGS({id: shop_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}


var getShopsWithCckg = async (req, res) => {
    let catalog_id = req.params.catalog_id || 0;
    let bolum_id=req.url_queries.bolum_id||0;
    let page = req.url_queries.page || 1;
    let resultRows = await functionsUSE.getShopsWithChecking(catalog_id, req.user.user_id, page,bolum_id,restoran);
    if (resultRows) {
        return sender.sendSuccess(res, resultRows);
    } else {
        return sender.sendRespondInternalSErr(res, req.lang);
    }
}
let getBolumShops = async (req, res) => {
    let _bolum_id = req.params.bolum_id;
    if (!_bolum_id) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await promiseFunctions.queryExequterWithThenBlock(queries.BOLUM_SHOPS({bolum_id: _bolum_id})).then(rows => {
        return sender.sendSuccess(res, rows);
    }).catch(err => {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    })

}

var getShopsWithFilterAndSort = async (req, res) => {
    let page = req.url_queries.page || 1;
    let limit=req.url_queries.page || 20
    let resultRows = await functionsUSE.getShopsWithChecking(req.user.user_id, page,limit,req.body);
    if (resultRows) {
        return sender.sendSuccess(res, resultRows);
    } else {
        return sender.sendRespondInternalSErr(res, req.lang);
    }
}
async function getFullShopDetail(shop_id) {
    return await queryExequterWithThenBlock(queries.SHOPDETAILSFULL({id: shop_id}))
        .then(rows => {
            if (rows.length) {
                return rows[0]
            } else {
                return false
            }
        }).then(async data => {
            if (!data) {
                return false
            } else {
                let listBanners = await queryExequterWithThenBlock(queries.SHOPBANNERS, [shop_id])
                let listVideos = await queryExequterWithThenBlock(queries.SHOP_VIDEOS, [shop_id])
                let follow = await queryExequterWithThenBlock(queries.FOLLOW_COUNT, [shop_id]);
                let product = await queryExequterWithThenBlock(queries.COUNTOFPRODUCTS({shop_id}))
                let katalogs = await queryExequterWithThenBlock(queries.GET_SHOP_KATALOGS + shop_id);
                let ratings = await queryExequterWithThenBlock(queries.GET_SHOP_RATING, [shop_id])
                let address=await queryExequterWithThenBlock(queries.GET_ADDRESS_BY_ID,[shop_id])
                let rating = calculateRating(ratings)
                rating['totalRatingCount'] = ratings.length;
                data['rating'] = rating;
                let fullAddress=address.length?address[0].address:''
                return Object.assign(data, {
                    followCount: follow[0].total,
                    productCount: product[0].total,
                    listBanners,
                    listVideos,
                    katalogs,
                    fullAddress
                })
            }
        }).catch(err => {
            console.log(err)
            return false
        })

}

async function getShopCategories(shop_id, katalog_id) {
    return await queryExequterWithThenBlock(queries.GET_SHOP_CATEGORIES,[shop_id,katalog_id])
        .then(async rows=>{
            let ids=rows.map(x=>x.id);
            let subcategories=await queryExequterWithThenBlock(queries.GET_SHOP_SUBCATEGORIES,[shop_id,ids.join(',')])
            let result=rows.map(data=>{
                let ss=subcategories.filter(x=>x.category_id===data.id);
                data['suncategories']=ss;
                return data;
            })
            return result
        }).catch(err=>{
            console.log(err)
            return false
        })
}

module.exports = {
    getShopMiniById,
    getShopFullById,
    getShopAds,
    getShopBanners,
    getShopCatalogs,
    getShopsWithCckg,
    getBolumShops,
    getShopLenta,
    getShopsWithFilterAndSort,
    async getShopCategories(req, res) {
        let {shop_id, katalog_id} = req.url_queries;
        if (!shop_id || !katalog_id) {
            return sender.sendRespondInvalidParams(res, req.lang)
        }
        let list=await getShopCategories(shop_id,katalog_id);
        if(!list){
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return  sender.sendSuccess(res,list)

    }
}
