const mysql=require('mysql');
const config=require('../configuration')
var con = mysql.createConnection({
      host: config.host,
      port:config.port,
      user: config.user,
      password: config.pass,
      database:config.dbname
});


module.exports=con;