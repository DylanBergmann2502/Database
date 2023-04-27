-- % = any # characters, _ = one character

select *
from client
where client_name LIKE'%LLC%';

select *
from branch_supplier
where supplier_name LIKE'%label%';

select *
from employee
where birth_day like '____-10-%';

select *
from client
where client_name like '%school%';