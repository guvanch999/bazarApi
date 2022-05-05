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
    KATALOGSHOPS:(params)=>`select s.id as shop_id,s.service_shops_name,s.photo from service_shops s inner join service_catalog sk on sk.service_id=s.id and sk.katalog_id=${params.katalog_id}`,
    KSHOPIMAGES:(params)=>`select pp.photo  from service_product_photo as pp  where pp.service_product_id=${params.shop_id} and pp.esasy=1 limit 3;`,
    CHECKFOLLOW:(params)=>`select count(*) as total from follow where user_id=${params.user_id} and service_id=${params.shop_id}`,
    COUNTOFFOLLOWERS:(params)=>`select count(*) as total from follow where service_id=${params.shop_id}`,
    COUNTOFPRODUCTS:(params)=>`select count(*) as total from service_product where service_id=${params.shop_id}`,
}
