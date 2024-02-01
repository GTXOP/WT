var mysql = require('mysql');
var conn = mysql.createConnection({
    host:'localhost',
    user:'root',
    password: '',
    database:'registerdb'
});


conn.connect(function(err){
    if(err)throw err;
    console.log('DataBase is connected successfully !');
});
module.exports = conn;