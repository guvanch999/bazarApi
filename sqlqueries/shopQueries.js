module.exports = {
    SHOPDETAILSMINI:(params)=>`select * from shop where id=${params.id}`,
    SHOPDETAILSFULL:(params)=>`select * from shop where id=${params.id}`,
    SHOPADSBYID:(params)=>`select * from ads_fromshops where shop_id=${params.id}`,
    SHOPBANNERS:(params)=>`select * from banner where shop_id=${params.id}`,


    SHOPKATALOGS:(params)=>`select k.* from katalog as k inner join shop_katalog as sk on k.id=sk.katalog_id where sk.shop_id=${params.id}`,



    //su zaprosyn icinde 3 sany product image imageforshop true bolanyny chekmeli gelmeli
    //abuna bn product count lary hasaplap aldyrmaly
    //potpisatsya edileni barlamaly
    KATALOGSHOPS:(params)=>`select s.id as shop_id,s.shop_name,s.shop_nameRU,s.photo from shops as s inner join shop_katalog as sk on sk.shop_id=s.id and sk.katalog_id=${params.katalog_id}`,
    KSHOPIMAGES:(params)=>`select pp.photo  from product_photo as pp inner join product as p  on p.id=pp.product_id where pp.shop_id=${params.shop_id} and p.imgforshop=1;`,
    CHECKFOLLOW:(params)=>`select count(*) from follow where user_id=${params.user_id} and shop_id=${params.shop_id}`,
    COUNTOFFOLLOWERS:(params)=>`select count(*) from follow where shop_id=${params.shop_id}`,
    COUNTOFPRODUCTS:(params)=>`select count(*) from product where shop_id=${params.shop_id}`,
    //done


    BOLUM_SHOPS:(params)=>`select s.* from shop_bolum sb inner join shop s on s.id=sb.shop_id where sb.bolum_id=${params.bolum_id}`,
    //shop detailda yyly hasaplatmaly
    //shop detailda hasaplatmaly zatlar kop



    //arzanladysh pagede her skidkasy bolan produktly shoplary cykarmaly productlar bilen bile productlar arzanladysh boyuncha sortlanmaly
    //her dukana girende skidkadaky productlary chykarmaly

}
