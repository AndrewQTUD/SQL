ACCEPT dept NUMBER prompt "Dept Number : " 
--set verify off 
DECLARE 
    CURSOR c_emp_cursor IS 
      SELECT last_name, 
             salary, 
             manager_id 
      FROM   employees 
      WHERE  department_id = &dept 
             AND salary < 5000; 
BEGIN 
    FOR v_emp IN c_emp_cursor LOOP 
        IF ( v_emp.manager_id = 101 
              OR v_emp.manager_id = 124 ) THEN 
          dbms_output.Put_line(v_emp.last_name 
                               || ' Due for a raise.'); 
        ELSE 
          dbms_output.Put_line(v_emp.last_name 
                               || ' Not due for a raise.'); 
        END IF; 
    END LOOP; 
END; 