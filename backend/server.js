const mysqldump = require('mysqldump');
const express = require('express');
const app = express();
const port = 3000;
const {resolve} = require('path');
const cron = require("node-cron");
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

cron.schedule('59 23 * * *', function(){
    mysqldump({
        connection: {
            host: 'localhost',
            user: 'root',
            password: 'admin',
            database: 'bugzilla',
        },
        dumpToFile: './backup.sql',
    });
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
                res.send(JSON.stringify(result));
                res.end();
            });
        });
        
        app.post('/get_table_content_to_cells', urlencodedParser,function (req, res){
            con.query(`SELECT * FROM ${global.arr[1]};`, (error, result) => {
                if (error) throw error;
                res.send(JSON.stringify(result));
                res.end();
            });
        });    
    }else{
        console.log("No table selected");    
    }
});

app.post('/mod_call', urlencodedParser,function (req, res){
    let response = req.body;
    let arr = ["","","",""];
    let strIndex = 0;
    let newArr = ["","","","","","",""];
    const str = new String(JSON.stringify(response));
    console.log(str);
    
    for(i=0;i<str.length;i++){
        if(i>3 && str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3) == "dele" || i>3 && str.charAt(i)+str.charAt(i+1)+str.charAt(i+2) == "mod"){
            strIndex++;
        }
        if(str.charAt(i).match(/[a-zA-Z_:0-9.@ -]/i)){
            arr[strIndex] += str.charAt(i);
        }
    }

    console.log(arr);
  
    res.end();
/*
    con.query(`UPDATE user SET name = '${newArr[3]}', email = '${newArr[5]}', birth = '${newArr[4]}' WHERE name = '${newArr[0]}' AND email = '${newArr[2]}'`, function (err, result) {
        if (err) throw err;
        console.log("UPDATED");
        console.log(JSON.stringify(result));
        res.end();
    });
*/
});  


app.post('/query_story', urlencodedParser,function (req, res){
    global.arr1 = ["",""];
    let strIndex = 0;
    const str = new String(JSON.stringify(req.body));
    
    for(i=0;i<str.length;i++){
        if(str.charAt(i).match(/[a-zA-Z_: ]/i)){
            if(str[i] == ":"){
                strIndex++;
            }else{            
                global.arr1[strIndex] += str.charAt(i);
            }    
        }
    }

    app.post('/query_story_points', urlencodedParser,function (req, res){
        let sql = `SELECT fejleszto.name, SUM(javitasok.storyPoint) AS gyujtott_pontok, COUNT(javitasok.storyPoint) as issue_darab_szama FROM fejleszto, korabbi_javitasok, javitasok WHERE fejleszto.name = '${global.arr1[1]}' AND fejleszto.email = korabbi_javitasok.fejleszto_email AND javitasok.id = korabbi_javitasok.id GROUP BY fejleszto.name;`;    
        con.query(sql, (error, result) => {
            if (error) throw error;
            console.log(JSON.stringify(result));
            res.send(JSON.stringify(result));
            res.end();
        });
    });    

});

app.listen(port, () => console.log(`App listening at http://localhost:${port}`));

/*
Fejlesztők Story Point-ja::
select fejleszto.name, SUM(javitasok.storyPoint) from fejleszto, korabbi_javitasok, javitasok where fejleszto.email = korabbi_javitasok.fejleszto_email AND javitasok.id = korabbi_javitasok.id GROUP BY fejleszto.name;

X fejleszto, milyen bugon milyen joggal van:
SELECT javitasok.id, fejleszto.name, admin, sudoer, editor FROM javitasok, fejleszto, jogosultsag, korabbi_javitasok WHERE javitasok.id = korabbi_javitasok.id AND fejleszto.email = korabbi_javitasok.fejleszto_email AND fejleszto.pos = jogosultsag.pos GROUP BY javitasok.id ORDER BY fejleszto.name;

*/ 