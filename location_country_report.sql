TTITLE 'lOCATIONS AND CITIES'
SET PAGESIZE 50
COLUMN 	location_id FORMAT 9999
COLUMN	city		FORMAT A19 WORD_WRAPPED
COLUMN	state_province FORMAT A16 WORD_WRAPPED
COLUMN	country_id	FORMAT A2 WORD_WRAPPED
COLUMN	country_name	FORMAT A24 WORD_WRAPPED
SELECT l.location_id, l.city, l.state_province, l.country_id, c.Country_name
FROM locations l, Countries c
WHERE (l.country_id = c.country_id);