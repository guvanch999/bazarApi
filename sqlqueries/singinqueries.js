module.exports={
      INSERTNEWNUMBER:"INSERT INTO verif(tel,code,timee) VALUES($1,$2,$3);",
      DELETEUPTIMEVERIF:"DELETE FROM verif WHERE timee < $1;",
      DELETENUMBER:"DELETE FROM verif WHERE tel=$1;",
      CHECKANDVERIFIE:"SELECT * FROM verif WHERE tel=$1;",
      CREATEUSER:"INSERT INTO users set ?;",
      UPDATEUSER:"update users set fullname=$2, f_token=$3  where tel=$1 returning *;",
      SELECTQUERY:"SELECT * FROM users WHERE tel_no=$1;",
      MAKESENDEDSMS:"UPDATE verifications SET sms_sended='1' where id=$1;"
}
