const express = require('express');
const app = express();
const port = 3000;
const {resolve} = require('path');
const index = resolve('../frontend/html/index.html');
const register = resolve('../frontend/html/registerPage.html');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
var path = require('path');
var mysql = require('mysql');
app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));

app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));
app.get('/register', (req, res) => res.sendFile(register));

var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'admin',
    database: 'bugzilla'
});

app.post('/add_user', urlencodedParser, function (req, res) {
    response = {
       first_name:req.body.first_name,
       last_name:req.body.last_name,
       pos:req.body.position
    };
    let sql = `INSERT INTO user (name, pos) VALUE('${req.body.first_name} ${req.body.last_name}', '${req.body.position}');`
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("record inserted");
    });
    console.log(response);
    res.end(JSON.stringify(response));
})

app.post('/clicked', urlencodedParser, (req, res) => {
    con.query("SELECT name FROM user", function (err, result, fields) { 
    console.log(JSON.stringify(result)); 
    res.send(JSON.stringify(result));
    res.end()
    /*    
    console.log(JSON.stringify(result[0].name)); 
    */
    });
});
app.listen(port, () => console.log(`App listening at http://localhost:${port}`));