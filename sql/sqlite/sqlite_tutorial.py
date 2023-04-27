import sqlite3
from employee import Employee

conn = sqlite3.connect(':memory:') # employee.db
# memory use ram => cleans out and starts fresh with every use

c = conn.cursor()

c.execute("""CREATE TABLE employees (
           first text,
           last text,
           pay integer
           )""")

c.execute("INSERT INTO employees VALUES ('Corey','Shafer', 50000)") # executemany => list of values
c.execute("INSERT INTO employees VALUES ('Mary','Shafer', 50000)")

emp_1 = Employee('John', 'Doe', 80000)
emp_2 = Employee('Jane', 'Doe', 90000)

# String formatting => Bad practice due to being prone to attacks
c.execute("INSERT INTO employees VALUES ('{}','{}','{}')".format(emp_1.first, emp_1.last, emp_1.pay))

# Good practice
c.execute("INSERT INTO employees VALUES (?,?,?)", (emp_1.first, emp_1.last, emp_1.pay))
c.execute("INSERT INTO employees VALUES (:first,:last,:pay)",
         {'first': emp_2.first, 'last': emp_2.last, 'pay':emp_2.pay})

# No need for specifying auto incrementing pk with SQLite
c.execute("SELECT rowid, * FROM employees WHERE last = ?", ('Shafer',))

print(c.fetchall()) # fetchone(), fetchmany(number), fetchall()

c.execute("SELECT * FROM employees WHERE last=:last", {'last':'Doe',})

print(c.fetchall())

conn.commit()

###############################################

def insert_emp(emp):
    with conn: # use this to close connection => no need for commit()
        c.execute("INSERT INTO employees VALUES (:first,:last,:pay)",
              {'first': emp.first, 'last': emp.last, 'pay':emp.pay})

def get_emps_by_name(lastname):
    c.execute("SELECT * FROM employees WHERE last=:last", {'last': lastname})
    return c.fetchall()

def update_pay(emp, pay):
    with conn:
        c.execute("""UPDATE employees SET pay = :pay
                    WHERE first = :first AND last = :last""",
                  {'first': emp.first, 'last': emp.last, 'pay': pay})

def remove_emp(emp):
    with conn:
        c.execute("DELETE from employees WHERE first = :first AND last = :last",
                  {'first': emp.first, 'last': emp.last})

insert_emp(emp_1)
insert_emp(emp_2)
emps = get_emps_by_name('Doe')
print(emps)

update_pay(emp_2, 95000)
remove_emp(emp_1)
emps = get_emps_by_name('Doe')
print(emps)

conn.close()