set verify on
DECLARE 
    v_empno copy_emp.employee_id%TYPE := TO_NUMBER(&empno);
    v_asterisk copy_emp.star%TYPE := NULL;
    v_sal copy_emp.salary%TYPE;
BEGIN
    SELECT NVL(ROUND(salary/1000),0) INTO v_sal
    FROM copy_emp WHERE employee_id = v_empno
    FOR I IN 1..v_sal
    LOOP
        v_asterisk := v_asterisk || '*';
    END LOOP;

    UPDATE copy_emp SET STAR = v_asterisk
    WHERE employee_id = v_empno;
    COMMIT;
END;