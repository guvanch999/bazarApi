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
      GET_USER_FOR_LOGIN:`select * from users where tel=?`
}