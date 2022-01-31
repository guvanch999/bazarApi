module.exports = {
    GETALLBANNERS:"select * from banner where bolum_id=0  order by id;",
    GETALLBOLUMLER:`select * from bolum;`,

    //uc sany magazinlary chekdirmeli main_shopsDan
    GETMAINSHOPS:(params)=>`select s.* from main_shops as ms inner join shop s on s.id=ms.shop_id order by ms.tertip_nomer`,
    //done


    ADSADMIN:"select * from ads_admin order by tertip_nomer asc;",
    ADSADMINONE:(params)=>`select * from ads_admin order by tertip_nomer asc limit 1 offset ${ params.skip };`,
    GETPRODUCTBYID:(params)=>`select * from product where id=${params.id}`,
    GETSERVICESHOPPRODUCT:(params)=>`select * from service_shops where id=${params.id};`,
    GETSHOPBYID:(params)=>`select * from shop where id=${params.id}`,
    GETSERVISESHOPBYID:(params)=>`select * from service_shops where id=${params.id}`,

    //ads_lary priducd datail bn cekmeli ikinji sahypa; hyzmat id hem gelip biilyar barlamaly is_product bn, {shop yada servese shop ady bn suratyny almaly}, {added date gelmeli}
    ADSFROMSHOP:"select * from ads_fromshops where checked=1 order by payment,tertip_nomer asc;",
    ADSFROMSHOPPAGE:(params)=>`select * from ads_fromshops where verify=1 order by payment,tertip_nomer asc limit 8 offset ${params.skip};`,

    SHOPDETAILSPhotoAndname:(params)=>`select photo,shop_name,shop_nameRU from shop where id=${params.id}`,
    SERVICESHOPS:(params)=>`select photo,service_shops_name,service_shops_nameRU from service_shops where id=${params.id}`,
    DETAILSFULL:(params)=>`select * from product where id=${params.id}`,
    SERVICEPRODUCTDETAIL:(params)=>`select * from service_product where id=${params.id}`,
    //done


    //follow etmegi yazybermeli zyyany yok
    FOLLOW:(params)=>`insert into follow(user_id,shop_id,service_id) values  (${params.user_id},${params.shop_id},${params.service_id}) returning *;`,
    //done


    BOLUM:"select * from bolum order by tertip_nomer asc;",
    SHOPSL2:"select s.* from vip_shops as v " +
        " inner join bolum as  b on b.id=v.bolum_id " +
        " inner join shop as s on s.id=v.shop_id  limit 6;",
    BANNERL2:(params)=>`select * from banner where bolum_id=${params.id};`,//eger yok bolse bolum_id==0 chekdirmeli    //done
    CATALOG:(params)=>{
        var s=`select * from katalog where bolum_id=${params.id} where visible=1`;
        return s;
    },
    PRODUCTSCARD:(params)=>{
        var page=params.page;
        var count=params.count||20;
        var skip=(page-1) * count;
        var s="select p.*,s.shop_name,s.shop_nameRU from product as p inner join shop as s on p.shop_id=s.id ";
        //console.log(params;
        //bir filter goshmaly important trulary birinji almaly, we random bolmaly
        //shopynam ady gelmeli
        //done
        if(params.isFilter || params.hasIDS){
            s+=' where ' ;
            if(params.subcategoryID){
                s+=` p.subcategory_id =${params.subcategoryID} and  `
            }
            if(params.bolumID){
                s+=` p.bolum_id =${params.bolumID} and  `
            }
            if(params.shopID){
                s+=` p.shop_id =${params.shopID} and  `
            }
        }

        s+=" order by important desc skip "+skip+" limit "+count;
        return s;
    },
    CATEGORIES:(params)=>{
        var s=`select * from category where katalog_id=${params.id}`;
        return s;
    },
    SUBCATEGORIES:(params)=>{
        var s=`select * from subcategory where icategory_id=${params.id}`;
        return s;
    },
    ALLSHOPS:(params)=>`select s.* from shop as s inner join bolum_shop as bs on bs.shop_id=s.id where bs.bolum_id=${params.id}`,
}