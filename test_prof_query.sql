-- Professor can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer
select * from academic_year;
select * from semester;
select * from school;
select * from specialization;
select * from course;
select * from course_schedule;
select * from professor;
select * from admin_officer;

-- Professor can view and update grade own Course Enrollment
select * from course_enrollment;
update course_enrollment set grade = 99 where student_id = 'test_stu1';

-- Professor can view student(excluding address/postal) who enrolled in his/her courses
select * from student;
-- ERROR:  permission denied for relation student
select id,last_name,first_name from student;

-- Professor can update email of own Professor
update professor set email = 'test_prof1@u.nus.edu';
update professor set id = 'test_prof1';
-- ERROR:  permission denied for relation student

-- Professor can update(description) of own Course
update course set description = 'the forecasting and evaluation of financial risks';
