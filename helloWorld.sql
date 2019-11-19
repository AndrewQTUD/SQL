DECLARE 
	--variable declaration
	v_message varchar2(20):= 'Hello, World!';
BEGIN
	/*
	*PL/SQL executable statement(s)
	*/
	dbms_output.put_line(v_message);
END;
/