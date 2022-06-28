const pool = require('../db/db');
const queries = require('../sqlqueries/abunalar');
const sender = require('../utils/sendRespond');
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
const language = require("../utils/lang");


var getAllFollows = async (req, res) => {
    let _id = 0;
    try {
        let followShops = await pool.query(queries.GETALLFOLLOWSHOPS, [_id]);
        let followServices = await pool.query(queries.GETALLFOLLOWSERVICES, [_id]);
        return sender.sendSuccess(res, {
            followShops,
            followServices
        })
    } catch (err) {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    }
}
var getLentaList = async (req, res) => {
    let user_id = 0;
    try {
        let shops = await pool.query(queries.GETALLFOLLOWSHOPS, [user_id]);
        let services = await pool.query(queries.GETALLFOLLOWSERVICES, [user_id]);
        return sender.sendSuccess(res, {
            shops,
            services
        });
    } catch (err) {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    }
}
var unfollowUser = async (req, res) => {
    let user_id = 0;
    let shop_id = 0;
    await pool.query(queries.GETFOLLOWFORCHECK, [user_id, shop_id]).then(
        async (result) => {
            if (result.length > 0) {
                let follow_id = result[0].id;
                return await pool.query(queries.UNFOLLOW, [follow_id]);
            } else {
                return []
            }
        }
    ).then((arr) => {
            if (arr.length > 0) {
                return sender.sendSuccess(res, arr);
            } else {
                return sender.sendRespondInvalidParams(res, req.lang);
            }

        }
    ).catch(err => {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    })
}
let typesOfRating = {
    'SERVICE_SHOP': {
        tableName: "rating_service_shops",
        idColumn: "sevice_shop_id"
    },
    'SERVICE_PRODUCT': {
        tableName: "rating_service_product",
        idColumn: "product_id",
        updateQuery: 'update service_product set rate=(select sum(rating_count) from rating_service_product where product_id=?)/(select count(*) from rating_service_product where product_id=?) where id=?'
    },
    'SHOP': {
        tableName: "rating_shops",
        idColumn: "shop_id"
    },
    'PRODUCT': {
        tableName: "rating_products",
        idColumn: "product_id",
        updateQuery: 'update product set rating=(select sum(rating_count) from rating_products where product_id=?)/(select count(*) from rating_products where product_id=?) where id=?'
    }
}

module.exports = {
    getAllFollows,
    getLentaList,
    unfollowUser,
    async followShops(req, res) {
        let {shop_id, service_id} = req.body;
        if (!shop_id && !service_id) {
            return sender.sendRespondInvalidParams(res, req.lang)
        }
        let shop_type = shop_id ? "SHOP" : "SERVICE";
        shop_id = shop_id || service_id
        let user_id = req.user.user_id;
        if (!user_id) {
            return res.status(401).json({
                success: false,
                message: language.MsgRuFlags.ERROR_TOKEN
            });
        }
        return await queryExequterWithThenBlock(queries.GET_FOR_CHECK(shop_type, shop_id, user_id))
            .then(async rows => {
                if (rows.length) {
                    return await queryExequterWithThenBlock(queries.UNFOLLOW, [rows[0].id])
                } else {
                    return await queryExequterWithThenBlock(queries.FOLLOW(shop_type, shop_id, user_id))
                }
            }).then(() => {
                return sender.sendSuccess(res, {success: true})
            }).catch(err => {
                    console.log(err)
                    return sender.sendRespondInternalSErr(res, req.lang)
                }
            )
    },
    async addRatingFromMe(req, res) {
        let {type, rating_count, id} = req.body;
        if (!type || !typesOfRating[type]) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "Type error"}]);
        }
        if (!rating_count || !id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "Rate error"}]);
        }
        let user_id = req.user.user_id;
        if (!user_id) {
            return res.status(401).json({
                success: false,
                message: language.MsgRuFlags.ERROR_TOKEN
            });
        }
        return await queryExequterWithThenBlock(queries.GET_RATING_FOR_CHECK, [typesOfRating[type].tableName, typesOfRating[type].idColumn, id, user_id])
            .then(async rows => {
                let objNeed = {user_id, rating_count};
                objNeed[typesOfRating[type].idColumn] = id;
                if (rows.length) {
                    return await queryExequterWithThenBlock(queries.UPDATE_RATING, [typesOfRating[type].tableName, objNeed, rows[0].id])
                } else {
                    return await queryExequterWithThenBlock(queries.ADD_RATING, [typesOfRating[type].tableName, objNeed])
                }
            }).then(async () => {
                if (typesOfRating[type].updateQuery) {
                    await queryExequterWithThenBlock(typesOfRating[type].updateQuery,[id,id,id])
                }
                return sender.sendSuccess(res, {success: true})
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    }
}