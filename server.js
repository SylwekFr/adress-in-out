let express = require('express');
let tokenMapbox='put_here_your_token'; //put here your token
let app = express();
let mysql = require('mysql');
let connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'area'
});
function callback(coordinates=[]){
    console.log(coordinates);
    return coordinates;
}
function getCoordinates() {
    connection.connect();
    let coordinates = [];
    return new Promise((resolve, reject) => {
        connection.query('SELECT AreaId AS areaNumber, longitude AS longitude, latitude AS latitude FROM coordinates', function (error, results, fields) {
            if (error) {
                reject(error);
            } else {
                let area=[];
                for (result of results) {
                    if (!area.includes(result.areaNumber)){
                        area.push(result.areaNumber)
                        coordinates[result.areaNumber]=[];
                    }
                    coordinate=[result.longitude,result.latitude];
                    coordinates[result.areaNumber].push(coordinate);
                }    
                resolve(coordinates);
                connection.end();
            }
        });
    })
}
app.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css'))
.use('/data', express.static(__dirname + '/data'));
app.get('/', function(req, res) {
    res.render('index.ejs');
})
.get('/map', async function(req, res) {
    let areaCoordinates= await getCoordinates();
    res.render('map.ejs', {token: tokenMapbox, areaCoordinates: areaCoordinates});
})
.get('/wmap', async function(req, res) {
    let areaCoordinates=await getCoordinates();
    res.render('wmap.ejs', {token: tokenMapbox, areaCoordinates: areaCoordinates});
})
.get('/drawarea', function(req, res) {
    res.render('drawarea.ejs', {token: tokenMapbox});
})
.use(function(req, res, next){
    res.setHeader('Content-Type', 'text/plain');
    res.status(404).send('404 not found');
});
app.listen(8080);