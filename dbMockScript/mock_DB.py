import random
import string
import mysql.connector
from faker import Faker

def addUser(fake_name):
    position = ["tester", "frontend", "backend", "fullstack", "DevOps"]
    sql_UserName_query = "SELECT name FROM user WHERE user.name = '"+fake_name+"'"
    sql_UserName = "INSERT INTO user (name, pos) VALUE ('"+fake_name+"', '"+position[random.randint(0, 4)]+"')"
    db.execute(sql_UserName_query)
    res = db.fetchall()
    if len(res) == 0:
        db.execute(sql_UserName)
    else:
        print("recall")
        addUser(faker.name())


def addTicket():
  #fetching db to query devs
  sql_UserName_query = "SELECT name FROM user"
  db.execute(sql_UserName_query)
  devs = db.fetchall()

  #random id for tickets
  random_string = ''.join(random.choice(string.ascii_uppercase) for i in range(10))
  sql_randTicket_query = "SELECT id FROM ticket WHERE ticket.id = '"+random_string+"';"
  sql_randTicket = "INSERT INTO ticket (userName, id) value ('"+devs[random.randint(0, len(devs)-1)][0]+"', '"+random_string+"')"

  db.execute(sql_randTicket_query)
  res = db.fetchall()
  if len(res) == 0:
    db.execute(sql_randTicket)
  else:
    print("recall")
    addTicket()


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


#DB Tables creation
db.execute("create table if not exists user( name varchar(255) not null, pos varchar(255), primary key(name));")
db.execute("create table if not exists ticket( userName varchar(255) not null, id varchar(255), primary key(id));")


#DB Mock data insertion
#User
for i in range(50):
    addUser(faker.name())
    
for i in range(50):
  addTicket()

db.execute("SELECT * FROM user")
myresult = db.fetchall()
for x in myresult:
  print(x)

db.execute("SELECT * FROM ticket")
myresult = db.fetchall()
for x in myresult:
  print(x)

connection.commit()