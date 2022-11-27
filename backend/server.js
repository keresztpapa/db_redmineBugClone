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
const { application } = require('express');
app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));

const index = resolve('../frontend/html/index.html');
const register = resolve('../frontend/html/registerPage.html');
const report = resolve('../frontend/html/report.html');
const database = resolve('../frontend/html/database.html');
const jogos = resolve('../frontend/html/jogos.html');
const javitasok = resolve('../frontend/html/javitasok.html');
const javitasok_fejleszt = resolve('../frontend/html/javitasok_fejlesztoknek.html');
const from_report_to_dev = resolve('../frontend/html/report_to_dev.html');
app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));
app.get('/register', (req, res) => res.sendFile(register));
app.get('/report', (req, res) => res.sendFile(report));
app.get('/database', (req, res) => res.sendFile(database));
app.get('/jogos', (req, res) => res.sendFile(jogos));
app.get('/javitasok', (req, res) => res.sendFile(javitasok));
app.get('/javitasok_fejlesztoknek', (req, res) => res.sendFile(javitasok_fejleszt));
app.get('/report_to_dev', (req, res) => res.sendFile(from_report_to_dev));
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

app.post('/give_issue_to_dev', urlencodedParser, function (req, res) {
    var dev_name = req.body.developers_load;
    var issue_id = req.body.issue_load;

    con.query(`SELECT email FROM fejleszto WHERE name = '${dev_name}';`, function (err, result) {
        if (err) throw err;

        let sql = `UPDATE korabbi_javitasok SET fejleszto_email = '${result[0].email}' WHERE id = '${issue_id}';`
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("record inserted");
        });
        
    });
});

app.post('/devs_working_on_reports', urlencodedParser, function (req, res) {    
    global.arr2 = ["",""];
    let strIndex = 0;
    const str = new String(JSON.stringify(req.body));
    
    for(i=0;i<str.length;i++){
        if(str.charAt(i).match(/[a-zA-Z_: ]/i)){
            if(str[i] == ":"){
                strIndex++;
            }else{            
                global.arr2[strIndex] += str.charAt(i);
            }    
        }
    }

    app.post('/devs_working_on_reports_query', urlencodedParser,function (req, res){
        let sql = `SELECT sub.cim FROM fejleszto, (SELECT cim, fejleszto_email as email FROM hibaBejelentes, korabbi_javitasok WHERE ticketSorszam = id) as sub WHERE sub.email = fejleszto.email AND fejleszto.name = '${global.arr2[1]}' GROUP BY sub.cim;`;         
            con.query(sql, (error, result) => {
            if (error) throw error;
            console.log(JSON.stringify(result));
            res.send(JSON.stringify(result));
            res.end();
        });
    });    


});


app.post('/add_permission', urlencodedParser, function (req, res) {
    var sudoer = 0;
    var editor = 0;
    var admin = 0;

    if(req.body.admin) admin = 1;
    if(req.body.sudoer) sudoer = 1;
    if(req.body.editor) editor = 1;

    let sql = `INSERT INTO jogosultsag (pos,  admin, sudoer, editor) VALUE('${req.body.pos}', '${admin}', '${sudoer}', '${editor}');`
    
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("record inserted");
    });
});

app.post('/add_report', urlencodedParser, function (req, res) {
    let sql = `INSERT INTO hibaBejelentes (cim, prioritas) VALUE('${req.body.cim}', '${req.body.prior}');`
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("record inserted");
    });
});

app.post('/add_user', urlencodedParser, function (req, res) {
    let sql = `INSERT INTO fejleszto (name, email, pos) VALUE('${req.body.first_name} ${req.body.last_name}', '${req.body.first_name}_${req.body.last_name}@gmail.com', '${req.body.position}');`
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("record inserted");
    });
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

