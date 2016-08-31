var express = require('express');
var router = express.Router();
var db = require('./db');
/* GET master item page. */
router.get('/', function(req, res, next) {
	var getalltype;
	gettypecoa(function(cbk){
		getalltype = cbk;
		//console.log(getalltype);
	});
	if (typeof req.query.page === 'undefined' || req.query.page === null) {
		sql='SELECT * FROM mstr_coa where mstr_status="Y" LIMIT 10 OFFSET 0';
	}else{
		sql='SELECT * FROM mstr_coa where mstr_status="Y" LIMIT '+req.query.show+' OFFSET '+req.query.page+'';
	}
	// SELECT * FROM setup_category LIMIT 1 OFFSET 3;
	
	// execution sql and save result to "rows"
	db.query(sql, function(e, rows, f){
		if (!e) {
				res.render('mstraccount', {
				coatype: getalltype,
				data: rows,
				title: 'Master COA',
				menu:"Master"
			});
		}
	});
});
router.post('/delete', function(req, res){
	db.query('UPDATE mstr_coa SET ? WHERE ?', [{ mstr_status: 'N' },req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('Changed status item to N' + result.changedRows);
		res.send("OK");
	})
});
router.post('/update', function(req, res){
	db.query('UPDATE mstr_coa SET ? WHERE ?', [req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('Changed status item to N' + result.changedRows);
		res.send("OK");
	})
});
router.post('/create', function(req, res){
	db.query('insert into mstr_coa SET ?', [req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('A new COA has been created.' + result.changedRows);
		res.send("OK");
	})
});
function gettypecoa(callback) {
	var sql = 'Select distinct(mstr_type) as "mstr_type" from mstr_coa where mstr_status="Y"';
	db.query(sql, function(err,rows,f){
		callback(rows);
	});
}
module.exports = router;
