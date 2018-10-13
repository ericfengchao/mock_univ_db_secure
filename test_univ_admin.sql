-- University Administrative Officer can view SELECT, UPDATE, INSERT, DELETE;
select * from academic_year;
insert into academic_year(id, start_year, end_year) values (11, 2022, 2023);
update semester set semester = 2 where id = 1;
delete from semester where id = 1;
-- ERROR

update course_enrollment set grade = 100 where student_id = 'test_stu';
insert into course_schedule(id, course_id, semester_id, professor_id) values (91,90, 10, 'test_prof1');
delete from professor where id = 'test_prof1';
