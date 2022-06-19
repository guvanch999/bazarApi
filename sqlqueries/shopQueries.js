module.exports = {
    SHOPDETAILSMINI: (params) => `select * from shop where id=${params.id}`,
    SHOPDETAILSFULL: (params) => `select * from shop where id=${params.id}`,
    SHOPADSBYID: (params) => `select * from ads_fromshops where shop_id=${params.id}`,
    SHOPBANNERS: `select * from shop_banner where shop_id=?`,
    SHOP_VIDEOS: "select * from shop_videos where shop_id=?",
    FOLLOW_COUNT: "select count(*) as total from follow where shop_id=?",
    SHOPKATALOGS: (params) => `select k.* from katalog as k inner join shop_katalog as sk on k.id=sk.katalog_id where sk.shop_id=${params.id}`,

    KATALOGSHOPS: (params) => {
        let bolum=` where s.id in (select sb.shop_id from shop_bolum sb where sb.bolum_id=${params.bolum_id}) `
        let s = `select s.id as shop_id,s.shop_name,s.shortDescription,s.shortDescriptionRU,s.photo,s.vip from shop s  ${params.katalog_id>0?' inner join shop_katalog sk on sk.shop_id=s.id and sk.katalog_id='+params.katalog_id:''}  ${params.bolum_id>0 && params.katalog_id<=0?bolum:''} limit ${params.offset},20 `;
        console.log(s)
        return s;
    },
    KSHOPIMAGES: (params) => `select pp.photo  from product_photo as pp  where pp.shop_id=${params.shop_id} and pp.esasy=1 limit 3;`,
    CHECKFOLLOW: (params) => `select count(*) as total from follow where user_id=${params.user_id} and shop_id=${params.shop_id}`,
    COUNTOFFOLLOWERS: (params) => `select count(*) as total from follow where shop_id=${params.shop_id}`,
    COUNTOFPRODUCTS: (params) => `select count(*) as total from product where shop_id=${params.shop_id}`,
    //done
    GET_SHOP_KATALOGS: "select k.* from katalog k inner join shop_katalog sc on sc.katalog_id=k.id and sc.shop_id=",

    GET_SHOP_RATING: "select * from rating_shops where shop_id=?",
    BOLUM_SHOPS: (params) => `select s.* from shop_bolum sb inner join shop s on s.id=sb.shop_id where sb.bolum_id=${params.bolum_id}`,
    SHOP_LENTA: (params) => `select sl.*,(select count(*) from lenta_like ll where ll.shop_lenta_id=sl.id) as likeCount from shop_lenta sl where sl.shop_id=${params.shop_id} limit ${params.offset}, ${params.limit};`,
    GET_SHOP_CATEGORIES: "select c.*  from shop_category sc inner join category c on c.id=sc.category_id where sc.shop_id=? and sc.katalog_id=?;",
    GET_SHOP_SUBCATEGORIES: 'select s.* from shop_subcategory ss inner join subcategory s on s.id=ss.subcategory_id where ss.shop_id=? and ss.category_id in (0,?)',
    GET_ADDRESS_BY_ID:`select concat(aw.name,' ',a.name) as address from adress a inner join adress_welayat aw on aw.id=a.adress_welayat_id where a.id=?`,
    GET_SHOPS_FILTER: (params) => {
        let s = `select id as shop_id,shop_name,shortDescription,shortDescriptionRU,photo,vip from shop where verify=1 and   Restoran=${params.type==='SHOP'?0:1} `;
        if(params.address_id){
            s+=` and address_id=${params.address_id}  `
        }
        s+=` limit ${params.offset},${params.limit} `
        return s;
    },
    GET_SERVICES_FILTER: (params) => {
        let s = `select s.id as shop_id,s.service_shops_name as  shop_name,k.katalog_name as  shortDescription,k.katalog_nameRU as shortDescriptionRU,s.photo,s.vip from service_shops s 
                 inner join service_catalog sc on sc.service_id=s.id
                 inner join katalog k on k.id=sc.katalog_id
                 where s.verify=1 `;
        if(params.address_id){
            s+=` and s.adress_id=${params.address_id}  `
        }
        s+=` limit ${params.offset},${params.limit} `
        return s;
    },
    K_SERVICE_IMAGES: (params) => `select pp.photo  from service_product_photo as pp  where pp.service_product_id in (select sp.id from service_product sp where sp.service_id=${params.shop_id}) limit 3;`,
    CHECK_SERVICE_FOLLOW: (params) => `select count(*) as total from follow where user_id=${params.user_id} and service_id=${params.shop_id}`,
    COUNT_OF_SERVICE_FOLLOWERS: (params) => `select count(*) as total from follow where service_id=${params.shop_id}`,
    COUNT_OF_SERVICE_PRODUCTS: (params) => `select count(*) as total from service_product where service_id=${params.shop_id}`,
}
