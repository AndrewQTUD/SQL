CREATE OR REPLACE trigger get_supplier_id_seq_trig

BEFORE INSERT ON SUPPLIERS for each row
	BEGIN
	if(:new.supplier_id is not null) then
		raise_application_error (
		-20001, 'Application supply keys, not user'
		);
		end if;
		select supplier_id_seq.nextval into :new.supplier_id from dual;
		END;
	/