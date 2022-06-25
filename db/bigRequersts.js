const {queryExequterWithThenBlock} = require('../utils/promisiFunctions')
const queries = require('../sqlqueries/homeQueries');
const shopQueries = require('../sqlqueries/shopQueries');


var getShopsWithChecking = async (katalog_id, user_id, page, bolum_id) => {
    let offset = (page - 1) * 20;
    return await queryExequterWithThenBlock(shopQueries.KATALOGSHOPS({katalog_id, bolum_id, offset}))
        .then(async (rows) => {
            let resultList = [];
            console.log(rows)
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

var getShopsWithFilter = async (user_id, page, limit, data, type) => {
    let offset = (page - 1) * limit;
    data['limit'] = limit
    data['offset'] = offset
    data['type'] = type;
    return await queryExequterWithThenBlock(shopQueries.GET_SHOPS_FILTER(data))
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
                let bolumShop = await queryExequterWithThenBlock(shopQueries.GET_SHOP_BOLUM, [temp.shop_id])
                Object.assign(temp, {
                    shop_type: type,
                    shop_images: sgop_images,
                    isFollowing: chekFollow[0].total,
                    followCount: followCount[0].total,
                    productCount: productCount[0].total,
                    bolum_id: bolumShop.length ? bolumShop[0].bolum_id : null
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

var getServiceWithFilter = async (user_id, page, limit, data) => {
    let offset = (page - 1) * limit;
    data['limit'] = limit
    data['offset'] = offset
    return await queryExequterWithThenBlock(shopQueries.GET_SERVICES_FILTER(data))
        .then(async (rows) => {
            let resultList = [];
            for (let i = 0; i < rows.length; i++) {
                let temp = Object.assign({}, rows[i]);
                let sgop_images = await queryExequterWithThenBlock(shopQueries.K_SERVICE_IMAGES({shop_id: temp.shop_id}));
                let chekFollow = await queryExequterWithThenBlock(shopQueries.CHECK_SERVICE_FOLLOW({
                    user_id: user_id,
                    shop_id: temp.shop_id
                }));
                let followCount = await queryExequterWithThenBlock(shopQueries.COUNT_OF_SERVICE_FOLLOWERS({shop_id: temp.shop_id}));
                let productCount = await queryExequterWithThenBlock(shopQueries.COUNT_OF_SERVICE_PRODUCTS({shop_id: temp.shop_id}));
                Object.assign(temp, {
                    shop_type: 'SERVICE',
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
    getShopsWithChecking,
    getShopsWithFilter,
    getServiceWithFilter
}