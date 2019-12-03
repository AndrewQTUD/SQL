set verify ON 
DECLARE 
    v_empno    copy_emp.employee_id%TYPE := To_number(&empno); 
    v_asterisk copy_emp.star%TYPE := NULL; 
    v_sal      copy_emp.salary%TYPE; 
BEGIN 
    SELECT Nvl(Round(salary / 1000), 0) 
    INTO   v_sal 
    FROM   copy_emp 
    WHERE  employee_id = v_empno; 

    FOR i IN 1..v_sal LOOP 
        v_asterisk := v_asterisk 
                      || '*'; 
    END LOOP; 

    UPDATE copy_emp 
    SET    star = v_asterisk 
    WHERE  employee_id = v_empno; 

    COMMIT; 
END; 

/ 