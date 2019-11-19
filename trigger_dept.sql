CREATE OR REPLACE TRIGGER get_departments_seq_trig
BEFORE INSERT ON DEPARTMENTS for each row
	BEGIN
	if(:new.department_id is not null) then
	raise_application_error(
	-20001, 'I supply the keys, not you'
	);
	end if;
	select departments_seq.nextval into :new.department_id from dual;
	END;
/

INSERT INTO departments
(department_id, department_name, manager_id, location_id)
VALUES
('', 'Dummy', 122, 1700);