-- Administrative Officer can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer
select * from academic_year;
select * from semester;
select * from school;
select * from specialization;
select * from course;
select * from course_schedule;
select * from professor;
select * from admin_officer;

-- Administrative Officer can update own Administrative Officer;
update admin_officer set gender = 'F' where id = 'test_school_admin';

-- Administrative Officer can update own School;
update school set postal = 123456 where id = 2;

-- Administrative Officer can update, insert, delete RESTRICT Specialization of own School;
update specialization set name = 'Quantative Finance' where name = 'Dramatherapist';
delete from specialization where id = 2;
insert into specialization(id, name, index, school_id) values (32, 'Finance Planning', 'FP', 2);

-- Administrative Officer can update, insert, delete RESTRICT Course of own School;
update course set name = 'Economics' where id = 2;
delete from course where id = 22;
insert into course(id, name, index, description, specialization_id) values (101, 'Stats', 52341, 'mathmatics', 2);

-- Administrative Officer can update, insert, delete RESTRICT Professor of own School;
update professor set id = 'test_prof1' where id = 'test_prof';
delete from professor where id = 'test_prof1';
insert into professor(id, last_name, first_name, gender, email, office_address, office_postal, office_tel, school_id) values ('test_prof', 'wfw', 'cbt', 'M', 'sjhgs@nus.edu', '0202,Computer Drive', 12345, 123456, 2);


-- Administrative Officer can view(excluding grade), insert, delete Course Enrollment  of own School;
select course_schedule_id from course_enrollment where student_id = 'test_stu';
delete from course_enrollment where student_id = 'test_stu';
insert into course_enrollment(student_id, course_schedule_id, grade) values ('test_stu', '12', 98);


-- Administrative Officer can view average grade of each Student in Course Enrollment of own School;
select * from student_avg_grade;
