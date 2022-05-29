module.exports={
    //follow edyan magazinlary cykarmaly hemmesini  podpiska bolan servisleri hem ugratmaly bolyan service shopdan
    GETALLFOLLOWSHOPS:"select s.* from follow as f  inner join shop as s on s.id=f.shop_id where f.user_id=$1;",
    GETALLFOLLOWSERVICES:"select s.* from follow as f inner join service_shops as s on s.id=f.service_id where f.user_id=$1;",


    //asakdaky spisogy shop_lentadan cekmeli, service productlary hem chekmeli
    GETFOLLOWLENTA:"select s.shop_name,s.shop_nameRU,s.photo as shop_photo,sl.*,p.description as product_description,p.descriptionRU as product_descriptionRU,p.rating,p.likes,p.price,p.product_name,p.product_nameRU from shop_lenta sl inner join shop as s on s.id=sl.shop_id inner join product as p as p.id=sl.product_id where s.id in (select shop_id from follow where user_id=$1);",
    GETFOLLOWSERVICES:"select s.service_shops_name,s.service_shops_nameRU, s.photo as shop_photo,sl.*,sp.* from shop_lenta as sl inner join service_shops as s on s.id=sl.service_id inner join service_product as sp on sp.service_id=s.id where s.id in (select service_id from follow where user_id=$1);",


    //abunadan chykmagy isletmeli
    GETFOLLOWFORCHECK:"select * from follow where user_id=$1 and (shop_id=$2 or service_id=$2);",
    UNFOLLOW:"delete from follow where id=?;",
    GET_FOR_CHECK:(shop_type,shop_id,user_id)=>`select * from follow where user_id=${user_id} and ${shop_type==='SHOP'?'shop_id':'service_id'}=${shop_id}`,
    FOLLOW:(shop_type,shop_id,user_id)=>`insert into follow(user_id,${shop_type==='SHOP'?'shop_id':'service_id'}) values(${user_id},${shop_id})`,
}