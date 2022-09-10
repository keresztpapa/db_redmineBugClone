from faker import Faker
import pandas as pd

faker = Faker()
faker.name()

pos = ["Angular-dev", ".NET-dev", "SQL-dev", "Fullstack-dev", "Tester"]

print(faker.name(), pos[0], faker.date_time_this_month())