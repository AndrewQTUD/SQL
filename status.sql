CREATE table STATUS(
    STATUS_ID NUMBER(6) not null,
    MESSAGE VARCHAR2(35),
    DATE_WRITTEN DATE,
    PRIMARY KEY (STATUS_ID)
);