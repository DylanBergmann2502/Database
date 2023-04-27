--ON CONFLICT--

insert into person (id, first_name, last_name, email, gender, birth_date, birth_country)
values (1, 'Russ', 'MacKibbon', 'rmackibbon0@npr.org', 'Male', '1979/12/27', 'China')
ON CONFLICT (email) DO NOTHING;

insert into person (id, first_name, last_name, email, gender, birth_date, birth_country)
values (1, 'Russy', 'MacKibbon', 'rmackibbon0@npr.org', 'Male', '1979/12/27', 'China')
ON CONFLICT (email) DO UPDATE
SET email = EXCLUDED.email, first_name = EXCLUDED.first_name;

SELECT * from person where id = 1;