const sender = require('../utils/sendRespond')
const queries = require('../sqlqueries/ordersQueries')
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
module.exports = {
    async getProductList(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        let {productIds} = req.body
        if (!Array.isArray(productIds)) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "Product ids list error"}])
        }
        return await queryExequterWithThenBlock(queries.GET_PRODUCT_FOR_ORDER(productIds))
            .then(async rows => {
                for (let i = 0; i < rows.length; i++) {
                    let sizeId = productIds.find(x => x.p_id === rows[i].id);
                    let sizeModel = null
                    if (sizeId.s_id) {
                        sizeModel = await queryExequterWithThenBlock(queries.GET_SIZE_BY_ID, [sizeId.s_id])
                    }
                    rows[i]['sizeModel'] = sizeModel ? sizeModel.length ? sizeModel[0] : null : null;
                }
                return rows
            })
            .then(async rows => {
                let shopIds = rows.map(x => x.shop_id).filter((x, i, a) => a.indexOf(x) === i);
                let shopsList = await queryExequterWithThenBlock(queries.GET_SHOPS_OF_PRODUCTS(shopIds))
                let products = shopsList.map(data => {
                    let products = rows.filter(x => x.shop_id === data.id)
                    data['products'] = products;
                    return data
                })
                return products
            })
            .then(async products => {
                for (let i = 0; i < products.length; i++) {
                    let promokod = await queryExequterWithThenBlock(queries.GET_PROMOKOD_FROM_USER, [products[i].id, user_id])
                    if (promokod.length) {
                        products[i]['promokod'] = promokod[0];
                    } else {
                        products[i]['promokod'] = null;
                    }
                    let arzanladysh = await queryExequterWithThenBlock(queries.GET_ARZANLADYSH_CARD, [products[i].id, user_id])
                    if (arzanladysh.length) {
                        products[i]['arzanladysh'] = arzanladysh[0];
                    } else {
                        products[i]['arzanladysh'] = null;
                    }
                    let bonus = await queryExequterWithThenBlock(queries.GET_BONUS_OF_USER, [products[i].id, user_id])
                    if (bonus.length) {
                        products[i]['bonus'] = bonus[0];
                        let bonusBank = await queryExequterWithThenBlock(queries.GET_BONUS_BANK, [products[i].id, user_id])
                        products[i]['bonusBank'] = bonusBank[0];
                    } else {
                        products[i]['bonus'] = null;
                    }
                    let kupon = await queryExequterWithThenBlock(queries.GET_KUPON_DATA_FOR_ORDER, [products[i].id, user_id])
                    if (kupon.length) {
                        products[i]['kupon'] = kupon[0];
                    } else {
                        products[i]['kupon'] = null;
                    }
                }
                return sender.sendSuccess(res, products)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllPromoCodes(req, res) {
        if (req.user.user_id < 1) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }

        let typeAll = req.url_queries.all || false
        let user_id = req.user.user_id;
        let sqlCode = typeAll ? queries.GET_ALL_PROMOCODES : queries.GET_MY_PROMOCODES
        console.log(sqlCode)
        console.log(user_id)
        return await queryExequterWithThenBlock(sqlCode, [user_id])
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInvalidParams(res, req.lang)
            })
    },
    async getAllUserArzanladyshKart(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        return await queryExequterWithThenBlock(queries.GET_ALL_USER_ARZANLADYSH_KART, [user_id])
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllUserBonusBanks(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        return await queryExequterWithThenBlock(queries.GET_BONUS_BANK, [user_id])
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async usePromoCode(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        let {promokod_id} = req.body
        if (!promokod_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "Invalid promocode id"}])
        }
        return await queryExequterWithThenBlock(queries.USE_PROMOCODE, [{
            promokod_id,
            user_id,
            alan_senesi: new Date().toISOString().slice(0, 19).replace('T', ' ')
        }])
            .then(result => {
                return sender.sendSuccess(res, {insertId: result.insertId})
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getAllKupons(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        return await queryExequterWithThenBlock(queries.GET_KUPON_DATA, [user_id])
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async makeOrderFunction(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        let data = Object.assign({}, req.body);
        let products = req.body.products
        delete data['products'];
        data['user_id'] = user_id;
        data['wagty'] = new Date().toISOString().slice(0, 19).replace('T', ' ')
        let shopDetail = await queryExequterWithThenBlock(queries.GET_SHOP_NAME, [data['shop_id']])
        if (!shopDetail.length) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: 'No shop detected'}])
        }
        data['sargyt_kody'] = ''
        return await queryExequterWithThenBlock(queries.MAKE_ORDER, [data])
            .then(async result => {
                let newOrderId = result.insertId
                let s = 'insert into sargyt_produkt(sargytlar_id,product_id,sizes_id,count) values '
                let stringForSql = products.map(x => `(${newOrderId},${x.product_id},${x.sizes_id},${x.count})`)
                    .join(',');
                s = s + stringForSql;
                await queryExequterWithThenBlock(s)
                return newOrderId
            }).then(async orderId => {
                let orderCode = shopDetail[0].shop_name.replace(/\s/g, '').substr(0, 3) + orderId
                await queryExequterWithThenBlock(queries.UPDATE_ORDER_KODE, [orderCode, orderId])
                if (data.bonus_id) {
                    await queryExequterWithThenBlock(queries.ADD_TO_BONUS_BANK, [data.bonus_kart, data.shop_id, user_id])
                }
                if (data.promokod_id) {
                    await queryExequterWithThenBlock(queries.PROMOCODE_MAKE_USED, [data.promokod_id, user_id])
                }
                if (data.used_from_bonus_bank) {
                    await queryExequterWithThenBlock(queries.DECREESE_BONUCE_BANK, [data.used_from_bonus_bank, data.shop_id, user_id])
                }
                return sender.sendSuccess(res, {orderId})
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang);
            })

    },
    async getPyOrders(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;

        return await queryExequterWithThenBlock(queries.GET_MY_ORDERS(), [user_id])
            .then(rows => {

                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    },
    async getShopDetailById(req, res) {
        if (!req.user.user_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No token detected"}])
        }
        let user_id = req.user.user_id;
        let {order_id} = req.params;
        if (!order_id) {
            return sender.sendRespondInvalidParams(res, req.lang, [{msg: "Invalid order id"}])
        }
        return await queryExequterWithThenBlock(queries.GET_ORDER_DETAIL_BY_ID(), [order_id, user_id])
            .then(async rows => {
                if (rows.length) {
                    let products = await queryExequterWithThenBlock(queries.GET_PRODUCT_FOR_LIST(), [order_id])
                    return Object.assign(rows[0], {products})
                } else {
                    return false
                }
            }).then(data => {
                if (data) {
                    return sender.sendSuccess(res, data)
                } else {
                    return sender.sendRespondInvalidParams(res, req.lang, [{msg: "No order detected"}])
                }
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    }
}