const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
const shopQueries = require("../sqlqueries/serviceShops");
const {isUndefined} = require("util");
const {calculateRating} = require("../utils/useFullFunctions");
module.exports = {
    SERVICEKATALOGS: (params) => `select * from katalog where bolum_id=${params.id}`,

    SERVICESHOPS: (params) => `select * from service_shops limit 6;`,
    GET_ISLIKED:'select * from like_service_product where user_id=? and service_product_id=?;',

    SERVICEPRODUCTS: (params) => {
        var page = params.page;
        var count = params.count || 18;
        var skip = (page - 1) * count;
        var s = `select sp.*,spp.photo from service_product sp left join service_product_photo spp on spp.service_product_id=sp.id where sp.verify=1`;

        if (params.serviceID) {
            s += ` and sp.service_id =${params.serviceID}   `
        }
        if (params.catalogID) {
            s += ` and sp.catalog_id =${params.catalogID}  `
        }
        s += " limit " + skip + ", " + count;
        console.log(s)
        return s;
    },
    getServiceShopsWithChecking: async (katalog_id, user_id, page) => {
        let skip = (page - 1) * 10;
        return await queryExequterWithThenBlock(shopQueries.KATALOGSHOPS({
            katalog_id: katalog_id,
            skip
        })).then(async (rows) => {
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
    },
    async getServiceDetail(service_id) {
        return await queryExequterWithThenBlock(shopQueries.SERVICEDETAILS + service_id)
            .then(rows => {
                if (rows.length) {
                    return rows[0]
                } else {
                    return false
                }
            }).then(async data => {
                if (data) {
                    let listBanners = await queryExequterWithThenBlock(shopQueries.GETSERVICEBANNERS + service_id)
                    let listVideos = await queryExequterWithThenBlock(shopQueries.GETVIDIOSFROMSERVICE + service_id)
                    let followCount = await queryExequterWithThenBlock(shopQueries.COUNTOFFOLLOWERS({shop_id: service_id}));
                    let productCount = await queryExequterWithThenBlock(shopQueries.COUNTOFPRODUCTS({shop_id: service_id}));
                    let katalogs = await queryExequterWithThenBlock(shopQueries.GETSERVICESHOPKATALOGDETAIL + service_id);
                    let ratings = await queryExequterWithThenBlock(shopQueries.SELECTSERVICESHOPRATINGS({shop_id: service_id}));
                    let rating = calculateRating(ratings)
                    rating['totalRatingCount'] = ratings.length;
                    data['rating'] = rating;
                    let katalog_name = katalogs.length ? katalogs[0].katalog_name : "";
                    let katalog_nameRU = katalogs.length ? katalogs[0].katalog_nameRU : "";
                    return Object.assign(data, {
                        followCount: followCount[0].total,
                        productCount: productCount[0].total,
                        listBanners,
                        listVideos,
                        katalog_name,
                        katalog_nameRU
                    })
                } else {
                    return false
                }
            }).catch(err => {
                console.log(err)
                return false;
            })
    },
    async getServiceProductDetail(product_id) {
        return await queryExequterWithThenBlock(shopQueries.GETSERVICEPRODUCTDETAIL(product_id))
            .then(rows => {
                if (rows.length) {
                    return rows[0]
                } else {
                    return false
                }
            }).then(async data => {
                if (data) {
                    let photos = await queryExequterWithThenBlock(shopQueries.GETSERVICEPRODUCTIMAGES + product_id);
                    photos = photos.map(x => x.photo);
                    return Object.assign(data, {photos});
                } else {
                    return false;
                }
            }).then(async (data) => {
                if (!data) {
                    return false;
                } else {
                    let ratings = await queryExequterWithThenBlock(shopQueries.SELECTSERVICE_PRODUCT_RATINGS({product_id}));
                    let rating = calculateRating(ratings)
                    rating['totalRatingCount'] = ratings.length;
                    data['rating'] = rating;
                    return data
                }
            })
            .catch(err => {
                console.log(err)
                return false;
            })
    }
}
