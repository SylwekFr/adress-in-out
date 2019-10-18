let express = require('express');
let tokenMapbox='put_your_token_here'; //put here your token
let app = express();

app.get('/', function(req, res) {
    res.render('map.ejs', {token: tokenMapbox});
})
.get('/map', function(req, res) {
    res.render('map.ejs', {token: tokenMapbox});
})
.get('/wmap', function(req, res) {
    res.render('wmap.ejs', {token: tokenMapbox});
})
.get('/drawarea', function(req, res) {
    res.render('drawarea.ejs', {token: tokenMapbox});
})
.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('404 not found');
});
app.listen(8080);