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


    SERVICEDETAILS:`select ss.*,concat(aw.name,' ',a.name) as fullAdress from service_shops ss left join adress a on ss.adress_id=a.id left join adress_welayat aw on a.adress_welayat_id=aw.id where ss.id=`,
    GETSERVICEBANNERS:`select * from service_banner where service_shop_id=`,
    GETVIDIOSFROMSERVICE:'select * from service_videos where service_shop_id='
}
