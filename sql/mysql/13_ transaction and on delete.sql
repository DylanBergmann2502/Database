START TRANSACTION;

DELETE FROM employee
WHERE emp_id =102;

SELECT * from branch;

SELECT * from employee;

DELETE FROM branch
WHERE branch_id =2;

SELECT * from branch_supplier;

ROLLBACK;
COMMIT;