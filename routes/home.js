var express = require('express');
var router = express.Router();
var db = require('./db');

/* GET home page. */
router.get('/', function(req, res, next) {
	sql='SELECT * FROM mstr_item';
	// execution sql and save result to "rows"
	db.query(sql, function(e, rows, f) {
		if (!e) {
			res.render('home', {
				data: rows,
				title: 'Home Page',
				menu:"dashboard"
			});
		}
	});
});
module.exports = router;
