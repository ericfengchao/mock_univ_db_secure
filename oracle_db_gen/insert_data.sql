INSERT ALL
INTO school (id, name, email, address, postal, tel)    VALUES (1,'School of ChiefeOv','SOC0@nus.edu.sg','School of ChiefeOv, 72977 Diana GreenSeanville, MD 34026','53501','214.781.6749')
INTO school (id, name, email, address, postal, tel)    VALUES (2,'School of MusicWRG','SOM1@nus.edu.sg','School of MusicWRG, 3887 Buchanan Vista Suite 335Rickystad, SD 73505','41599','(239)870-7243x787')
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
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('76547872-4a63-a347-5342-e6142c337b92','Steven','Anderson','F','Steven.Anderson0@nus.edu.sg','4875 James WellsWest Hollyville, MS 69213','64210','700.074.7052',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('a7f5b767-78a2-01e7-6bfc-3fb41469ee8a','Randy','Mitchell','F','Randy.Mitchell1@nus.edu.sg','80879 Stevens PortsSouth Donaldside, MA 90034','92671','(703)606-1340x40323',2)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('dfb47bdb-5378-ef57-623d-e5ee02d24fd5','Mr.','James','M','Mr..James.Cummings2@nus.edu.sg','11857 Foster Village Suite 126Port Danielshire, NC 76621','62779','1-343-025-5614',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('6f5bbfab-c82f-c18a-3a4e-631085877d7e','Christine','Oconnor','M','Christine.Oconnor3@nus.edu.sg','540 Ray ShoreKaylaside, NY 63062','06469','915-638-9826',2)
 SELECT * FROM dual;

INSERT ALL
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('d6034ae4-ef9e-b646-5465-f2d452e636ea','David','Lewis','M','David.Lewis0@nus.edu.sg','206 Tina Forge Apt. 234Scottmouth, GA 79505','52251','944-159-4113',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('afc17d80-6035-3b17-1bbc-99ae3271b9de','Maria','Wright','F','Maria.Wright1@nus.edu.sg','Unit 2668 Box 1346DPO AA 83745','59095','805-139-3167x007',2)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('598f4ed2-d014-2e05-b381-8278f8afea4e','Amanda','Vasquez','M','Amanda.Vasquez2@nus.edu.sg','81170 Drake Throughway Apt. 997Christophertown, WI 48286','89070','252.926.7182x05425',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('52ad6adc-5bac-dfd7-9c7b-c3f4dc81d8eb','Christina','Hernandez','F','Christina.Hernandez3@nus.edu.sg','4004 Dennis SpringsWilliamschester, OH 07831','36014','480.449.2275x306',2)
 SELECT * FROM dual;

INSERT ALL
INTO course (id, idx, name, description, school_id) VALUES(1,2397,'Geneticist, molecular','Spring tend friend cultural choice movement wide back.',1)
INTO course (id, idx, name, description, school_id) VALUES(2,665,'Accounting technician','Energy speech leg.',2)
 SELECT * FROM dual;

INSERT ALL
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(1,1,1,'d6034ae4-ef9e-b646-5465-f2d452e636ea')
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(2,2,2,'afc17d80-6035-3b17-1bbc-99ae3271b9de')
 SELECT * FROM dual;

INSERT ALL
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('0821a653-b163-be26-7e6f-91ec3260f1ec','Gregory','Snyder','F','AW0821a653-b163-be26','Gregory.Snyder0@nus.edu.sg','712 Castillo LockEast Sabrinachester, ID 94688','57674','(403)637-1734x73442',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('88b67245-430c-a15a-fcb8-143a5bbafe72','Michelle','Hart','F','AW88b67245-430c-a15a','Michelle.Hart1@nus.edu.sg','34200 Michael Groves Apt. 378Brookstown, SC 22949','65717','902.773.7755',2,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('c92624a8-877f-b619-8067-5227db8b3856','Daniel','Martin','M','AWc92624a8-877f-b619','Daniel.Martin2@nus.edu.sg','0575 Amber GatewayHayesberg, VT 40964','07513','(597)814-6013',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('c45f1781-1922-9fed-e8fa-0f1a651cff32','Stephanie','Murphy','F','AWc45f1781-1922-9fed','Stephanie.Murphy3@nus.edu.sg','570 Hawkins GardenLake Richard, GA 09424','41180','04495335926',2,CHAR_TO_LABEL('ols_pol','C::BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(1,'0821a653-b163-be26-7e6f-91ec3260f1ec',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(2,'88b67245-430c-a15a-fcb8-143a5bbafe72',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(3,'c92624a8-877f-b619-8067-5227db8b3856',1,CHAR_TO_LABEL('ols_pol','C:OP:BT4211'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(4,'c45f1781-1922-9fed-e8fa-0f1a651cff32',2,CHAR_TO_LABEL('ols_pol','C:OP:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('0821a653-b163-be26-7e6f-91ec3260f1ec',1,16783,2401.31,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('88b67245-430c-a15a-fcb8-143a5bbafe72',2,1251,1160.00,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('c92624a8-877f-b619-8067-5227db8b3856',3,10801,6659.99,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('c45f1781-1922-9fed-e8fa-0f1a651cff32',4,37404,34779.62,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(1,49392,TIMESTAMP '2018-10-21 00:00:00 +08:00',TIMESTAMP '2019-06-24 00:00:00 +08:00',24702.17,'0821a653-b163-be26-7e6f-91ec3260f1ec',CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(2,12068,TIMESTAMP '2018-11-04 00:00:00 +08:00',TIMESTAMP '2019-01-20 00:00:00 +08:00',9002.92,'c92624a8-877f-b619-8067-5227db8b3856',CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(1,54,CHAR_TO_LABEL('ols_pol','C:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(2,52,CHAR_TO_LABEL('ols_pol','C:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(3,18,CHAR_TO_LABEL('ols_pol','C:AD:BT4211'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(4,84,CHAR_TO_LABEL('ols_pol','C:AD:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('d6034ae4-ef9e-b646-5465-f2d452e636ea',14373,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('afc17d80-6035-3b17-1bbc-99ae3271b9de',21576,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('598f4ed2-d014-2e05-b381-8278f8afea4e',13407,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('52ad6adc-5bac-dfd7-9c7b-c3f4dc81d8eb',90979,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('76547872-4a63-a347-5342-e6142c337b92',84751,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('a7f5b767-78a2-01e7-6bfc-3fb41469ee8a',92231,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('dfb47bdb-5378-ef57-623d-e5ee02d24fd5',33243,CHAR_TO_LABEL('ols_pol','HS::'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('6f5bbfab-c82f-c18a-3a4e-631085877d7e',43753,CHAR_TO_LABEL('ols_pol','HS::'))
 SELECT * FROM dual;

