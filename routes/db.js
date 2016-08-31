var mysql = require('mysql');
var conn = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'posdb'
});
conn.connect(function(err) {
	if(err){
    	console.log('Error connecting to Db');
    	return;
    }
	console.log('DB Connection established');
});

module.exports = conn;