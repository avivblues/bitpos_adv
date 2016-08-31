var express = require('express');
var router = express.Router();
var db = require('./db');
/* GET master item page. */
router.get('/', function(req, res, next) {
	sql='SELECT * FROM setup_um where um_status="Y"';
	// execution sql and save result to "rows"
	db.query(sql, function(e, rows, f){if (!e) {
				res.render('mstrprodum', {
				data: rows,
				title: 'Master Unit Measure',
				menu:"Master"
			});
		}
	});
});
router.post('/delete', function(req, res){
	db.query('UPDATE setup_um SET ? WHERE ?', [{ um_status: 'N' },req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('Changed status um to N' + result.changedRows);
		res.send("OK");
	})
});
router.post('/update', function(req, res){
	//res.send(req.body.set);
	db.query('UPDATE setup_um SET ? WHERE ?', [req.body.set,req.body.where],
		function (err, result,f){
		if (err) throw err;
		console.log('update data' + result.changedRows);
		res.send("OK");
	})
});
router.post('/create', function(req, res){
	db.query('insert into setup_um SET ?', [req.body],
		function (err, result,f){
		if (err) throw err;
		console.log('A new um has been created.' + result.changedRows);
		res.send("OK");
	})
});

module.exports = router;
