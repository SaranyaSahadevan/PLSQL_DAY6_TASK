/* To Create anonymous block that would trigger user defined error with proper exception handling. */
BEGIN 
   DECLARE
      v_err_code integer;
      v_err_msg varchar2(32);
   BEGIN
      -- Trigger user defined error
      v_err_code := -20001;
      v_err_msg := 'Error in student table';
      RAISE_APPLICATION_ERROR(v_err_code, v_err_msg);
   EXCEPTION
      WHEN OTHERS THEN
         -- Exception handling
         DBMS_OUTPUT.PUT_LINE('Error occurred while accessing Teacher_1.student table');
   END;
END;