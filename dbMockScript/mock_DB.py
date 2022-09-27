import mysql.connector
from faker import Faker

def addUser(fake_name):
    sql_UserName_query = "SELECT name FROM user WHERE user.name = '"+fake_name+"'"
    sql_UserName = "INSERT INTO user (name) VALUE ('"+fake_name+"')"
    db.execute(sql_UserName_query)
    res = db.fetchall()
    if len(res) >= 0:
        db.execute(sql_UserName)
    else:
        print("recall")
        addUser(faker.name())

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
db.execute("DROP TABLE IF EXISTS `user`;")
db.execute("DROP TABLE IF EXISTS `bugs`;")

#DB Tables creation
db.execute("create table if not exists user( name varchar(255) not null, pos varchar(255));")

#DB Mock data insertion
#User
for i in range(50):
    addUser(faker.name())


db.execute("SELECT * FROM user")
myresult = db.fetchall()
for x in myresult:
  print(x)


connection.commit()