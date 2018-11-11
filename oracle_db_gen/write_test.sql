select * from cs5322.academic_year;
select * from cs5322.semester;
select * from cs5322.school;
select * from cs5322.course;
select * from cs5322.course_schedule;
select * from cs5322.professor;
select * from cs5322.admin_officer;
select * from cs5322.student;
select * from cs5322.course_enrollment;
select * from cs5322.grade;
select * from cs5322.school_fee;
select * from cs5322.loan;
select * from cs5322.staff_salary;

select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.student;
select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.course_enrollment;
select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.grade;
select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.school_fee;
select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.loan;
select LABEL_TO_CHAR (OLS_POL_COL) from cs5322.staff_salary;

SELECT * FROM ALL_SA_POLICIES;
SELECT * FROM ALL_SA_LEVELS;
SELECT * FROM ALL_SA_COMPARTMENTS;
SELECT * FROM ALL_SA_GROUPS;
SELECT * FROM ALL_SA_LABELS;

SELECT * FROM ALL_SA_USER_LEVELS;
SELECT * FROM DBA_SA_USER_COMPARTMENTS;
SELECT * FROM DBA_SA_USER_GROUPS;
SELECT * FROM DBA_SA_USER_PRIVS;

-- professor
INSERT INTO cs5322.grade(course_enrollment_id, grade, ols_pol_col) VALUES(1, 89, CHAR_TO_LABEL('ols_pol','C:AD:CS5228'));

-- op_staff
INSERT INTO cs5322.school (id, name, email, address, postal, tel, ols_pol_col) VALUES (3,'School of Test','SOC0@nus.edu.sg','School of ChiefeOv, 72977 Diana GreenSeanville, MD 34026','53501','214.781.6749', CHAR_TO_LABEL('ols_pol','P::'))
INSERT INTO cs5322.student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col) VALUES('7f10d0bf-21b0-39c3-ce80-f93667cf63ee','Chris','Haha','M','AW7f10d0bf-21b0-1231','Stephanie.Perez0@nus.edu.sg','6215 Christian Trace Apt. 509Wellsland, NM 66575','04420','221-590-8694',1,CHAR_TO_LABEL('ols_pol','C::CS5322,CS5228'))
INSERT INTO cs5322.course_enrollment(id, student_id,course_schedule_id,ols_pol_col) VALUES(5,'0821a653-b163-be26-7e6f-91ec3260f1ec',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5322'))

-- op_director
INSERT INTO cs5322.academic_year (id, start_year, end_year, ols_pol_col) VALUES (5,'2019','2020', CHAR_TO_LABEL('ols_pol','P::'));
INSERT INTO cs5322.semester (id, semester, start_date, end_date, academic_year_id, ols_pol_col) VALUES(9, 1, TIMESTAMP '2019-08-01 00:00:00 +08:00',TIMESTAMP '2019-12-31 00:00:00 +08:00', 5, CHAR_TO_LABEL('ols_pol','P::'))

INSERT INTO cs5322.school (id, name, email, address, postal, tel, ols_pol_col) VALUES (3,'School of Test','SOC0@nus.edu.sg','School of ChiefeOv, 72977 Diana GreenSeanville, MD 34026','53501','214.781.6749', CHAR_TO_LABEL('ols_pol','P::'))
INSERT INTO cs5322.student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col) VALUES('7f10d0bf-21b0-39c3-ce80-f93667cf63ee','Chris','Haha','M','AW7f10d0bf-21b0-1231','Stephanie.Perez0@nus.edu.sg','6215 Christian Trace Apt. 509Wellsland, NM 66575','04420','221-590-8694',1,CHAR_TO_LABEL('ols_pol','C::CS5322,CS5228'))
INSERT INTO cs5322.course_enrollment(id, student_id,course_schedule_id,ols_pol_col) VALUES(5,'0821a653-b163-be26-7e6f-91ec3260f1ec',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5322'))

INSERT INTO cs5322.grade(course_enrollment_id, grade, ols_pol_col) VALUES(1, 89, CHAR_TO_LABEL('ols_pol','C:AD:CS5228'));

-- fn_staff
INSERT INTO cs5322.school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col) VALUES('0821a653-b163-be26-7e6f-91ec3260f1ec',3,16783,2401.31,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INSERT INTO cs5322.loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col) VALUES(3,49392,TIMESTAMP '2018-10-21 00:00:00 +08:00',TIMESTAMP '2019-06-24 00:00:00 +08:00',24702.17,'88b67245-430c-a15a-fcb8-143a5bbafe72',CHAR_TO_LABEL('ols_pol','S:FN:SOC'))

-- fn_director
INSERT INTO cs5322.school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col) VALUES('0821a653-b163-be26-7e6f-91ec3260f1ec',3,16783,2401.31,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INSERT INTO cs5322.loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col) VALUES(3,49392,TIMESTAMP '2018-10-21 00:00:00 +08:00',TIMESTAMP '2019-06-24 00:00:00 +08:00',24702.17,'88b67245-430c-a15a-fcb8-143a5bbafe72',CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INSERT INTO cs5322.staff_salary(staff_id, salary, ols_pol_col) VALUES('0821a653-b163-be26-7e6f-91ec3260fqwe',14373,CHAR_TO_LABEL('ols_pol','HS::'))

