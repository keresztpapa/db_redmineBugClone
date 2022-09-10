from faker import Faker

faker = Faker()

pos = ["Angular-dev", ".NET-dev", "SQL-dev", "Fullstack-dev", "Tester"]


class User:
    def __init__(self, nev, pozi, tickets, teams):
        self.name = nev
        self.pos = pozi
        self.prev_tickets = tickets
        self.team = teams


u = User(faker.name(), pos[0], [], "blue")
u1 = User(faker.name(), pos[2], ["xasxda", "asd01351as"], "blue")

#print(faker.name(), pos[0], faker.date_time_this_month(), faker.ssn())

print(u.name, u.pos, u.prev_tickets, u.team)
print(u1.name, u1.pos, u1.prev_tickets, u1.team)