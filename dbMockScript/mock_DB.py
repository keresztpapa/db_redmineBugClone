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
    fake_name = faker.name()
    position = ["tester", "frontend", "backend", "fullstack", "DevOps"]
    sql_fejleszto_Name_query = f"SELECT name FROM fejleszto WHERE fejleszto.name = '{fake_name}'"
    sql_fejleszto_Name = f"INSERT INTO fejleszto (name, email, pos) VALUE ('{fake_name}','{fake_name}@gmail.com' ,'{position[random.randint(0, 4)]}')"
    db.execute(sql_fejleszto_Name_query)
    res = db.fetchall()
    if len(res) == 0:
        db.execute(sql_fejleszto_Name)
    else:
        print("recall")
        addDev()

def addkorabbi_javitasok():
  #fetching db to query devs
  sql_fejleszto_Name_query = "SELECT name FROM fejleszto"
  db.execute(sql_fejleszto_Name_query)
  devs = db.fetchall()

  #random id for korabbi_javitasoks
  random_string = ''.join(random.choice(string.ascii_uppercase) for i in range(10))
  sql_randkorabbi_javitasok_query = f"SELECT id FROM korabbi_javitasok WHERE korabbi_javitasok.id = '{random_string}';"
  sql_randkorabbi_javitasok = f"INSERT INTO korabbi_javitasok (fejleszto_email, id) value ('{devs[random.randint(0, len(devs)-1)][0]}', '{random_string}')"

  db.execute(sql_randkorabbi_javitasok_query)
  res = db.fetchall()
  if len(res) == 0:
    db.execute(sql_randkorabbi_javitasok)
  else:
    print("recall")
    addkorabbi_javitasok()

def addjavitasok():
  #fetching db to query korabbi_javitasok ids
  sql_korabbi_javitasok_query = "SELECT id FROM korabbi_javitasok"
  db.execute(sql_korabbi_javitasok_query)
  res = db.fetchall()
  for i in range(len(res)):
    sql_javitasok_Ins = f"INSERT INTO javitasok (id, storyPoint, descript ,datum) value ('{res[i][0]}', '{str(random.randint(0,5))}',' Random leiras ','{faker.date_time_between(start_date='-30y', end_date='now')}');" 
    db.execute(sql_javitasok_Ins)

def addHibaReport():
  #hibaBejelentes( cim varchar(255), ticketSorszam int not null auto_increment, prioritas tinyint(10)
  for i in range(random.randint(1, 100)):
    sql_bug_report = f"INSERT INTO hibaBejelentes ( cim, prioritas) value ('{faker.paragraph(nb_sentences=1)}', '{str(random.randint(0,10))}');"
    db.execute(sql_bug_report)

# SETUP
faker = Faker()

connection = mysql.connector.connect(
  host= 'localhost',
  user= 'root',
  password= 'admin',
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
db.execute("create table if not exists javitasok( id varchar(255) not null, storyPoint tinyint(5) not null, descript varchar(255), datum varchar(255), primary key(id));")
db.execute("create table if not exists hibaBejelentes( cim varchar(255), ticketSorszam int not null auto_increment, prioritas tinyint(10), primary key(ticketSorszam));")
db.execute("create table if not exists jogosultsag(pos varchar(255), admin bit, sudoer bit, editor bit, primary key(pos));")

#DB Mock data insertion
#fejleszto_
#for i in range(50):
#  addDev()
    
#for i in range(50):
#  addkorabbi_javitasok()

#addjavitasok()

addHibaReport()
test("hibaBejelentes")
#test("fejleszto")
#test("korabbi_javitasok")
#test("javitasok")

connection.commit()