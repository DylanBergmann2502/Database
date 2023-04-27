CREATE TABLE trigger_test2 (
    what_action VARCHAR(100),
    which_subject VARCHAR(40),
    at_what_time DATETIME
);
DROP TABLE trigger_test2;
DELIMITER $$
CREATE
    TRIGGER my_trigger21 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test2 VALUES("Add my employee", NEW.first_name, now());
    END$$
DELIMITER ;

START TRANSACTION;

INSERT INTO employee
VALUES(112, 'Donny', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * from employee
WHERE emp_id = 112;

SELECT * from trigger_test2;

ROLLBACK;