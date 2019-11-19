ACCEPT p1 NUMBER PROMPT "Enter year : "
--set verify off ---> removes verification .i.e. old/new
DECLARE
v_year NUMBER := &p1;
BEGIN
        IF MOD(v_year, 4)=0 THEN
                dbms_output.put_line('Leap year');
        ELSE
                dbms_output.put_line('Not a leap year');
        END IF;
END;
/