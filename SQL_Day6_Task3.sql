/* To Create anonymous block that has a numeric variable defined and value assigned to it, use this number in IF statement.	
Print odd/even as a text. */

DECLARE 
  num NUMBER := 4; 
BEGIN 
  IF MOD(num,2) = 0 THEN 
     DBMS_OUTPUT.PUT_LINE('Even'); 
  ELSE 
     DBMS_OUTPUT.PUT_LINE('Odd'); 
  END IF; 
END;