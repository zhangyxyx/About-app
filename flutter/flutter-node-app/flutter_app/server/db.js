
var mysql = require('mysql');     //引入mysql模块
 
var connection = mysql.createConnection({      //创建mysql实例
    host:'localhost',
    user:'root',
    password:'123456',
    database:'mysqlzhang',
    connectionLimit:10,
    supportBigNumbers:true
});

module.exports = connection;

