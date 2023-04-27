SELECT count(*) From person
where first_name = 'Phil';

CREATE INDEX fn_index
ON person(first_name);

CREATE INDEX fn_ln_index
ON person(first_name, last_name); --Order matters

DROP INDEX IF EXISTS  fn_ln_index;