module.exports = {
    GET_PRODUCT_FOR_ORDER: (productIds) => {
        let s = `select p.*,c.category_name,c.category_nameRU,s.subcategory_name,s.subcategory_nameRU,col.color_name,
                (select pp.photo from product_photo pp where pp.product_id=p.id order by pp.esasy desc limit 1) as productPhoto
                from product p 
                left join category c on c.id=p.category_id 
                left join subcategory s on s.id=p.subcategory_id 
                left join colors col on col.id=p.colors_id
                where p.id in (0,${productIds.map(x=>x.p_id).join(',')})`;
        console.log(s)
        return s
    },
    GET_SHOPS_OF_PRODUCTS: (shopsIds) => {
        let s = `select * from shop where id in (0,${shopsIds})`
        return s;
    },
    GET_PROMOKOD_FROM_USER: `select p.* from promokod_user pu inner join promokod p on p.id=pu.promokod_id and p.shop_id=? where pu.user_id=? and pu.used=0`,
    GET_BONUS_OF_USER: `select b.* from bonus_user bu inner join bonus b on b.id=bu.bonus_id and b.shop_id=? where bu.user_id=?`,
    GET_ARZANLADYSH_CARD: `select ak.* from arzanladysh_kart_user aku inner join arzanladysh_kart ak on ak.id=aku.arzanladysh_id and ak.shop_id=? where aku.user_id=?`,
    GET_KUPON_DATA_FOR_ORDER: 'select k.* from kupon_user ku inner join kupon k on k.id=ku.kupon_id and k.shop_id=? where ku.user_id=?',

    GET_BONUS_BANK: `select b.*,bb.balans,s.shop_name,s.shortDescription,s.shortDescriptionRU from bonus_bank bb inner join bonus b on b.shop_id=bb.shop_id inner join shop s on s.id=bb.shop_id where  bb.user_id=?`,
    DECREESE_BONUCE_BANK: "update bonus_bank set balans-? where shop_id=(select shop_id from bonus where id = ? limit 1) and user_id=?",
    INCRASE_BONUS_BANK: 'update bonus_bank set balans+? where shop_id=(select shop_id from bonus where id = ? limit 1) and user_id=?',


    GET_ALL_PROMOCODES: "select p.*,pu.used from promokod p left join promokod_user pu on pu.promokod_id=p.id and pu.user_id=?",
    USE_PROMOCODE: "insert into promokod_user set ?",
    PROMOCODE_MAKE_USED: "update promokod_user set used=1 where promokod_id=? and user_id=?",


    GET_ALL_USER_ARZANLADYSH_KART: 'select ak.*,aku.kod from arzanladysh_kart_user aku inner join arzanladysh_kart ak on ak.id=aku.arzanladysh_id where aku.status=1',

    GET_KUPON_DATA: 'select k.* from kupon_user ku inner join kupon k on k.id=ku.kupon_id  where ku.user_id=?',
    MAKE_ORDER: "insert into sargytlar set  ?",
    ADD_TO_BONUS_BANK: 'update bonus_bank set balans=balans+? where shop_id=? and user_id=?',
    DECREESE_BONUSE_BANK: "update bonus_bank set balans=balans-? where shop_id=? and user_id=?",
    GET_MY_ORDERS: () => {
        let s = "select sh.photo,sh.vip, s.id,s.sargyt_kody,sh.shop_name,sh.shortDescription as shopShortDescription,s.wagty,s.jemi_summa,(select count(*) from sargyt_produkt sp where sp.sargytlar_id=s.id) as productCount,ss.name as status from sargytlar s " +
            "inner join shop sh on sh.id=s.shop_id " +
            "inner join sargyt_status ss on ss.id=s.status_id where s.user_id=?"
        console.log(s)
        return s
    },
    GET_ORDER_DETAIL_BY_ID: () => {
        let s = "select sh.photo as shopPhoto,sh.vip, ua.name as userName,ua.phone,ua.adress_koche,concat(aw.name,' / ',a.name) as addresName, sh.shop_name,sh.shortDescription as shopShortDescription,ss.name as status,s.* from sargytlar s " +
            "inner join shop sh on sh.id=s.shop_id " +
            "left join user_adress ua on ua.id=s.user_adress_id " +
            "left join adress a on a.id=ua.adress_id " +
            "left  join adress_welayat aw on a.adress_welayat_id=aw.id " +
            "inner join sargyt_status ss on ss.id=s.status_id where s.id=? and s.user_id=?"
        console.log(s)
        return s;
    },
    GET_PRODUCT_FOR_LIST: () => {
        let s = `select  p.*,c.category_name,c.category_nameRU,s.subcategory_name,s.subcategory_nameRU,col.color_name, sizes.name as sizeName,sp.count,
                (select pp.photo from product_photo pp where pp.product_id=p.id order by pp.esasy desc limit 1) as productPhoto
                from sargyt_produkt sp
                inner join product p on p.id=sp.product_id
                left join category c on c.id=p.category_id 
                left join subcategory s on s.id=p.subcategory_id 
                left join colors col on col.id=p.colors_id
                left join sizes on sizes.id=sp.sizes_id
                where sp.sargytlar_id=?`;
        console.log(s)
        return s
    },
    GET_SIZE_BY_ID: 'select * from sizes where id=?',
    GET_SHOP_NAME: 'select shop_name from shop where id=?',
    UPDATE_ORDER_KODE: "update sargytlar set sargyt_kody=? where id=?"
}