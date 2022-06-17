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
        s+=` limit ${params.offset}, 20`
        return s;
    },
    GET_NEWS_IMAGES:`select photo from tazelik_photo where tazelik_id=?`,
    GET_NEWS_DETAIL:'select * from tazelik where id=?',
    GET_SHOP_DETAIL:"select shop_name,vip,(select count(*) from product where shop_id=?) as productCount from shop where id=?",
    GET_SERVICE_DETAIL:"select service_shops_name as shop_name,vip,(select count(*) from service_product where service_id=?) as productCount from service_shops where id=?",
}