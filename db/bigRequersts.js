const {queryExequterWithThenBlock} = require('../utils/promisiFunctions')
const queries = require('../sqlqueries/homeQueries');
const shopQueries = require('../sqlqueries/shopQueries');

let getadsSHopsForSecondPage = async () => {
    await pool.query(queries.ADSFROMSHOP).then(async (adslist) => {
        let resultList = [];
        for (let i = 0; i < adslist.length; i++) {
            let temp = Object.assign({}, adslist[i]);
            if (temp.is_product) {
                let shopDetail = await pool.query(queries.SHOPDETAILSPhotoAndname({id: temp.shop_id}));
                let productDetail = await pool.query(queries.DETAILSFULL({id: temp.product_id}));
                Object.assign(temp, {
                    shopDetail: shopDetail,
                    productDetail: productDetail
                });
            } else {
                let shopDetail = await pool.query(queries.SERVICESHOPS({id: temp.shop_id}));
                let productDetail = await pool.query(queries.SERVICEPRODUCTDETAIL({id: temp.product_id}));
                Object.assign(temp, {
                    shopDetail: shopDetail,
                    productDetail: productDetail
                });
            }
            resultList.push(temp);
        }
        return resultList;
    }).catch((err) => {
        console.log(err);
        return false;
    })

}

var getShopsWithChecking = async (user_id, page, limit, data) => {
    let offset = (page - 1) * limit;
    data['limit'] = limit
    data['offset'] = offset
    return await queryExequterWithThenBlock(shopQueries.KATALOG_SHOPS_FILTER(data))
        .then(async (rows) => {
            let resultList = [];
            for (let i = 0; i < rows.length; i++) {
                let temp = Object.assign({}, rows[i]);
                let sgop_images = await queryExequterWithThenBlock(shopQueries.KSHOPIMAGES({shop_id: temp.shop_id}));
                let chekFollow = await queryExequterWithThenBlock(shopQueries.CHECKFOLLOW({
                    user_id: user_id,
                    shop_id: temp.shop_id
                }));
                let followCount = await queryExequterWithThenBlock(shopQueries.COUNTOFFOLLOWERS({shop_id: temp.shop_id}));
                let productCount = await queryExequterWithThenBlock(shopQueries.COUNTOFPRODUCTS({shop_id: temp.shop_id}));
                Object.assign(temp, {
                    shop_images: sgop_images,
                    isFollowing: chekFollow[0].total,
                    followCount: followCount[0].total,
                    productCount: productCount[0].total
                })
                resultList.push(temp);
            }
            console.log(resultList)
            return resultList;

        }).catch(err => {
            console.log(err);
            return false;
        })

}
module.exports = {
    getadsSHopsForSecondPage,
    getShopsWithChecking
}