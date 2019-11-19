DECLARE 
--Variable declaration
	v_today DATE := SYSDATE;
	v_tomorrow v_today%TYPE := SYSDATE+1;
BEGIN 
	/*
	*PL/SQL executable statement(s)
	*/
	dbms_output.put_line('Hello world!');
	dbms_output.put_line('Today is : ' || v_today);
	dbms_output.put_line('tomorrow is : ' || v_tomorrow);
END;
/