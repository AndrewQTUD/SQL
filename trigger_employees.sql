CREATE OR REPLACE TRIGGER get_employees_seq_trig
BEFORE INSERT ON Employees for each row
	BEGIN
	if(:new.employee_id is not null) then
	raise_application_error(
	-20001, 'I supply the keys, not you'
	);
	end if;
	select employees_seq.nextval into :new.employee_id from dual;
	END;
/

INSERT INTO Employees
(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
(null, 'Dummy', 'DumDum', 'Dummy@dumdum.com','0123456789', sysdate, 'PR_REP', 1234, 0.15, 205, 110);