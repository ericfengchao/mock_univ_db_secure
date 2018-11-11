INSERT ALL
INTO school (id, name, email, address, postal, tel)    VALUES (1,'School of HomeopathIPV','SOH0@nus.edu.sg','School of HomeopathIPV, USCGC MaloneFPO AP 51299','13820','501.501.3342')
INTO school (id, name, email, address, postal, tel)    VALUES (2,'School of AdultjVp','SOA1@nus.edu.sg','School of AdultjVp, 72652 Linda LakesWest Michaelstad, NC 82048','09477','308-856-4890')
 SELECT * FROM dual;

INSERT ALL
INTO academic_year (id, start_year, end_year)    VALUES (1,'2015','2016')
INTO academic_year (id, start_year, end_year)    VALUES (2,'2016','2017')
INTO academic_year (id, start_year, end_year)    VALUES (3,'2017','2018')
INTO academic_year (id, start_year, end_year)    VALUES (4,'2018','2019')
 SELECT * FROM dual;

INSERT ALL
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(1, 1, TIMESTAMP '2015-08-01 00:00:00 +08:00',TIMESTAMP '2015-12-31 00:00:00 +08:00', 1)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(2, 2, TIMESTAMP '2016-01-01 00:00:00 +08:00',TIMESTAMP '2016-05-31 00:00:00 +08:00', 1)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(3, 1, TIMESTAMP '2016-08-01 00:00:00 +08:00',TIMESTAMP '2016-12-31 00:00:00 +08:00', 2)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(4, 2, TIMESTAMP '2017-01-01 00:00:00 +08:00',TIMESTAMP '2017-05-31 00:00:00 +08:00', 2)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(5, 1, TIMESTAMP '2017-08-01 00:00:00 +08:00',TIMESTAMP '2017-12-31 00:00:00 +08:00', 3)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(6, 2, TIMESTAMP '2018-01-01 00:00:00 +08:00',TIMESTAMP '2018-05-31 00:00:00 +08:00', 3)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(7, 1, TIMESTAMP '2018-08-01 00:00:00 +08:00',TIMESTAMP '2018-12-31 00:00:00 +08:00', 4)
INTO semester (id, semester, start_date, end_date, academic_year_id)    VALUES(8, 2, TIMESTAMP '2019-01-01 00:00:00 +08:00',TIMESTAMP '2019-05-31 00:00:00 +08:00', 4)
 SELECT * FROM dual;

