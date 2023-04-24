/* To create anonymous block that would trigger  no_data_found error with proper exception handling. */
BEGIN
   DECLARE
      l_student_id number;
   BEGIN
      SELECT STUDENT_ID
      INTO l_student_id
      FROM Teacher_1.student
      WHERE STUDENT_ID = 123456;
   EXCEPTION 
      WHEN NO_DATA_FOUND THEN
         dbms_output.put_line('No data found');
   END;
END;