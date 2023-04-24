/* Create anonymous block that would trigger too_many_rows error with proper exception handling. */

BEGIN
  SELECT STUDENT_ID, FIRST_NAME, LAST_NAME, STUDY_CLASS
    INTO :s_id, :f_name, :l_name, :s_class
    FROM Teacher_1.Student;
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Too many rows returned!');
END;
