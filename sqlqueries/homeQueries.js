module.exports = {
    GETALLBANNERS: "select * from esasy_sahypa_banner order by id desc;",
    GETALLBOLUMLER: `select * from bolum where visible=1;`,

    //uc sany magazinlary chekdirmeli main_shopsDan
    GETMAINSHOPS: (params) => `select * from shop where vip=1 order by Rand() limit 3`,
    //done


    ADSADMINONE: (params) => `select * from ads_admin order by tertip_nomer asc limit 2 offset ${ params.skip };`,
    GETPRODUCTBYID: (params) => `select * from product where id=${params.id}`,
    GETSERVICESHOPPRODUCT: (params) => `select * from service_shops where id=${params.id};`,
    GETSHOPBYID: (params) => `select * from shop where id=${params.id}`,
    GETSERVISESHOPBYID: (params) => `select * from service_shops where id=${params.id}`,

    //ads_lary priducd datail bn cekmeli ikinji sahypa; hyzmat id hem gelip biilyar barlamaly is_product bn, {shop yada servese shop ady bn suratyny almaly}, {added date gelmeli}
    ADSFROMSHOP: "select * from ads_fromshops where checked=1 order by tertip_nomer asc;",
    ADSFROMSHOPPAGE: (params) => `select * from ads_fromshops where verify=1 order by RAND() limit 16 offset ${params.skip};`,

    SHOPDETAILSPhotoAndname: (params) => `select photo,shop_name,shop_nameRU from shop where id=${params.id}`,
    SERVICESHOPS: (params) => `select photo,service_shops_name,service_shops_nameRU from service_shops where id=${params.id}`,
    DETAILSFULL: (params) => `select * from product where id=${params.id}`,
    SERVICEPRODUCTDETAIL: (params) => `select * from service_product where id=${params.id}`,
    //done


    //follow etmegi yazybermeli zyyany yok

    CHECKFOLLOW: (params) => `select count(*) as count from follow where user_id=${params.user_id} and ${ params.shop }=${params.shop_id}`,
    //done


    BOLUM: "select * from bolum where visible=1 order by tertip_nomer asc;",
    SHOPSL2: (b_id, isRestoran) => `select s.* from shop s where verify = 1 and   s.Restoran=${isRestoran} and s.id in (select sb.shop_id from reklama_shops sb where sb.bolum_id=${b_id}) limit 6`,
    VIPSERVICESC6: "select * from service_shops where verify=1 limit 3;",
    BANNERL2: (params) => `select * from banner where bolum_id=${params.id};`,//eger yok bolse bolum_id==0 chekdirmeli    //done
    CATALOG: (params) => {
        var s = `select k.*,(select count(*) from category c where c.katalog_id=k.id) as categoryCount from katalog k where ${params.id>0?'k.bolum_id='+params.id+' and ':''} visible=1`;
        console.log(s)
        return s;
    },
    PRODUCTSCARD: (params) => {
        var page = params.page;
        var count = params.count || 20;
        var skip = (page - 1) * count;
        var s = "select p.*,s.shop_name from product as p inner join shop as s on p.shop_id=s.id ";
        //console.log(params;
        //bir filter goshmaly important trulary birinji almaly, we random bolmaly
        //shopynam ady gelmeli
        //done
        if (params.isFilter || params.hasIDS) {
            s += ' where ';
            if (params.subcategoryID) {
                s += ` p.subcategory_id =${params.subcategoryID} and  `
            }
            if (params.bolumID) {
                s += ` p.bolum_id =${params.bolumID} and  `
            }
            if (params.shopID) {
                s += ` p.shop_id =${params.shopID} and  `
            }
            s = s.substr(0, s.length - 5)
        }

        s += "order by p.rating_sum desc  limit " + skip + "," + count;
        return s;
    },
    CATEGORIES: (params) => {
        var s = `select * from category where visible=1 and katalog_id=${params.id} `;
        return s;
    },
    SUBCATEGORIES: (params) => {
        var s = `select * from subcategory where visible=1 and  category_id=${params.id}`;
        return s;
    },
    SUB_BY_CATEGORIESIDS: `select * from subcategory where visible=1 and katalog_id =?`,
    ALLSHOPS: (params) => `select s.* from shop as s inner join bolum_shop as bs on bs.shop_id=s.id where bs.bolum_id=${params.id}`,
    GETBANNERSWITHPARAMS: (params) => {
        let s = `select * from banner where 1=1 `
        if (params.filter && Array.isArray(params.filterValues)) {
            params.filterValues.forEach(filter => {
                s += ` and  ${filter.key} = '${filter.value}' `
            })
        }
        s += ` limit ${params.limit}`
        console.log(s);
        return s;
    },

    GETALLBRANDS: `select * from brend`,
    GET_IDS_FROM_KATALOG: 'select id from katalog where visible=1 and bolum_id=',
    GET_BRAND_BY_BOLUM_ID: "select * from brend where (katalog_ids like '%,${katalog_id},%') or (katalog_ids like '${katalog_id},%') or (katalog_ids like '%,${katalog_id}')  ",
    GET_PRODUCT_FOR_ADS: 'select p.*,(select pp.photo from product_photo pp where pp.product_id=p.id order by RAND() limit 1 ) as product_photo from product p where p.verify=1 order by RAND() limit ? offset ?;',
    GET_PRODUCT_DETAIL_FOR_ADS: (params) => "select p.*,(select pp.photo from product_photo pp where pp.product_id=${params.product_id} ) as product_photo from product p where p.id=${params.product_id}",
    GET_SERVICE_PRODUCT_FOR_ADS: 'select p.*,(select pp.photo from service_product_photo pp where pp.service_product_id=p.id  limit 1 ) as product_photo from service_product p where p.verify=1 order by RAND() limit ? offset ?;',

    GET_SEARCH_SHOP: `select * from ( (select s.id, s.shop_name as name, s.description, s.descriptionRU, s.photo, 1 as searchType,(select sb.bolum_id from shop_bolum sb  where sb.shop_id=s.id limit 1) as bolum_id  from shop s where s.verify=1 and UPPER(concat(IFNULL(s.shop_name,''),IFNULL(s.shortDescription,''),IFNULL(s.shortDescriptionRU,''),IFNULL(s.description,''),IFNULL(s.descriptionRU,''))) like UPPER(?) order by vip limit 5)
                     UNION 
                     (select s.id, s.service_shops_name as name,s.description, s.descriptionRU, s.photo, 2 as searchType,1 as bolum_id  from service_shops s where s.verify=1 and UPPER(concat(IFNULL(s.service_shops_name,''),IFNULL(s.description,''),IFNULL(s.descriptionRU,''))) like UPPER(?) order by vip limit 5)
                     UNION
                     (select s.id, s.product_name as name, s.description, s.descriptionRU, null as photo, 3 as searchType,s.bolum_id  from product s where s.verify=1 and UPPER(concat(IFNULL(s.product_name,''),IFNULL(s.description,''),IFNULL(s.descriptionRU,''))) like UPPER(?) order by vip limit 5)
                     UNION
                     (select s.id, s.name, s.description, s.descriptionRU, null as photo, 4 as searchType,1 as bolum_id  from service_product s where s.verify=1 and UPPER(concat(IFNULL(s.name,''),IFNULL(s.nameRU,''),IFNULL(s.description,''),IFNULL(s.descriptionRU,''))) like UPPER(?) order by vip limit 5)
                     ) results`,
    GET_SHOP_CENTERS: 'select * from shop_center',
    GET_ALL_ONDURUJILER:'select * from ondurijiler'
}