app.post('/list_issue', urlencodedParser, function (req, res) {
    con.query(`SELECT id FROM korabbi_javitasok;`, function (err, result) {
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
    let arr = ["","","","","","","","","","","","","","","","","","","","",""];
    let strIndex = 0;
    const str = new String(JSON.stringify(response));
    for(i=0;i<str.length;i++){
        if(i>3 && str.charAt(i) == ":" || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2) == "arr" || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3) == "data"
            || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3) == "orig"){
            strIndex++;
        }
        if(str.charAt(i).match(/[a-zA-Z_0-9.@ -]/i)){
            arr[strIndex] += str.charAt(i);
        }
    }
    var opt_arr = [];
    for(i=0;i<arr.length;i++){
        if(arr[i] != 'arr' && arr[i] != 'data' && arr[i] != '' && arr[i] != 'original_arr') opt_arr.push(arr[i]);
    }
    res.end();
    var actual_table_names = [];
    var sql = `UPDATE ${arr[1]} SET`;

    con.query(`DESCRIBE ${opt_arr[1]};`, (error, result) => {
        if (error) throw error;
        for(i=0;i<result.length;i++){
            actual_table_names.push(result[i].Field);
        }
        
        for(i=0;i<actual_table_names.length;i++){
            sql += ` ${actual_table_names[i]} = '${opt_arr[i+2]}'`;
            if(i < actual_table_names.length-1) sql += ", ";
        }

        var original_arr = [];
        for(i=0;i<opt_arr.length;i++){
            if(opt_arr[i] == "original_"){
                for(j=i;j<opt_arr.length;j++){
                    original_arr.push(opt_arr[j]);
                }
            }
        }

        sql += " WHERE ";

        for(i=0;i<actual_table_names.length;i++){
            sql += ` ${actual_table_names[i]} = '${original_arr[i+1]}'`;
            if(i < actual_table_names.length-1) sql += " AND ";
        }

        sql += ";";

        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("UPDATED");
        });

    });
});  

app.post('/del_call', urlencodedParser,function (req, res){
    let response = req.body;
    let arr = ["","","","","","","","","","","","","","","","","","","","",""];
    let strIndex = 0;
    const str = new String(JSON.stringify(response));
    for(i=0;i<str.length;i++){
        //if(i>3 && str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3)+str.charAt(i+4) == `data`){
        if(i>3 && str.charAt(i) == ":" || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2) == "arr" || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3) == "data"
            || str.charAt(i)+str.charAt(i+1)+str.charAt(i+2)+str.charAt(i+3) == "orig"){
            strIndex++;
        }
        if(str.charAt(i).match(/[a-zA-Z_0-9.@ -]/i)){
            arr[strIndex] += str.charAt(i);
        }
    }
    var opt_arr = [];
    for(i=0;i<arr.length;i++){
        if(arr[i] != 'arr' && arr[i] != 'data' && arr[i] != '' && arr[i] != 'original_arr') opt_arr.push(arr[i]);
    }
    res.end();
    var actual_table_names = [];
    var sql = `DELETE FROM ${arr[1]} WHERE`;

    con.query(`DESCRIBE ${opt_arr[1]};`, (error, result) => {
        if (error) throw error;
        for(i=0;i<result.length;i++){
            actual_table_names.push(result[i].Field);
        }

        var original_arr = [];
        for(i=0;i<opt_arr.length;i++){
            if(opt_arr[i] == "original_"){
                for(j=i;j<opt_arr.length;j++){
                    original_arr.push(opt_arr[j]);
                }
            }
        }
        
        for(i=0;i<actual_table_names.length;i++){
            sql += ` ${actual_table_names[i]} = '${original_arr[i+1]}'`;
            if(i < actual_table_names.length-1) sql += " AND ";
        }

        sql += ";";
        console.log(sql);
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("DELETED");
        });

    });
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

app.post('/query_role', urlencodedParser,function (req, res){
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

    app.post('/query_role_issue', urlencodedParser,function (req, res){
        let sql = `SELECT javitasok.id, admin, sudoer, editor FROM javitasok, fejleszto, jogosultsag, korabbi_javitasok WHERE fejleszto.name = '${global.arr1[1]}' AND javitasok.id = korabbi_javitasok.id AND fejleszto.email = korabbi_javitasok.fejleszto_email AND fejleszto.pos = jogosultsag.pos GROUP BY javitasok.id ORDER BY fejleszto.name;`;         
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


SELECT fejleszto.name, sub.cim FROM fejleszto, (SELECT cim, fejleszto_email as email FROM hibaBejelentes, korabbi_javitasok WHERE ticketSorszam = id) as sub WHERE sub.email = fejleszto.email AND fejleszto.name = '${arr[1]}' GROUP BY sub.cim;
*/  