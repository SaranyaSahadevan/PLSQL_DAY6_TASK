/* To create anonymous block, declare random address parts (e.g. street, post index, country, etc.) 
as variables and print them out on single line in the console afterwards. */

DECLARE
    street VARCHAR2(20) := 'Graudu iela 68B';
    post_index VARCHAR2(20) := 'LV-1058';
    country VARCHAR2(20) := 'Latvia';
BEGIN
    DBMS_OUTPUT.PUT_LINE(street || ',' || post_index || ',' || country);
END;