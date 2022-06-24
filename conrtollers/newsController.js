const sender = require('../utils/sendRespond')
const queries = require('../sqlqueries/newsQueries')
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
const pool = require("../db/db");
const promiseFunctions = require("../utils/promisiFunctions");
const shopQueries = require("../sqlqueries/shopQueries");
module.exports = {
    async getAllNews(req, res) {
        let {page, shop_id, service_shop_id, limit} = req.url_queries;
        limit = limit || 20;
        let offset = page ? (page - 1) * limit : 0;
        return queryExequterWithThenBlock(queries.GET_ALL_NEWS({offset, shop_id, service_shop_id, limit}))
            .then(async rows => {
                for (let i = 0; i < rows.length; i++) {
                    let news_photos = await queryExequterWithThenBlock(queries.GET_NEWS_IMAGES, [rows[i].id])
                    rows[i]["photos"] = news_photos.map(x => x.photo)
                    if (rows[i].shop_id) {
                        let shopDetail = await queryExequterWithThenBlock(queries.GET_SHOP_DETAIL, [rows[i].shop_id, rows[i].shop_id]);
                        rows[i]['shopDetail'] = shopDetail[0]
                    } else {
                        let shopDetail = await queryExequterWithThenBlock(queries.GET_SERVICE_DETAIL, [rows[i].service_shop_id, rows[i].service_shop_id]);
                        rows[i]['shopDetail'] = shopDetail[0]
                        rows[i]['shopDetail']['Restoran'] = 0;
                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getNewsById(req, res) {
        let {id} = req.params;
        if (!id) {
            return sender.sendRespondInvalidParams(res, req.lang)
        }
        return await queryExequterWithThenBlock(queries.GET_NEWS_DETAIL, [id])
            .then(rows => {
                if (rows.length) {
                    return rows[0]
                } else {
                    return false
                }
            })
            .then(async data => {
                if (data) {
                    let news_photos = await queryExequterWithThenBlock(queries.GET_NEWS_IMAGES, [data.id])
                    data["photos"] = news_photos.map(x => x.photo)
                    if (data.shop_id) {
                        let shopDetail = await queryExequterWithThenBlock(queries.GET_SHOP_DETAIL, [data.shop_id, data.shop_id]);
                        data['shopDetail'] = shopDetail
                    } else {
                        let shopDetail = await queryExequterWithThenBlock(queries.GET_SERVICE_DETAIL, [data.service_shop_id, data.service_shop_id]);
                        data['shopDetail'] = shopDetail
                        data['shopDetail']['Restoran'] = 0;
                    }
                    return sender.sendSuccess(res, data)
                } else {
                    return sender.sendRespondInvalidParams(res, req.lang)
                }
            })
            .catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })

    },
    async getMyFollowShops(req, res) {
        let user_id = req.user.user_id;
        if (!user_id) {
            return sender.sendNotRegistered(res)
        }
        return await queryExequterWithThenBlock(queries.GET_USER_FOLLOWS, [user_id])
            .then(async rows => {

                for (let i = 0; i < rows.length; i++) {
                    if (rows[i].shop_id) {
                        let detail = await queryExequterWithThenBlock(queries.GET_SHOP_FOR_FOLLOW, [rows[i].shop_id])
                        detail = detail.length ? detail[0] : null
                        rows[i]['detail'] = detail
                    } else {
                        let detail = await queryExequterWithThenBlock(queries.GET_SERVICE_FOR_FOLLOW, [rows[i].service_id])
                        detail = detail.length ? detail[0] : null
                        rows[i]['detail'] = detail
                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err);
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getShopLentas(req, res) {
        let user_id = req.user.user_id;
        if (!user_id) {
            return sender.sendNotRegistered(res)
        }
        let page = req.url_queries.page || 1;
        let limit = req.url_queries.limit || 20;
        let offset = (page - 1) * limit;
        return await queryExequterWithThenBlock(queries.SHOP_LENTA({offset, limit}), [user_id])
            .then(async (rows) => {
                for (let i = 0; i < rows.length; i++) {
                    if (rows[i].product_id) {
                        let productPrice = await queryExequterWithThenBlock(`select price from product where id=?`, [rows[i].product_id])
                        productPrice = productPrice.length ? productPrice[0].price : null
                        rows[i]['productPrice'] = productPrice
                    }
                }
                return sender.sendSuccess(res, rows);
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllVideos(req, res) {
        let {user_id} = req.user
        return await queryExequterWithThenBlock(queries.GET_ALL_VIDEOS)
            .then(async rows => {
                for (let i = 0; i < rows.length; i++) {
                    if (rows[i].type === 'SHOP') {
                        let shop = await queryExequterWithThenBlock(queries.GET_SHOP_DETAIL_FOR_VIDEO, [rows[i].shop_id])
                        rows[i]['shopDetail'] = shop.length ? shop[0] : null
                    } else {
                        let shop = await queryExequterWithThenBlock(queries.GET_SERVICE_DETAIL_FOR_VIDEO, [rows[i].shop_id])
                        rows[i]['shopDetail'] = shop.length ? shop[0] : null
                    }
                    if (user_id) {
                        let tempQuery = shopQueries.CHECKFOLLOW({
                            user_id: user_id,
                            shop_id: rows[i].shop_id
                        });
                        if (rows[i].type === 'SERVICE') {
                            tempQuery = shopQueries.CHECK_SERVICE_FOLLOW({
                                user_id: user_id,
                                shop_id: rows[i].shop_id
                            })
                        }
                        let chekFollow = await queryExequterWithThenBlock(tempQuery);
                        rows[i]['shopDetail']['isFollowing'] = chekFollow[0].total
                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllSaylanan(req, res) {
        let {page, limit} = req.url_queries;
        page = page || 1;
        limit = limit || 20;
        let offset = (page - 1) * limit;
        return await queryExequterWithThenBlock(queries.GET_SAYLANAN_LIST, [offset, limit])
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getSaylananProductsList(req, res) {
        let {limit, page} = req.url_queries;
        let {id} = req.params;
        limit = limit || 20;
        page = page || 1;
        let offset = (page - 1) * limit;
        return await queryExequterWithThenBlock(queries.GET_SAYLANAN_ITEMS_PRODUCT, [id, offset, limit])
            .then(async rows => {
                if (req.body.include) {
                    let tables = req.body.include.split(',');
                    for (let i = 0; i < rows.length; i++) {
                        for (let j = 0; j < tables.length; j++) {
                            let table = tables[j];
                            await promiseFunctions.queryExequterWithThenBlock(queries.SELECTSFROMTABLES({
                                tableName: table,
                                id: rows[i].id
                            }))
                                .then(result => {
                                    rows[i][table] = result;
                                })
                                .catch(err => {
                                    console.log(err);
                                    rows[i][table] = null;
                                })
                        }
                    }

                }
                if (req.user.user_id) {
                    for (let i = 0; i < rows.length; i++) {
                        if (rows[i].bonus) {
                            let bonus = await promiseFunctions.queryExequterWithThenBlock(queries.GET_BONUS_FOR_PRODUCT, [rows[i].shop_id, req.user.user_id]);
                            rows[i]['bonus_prosent'] = bonus.length ? bonus[0].bonus_prosent : null;
                        }
                        if (rows[i].arzanladys) {
                            let arzanladys = await promiseFunctions.queryExequterWithThenBlock(queries.GET_ARZANLADYSH_FOR_PRODUCT, [rows[i].shop_id, req.user.user_id]);
                            rows[i]['arzanladysh_prosent'] = arzanladys.length ? arzanladys[0].prosent : null;
                        }

                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllToplananlar(req, res) {
        let {page, limit} = req.url_queries;
        page = page || 1;
        limit = limit || 20;
        let offset = (page - 1) * limit;
        let {user_id} = req.user
        return await queryExequterWithThenBlock(queries.GET_LIST_OF_TOPLANAN, [offset, limit])
            .then(async rows => {
                for (let i = 0; i < rows.length; i++) {
                    let shop = await queryExequterWithThenBlock(queries.GET_SHOP_DETAIL_FOR_VIDEO, [rows[i].shop_id])
                    rows[i]['shopDetail'] = shop.length ? shop[0] : null
                    if (user_id) {
                        let tempQuery = shopQueries.CHECKFOLLOW({
                            user_id: user_id,
                            shop_id: rows[i].shop_id
                        });
                        let chekFollow = await queryExequterWithThenBlock(tempQuery);
                        rows[i]['shopDetail']['isFollowing'] = chekFollow[0].total
                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getToplananProductsList(req, res) {
        let {limit, page} = req.url_queries;
        let {id} = req.params;
        limit = limit || 20;
        page = page || 1;
        let offset = (page - 1) * limit;
        return await queryExequterWithThenBlock(queries.GET_TOPLANAN_ITEMS_PRODUCT, [id, offset, limit])
            .then(async rows => {
                if (req.body.include) {
                    let tables = req.body.include.split(',');
                    for (let i = 0; i < rows.length; i++) {
                        for (let j = 0; j < tables.length; j++) {
                            let table = tables[j];
                            await promiseFunctions.queryExequterWithThenBlock(queries.SELECTSFROMTABLES({
                                tableName: table,
                                id: rows[i].id
                            }))
                                .then(result => {
                                    rows[i][table] = result;
                                })
                                .catch(err => {
                                    console.log(err);
                                    rows[i][table] = null;
                                })
                        }
                    }

                }
                if (req.user.user_id) {
                    for (let i = 0; i < rows.length; i++) {
                        if (rows[i].bonus) {
                            let bonus = await promiseFunctions.queryExequterWithThenBlock(queries.GET_BONUS_FOR_PRODUCT, [rows[i].shop_id, req.user.user_id]);
                            rows[i]['bonus_prosent'] = bonus.length ? bonus[0].bonus_prosent : null;
                        }
                        if (rows[i].arzanladys) {
                            let arzanladys = await promiseFunctions.queryExequterWithThenBlock(queries.GET_ARZANLADYSH_FOR_PRODUCT, [rows[i].shop_id, req.user.user_id]);
                            rows[i]['arzanladysh_prosent'] = arzanladys.length ? arzanladys[0].prosent : null;
                        }

                    }
                }
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
}