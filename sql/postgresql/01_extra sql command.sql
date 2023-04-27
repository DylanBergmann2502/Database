CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(150)
);

Select * from person;

INSERT INTO person(first_name, last_name, gender, birth_date)
VALUES ('Anne', 'Smith', 'FEMALE', DATE '1988-01-09');

DROP TABLE person;

SELECT * FROM person OFFSET 5 FETCH FIRST 10 ROW ONLY;

SELECT * FROM person
WHERE birth_country
BETWEEN 'China' AND 'France';

SELECT birth_country, COUNT(*)
FROM person
WHERE gender = 'Male'
GROUP BY birth_country
HAVING COUNT(*) > 10
ORDER BY birth_country DESC;

SELECT MIN(price) FROM car;

SELECT MAX(price) FROM car;

SELECT make, ROUND(AVG(price))
FROM car
GROUP BY make;

\i /Users/locdu/Downloads/sql/postgresql/car.sql

SELECT id, make, model, price,
round(price * 0.1, 2) AS discount,
round(price - (price*0.1), 2) AS payment
from car;

SELECT COALESCE(email, 'EMAIL NOT PROVIDED') FROM person;