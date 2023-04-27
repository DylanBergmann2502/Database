INSERT INTO branch VALUES(4, 'Buffalo', null, null);

SeLECT employee.emp_id, employee.first_name, branch.branch_name
from employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SeLECT employee.emp_id, employee.first_name, branch.branch_name
from employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

SeLECT employee.emp_id, employee.first_name, branch.branch_name
from employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;