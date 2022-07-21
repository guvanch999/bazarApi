module.exports = {
    GET_ALL_NEWS: (params) => {
        let s = `select * from tazelik `
        if (params.shop_id || params.service_shop_id) {
            s += ' where '
            if (params.shop_id) {
                s += ` shop_id = ${params.shop_id}`
            } else {
                s += ` service_shop_id = ${params.service_shop_id}`
            }
        }
        s+=` limit ${params.offset}, ${params.limit}`
        return s;
    },
    GET_NEWS_IMAGES:`select photo from tazelik_photo where tazelik_id=?`,
    GET_NEWS_DETAIL:'select * from tazelik where id=?',
    GET_SHOP_DETAIL:"select shop_name,photo,vip,Restoran,(select count(*) from product where shop_id=?) as productCount from shop where id=?",
    GET_SERVICE_DETAIL:"select service_shops_name as shop_name,photo,vip,(select count(*) from service_product where service_id=?) as productCount from service_shops where id=?",

    GET_USER_FOLLOWS:"select * from follow where user_id=?",
    GET_SHOP_FOR_FOLLOW:'select shop_name,vip,photo from shop where id=?',
    GET_SERVICE_FOR_FOLLOW:'select service_shops_name as shop_name,vip,photo from shop where id=?',
    SHOP_LENTA: (params) => `select s.shop_name,s.photo as shopPhoto,s.vip,sl.* from shop_lenta sl inner join shop s on s.id=sl.shop_id where sl.shop_id in (select shop_id from follow where shop_id>0 and user_id=?) limit ${params.offset}, ${params.limit};`,

    GET_ALL_VIDEOS:`select * from (
            (select 'SHOP' as type, sv.* from shop_videos sv where sv.verify=1 )
            union all
            (select 'SERVICE' as type,  sev.* from service_videos sev where sev.verify=1)
        ) results order by created_date desc limit ?,20;`,
    GET_SHOP_DETAIL_FOR_VIDEO:"select shop_name,photo,vip,Restoran,shortDescription,shortDescriptionRU from shop where id=?",
    GET_SERVICE_DETAIL_FOR_VIDEO:"select service_shops_name as shop_name,photo,vip from service_shops where id=?",
    CHECK_IS_LIKED_FOR_VIDEO:'select * from like_video where user_id=? and ?',

    GET_SAYLANAN_LIST:'select s.*, (select count(*) from saylanan_items si where si.saylanan_id=s.id) as productCount from saylanan s limit ?,?',
    GET_SAYLANAN_ITEMS_PRODUCT:'select * from product where verify=1 and id in (select product_id from saylanan_items where saylanan_id=?) limit ?,?',
    SELECTSFROMTABLES:(params)=>{
        let s=`select * from ${params.tableName} where product_id=${params.id};`
        console.log(s);
        return s;
    },
    GET_BONUS_FOR_PRODUCT:'select b.* from bonus_user bu inner join bonus b on b.id=bu.bonus_id and b.shop_id=? where bu.user_id=?',
    GET_ARZANLADYSH_FOR_PRODUCT:'select ak.* from arzanladysh_kart_user au inner join arzanladysh_kart ak on ak.id=au.arzanladysh_id and ak.shop_id=? where au.user_id=? and au.status=1',

    GET_LIST_OF_TOPLANAN:'select c.*,(select count(*) from collection_items ci where ci.collection_id=c.id) as productCount from collections c limit ?, ?',
    GET_TOPLANAN_ITEMS_PRODUCT:'select * from product where verify=1 and id in (select product_id from collection_items where collection_id=?) limit ?,?',
    GET_BOLUM_ID_OF_SHOP:'select bolum_id from shop_bolum where shop_id=?'

}
