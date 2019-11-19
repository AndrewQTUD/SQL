CREATE OR REPLACE trigger GET_STATUS_SEQ_TRIGGER

BEFORE INSERT ON STATUS for each row
    BEGIN
    if(:new.STATUS_ID is not null) then
        raise_application_error(
            -20001, 'Fault, application error.'
        );
        end if;
        select GET_STATUS_SEQ_TRIGGER.nextval into :new.STATUS_ID from dual;
        END;
    /

INSERT into STATUS
values
(
    null, '~Hello User~', sysdate
);