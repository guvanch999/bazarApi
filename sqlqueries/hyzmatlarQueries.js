const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
const shopQueries = require("../sqlqueries/serviceShops");
const {isUndefined} = require("util");
module.exports = {
    SERVICEKATALOGS: (params) => `select * from katalog where bolum_id=${params.id}`,

    SERVICESHOPS: (params) => `select * from service_shops limit 6;`,


    SERVICEPRODUCTS: (params) => {
        var page = params.page;
        var count = params.count || 18;
        var skip = (page - 1) * count;
        var s = `select * from service_product where verify=${isUndefined(params.verify)?0:params.verify}`;

        if (params.serviceID) {
            s += ` and service_id =${params.serviceID}   `
        }
        if (params.catalogID) {
            s += ` and catalog_id =${params.catalogID}  `
        }
        s += " limit " + skip + ", " + count;
        console.log(s)
        return s;
    },
    getServiceShopsWithChecking: async (katalog_id, user_id) => {
        return await queryExequterWithThenBlock(shopQueries.KATALOGSHOPS({katalog_id: katalog_id})).then(async (rows) => {
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
            return resultList;
        }).catch(err => {
            console.log(err);
            return false;
        })

    }
}
