//// SETUP
var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'admin',
  database: 'bugzilla'
});

connection.connect();
console.log("connected");

///// DB Destroy
connection.query("DROP TABLE IF EXISTS `user`;", function (err, result) {if (err) throw err;});
connection.query("DROP TABLE IF EXISTS `bugs`;", function (err, result) {if (err) throw err;});
console.log("DB dropped\n");

////  DB Tables creation

let createUser =`create table if not exists user(
                  name varchar(255) not null,
                  pos varchar(255)
                )`;

connection.query(createUser, function (err, result) { if (err) throw err; console.log("User table added");});


////// DB Mock data insertion
////// User

for(i=0;i<10;i++){
  console.log(i);
  addUser(faker.name.firstName()+" "+faker.name.lastName());
}

console.log("Invoke connection end");
connection.end();


function addUser(fake_name){
  var sql_UserName_query = "SELECT name FROM user WHERE user.name = '"+[fake_name]+"'";
  var sql_UserName = "INSERT INTO user (name) VALUE ('"+[fake_name]+"')";

  connection.query(sql_UserName_query, function (err, result) { 
    if (err) throw err; 
    if(result.length > 0) { 
      addUser(faker.name.firstName()+" "+faker.name.lastName());
    }else{ 
      connection.query(sql_UserName, function (err, result) { if (err) throw err; console.log("User.name added"); });
    } 
  });
}




/*

connection.query("DELETE FROM bugs", function (err, result) {
    if (err) throw err;
    console.log("Bugs cleared");
});

for(i=0;i<5;i++){
  var sql1 = "INSERT INTO bugs (id, name) VALUE ("+i+", '"+faker.name.firstName()+"')";
  connection.query(sql1, function (err, result) {
    if (err) throw err;
    console.log("Data added");
  });
}


var sql1 = "INSERT INTO bugs (id, name) VALUE (1,'Mario')";
var sql2 = "INSERT INTO bugs (id, name) VALUE (2,'Peter')";

connection.query(sql1, function (err, result) {
  if (err) throw err;
  console.log("1 record inserted");
});

connection.query(sql2, function (err, result) {
  if (err) throw err;
  console.log("1 record inserted");
});

connection.query("SELECT * FROM bugs", function (err, result, fields) {
  if (err) throw err;
  console.log(result);
});

*/ 