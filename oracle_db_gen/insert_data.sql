INSERT ALL
INTO school (id, name, email, address, postal, tel)    VALUES (1,'School of WebLaD','SOW0@nus.edu.sg','School of WebLaD, 37043 Marissa BypassMcdonaldhaven, AR 89494','37663','669.587.7668x145')
INTO school (id, name, email, address, postal, tel)    VALUES (2,'School of TechnicalihY','SOT1@nus.edu.sg','School of TechnicalihY, 34852 Williams Parkway Apt. 236Johnstonhaven, FL 84014','59786','1-789-050-4980')
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
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('a937f996-440e-231f-3fea-a4c98d390035','Courtney','Bailey','M','Courtney.Bailey0@nus.edu.sg','4873 Rodriguez Prairie Apt. 735Fisherville, WV 63650','58180','941.847.7309x4020',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('1bce5b32-2f45-25c9-96ad-091edb7763f5','Theresa','Diaz','F','Theresa.Diaz1@nus.edu.sg','900 Salazar SquaresJenniferland, NY 02181','68955','095-157-1628x1229',2)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('4b6c63f6-d490-8760-ffa4-0c567010e7e0','Sarah','Daniel','M','Sarah.Daniel2@nus.edu.sg','46405 Morales ThroughwayTranchester, HI 79311','98862','891-001-1638x5449',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('4e65898b-ae10-ecf8-dca5-2e98c74aaf5e','Brian','Maxwell','F','Brian.Maxwell3@nus.edu.sg','998 Fisher Field Apt. 400East Samanthaborough, IL 89521','77461','505-993-4541',2)
 SELECT * FROM dual;

INSERT ALL
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('71bc6e2d-41ef-0439-5732-71cf1572ae4b','Laurie','Wilson','F','Laurie.Wilson0@nus.edu.sg','Unit 1702 Box 4170DPO AE 58881','70724','1-203-037-7896x06207',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('3c43401a-7e6e-917f-746e-f328220b01be','Danny','Jones','M','Danny.Jones1@nus.edu.sg','5522 Shea WellLake Alyssa, MI 94119','40665','+07(9)5777962204',2)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('0fd95857-8fd2-0fb7-39da-4b18ec80f6d0','Derek','Gallegos','M','Derek.Gallegos2@nus.edu.sg','071 Tina Extension Suite 764East Michaelmouth, MA 86858','14239','1-594-045-9308',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('c06490c2-f9a8-62ce-b465-0dc7d8f87969','Eric','Bass','M','Eric.Bass3@nus.edu.sg','0121 Donna Hollow Suite 691Martinberg, ND 73844','23305','1-359-161-6203',2)
 SELECT * FROM dual;

INSERT ALL
INTO course (id, idx, name, description, school_id) VALUES(1,5402,'Legal secretary','Natural common either throw.',1)
INTO course (id, idx, name, description, school_id) VALUES(2,6689,'Armed forces logistics/support/administrative offi','Thought magazine decade act keep mission imagine.',2)
 SELECT * FROM dual;

INSERT ALL
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(1,1,1,'71bc6e2d-41ef-0439-5732-71cf1572ae4b')
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(2,2,2,'3c43401a-7e6e-917f-746e-f328220b01be')
 SELECT * FROM dual;

INSERT ALL
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('7f10d0bf-21b0-39c3-ce80-f93667cf63f7','Stephanie','Perez','M','AW7f10d0bf-21b0-39c3','Stephanie.Perez0@nus.edu.sg','6215 Christian Trace Apt. 509Wellsland, NM 66575','04419','221-590-8694',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('8fb8eb4e-055d-211e-b923-d3b7d8eb6b9c','Jessica','Sanchez','M','AW8fb8eb4e-055d-211e','Jessica.Sanchez1@nus.edu.sg','PSC 6057, Box 5838APO AA 33027','66928','390-892-6126x49379',2,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('7d9c1a6a-99e4-7e39-8f38-5439d7773027','Mr.','Kurt','F','AW7d9c1a6a-99e4-7e39','Mr..Kurt.Burke2@nus.edu.sg','661 Simmons UnderpassPatrickburgh, MO 49184','19886','682.982.9782',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('bf13d32a-16fe-9cb8-a6cb-cebdf2beac11','Michael','Gonzalez','M','AWbf13d32a-16fe-9cb8','Michael.Gonzalez3@nus.edu.sg','6180 Connie Orchard Suite 273Codybury, IN 96026','24742','+59(2)7408017547',2,CHAR_TO_LABEL('ols_pol','C::BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(1,'7f10d0bf-21b0-39c3-ce80-f93667cf63f7',1,CHAR_TO_LABEL('ols_pol','S:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(2,'8fb8eb4e-055d-211e-b923-d3b7d8eb6b9c',1,CHAR_TO_LABEL('ols_pol','S:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(3,'7d9c1a6a-99e4-7e39-8f38-5439d7773027',1,CHAR_TO_LABEL('ols_pol','S:OP:BT4211'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(4,'bf13d32a-16fe-9cb8-a6cb-cebdf2beac11',2,CHAR_TO_LABEL('ols_pol','S:OP:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('7f10d0bf-21b0-39c3-ce80-f93667cf63f7',1,45175,29905.23,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('8fb8eb4e-055d-211e-b923-d3b7d8eb6b9c',2,74997,72181.94,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('7d9c1a6a-99e4-7e39-8f38-5439d7773027',3,22335,5633.49,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('bf13d32a-16fe-9cb8-a6cb-cebdf2beac11',4,49348,12827.65,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(1,10574,TIMESTAMP '2018-10-27 00:00:00 +08:00',TIMESTAMP '2019-01-12 00:00:00 +08:00',2919.09,'7f10d0bf-21b0-39c3-ce80-f93667cf63f7',CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(2,24917,TIMESTAMP '2018-11-03 00:00:00 +08:00',TIMESTAMP '2019-04-22 00:00:00 +08:00',19515.37,'7d9c1a6a-99e4-7e39-8f38-5439d7773027',CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(1,29,CHAR_TO_LABEL('ols_pol','S:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(2,86,CHAR_TO_LABEL('ols_pol','S:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(3,4,CHAR_TO_LABEL('ols_pol','S:AD:BT4211'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(4,39,CHAR_TO_LABEL('ols_pol','S:AD:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('71bc6e2d-41ef-0439-5732-71cf1572ae4b',72629,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('3c43401a-7e6e-917f-746e-f328220b01be',37084,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('0fd95857-8fd2-0fb7-39da-4b18ec80f6d0',78504,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('c06490c2-f9a8-62ce-b465-0dc7d8f87969',85529,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('a937f996-440e-231f-3fea-a4c98d390035',19752,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('1bce5b32-2f45-25c9-96ad-091edb7763f5',98362,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('4b6c63f6-d490-8760-ffa4-0c567010e7e0',1009,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('4e65898b-ae10-ecf8-dca5-2e98c74aaf5e',1657,CHAR_TO_LABEL('ols_pol','HS:FN:'))
 SELECT * FROM dual;

