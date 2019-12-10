set serveroutput on
	CREATE OR REPLACE PROCEDURE add_new_emp IS 
		v_firstname employees.first_name%TYPE :='&first_name';
		v_lastname employees.last_name%TYPE :='&last_name';
		v_email employees.email%TYPE :='&email';
		v_phone employees.phone_name%TYPE :='&phone';
		v_hire employees.hire_date%TYPE := '&hire_date';
		v_job employees.job_id%TYPE :='&job_id';
		v_salary employees.salary%TYPE :='&salary';
		v_com employees.commission_pct%TYPE :='&com';
		BEGIN
	INSERT INTO employees(first_name, last_name, email, hire_date, job_id, salary, commission_pct)
	VALUES(v_firstname, v_lastname, v_email, v_hire, v_job, v_salary, v_com);
	DBMS_OUTPUT.PUT_LINE('Inserted ' || SQL%ROWCOUNT || ' ROW.');
	END;
	/
	
	
	insert into employeesvalues
	('', 'Andrew', 'Quinn', 'andytown@live.ie', '590.423.4560', TO_DATE('10-NOV-2019', 'dd-MON-yyyy'), 'IT_PROG', 9000, NULL, 103, 60);