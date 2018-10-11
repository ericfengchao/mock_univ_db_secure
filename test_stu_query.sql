-- Student can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer
select * from academic_year;
select * from semester;
select * from school;
select * from specialization;
select * from course;
select * from course_schedule;
select * from professor;
select * from admin_officer;

-- Student can view his own Loan / course_enrollment
select * from loan;
select * from course_enrollment;

-- Student can view and update email, address, postal, tel of own Student
select * from student;
update student set gender = 'F';
-- ERROR:  permission denied for relation student
update student set email = 'test_stu1@u.nus.edu';
update student set id = 'test_stu1';
-- ERROR:  permission denied for relation student
