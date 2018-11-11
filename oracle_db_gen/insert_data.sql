INSERT ALL
INTO school (id, name, email, address, postal, tel)    VALUES (1,'School of MedicalyQV','SOM0@nus.edu.sg','School of MedicalyQV, 55806 Lee MillsNew Brenda, MS 14837','75960','+79(2)9467849505')
INTO school (id, name, email, address, postal, tel)    VALUES (2,'School of ITEQK','SOI1@nus.edu.sg','School of ITEQK, 3766 Nancy ShoresAnnaberg, IL 36737','89938','088-676-1155')
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
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('4a336a0f-5eca-1de9-63ae-31d861a5b333','Megan','Santos','F','Megan.Santos0@nus.edu.sg','0498 Jeffery RadialNew Williamborough, DE 81597','93571','(037)947-2739',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('693749e8-5c17-97f5-e2f5-b374a2627257','Jennifer','Alexander','M','Jennifer.Alexander1@nus.edu.sg','892 Daniel GroveRebeccafurt, TX 33158','59940','(907)085-4875x0045',2)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('44a3e442-0e9b-e362-7fed-5fd1d3d2d496','Steven','Mendoza','F','Steven.Mendoza2@nus.edu.sg','982 Michael PrairieSouth Heiditon, SD 54769','75306','666-235-2662',1)
INTO admin_officer (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('03ab5b28-5a7a-e92a-edfb-50f4864061b9','Kathleen','Taylor','M','Kathleen.Taylor3@nus.edu.sg','4210 Susan Forges Suite 565New Roberttown, ID 13253','01387','(705)321-3481x4159',2)
 SELECT * FROM dual;

INSERT ALL
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('a456c770-e067-b7db-3b40-7788112c8ab4','Ryan','Ashley','F','Ryan.Ashley0@nus.edu.sg','12665 Castillo Course Apt. 054Murrayhaven, WV 86803','49922','1-686-543-1746x92969',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('2b033463-3041-6f74-3a2c-28308f35b7a4','Malik','Henson','M','Malik.Henson1@nus.edu.sg','91055 Montgomery Station Suite 343New Miguelmouth, NC 32030','19223','407.503.4296x169',2)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('aaadfe54-df73-799a-4d0e-469c8ff950b2','Suzanne','Vang','F','Suzanne.Vang2@nus.edu.sg','48014 Spencer Garden Apt. 558Roseview, MS 45022','13215','(817)861-5224x3583',1)
INTO professor (id, first_name, last_name, gender, email, office_address, office_postal, office_tel, school_id) VALUES('d929fffd-cdc3-834d-f083-d89a60723793','Jacqueline','Watson','M','Jacqueline.Watson3@nus.edu.sg','4812 Kelly Brooks Apt. 626Melissafort, KS 82946','40639','902-797-9200',2)
 SELECT * FROM dual;

INSERT ALL
INTO course (id, idx, name, description, school_id) VALUES(1,7711,'Nature conservation officer','However sport spend month late particular why.',1)
INTO course (id, idx, name, description, school_id) VALUES(2,9797,'Hotel manager','Owner action no.',2)
 SELECT * FROM dual;

INSERT ALL
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(1,1,1,'a456c770-e067-b7db-3b40-7788112c8ab4')
INTO course_schedule (id, course_id, semester_id, professor_id) VALUES(2,2,2,'2b033463-3041-6f74-3a2c-28308f35b7a4')
 SELECT * FROM dual;

INSERT ALL
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('68abf025-9639-1a19-917b-3b04139be79e','Andrew','Adams','M','AW68abf025-9639-1a19','Andrew.Adams0@nus.edu.sg','076 Wilson ShoresCodyborough, GA 71719','25756','1-902-760-7970x972',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('0bf30fe0-4474-563f-7622-b7d0a8d2389f','Philip','Atkins','F','AW0bf30fe0-4474-563f','Philip.Atkins1@nus.edu.sg','848 Lambert CentersNorth Angelamouth, IL 83612','99899','1-712-995-2716',2,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('aa92e04a-b38b-c6c8-e614-7fd9b23b749a','Mrs.','Lorraine','F','AWaa92e04a-b38b-c6c8','Mrs..Lorraine.Avery2@nus.edu.sg','USNV MunozFPO AA 41592','38546','973.696.1667',1,CHAR_TO_LABEL('ols_pol','C::CS5228'))
INTO student (id, first_name, last_name, gender, matric_no, email, address, postal, tel, school_id, ols_pol_col)     VALUES('cb832cc4-32c5-469a-46ea-625b4adbb0ba','Michelle','Rogers','F','AWcb832cc4-32c5-469a','Michelle.Rogers3@nus.edu.sg','3684 Allen Divide Suite 547North Williammouth, CA 27366','76804','677.423.2806',2,CHAR_TO_LABEL('ols_pol','C::BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(1,'68abf025-9639-1a19-917b-3b04139be79e',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(2,'0bf30fe0-4474-563f-7622-b7d0a8d2389f',1,CHAR_TO_LABEL('ols_pol','C:OP:CS5228'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(3,'aa92e04a-b38b-c6c8-e614-7fd9b23b749a',1,CHAR_TO_LABEL('ols_pol','C:OP:BT4211'))
INTO course_enrollment(id, student_id,course_schedule_id,ols_pol_col)    VALUES(4,'cb832cc4-32c5-469a-46ea-625b4adbb0ba',2,CHAR_TO_LABEL('ols_pol','C:OP:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('68abf025-9639-1a19-917b-3b04139be79e',1,51915,51566.96,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('0bf30fe0-4474-563f-7622-b7d0a8d2389f',2,40924,34300.73,CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('aa92e04a-b38b-c6c8-e614-7fd9b23b749a',3,72663,22598.19,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
INTO school_fee(student_id, semester_id, school_fee, school_fee_paid, ols_pol_col)    VALUES('cb832cc4-32c5-469a-46ea-625b4adbb0ba',4,9615,9411.87,CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(1,20497,TIMESTAMP '2018-10-13 00:00:00 +08:00',TIMESTAMP '2019-03-10 00:00:00 +08:00',6377.60,'68abf025-9639-1a19-917b-3b04139be79e',CHAR_TO_LABEL('ols_pol','S:FN:SOC'))
INTO loan (id, amount, start_date, due_date, paid_amount, student_id, ols_pol_col)    VALUES(2,16290,TIMESTAMP '2018-11-02 00:00:00 +08:00',TIMESTAMP '2019-11-09 00:00:00 +08:00',5772.20,'aa92e04a-b38b-c6c8-e614-7fd9b23b749a',CHAR_TO_LABEL('ols_pol','S:FN:BIZ'))
 SELECT * FROM dual;

INSERT ALL
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(1,8,CHAR_TO_LABEL('ols_pol','C:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(2,42,CHAR_TO_LABEL('ols_pol','C:AD:CS5228'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(3,38,CHAR_TO_LABEL('ols_pol','C:AD:BT4211'))
INTO grade(course_enrollment_id, grade, ols_pol_col)    VALUES(4,35,CHAR_TO_LABEL('ols_pol','C:AD:BT4211'))
 SELECT * FROM dual;

INSERT ALL
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('a456c770-e067-b7db-3b40-7788112c8ab4',96996,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('2b033463-3041-6f74-3a2c-28308f35b7a4',19033,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('aaadfe54-df73-799a-4d0e-469c8ff950b2',34093,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('d929fffd-cdc3-834d-f083-d89a60723793',17010,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('4a336a0f-5eca-1de9-63ae-31d861a5b333',96723,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('693749e8-5c17-97f5-e2f5-b374a2627257',1400,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('44a3e442-0e9b-e362-7fed-5fd1d3d2d496',59174,CHAR_TO_LABEL('ols_pol','HS:FN:'))
INTO staff_salary(staff_id, salary, ols_pol_col)    VALUES('03ab5b28-5a7a-e92a-edfb-50f4864061b9',85935,CHAR_TO_LABEL('ols_pol','HS:FN:'))
 SELECT * FROM dual;

