
var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'admin',
  database: 'bugzilla'
});

connection.connect();
console.log("connected");

connection.query("DELETE FROM bugs", function (err, result) {
    if (err) throw err;
    console.log("Bugs cleared");
});

connection.end();


/*

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