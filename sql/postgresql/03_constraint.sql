--CONSTRAINT--

ALTER TABLE person DROP CONSTRAINT person_pkey;

ALTER TABLE person ADD PRIMARY KEY (id);

ALTER TABLE person ADD CONSTRAINT unique_email_address UNIQUE(email);

SELECT DISTINCT gender FROM person;

ALTER TABLE person ADD CONSTRAINT gender_constraint
CHECK(gender IN ('Genderqueer', 'Bigender', 'Genderfluid',
'Male','Polygender','Non-binary','Female','Agender'));
