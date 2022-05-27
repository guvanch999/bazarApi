module.exports = {
    SHOPDETAILSMINI:(params)=>`select * from shop where id=${params.id}`,
    SHOPDETAILSFULL:(params)=>`select * from shop where id=${params.id}`,
    SHOPADSBYID:(params)=>`select * from ads_fromshops where shop_id=${params.id}`,
    SHOPBANNERS:`select * from shop_banner where shop_id=?`,
    SHOP_VIDEOS:"select * from shop_videos where shop_id=?",
    FOLLOW_COUNT:"select count(*) as total from follow where shop_id=?",
    SHOPKATALOGS:(params)=>`select k.* from katalog as k inner join shop_katalog as sk on k.id=sk.katalog_id where sk.shop_id=${params.id}`,



    //su zaprosyn icinde 3 sany product image imageforshop true bolanyny chekmeli gelmeli
    //abuna bn product count lary hasaplap aldyrmaly
    //potpisatsya edileni barlamaly
    KATALOGSHOPS:(params)=>`select s.id as shop_id,s.shop_name,s.photo,s.vip from shop s inner join shop_katalog sk on sk.shop_id=s.id and sk.katalog_id=${params.katalog_id} limit ${params.offset},20 `,
    KSHOPIMAGES:(params)=>`select pp.photo  from product_photo as pp  where pp.shop_id=${params.shop_id} and pp.esasy=1 limit 3;`,
    CHECKFOLLOW:(params)=>`select count(*) as total from follow where user_id=${params.user_id} and shop_id=${params.shop_id}`,
    COUNTOFFOLLOWERS:(params)=>`select count(*) as total from follow where shop_id=${params.shop_id}`,
    COUNTOFPRODUCTS:(params)=>`select count(*) as total from product where shop_id=${params.shop_id}`,
    //done
    GET_SHOP_KATALOGS:"select k.* from katalog k inner join shop_katalog sc on sc.katalog_id=k.id and sc.shop_id=",

    GET_SHOP_RATING:"select * from rating_shops where shop_id=?",
    BOLUM_SHOPS:(params)=>`select s.* from shop_bolum sb inner join shop s on s.id=sb.shop_id where sb.bolum_id=${params.bolum_id}`,
    SHOP_LENTA:(params)=>`select * from shop_lenta where shop_id=${params.shop_id} limit ${params.offset}, ${params.limit};`
}
