let express = require('express');
let tokenMapbox='here_your_token'; //put here your token
let app = express();
app.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css'))
app.get('/', function(req, res) {
    res.render('index.ejs');
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