const express = require('express');
const app = express();
const port = 3000;
const {resolve} = require('path');
const index = resolve('../frontend/index.html');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
var path = require('path');
var mysql = require('mysql');
app.use(express.static(path.join(__dirname, '../frontend')));

app.get('/', (req, res) => res.sendFile(index));

var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'admin',
    database: 'bugzilla'
  });

app.post('/process_post', urlencodedParser, function (req, res) {
    response = {
       first_name:req.body.first_name,
       last_name:req.body.last_name
    };
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
    res.send(JSON.stringify(result[0].name));
    res.end()
    */
    });
});
app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`));