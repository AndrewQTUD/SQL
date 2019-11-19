--VARIABLE b_basic_percent Number
--VARIABLE b_pf_percent NUMBER
--SET AUTOPRINT ON-- prints output automatically

DECLARE
--Variable declaration

v_today DATE:= SYSDATE;
v_tomorrow v_today%TYPE := SYSDATE+1;
v_basic_percent NUMBER := 45;
v_pf_percent v_basic_percent%TYPE := 12;
v_fname VARCHAR2(15);
v_emp_sal NUMBER(10);

BEGIN
        dbms_output.put_line('Hello ' || v_fname);
        dbms_output.put_line('Today is : ' || v_today);
        dbms_output.put_line('Tomorrow is ' || v_tomorrow);
        SELECT first_name, salary
        INTO v_fname, v_emp_sal FROM EMPLOYEES
        WHERE employee_id=110;
        dbms_output.put_line('Your salary is : ' || v_emp_sal);
        dbms_output.put_line('Your contribution towards PF : ' || (v_emp_sal) * (v_basic_percent/100) * (v_pf_percent));
END;
/