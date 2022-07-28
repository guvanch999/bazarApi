const pool = require('../db/db');
const queries = require('../sqlqueries/homeQueries');
const sender = require('../utils/sendRespond');
const functionsforUSE = require('../db/bigRequersts');
const promiseFunctions = require('../utils/promisiFunctions')
var getAllBanners = async (req, res) => {
    await pool.query(queries.GETALLBANNERS, (err, result) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, result);
    })
};

var getBannerL2 = async (req, res) => {
    var b_id = req.params.id;
    if (b_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    return await pool.query(queries.BANNERL2({id: b_id}), async (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        if (rows.length > 0) {
            return sender.sendSuccess(res, rows);
        } else {
            return await pool.query(queries.BANNERL2({id: 0}), (error, response) => {
                if (error) {
                    return sender.sendRespondInternalSErr(res, req.lang)
                }
                return sender.sendSuccess(res, response);
            })
        }
    })
}
var getCatalogsByBolumId = async (req, res) => {
    var b_id = req.params.b_id;
    if (b_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.CATALOG({id: b_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getVipShopsc6 = async (req, res) => {
    var b_id = req.params.b_id;
    if (b_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    let {type} = req.url_queries;
    let isRestoran = type === 'SHOP' ? 0 : 1;
    await pool.query(queries.SHOPSL2(b_id, isRestoran), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}
var getVipServicesc6 = async (req, res) => {

    await pool.query(queries.VIPSERVICESC6, (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    })
}

var getProductsCard = async (req, res) => {
    //if(req.url_queries.count)
    if (!req.url_queries.page) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    var params = Object.assign({}, req.body);
    Object.assign(params, {
        page: req.url_queries.page,
        count: req.url_queries.count
    });
    await pool.query(queries.PRODUCTSCARD(params), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}
var getCategoriesByBid = async (req, res) => {
    var k_id = req.params.k_id;
    if (k_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    return await promiseFunctions.queryExequterWithThenBlock(queries.CATEGORIES({id: k_id}))
        .then(async rows => {
            let list = await promiseFunctions.queryExequterWithThenBlock(queries.SUB_BY_CATEGORIESIDS, [k_id]);
            let result = rows.map(data => {
                let ss = list.filter(x => x.category_id === data.id);
                data['subCounts'] = ss.length;
                data['subcategories'] = ss;

                return data
            })
            return sender.sendSuccess(res, result)
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}
var getSubCategories = async (req, res) => {
    var c_id = req.params.c_id;
    if (c_id === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.SUBCATEGORIES({id: c_id}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}
var getAllShopsOfBolum = async (req, res) => {
    var _bid = req.params.b_id;
    if (_bid === undefined) {
        return sender.sendRespondInvalidParams(res, req.lang);
    }
    await pool.query(queries.ALLSHOPS({id: _bid}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}
var theeShopsForHomePage = async (req, res) => {
    await pool.query(queries.GETMAINSHOPS({}), (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        return sender.sendSuccess(res, rows);
    });
}

var getBannerler = async (req, res) => {
    let _params = req.body;
    if (_params.limit === undefined) {
        _params.limit = 10;
    }
    await promiseFunctions.queryExequterWithThenBlock(queries.GETBANNERSWITHPARAMS(_params)).then(rows => {
        return sender.sendSuccess(res, rows);
    }).catch(err => {
        console.log(err);
        return sender.sendRespondInternalSErr(res, req.lang);
    })
}
var getBolumler = async (req, res) => {
    await pool.query(queries.GETALLBOLUMLER, (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang)
        }
        rows.unshift({
            "id": 0,
            "bolum_name": "Esasy",
            "bolum_nameRU": "Glawnaya",
            "photo": null,
            "tertip_nomer": 999,
            "visible": 0
        });
        return sender.sendSuccess(res, rows);
    })
}
var getAdsForHomePage = async (req, res, next) => {
    let _page = req.url_queries.page || 1;
    await pool.query(queries.ADSADMINONE({skip: (_page - 1) * 2}), async (err, rows) => {
        if (err) {
            console.log(err);
            return sender.sendRespondInternalSErr(res, req.lang);
        }
        if (rows.length > 1) {
            return await pool.query(queries.ADSFROMSHOPPAGE({skip: (_page - 1) * 16}), async (err, result) => {
                if (err) {
                    console.log(err);
                    return sender.sendRespondInternalSErr(res, req.lang);
                }
                if (result.length === 16) {
                    rows.forEach(row => result.unshift(row))
                    let _temp = []
                    for await (const contents of result.map(row => {
                        if (row.ads_type_id) {
                            switch (row.ads_type_id) {
                                case 1: {
                                    return promiseFunctions.queryExequterWithThenBlock(queries.GETPRODUCTBYID({id: row.product_id})).then((rows) => {
                                        row.detail = rows.length ? rows[0] : {};
                                        return row;
                                    }).catch(err => {
                                        row.detail = {};
                                        return row
                                    })
                                    break;
                                }
                                case 2: {
                                    return promiseFunctions.queryExequterWithThenBlock(queries.GETSERVICESHOPPRODUCT({id: row.product_id})).then((rows) => {
                                        row.detail = rows.length ? rows[0] : {};
                                        return row;
                                    }).catch(err => {
                                        row.detail = {};
                                        return row
                                    })
                                    break
                                }
                                case 3: {
                                    row.detail = {};
                                    break
                                }
                                case 4: {
                                    return promiseFunctions.queryExequterWithThenBlock(queries.GETSHOPBYID({id: row.shop_id})).then((rows) => {
                                        row.detail = rows.length ? rows[0] : {};
                                        return row;
                                    }).catch(err => {
                                        row.detail = {};
                                        return row
                                    })
                                    break
                                }
                                case 5: {
                                    return promiseFunctions.queryExequterWithThenBlock(queries.GETSERVISESHOPBYID({id: row.shop_id})).then((rows) => {
                                        row.detail = rows.length ? rows[0] : {};
                                        return row;
                                    }).catch(err => {
                                        row.detail = {};
                                        return row
                                    })
                                    break
                                }
                            }
                        } else
                            return row;
                    })) {
                        if (contents.ads_type_id === 4 || contents.ads_type_id === 5) {
                            if (req.auth) {
                                let shop_type = contents.ads_type_id === 5 ? 'shop_id' : 'service_id'
                                await promiseFunctions.queryExequterWithThenBlock(queries.CHECKFOLLOW({
                                    user_id: req.user.user_id,
                                    shop_id: contents.shop_id,
                                    shop: shop_type
                                })).then(rows => {
                                    if (rows.length) {
                                        if (rows[0].count > 0)
                                            contents.detail.follow = true;
                                        else
                                            contents.detail.follow = false;
                                    } else
                                        contents.detail.follow = false;
                                }).catch(err => {
                                    console.log(err);
                                    contents.detail.follow = false;
                                })
                                _temp.push(contents);
                            } else {
                                contents.detail.follow = false;
                                _temp.push(contents);
                            }
                        } else {
                            _temp.push(contents);
                        }

                    }
                    return sender.sendSuccess(res, _temp);
                } else {
                    next()
                }
            })

        } else {
            next()
        }
    })

}
let getAllBrands = async (req, res) => {
    let bolum_id = req.params.bolum_id || 0;
    if (!parseInt(bolum_id)) {
        return await promiseFunctions.queryExequterWithThenBlock(queries.GETALLBRANDS)
            .then(rows => {
                return sender.sendSuccess(res, rows)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    } else {
        return await promiseFunctions.queryExequterWithThenBlock(queries.GET_IDS_FROM_KATALOG + bolum_id)
            .then(async rows => {
                let idsArray = rows.map(x => x.id);
                let brands = await promiseFunctions.queryExequterWithThenBlock(queries.GETALLBRANDS);
                let selectedBrands = brands.map(x => {
                    if (x.katalog_ids.split(',').filter(x => idsArray.find(xx => xx === parseInt(x))).length) {
                        return x
                    } else return null
                }).filter(x => x !== null);
                return sender.sendSuccess(res, selectedBrands)
            }).catch(err => {
                console.log(err)
                return sender.sendRespondInternalSErr(res, req.lang)
            })
    }
}

let likeParams = {
    admin_ads: {
        table: 'ads_like',
        field: 'ads_admin_id'
    },
    shop_ads: {
        table: 'ads_like',
        field: 'ads_fromshops_id'
    },
    product: {
        table: 'like_products',
        field: 'product_id',
        decraseTable: 'product',
        decraseField: 'likes'
    },
    service_product: {
        table: 'like_service_product',
        field: 'service_product_id',
        decraseTable: 'service_product',
        decraseField: 'like_num'
    },
    shop_video: {
        table: 'like_video',
        field: 'shop_video_id',
        decraseTable: 'shop_videos',
        decraseField: 'like_count'
    },
    service_video: {
        table: 'like_video',
        field: 'service_video_id',
        decraseTable: 'service_videos',
        decraseField: 'like_count'
    },
    lenta: {
        table: 'lenta_like',
        field: 'shop_lenta_id',
        decraseTable: 'shop_lenta',
        decraseField: 'like_count'
    },

}
let likeAllParams = async (req, res) => {
    let {id, like} = req.params
    if (!id || !like || !likeParams[like]) {
        return sender.sendRespondInvalidParams(res, req.lang)
    }
    let {user_id} = req.user
    if (!user_id) {
        return sender.sendNotRegistered(res);
    }
    let likePram = likeParams[like];
    return promiseFunctions.queryExequterWithThenBlock(`select * from ${likePram.table} where user_id=${user_id} and ${likePram.field}=${id}`)
        .then(async rows => {
            if (rows.length) {
                await promiseFunctions.queryExequterWithThenBlock(`delete from ${likePram.table} where id=${rows[0].id}`)
                return 'UNLIKED'
            } else {
                await promiseFunctions.queryExequterWithThenBlock(`insert into ${likePram.table} set user_id=${user_id},${likePram.field}=${id}`)
                return 'LIKED'
            }
        }).then(async status => {
            if (status === 'LIKED') {
                await promiseFunctions.queryExequterWithThenBlock(`update ${likePram.decraseTable} set ${likePram.decraseField}= Coalesce(${likePram.decraseField}, 0)+1 where id=${id}`)
            } else {
                await promiseFunctions.queryExequterWithThenBlock(`update ${likePram.decraseTable} set ${likePram.decraseField}=Coalesce(${likePram.decraseField}, 0)-1 where id=${id}`)
            }
            return sender.sendSuccess(res, {status})
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}

let getProductsAsAds = async (req, res, next) => {
    let _page = req.url_queries.page || 1;
    if (_page % 2 === 0) {
        next()
        return;
    }
    return await promiseFunctions.queryExequterWithThenBlock(queries.ADSADMINONE({skip: (_page - 1) * 2}))
        .then(async adsAdmin => {
            if (adsAdmin.length === 2) {
                let list = await promiseFunctions.queryExequterWithThenBlock(queries.GET_PRODUCT_FOR_ADS, [18, (_page - 1) * 16])
                for (let i = 0; i < adsAdmin.length; i++) {
                    adsAdmin[i] = await getDetailOfAds(adsAdmin[i])
                    adsAdmin[i]['fromAdmin'] = true
                    list.unshift(adsAdmin[i])
                }
                return list
            } else {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GET_PRODUCT_FOR_ADS, [18, (_page - 1) * 18])
            }
        }).then(rows => {
            let result = rows.map(x => {
                if (x.fromAdmin) return x;
                let data = {
                    id: x.id,
                    "tertip_nomer": 99999,
                    "ads_type_id": x.bolum_id === 2 ? 4 : x.bolum_id === 3 ? 5 : 6,
                    "product_id": x.id,
                    "ads_photo": x.product_photo,
                    "ads_description": x.description,
                    "ads_descriptionRU": x.descriptionRU,
                    "payment": 0,
                    "verify": 1,
                    "seen": x.seen
                }
                delete x['product_photo']
                data['detail'] = x;
                return data
            })
            return sender.sendSuccess(res, result)
        })
        .catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}
let getServiceProductsAsAds = async (req, res) => {
    let _page = req.url_queries.page || 1;
    return await promiseFunctions.queryExequterWithThenBlock(queries.ADSADMINONE({skip: (_page - 1) * 2}))
        .then(async adsAdmin => {
            if (adsAdmin.length === 2) {
                let list = await promiseFunctions.queryExequterWithThenBlock(queries.GET_SERVICE_PRODUCT_FOR_ADS, [18, (_page / 2 - 1) * 16, 16])
                for (let i = 0; i < adsAdmin.length; i++) {
                    adsAdmin[i] = await getDetailOfAds(adsAdmin[i])
                    adsAdmin[i]['fromAdmin'] = true
                    list.unshift(adsAdmin[i])
                }
                return list
            } else {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GET_SERVICE_PRODUCT_FOR_ADS, [18, (_page / 2 - 1) * 18])
            }
        }).then(rows => {
            let result = rows.map(x => {
                if (x.fromAdmin) return x;
                let data = {
                    id: x.id,
                    "tertip_nomer": 99999,
                    "ads_type_id": 7,
                    "product_id": x.id,
                    "ads_photo": x.product_photo,
                    "ads_description": x.description,
                    "ads_descriptionRU": x.descriptionRU,
                    "verify": 1,
                    "seen": x.seen
                }
                delete x['product_photo']
                data['detail'] = x;
                return data
            })
            return sender.sendSuccess(res, result)
        })
        .catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}

async function getDetailOfAds(row) {
    if (row.ads_type_id) {
        switch (row.ads_type_id) {
            case 4:
            case 5:
            case 6: {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GETPRODUCTBYID({id: row.product_id})).then((rows) => {
                    row.detail = rows.length ? rows[0] : {};
                    return row;
                }).catch(err => {
                    row.detail = {};
                    return row
                })
                break;
            }
            case 7: {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GETSERVICESHOPPRODUCT({id: row.product_id})).then((rows) => {
                    row.detail = rows.length ? rows[0] : {};
                    return row;
                }).catch(err => {
                    row.detail = {};
                    return row
                })
                break
            }
            case 8: {
                row.detail = {};
                break
            }
            case 1:
            case 3:
            case 9: {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GETSHOPBYID({id: row.shop_id})).then((rows) => {
                    row.detail = rows.length ? rows[0] : {};
                    return row;
                }).catch(err => {
                    row.detail = {};
                    return row
                })
                break
            }
            case 2: {
                return await promiseFunctions.queryExequterWithThenBlock(queries.GETSERVISESHOPBYID({id: row.shop_id})).then((rows) => {
                    row.detail = rows.length ? rows[0] : {};
                    return row;
                }).catch(err => {
                    row.detail = {};
                    return row
                })
                break
            }
            default: {
                return row
            }
        }
    } else
        return row;
}

const searchFromAll = async (req, res) => {
    let {query} = req.url_queries
    query = '%' + query + '%' || ''
    if (query.length === 0) {
        return sender.sendSuccess(res, [])
    }
    return await promiseFunctions.queryExequterWithThenBlock(queries.GET_SEARCH_SHOP, [query, query, query, query])
        .then(rows => {


            return sender.sendSuccess(res, rows)
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}
let getAllShopCenters = async (req, res) => {
    return await promiseFunctions.queryExequterWithThenBlock(queries.GET_SHOP_CENTERS)
        .then(rows => {
            return sender.sendSuccess(res, rows)
        }).catch(err => {
            console.log(err)
            return sender.sendRespondInternalSErr(res, req.lang)
        })
}

let getAllOndurijiler=async (req,res)=>{
    return await promiseFunctions.queryExequterWithThenBlock(queries.GET_ALL_ONDURUJILER)
        .then(rows=>{
            return sender.sendSuccess(res,rows)
        }).catch(err=>{
            console.log(err)
            return sender.sendRespondInternalSErr(res,req.lang)
        })
}

module.exports = {
    getAllBanners,
    getBannerL2,
    getCatalogsByBolumId,
    getVipShopsc6,
    getProductsCard,
    getCategoriesByBid,
    getSubCategories,
    getAllShopsOfBolum,
    getBolumler,
    getAdsForHomePage,
    theeShopsForHomePage,
    getBannerler,
    getVipServicesc6,
    getAllBrands,
    likeAllParams,
    getProductsAsAds,
    getServiceProductsAsAds,
    searchFromAll,
    getAllShopCenters,
    getAllOndurijiler
}
