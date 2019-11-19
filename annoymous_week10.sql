

DECLARE

v_message VARCHAR2(35) := 'This is my PL/SQL program';
v_date_written DATE := SYSDATE;
BEGIN
    dbms_output.put_line('Hello, world!');
    INSERT INTO STATUS (MESSAGE, DATE_WRITTEN)
    VALUES (v_message, v_date_written);

    dbms_output.put_line('Your message is : ' || v_message);
    dbms_output.put_line('Current date : ' || v_date_written);

END;
/
