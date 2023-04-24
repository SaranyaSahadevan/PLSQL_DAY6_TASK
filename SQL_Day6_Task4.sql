/* To create anonymous block that obtains (utilizing SELECT statement) email address from student with ID = 1 and print it in the 
console. */
DECLARE
    email_address VARCHAR2(50);
BEGIN
    SELECT EMAIL 
    INTO email_address
    FROM Teacher_1.student
    WHERE Student_id = 1;
    DBMS_OUTPUT.PUT_LINE('The email address is: ' || email_address);
END;