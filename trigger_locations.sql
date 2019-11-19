CREATE OR REPLACE trigger get_locations_seq_trig

BEFORE INSERT ON LOCATIONS for each row
	BEGIN
	if(:new.location_id is not null) then
		raise_application_error (
		-20001, 'Application supply keys, not user'
		);
		end if;
		select LOCATIONS_SEQ.nextval into :new.location_id from dual;
		END;
	/