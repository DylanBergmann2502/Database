SeLECT employee.first_name, client.client_name, works_with.total_sales
from works_with
JOIN employee
ON employee.emp_id = works_with.emp_id
JOIN client
ON works_with.client_id = client.client_id
where total_sales > 30000;

SeLECT employee.first_name, employee.last_name
from employee
Where employee.emp_id IN (
    SeLECT works_with.emp_id
    from works_with
    where works_with.total_sales >30000
);

select client.client_name
from client
where client.branch_id = (
    select branch.branch_id
    from branch
    join employee
    on employee.emp_id = branch.mgr_id
    where employee.first_name = 'Michael'
    LIMIT 1
);