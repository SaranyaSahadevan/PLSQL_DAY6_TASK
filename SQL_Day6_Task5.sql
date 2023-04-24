/* To Create anonymous block with custom record definition, print out all teacher information with this record. */

DECLARE
    CURSOR cur_teacher IS
    SELECT
        teacher_id,
        first_name,
        last_name,
        date_of_birth,
        social_security_no,
        education,
        phone_no,
        email,
        work_email,
        date_of_joining,
        status
    FROM
        teacher_1.teacher;

    TYPE teacher_info IS RECORD (
        teacher_id         NUMBER,
        first_name         VARCHAR2(15),
        last_name          VARCHAR2(15),
        date_of_birth      DATE,
        social_security_no VARCHAR2(50),
        education          VARCHAR2(50),
        phone_no           VARCHAR2(50),
        email              VARCHAR2(50),
        work_email         VARCHAR2(50),
        date_of_joining    DATE,
        status             VARCHAR2(10)
    );
    teacher_rec teacher_info;
BEGIN
    dbms_output.put_line('TEACHER_ID'
                         || ' '
                         || 'FIRST_NAME'
                         || ' '
                         || 'LAST_NAME'
                         || ' '
                         || 'DATE_OF_BIRTH'
                         || ' '
                         || 'SOCIAL_SECURITY_NO'
                         || ' '
                         || 'EDUCATION'
                         || ' '
                         || 'PHONE_NO'
                         || ' '
                         || 'EMAIL'
                         || ' '
                         || 'WORK_EMAIL'
                         || ' '
                         || 'DATE_OF_JOINING'
                         || ' '
                         || 'STATUS');

    FOR cur_rec IN cur_teacher LOOP
        teacher_rec.teacher_id := cur_rec.teacher_id;
        teacher_rec.first_name := cur_rec.first_name;
        teacher_rec.last_name := cur_rec.last_name;
        teacher_rec.date_of_birth := cur_rec.date_of_birth;
        teacher_rec.social_security_no := cur_rec.social_security_no;
        teacher_rec.education := cur_rec.education;
        teacher_rec.phone_no := cur_rec.phone_no;
        teacher_rec.email := cur_rec.email;
        teacher_rec.work_email := cur_rec.work_email;
        teacher_rec.date_of_joining := cur_rec.date_of_joining;
        teacher_rec.status := cur_rec.status;
        dbms_output.put_line(teacher_rec.teacher_id
                             || ' '
                             || teacher_rec.first_name
                             || ' '
                             || teacher_rec.last_name
                             || ' '
                             || teacher_rec.date_of_birth
                             || ' '
                             || teacher_rec.social_security_no
                             || ' '
                             || teacher_rec.education
                             || ' '
                             || teacher_rec.phone_no
                             || ' '
                             || teacher_rec.email
                             || ' '
                             || teacher_rec.work_email
                             || ' '
                             || teacher_rec.date_of_joining
                             || ' '
                             || teacher_rec.status);

    END LOOP;

END;
/