var express = require('express');
var router = express.Router();
var db = require('./db');
/* GET master item page. */
router.get('/', function(req, res, next) {
	sql='SELECT * FROM setup_category where st_status="Y"';
	// execution sql and save result to "rows"
	db.query(sql, function(e, rows, f){if (!e) {
				res.render('mstrprodcat', {
				data: rows,
				title: 'Master Category',
				menu:"Master"
			});
		}
	});
});
router.post('/delete', function(req, res){
	db.query('UPDATE setup_category SET ? WHERE ?', [{ st_status: 'N' },req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('Changed status cat to N' + result.changedRows);
		res.send("OK");
	})
});
router.post('/update', function(req, res){
	db.query('UPDATE setup_category SET ? WHERE ?', [req.body.set,req.body.where],
		function (err, result,f){
		if (err) throw err;
		console.log('update data' + result.changedRows);
		res.send("OK");
	})
});
router.post('/create', function(req, res){
	db.query('insert into setup_category SET ?', [req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('A new car has been created.' + result.changedRows);
		res.send("OK");
	})
});

module.exports = router;
