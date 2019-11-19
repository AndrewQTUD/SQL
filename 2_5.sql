variable b_basic_percent number
variable b_pf_percent number
DECLARE
--Variable declaration
BEGIN
	/*
	*PL/SQL executable statement(s)
	*/
	:b_basic_percent := 45;
	:b_pf_percent := 12;
END;
/
print b_basic_percent;
print b_pf_percent;