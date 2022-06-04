module.exports={
      INSERTNEWNUMBER:"INSERT INTO verif set ? ",
      DELETEUPTIMEVERIF:"DELETE FROM verif WHERE timee < ",
      DELETENUMBER:"DELETE FROM verif WHERE tel=",
      CHECKANDVERIFIE:"SELECT * FROM verif WHERE tel=",
      CREATEUSER:"INSERT INTO users set ?;",
      UPDATEUSER:"update users set ? where id=?;",
      SELECTQUERY:"SELECT * FROM users WHERE tel_no=$1;",
      MAKESENDEDSMS:"UPDATE verifications SET sms_sended='1' where id=$1;",
      gte_all_users:"select * from users;",
      GET_USER_FOR_LOGIN:`select * from users where tel=?`,
      GET_ALL_USER_COUNTS:`select 
                           (select count(*) from arzanladysh_kart_user where user_id=?) as arzanladyshCardCount,
                           (select count(*) from bonus_user where user_id=?) as bonusCardCount,
                           (select count(*) from follow where user_id=?) as arzanladyshCardCount,
                           (select count(*) from promokod_user where user_id=?) as promoCodeCount,
                           (select count(*) from sargytlar where user_id=?) as orderCount`,
      GET_USER_ADDRESSES:'select ua.*,a.name as adressName,aw.name as welayatName ' +
          'from user_adress ua ' +
          'inner join adress a on a.id=ua.adress_id ' +
          'inner join adress_welayat aw on aw.id=a.adress_welayat_id ' +
          'where ua.user_id=?'

}
