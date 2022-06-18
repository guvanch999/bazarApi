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
    SHOP_LENTA: (params) => `select s.shop_name,s.vip,sl.*,(select count(*) from lenta_like ll   where ll.shop_lenta_id=sl.id) as likeCount from shop_lenta sl inner join shop s on s.id=sl.shop_id where sl.shop_id in (select shop_id from follow where shop_id>0 and user_id=?) limit ${params.offset}, ${params.limit};`,

}