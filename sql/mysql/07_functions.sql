select * from employee;

select count(emp_id)
from employee;

select count(super_id)
from employee;

select count(emp_id)
from employee
Where sex = 'F' AND birth_day > '1971-01-01';

select AVG(salary)
from employee
where sex ='M';

select sum(salary)
from employee;

select sex, count(sex)
from employee
GROUP BY sex;

select emp_id, sum(total_sales)
from works_with
GROUP BY emp_id;

select client_id, sum(total_sales)
from works_with
GROUP BY client_id;