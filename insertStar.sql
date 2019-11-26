DECLARE
    v_empno copy_emp.EMPLOYEE_ID%TYPE;
    v_asterisk copy_emp.STAR%TYPE := '';
    v_sal copy_emp.SALARY%TYPE;
BEGIN
    SELECT NVL(ROUND(salary/1000),0) INTO v_sal
    FROM copy_emp WHERE copy_emp.EMPLOYEE_ID = &p_empno;
    FOR i IN 1..v_sal 
    LOOP
        v_asterisk := v_asterisk||'*';
    END LOOP;

END;