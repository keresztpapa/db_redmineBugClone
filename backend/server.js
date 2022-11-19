const express = require('express');
const app = express();
const port = 3000;
const {resolve} = require('path');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
var path = require('path');
var mysql = require('mysql');
app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));

const index = resolve('../frontend/html/index.html');
const register = resolve('../frontend/html/registerPage.html');
const report = resolve('../frontend/html/report.html');
const database = resolve('../frontend/html/database.html');


app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));
app.get('/register', (req, res) => res.sendFile(register));
app.get('/report', (req, res) => res.sendFile(report));
app.get('/database', (req, res) => res.sendFile(database));


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
});

app.post('/list_devs', urlencodedParser, function (req, res) {
    con.query(`SELECT name FROM fejleszto;`, function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
        res.send(JSON.stringify(result));
        res.end();
    });
    console.log("FETCH DONE");
});

app.post('/dev_pos_tickets', urlencodedParser,function (req, res) {
    let arr = ["", ""];
    let strIndex = 0;
    const str = new String(JSON.stringify(req.body));
    console.log(str);

    for(i=0;i<str.length;i++){
        if(str.charAt(i).match(/[a-zA-Z: ]/i)){
            if(str[i] == ":"){
                strIndex++;
            }else{            
                arr[strIndex] += str.charAt(i);
            }    
        }
    }
    if(arr[1] == "") {
        console.log("No user selected");
    }else{    
        con.query(`SELECT * FROM fejleszto WHERE name = '${arr[1]}';`, (error, result) => {
        if (error) throw error;
        console.log(JSON.stringify(result[0]));
        var data = JSON.stringify(result[0]);
            app.post('/get_user', urlencodedParser,function (req, res){
                res.send(data);
                res.end();
            });
        
        });
    }
});

app.post('/load_tables', urlencodedParser, function (req, res) {
    con.query(`show tables;`, function (err, result) {
        if (err) throw err;
        res.send(JSON.stringify(result));
        res.end();
    });
});

//var arr = ["", ""];
//global.arr;
app.post('/load_table_content', urlencodedParser, function (req, res) {
    global.arr = ["",""];
    let strIndex = 0;
    const str = new String(JSON.stringify(req.body));
    
    for(i=0;i<str.length;i++){
        if(str.charAt(i).match(/[a-zA-Z_: ]/i)){
            if(str[i] == ":"){
                strIndex++;
            }else{            
                global.arr[strIndex] += str.charAt(i);
            }    
        }
    }
    if(global.arr[1] != "") {
        app.post('/get_table_names', urlencodedParser,(req, res) => {
            con.query(`DESCRIBE ${global.arr[1]};`, (error, result) => {
                if (error) throw error;
                console.log("Post-on belül:\n"+JSON.stringify(result));
                res.send(JSON.stringify(result));
                res.end();
            });
        });
        
        app.post('/get_table_content_to_cells', urlencodedParser,function (req, res){
            con.query(`SELECT * FROM ${global.arr[1]};`, (error, result) => {
                if (error) throw error;
                console.log(JSON.stringify(result));
                res.send(JSON.stringify(result));
                res.end();
            });
        });    
    }else{
        console.log("No table selected");    
    }
});
app.listen(port, () => console.log(`App listening at http://localhost:${port}`));