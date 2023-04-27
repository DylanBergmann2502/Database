select first_name AS company_name
from employee
UNION
select branch_name
from  branch
UNION
select client_name
from  client;

select supplier_name, branch_id AS list_of_all_suppliers_and_clients
from branch_supplier
UNION
select client_name, branch_id
from  client;

select total_sales AS list_of_all_money_earned_and_spent
from works_with
UNION
select salary
from  employee;