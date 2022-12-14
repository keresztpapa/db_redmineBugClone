import random
import string
import mysql.connector
from faker import Faker

def test(str):
  db.execute(f"SELECT * FROM {str}")
  myresult = db.fetchall()
  for x in myresult:
    print(x)

def addDev():
    faker_first = faker.first_name()
    faker_last = faker.last_name()
    fake_name = faker_first +" "+ faker_last
    position = ["tester", "frontend", "backend", "fullstack", "DevOps"]
    sql_fejleszto_Name_query = f"SELECT name FROM fejleszto WHERE fejleszto.name = '{fake_name}'"
    sql_fejleszto_Name = f"INSERT INTO fejleszto (name, email, pos) VALUE ('{fake_name}','{faker_first}_{faker_last}@gmail.com' ,'{position[random.randint(0, 4)]}')"
    db.execute(sql_fejleszto_Name_query)
    res = db.fetchall()
    if len(res) == 0:
        db.execute(sql_fejleszto_Name)
    else:
        print("recall")
        addDev()

def addkorabbi_javitasok():
  #fetching db to query devs
  sql_fejleszto_Name_query = "SELECT email FROM fejleszto"
  db.execute(sql_fejleszto_Name_query)
  devs = db.fetchall()

  sql_jav_id = "SELECT id FROM javitasok"
  db.execute(sql_jav_id)
  id_j = db.fetchall()

  #random id for korabbi_javitasoks
  for i in range(len(id_j)):
    sql_randkorabbi_javitasok = f"INSERT INTO korabbi_javitasok (fejleszto_email, id) value ('{devs[random.randint(0, len(devs)-1)][0]}', '{id_j[i][0]}')"
    db.execute(sql_randkorabbi_javitasok)
  
def addjavitasok():
  #fetching db to query korabbi_javitasok ids
  sql_report_query = "SELECT ticketSorszam FROM hibaBejelentes"
  db.execute(sql_report_query)
  res = db.fetchall()
  for i in range(len(res)):
    sql_javitasok_Ins = f"INSERT INTO javitasok (id, storyPoint, descript) value ('{res[i][0]}', '{str(random.randint(0,5))}','{faker.paragraph(nb_sentences=1)}');" 
    db.execute(sql_javitasok_Ins)

def addHibaReport():
  #hibaBejelentes( cim varchar(255), ticketSorszam int not null auto_increment, prioritas tinyint(10)
  for i in range(random.randint(1, 100)):
    sql_bug_report = f"INSERT INTO hibaBejelentes ( cim, prioritas) value ('{faker.paragraph(nb_sentences=1)}', '{str(random.randint(0,10))}');"
    db.execute(sql_bug_report)

def addJog():
  sql_pos_query = "SELECT pos FROM fejleszto GROUP BY pos;"
  db.execute(sql_pos_query)
  pos = db.fetchall()
  for i in range(len(pos)):
    sql_pos_ins = f"INSERT INTO jogosultsag (pos, admin, sudoer, editor) value('{pos[i][0]}', '{random.randint(0,1)}', '{random.randint(0,1)}', '{random.randint(0,1)}')"
    db.execute(sql_pos_ins)

# SETUP
faker = Faker()

connection = mysql.connector.connect(
  host= 'localhost',
  user= 'root',
  password = 'admin',
  database= 'bugzilla'
)

db = connection.cursor()
print("connected")

# DB Destroy
db.execute("DROP TABLE IF EXISTS fejleszto;")
db.execute("DROP TABLE IF EXISTS korabbi_javitasok;")
db.execute("DROP TABLE IF EXISTS javitasok;")
db.execute("DROP TABLE IF EXISTS hibaBejelentes;")
db.execute("DROP TABLE IF EXISTS jogosultsag;")

#DB Tables creation
db.execute("create table if not exists fejleszto( name varchar(255) not null, email varchar(255), pos varchar(255), primary key(email));")
db.execute("create table if not exists korabbi_javitasok( fejleszto_email varchar(255) not null, id varchar(255), primary key(id));")
db.execute("create table if not exists javitasok( id int not null, storyPoint tinyint(5) not null, descript varchar(255), primary key(id));")
db.execute("create table if not exists hibaBejelentes( cim varchar(255), ticketSorszam int not null auto_increment, prioritas tinyint(10), primary key(ticketSorszam));")
db.execute("create table if not exists jogosultsag(pos varchar(255), admin tinyint(1), sudoer tinyint(1), editor tinyint(1), primary key(pos));")

#DB Mock data insertion
#fejleszto_
for i in range(10):
  addDev()

addHibaReport()
addjavitasok()  
addkorabbi_javitasok()


addJog()

test("hibaBejelentes")
test("fejleszto")
test("korabbi_javitasok")
test("javitasok")
test("jogosultsag")

connection.commit()