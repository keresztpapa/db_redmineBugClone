import random
import string
import mysql.connector
from faker import Faker

def test(str):
  db.execute(f"SELECT * FROM {str}")
  myresult = db.fetchall()
  for x in myresult:
    print(x)

def addUser():
    fake_name = faker.name()
    position = ["tester", "frontend", "backend", "fullstack", "DevOps"]
    sql_UserName_query = f"SELECT name FROM user WHERE user.name = '{fake_name}'"
    sql_UserName = f"INSERT INTO user (name, pos) VALUE ('{fake_name}', '{position[random.randint(0, 4)]}')"
    db.execute(sql_UserName_query)
    res = db.fetchall()
    if len(res) == 0:
        db.execute(sql_UserName)
    else:
        print("recall")
        addUser()

def addTicket():
  #fetching db to query devs
  sql_UserName_query = "SELECT name FROM user"
  db.execute(sql_UserName_query)
  devs = db.fetchall()

  #random id for tickets
  random_string = ''.join(random.choice(string.ascii_uppercase) for i in range(10))
  sql_randTicket_query = f"SELECT id FROM ticket WHERE ticket.id = '{random_string}';"
  sql_randTicket = f"INSERT INTO ticket (userName, id) value ('{devs[random.randint(0, len(devs)-1)][0]}', '{random_string}')"

  db.execute(sql_randTicket_query)
  res = db.fetchall()
  if len(res) == 0:
    db.execute(sql_randTicket)
  else:
    print("recall")
    addTicket()

def addIssue():
  #fetching db to query ticket ids
  sql_ticket_query = "SELECT id FROM ticket"
  db.execute(sql_ticket_query)
  res = db.fetchall()
  for i in range(len(res)):
    sql_Issue_Ins = f"INSERT INTO issue (issueTicket, storyPoint, datum) value ('{res[i][0]}', '{str(random.randint(0,5))}','{faker.date_time_between(start_date='-30y', end_date='now')}');" 
    db.execute(sql_Issue_Ins)

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
db.execute("DROP TABLE IF EXISTS user;")
db.execute("DROP TABLE IF EXISTS ticket;")
db.execute("DROP TABLE IF EXISTS issue;")

#DB Tables creation
db.execute("create table if not exists user( name varchar(255) not null, pos varchar(255), primary key(name));")
db.execute("create table if not exists ticket( userName varchar(255) not null, id varchar(255), primary key(id));")
db.execute("create table if not exists issue( issueTicket varchar(255) not null, storyPoint tinyint(5) not null, descript varchar(255), datum varchar(255), primary key(issueTicket));")


#DB Mock data insertion
#User
for i in range(50):
  addUser()
    
for i in range(50):
  addTicket()

addIssue()

test("user")
test("ticket")
test("issue")

connection.commit()