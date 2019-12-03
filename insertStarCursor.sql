DECLARE
v_num_stars number(10);
v_stars VARCHAR2(50);
v_num NUMBER(10);

BEGIN
    FOR emp in (SELECT employee_id, salary FROM copy_emp) LOOP
        v_num_stars := emp.salary/1000;
        v_num_stars := ROUND(v_num_stars);
        dbms_output.put_line('Number of stars ' || v_num_stars);
            WHILE v_num_stars > 0 LOOP
            v_stars := v_stars || '*';
            v_num_stars := v_num_stars-1;
            END LOOP;
        UPDATE copy_emp
        SET star = v_stars
        WHERE employee_id = emp.employee_id;
        v_stars := NULL;
        v_num_stars := 0;
    END LOOP;
END;
/