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
    GET_NEWS_IMAGES:`select * from tazelik_photo where tazelik_id=?`,
    GET_NEWS_DETAIL:'select * from tazelik where id=?'
}