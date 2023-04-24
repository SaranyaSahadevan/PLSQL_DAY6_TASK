/* To Create nested record based on parent information, nest communication options (email and phone) as a separate type. 
Utilize this type to print out parent name, surname and parent email if there is more than 1 child, parent phone if
there is only one child. */



declare 
  type comm_rec is record (
    email varchar2(50), 
    phone varchar2(15)
  );
  type parent_rec is record (
    name varchar2(20), 
    surname varchar2(20), 
    comm comm_rec
  );
  parent_info parent_rec;
begin
  for c in (select p.first_name, p.last_name, p.email, p.phone_no, count(s.student_id) as num_children
              from teacher_1.parent p 
              join teacher_1.student s on p.parent_id = s.parent_id
              group by p.first_name, p.last_name, p.email, p.phone_no)
  loop
    parent_info.name := c.first_name;
    parent_info.surname := c.last_name;
    parent_info.comm.email := c.email;
    if c.num_children = 1 then
      parent_info.comm.phone := c.phone_no;
    end if;
    dbms_output.put_line('Name: ' || parent_info.name || ', Surname: ' || parent_info.surname || ', Email: ' || parent_info.comm.email || ', Phone: ' || parent_info.comm.phone);
  end loop;
end;