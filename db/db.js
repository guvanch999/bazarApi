const mysql=require('mysql');

var con = mysql.createConnection({
      host: "localhost",
      port:3308,
      user: "root",
      password: "fib11235",
      database:'bazar_tm'
    });
    

module.exports=con;