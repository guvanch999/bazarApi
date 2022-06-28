const pool =require('../utils/promisiFunctions')
module.exports={
    async getAllserviceShops(){
        return await pool.queryExequterWithThenBlock('select * from service_shops')
            .then(rows=>{
                return rows
            }).catch(err=>{
                console.log(err)
                return false;
            })
    },
    KATALOGSHOPS:(params)=>`select s.id as shop_id,s.service_shops_name,s.photo,s.vip from service_shops s inner join service_catalog sk on sk.service_id=s.id and sk.katalog_id=${params.katalog_id} limit ${params.skip},10`,
    KSHOPIMAGES:(params)=>`select pp.photo  from service_product_photo as pp  where pp.service_product_id in (select sp.id from service_product sp where sp.service_id=${params.shop_id} )  limit 3;`,
    CHECKFOLLOW:(params)=>`select count(*) as total from follow where user_id=${params.user_id} and service_id=${params.shop_id}`,
    COUNTOFFOLLOWERS:(params)=>`select count(*) as total from follow where service_id=${params.shop_id}`,
    COUNTOFPRODUCTS:(params)=>`select count(*) as total from service_product where service_id=${params.shop_id}`,
    SELECTSERVICESHOPRATINGS:(params)=>`select * from rating_service_shops where sevice_shop_id=${params.shop_id}`,

    SERVICEDETAILS:`select ss.*,concat(aw.name,' ',a.name) as fullAdress from service_shops ss left join adress a on ss.adress_id=a.id left join adress_welayat aw on a.adress_welayat_id=aw.id where ss.id=`,
    GETSERVICEBANNERS:`select * from service_banner where service_shop_id=`,
    GETVIDIOSFROMSERVICE:'select * from service_videos where verify=1 and  service_shop_id=',
    GETSERVICESHOPKATALOGDETAIL:"select k.* from katalog k inner join service_catalog sc on sc.katalog_id=k.id and sc.service_id=",
    GETSERVICEPRODUCTDETAIL:(product_id)=>`select sp.*,k.katalog_name,k.katalog_nameRU,ss.service_shops_name,ss.phonee,ss.email,ss.photo as service_shop_photo,(select count(*) from service_product spfc where spfc.service_id=sp.service_id) as shopProductCount from service_product sp inner join service_shops ss on ss.id=sp.service_id left join katalog k on k.id=sp.catalog_id where sp.id=${product_id}`,
    GETSERVICEPRODUCTIMAGES:"select * from service_product_photo where service_product_id=",
    SELECTSERVICE_PRODUCT_RATINGS:(params)=>`select * from rating_service_product where product_id=${params.product_id}`,
}
