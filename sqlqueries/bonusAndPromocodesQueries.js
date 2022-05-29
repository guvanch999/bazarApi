module.exports = {
    GET_ALL_PROMOCODES:"select * from promokod where count>0",
    USE_PROMOCODE:"insert into promokod_user set ??",
    DECRISE_PROMOCODE_COUNT:"update promokod set count=count-1 where id=?",
    PROMOCODE_MAKE_USED:"update promokod_user set used=1 where id=?",
    GET_PROMOCODE_BY_USERID_AND_SHOPID:"select pu.id,pu.used,p.pul_mukdary,p.promo_kod from promokod_user pu inner join promokod p on p.id=pu.promokod_id and p.shop_id=? where pu.user_id=? ",



    GET_BONUCE_BANK:""
}