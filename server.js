var express = require('express');

var app = express();

app.get('/', function(req, res) {
    res.render('map.ejs');
})
.get('/map', function(req, res) {
    res.render('map.ejs');
})
.get('/wmap', function(req, res) {
    res.render('wmap.ejs');
})
.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('404 not found');
});
app.listen(8080);