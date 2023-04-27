--EXTENSIONS(UUID) AND EXPORT FILES--

--use person-car.sql--
SELECT * from pg_available_extensions;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT uuid_generate_v4();

SELECT * from person1 LEFT JOIN car1 USING (car_uid); --if foreign key = primary key

\copy (SELECT * from person1 JOIN car1 USING (car_uid))
TO '/Users/locdu/Downloads/sql/postgresql/person-car.csv'
DELIMITER ',' CSV HEADER;

\copy person1
TO '/Users/locdu/Downloads/sql/postgresql/person1.csv'
DELIMITER ',' CSV HEADER;