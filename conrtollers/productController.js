const pool = require('../db/db');
const queries = require('../sqlqueries/productsQuery');
const sender = require('../utils/sendRespond');
const promiseFunctions = require('../utils/promisiFunctions');
var productDetailsMini = async (req, res) => {
    var p_id = req.params.id;
    if (p_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.DETAILMINI({id: p_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}
var productDetailsFull = async (req, res) => {
    var p_id = req.params.id;
    if (p_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }

    try{
        let product=await promiseFunctions.queryExequterWithThenBlock(queries.DETAILSFULL({id: p_id}))
        if(!product.length){
            return sender.sendNoProductDetails(res, req.lang);
        }
        let sizes=await promiseFunctions.queryExequterWithThenBlock(queries.PRODUCTSIZE({id: p_id}))
        let productCount=await promiseFunctions.queryExequterWithThenBlock(queries.SHOPPRODUCTCOUNT(product[0].shop_id))
        let detail=Object.assign({productCount:productCount[0].total},product[0])
        let images=await promiseFunctions.queryExequterWithThenBlock(queries.PRODUCTIMAGES(p_id))
        return sender.sendSuccess(res, {
            detail,
            sizes,
            images
        })
    }catch (err){
        console.log(err)
        return sender.sendRespondInternalSErr(res,req.lang)
    }
}
var getAllProducts = async (req, res) => {
    let _params = req.body;
    if (_params.verify === undefined) {
        _params.verify = 1;
    }
    if (_params.offset === undefined) {
        _params.offset = 0;
    }
    if (!_params.limit > 0) {
        _params.limit = 20;
    }

    await promiseFunctions.queryExequterWithThenBlock(queries.GETPRODUCTSBYFILTERANDSEARCH(_params)).then(async rows => {
        let total = 0;
        await promiseFunctions.queryExequterWithThenBlock(queries.GETPRODUCTSBYFILTERANDSEARCHCOUNT(_params)).then(
            result => {
                if (result.length)
                    total = result[0].total;
                else
                    total = 0
            }
        ).catch(err => {
            console.log(err);
            rows['total'] = null;
        })

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
                            console.log(result);
                        })
                        .catch(err => {
                            console.log(err);
                            rows[i][table] = null;
                        })
                }
            }
            return sender.sendSuccessWithCount(res, rows, total);
        } else
            return sender.sendSuccessWithCount(res, rows, total);
    }).catch(err => {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    })
}


module.exports = {
    productDetailsFull,
    productDetailsMini,
    getAllProducts
}