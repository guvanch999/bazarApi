const pool = require('../db/db');
const queries = require('../sqlqueries/hyzmatlarQueries');
const sender = require('../utils/sendRespond');
const {isUndefined} = require("util");
const promiseFunction = require('../utils/promisiFunctions')
const promiseFunctions = require("../utils/promisiFunctions");

var getServiceKatalogs = async (req, res) => {
    var id = req.params.id;
    if (id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SERVICEKATALOGS({id: id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}

var getServiceShops = async (req, res) => {
    let catalog_id = req.params.catalog_id || null;
    let {page} = req.url_queries
    if (isUndefined(page)) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    if (catalog_id == null) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    let resultRows = await queries.getServiceShopsWithChecking(catalog_id, req.user.user_id, page);
    if (resultRows) {
        return sender.sendSuccess(res, resultRows);
    } else {
        return sender.sendRespondInternalSErr(res, req.lang);
    }
}
var getServiceProduct = async (req, res) => {
    if (!req.url_queries.page) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    var params = Object.assign({}, req.body);
    Object.assign(params, {
        page: req.url_queries.page,
        count: req.url_queries.count
    });
    await pool.query(queries.SERVICEPRODUCTS(params), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}
let getServiceDetail = async (req, res) => {
    let service_id = req.params.service_id;
    if (!service_id) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    let {user_id}=req.user;
    let data = await queries.getServiceDetail(service_id,user_id);
    if (!data) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    return sender.sendSuccess(res, data)
}
let getProductDetail = async (req, res) => {
    let product_id = req.params.id;
    if (!product_id) {
        return sender.sendRespondInternalSErr(res, req.lang);
    }
    let data = await queries.getServiceProductDetail(product_id);
    if (!data) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    if (req.user.user_id > 0) {
        let isLiked = await promiseFunction.queryExequterWithThenBlock(queries.GET_ISLIKED, [req.user.user_id, product_id])
        data['isLiked'] = isLiked.length ? 1 : 0
    } else {
        data['isLiked'] = 0
    }
    let incCount = req.url_queries.incCount || false
    if (incCount) {
        await promiseFunctions.queryExequterWithThenBlock(queries.INCREASE_VIEW_COUNT, [product_id])
    }
    return sender.sendSuccess(res, data)
}
module.exports = {
    getServiceKatalogs,
    getServiceShops,
    getServiceProduct,
    getServiceDetail,
    getProductDetail
}
