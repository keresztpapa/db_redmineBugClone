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
                  prev_ticket varchar(255),
                  pos varchar(255)
                )`;

let createBugs =`create table if not exists bugs(
                  story_point int,
                  tester varchar(255)
                )`;

connection.query(createUser, function (err, result) { if (err) throw err; console.log("User table added");});
connection.query(createBugs, function (err, result) { if (err) throw err; console.log("Bugs table added");});


////// DB Mock data insertion

////// User
var sql_UserName = "INSERT INTO user () VALUE ("+faker.name.firstName()+" "+faker.name.lastName()+"')";
connection.query(sql1, function (err, result) { if (err) throw err; console.log("User.name added"); });

for(i=0;i<Math.floor(Math.random() * 20);i++){

}



connection.end();

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