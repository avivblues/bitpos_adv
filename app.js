var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var mstritem = require('./routes/mstritem');
var mstraccount = require('./routes/mstraccount');
var mstrprodcat = require('./routes/mstrprodcat');
var mstrprodum = require('./routes/mstrprodum');
var mstrneraca = require('./routes/mstrneraca');
var home = require('./routes/home');

var app = express();
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
// set public directory for public access!!
app.use('/public', express.static('public'));

app.use('/', home);
app.use('/mstritem', mstritem);
app.use('/mstraccount', mstraccount);
app.use('/mstrprodcat', mstrprodcat);
app.use('/mstrprodum', mstrprodum);
app.use('/mstrneraca', mstrneraca);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