INSERT ALL
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('b81c94e9-00c7-190c-3082-3e0d8ee4ebd0','Scott','Young','F','Scott.Young0@nus.edu.sg','26619 Pollard RouteNorth Javierhaven, NC 22823','07462','(375)501-3151x3647',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('6134c9c0-1c6a-a2b3-4f43-b28246328b59','Heather','Quinn','M','Heather.Quinn1@nus.edu.sg','87335 Smith Islands Apt. 780North Debraland, AZ 67371','59909','1-194-846-2748',2)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('20496c78-4e1f-dd97-8e73-eec260f4a0e2','Nathaniel','Ward','F','Nathaniel.Ward2@nus.edu.sg','4612 Cooper SpringsLake Philip, ME 66644','16603','00678876301',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('b072ef99-70f4-c15a-2f38-8ee41a008763','Corey','Miller','F','Corey.Miller3@nus.edu.sg','3690 Carpenter Summit Apt. 298Josephfurt, MN 58455','89095','1-210-117-3387x6756',2)
 SELECT * FROM dual;

INSERT ALL
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('cbb24338-3103-8fc2-a704-5c27bf1ea0c3','Joshua','Robinson','F','Joshua.Robinson0@nus.edu.sg','4937 Cole FallsProctorbury, AL 62247','15652','(177)847-3899x056',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('bbc2c618-b619-bb2e-591f-d18d7e4322dd','Chad','Black','M','Chad.Black1@nus.edu.sg','5498 Medina FortNorth Meganmouth, DE 10077','06320','1-119-308-9292x876',2)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('a9fe72ea-1c93-745d-48c2-0b07f20abbb8','Courtney','Johnson','M','Courtney.Johnson2@nus.edu.sg','73562 Bond Park Apt. 449Amyton, SC 59519','10699','426.469.3929x74145',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('73291bd2-6414-56a6-5f00-5deae7abeb9b','Jim','Gray','M','Jim.Gray3@nus.edu.sg','156 Corey Pass Suite 208East Ian, OR 67794','79361','04513035735',2)
 SELECT * FROM dual;

INSERT ALL
INTO course (id, idx, name, description, school_id) VALUES(1,4463,'Operations geologist','If create green design student place part.',1)
INTO course (id, idx, name, description, school_id) VALUES(2,7512,'Scientist, research (life sciences)','Himself quite smile old computer.',2)
 SELECT * FROM dual;

INSERT ALL
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(1,1,1,'cbb24338-3103-8fc2-a704-5c27bf1ea0c3')
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(2,2,2,'bbc2c618-b619-bb2e-591f-d18d7e4322dd')
 SELECT * FROM dual;

INSERT ALL
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('208843ec-ae50-8d50-389e-8f88ac7232cd','Jeffrey','Durham','F','AW208843ec-ae50-8d50','Jeffrey.Durham0@nus.edu.sg','15966 Sheppard Drive Suite 063Johnbury, GA 73407','56559','335-472-9235x903',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('08795cf9-ac6d-00f0-9ab1-7d7bb244cdb2','Robert','Molina','M','AW08795cf9-ac6d-00f0','Robert.Molina1@nus.edu.sg','41621 Michael Port Apt. 852Zacharyberg, AR 81072','67317','191.284.4171x4324',2,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('f262d8a9-59e5-0c53-d2db-311df56527df','Greg','Russo','F','AWf262d8a9-59e5-0c53','Greg.Russo2@nus.edu.sg','6089 Nelson Knolls Suite 928Blackburnstad, NV 41060','43997','+00(7)2840311772',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('dccf533f-2972-0e80-dd55-8462989c8216','Donna','Castillo','F','AWdccf533f-2972-0e80','Donna.Castillo3@nus.edu.sg','92412 Elizabeth Skyway Suite 806North Kimberlyborough, ME 52003','61586','(988)028-7377x513',2,CHAR_TO_LABEL('ols_pol','C::BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(1,'208843ec-ae50-8d50-389e-8f88ac7232cd',1,CHAR_TO_LABEL('ols_pol','S:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(2,'08795cf9-ac6d-00f0-9ab1-7d7bb244cdb2',1,CHAR_TO_LABEL('ols_pol','S:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(3,'f262d8a9-59e5-0c53-d2db-311df56527df',1,CHAR_TO_LABEL('ols_pol','S:OP:BT4211'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(4,'dccf533f-2972-0e80-dd55-8462989c8216',2,CHAR_TO_LABEL('ols_pol','S:OP:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO school_fee(id, student_id,semester_id,school_fee,school_fee_paid, ols_pol_col)    VALUES('208843ec-ae50-8d50-389e-8f88ac7232cd',1,50388,49800.47,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(id, student_id,semester_id,school_fee,school_fee_paid, ols_pol_col)    VALUES('08795cf9-ac6d-00f0-9ab1-7d7bb244cdb2',2,51328,5417.89,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(id, student_id,semester_id,school_fee,school_fee_paid, ols_pol_col)    VALUES('f262d8a9-59e5-0c53-d2db-311df56527df',3,94795,57152.55,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INTO school_fee(id, student_id,semester_id,school_fee,school_fee_paid, ols_pol_col)    VALUES('dccf533f-2972-0e80-dd55-8462989c8216',4,92442,79478.66,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(1,36533,TIMESTAMP '2018-11-08 00:00:00 +08:00',TIMESTAMP '2019-04-11 00:00:00 +08:00',22992.72,'208843ec-ae50-8d50-389e-8f88ac7232cd',CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(2,24356,TIMESTAMP '2018-10-23 00:00:00 +08:00',TIMESTAMP '2019-02-16 00:00:00 +08:00',23735.37,'f262d8a9-59e5-0c53-d2db-311df56527df',CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(1,77,CHAR_TO_LABEL('ols_pol','S:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(2,0,CHAR_TO_LABEL('ols_pol','S:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(3,45,CHAR_TO_LABEL('ols_pol','S:AD:BT4211'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(4,46,CHAR_TO_LABEL('ols_pol','S:AD:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('cbb24338-3103-8fc2-a704-5c27bf1ea0c3',65246,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('bbc2c618-b619-bb2e-591f-d18d7e4322dd',22906,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('a9fe72ea-1c93-745d-48c2-0b07f20abbb8',93302,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('73291bd2-6414-56a6-5f00-5deae7abeb9b',68554,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('b81c94e9-00c7-190c-3082-3e0d8ee4ebd0',64828,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('6134c9c0-1c6a-a2b3-4f43-b28246328b59',35448,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('20496c78-4e1f-dd97-8e73-eec260f4a0e2',7959,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('b072ef99-70f4-c15a-2f38-8ee41a008763',22593,CHAR_TO_LABEL('ols_pol','HS:FN:'))
 SELECT * FROM dual;

