-- check OLS registered and enabled 
SELECT STATUS FROM DBA_OLS_STATUS WHERE NAME = 'OLS_CONFIGURE_STATUS';
SELECT VALUE FROM V$OPTION WHERE PARAMETER = 'Oracle Label Security';

-- unlock LBACSYS
-- LBACSYS/lbacsys for policy management
ALTER USER LBACSYS ACCOUNT UNLOCK IDENTIFIED BY lbacsys;

-- cs5322/cs5322 for test schema
CREATE USER cs5322 IDENTIFIED BY cs5322;
GRANT CONNECT, RESOURCE, DBA TO cs5322;
GRANT UNLIMITED TABLESPACE TO cs5322;

-- cs5322_test/cs5322_test for test policy
CREATE USER cs5322_test IDENTIFIED BY cs5322_test;
GRANT CONNECT TO cs5322_test;


-- create policy
BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'ols_pol',
  column_name      => 'ols_pol_col',
  default_options  => 'READ_CONTROL,WRITE_CONTROL,LABEL_DEFAULT');
END;
SELECT * FROM ALL_SA_POLICIES;
BEGIN
 SA_SYSDBA.DROP_POLICY (
  policy_name      => 'ols_pol');
END;


-- create level
BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ols_pol',
   level_num     => 40,
   short_name    => 'HS',
   long_name     => 'HIGHLY_SENSITIVE');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ols_pol',
   level_num     => 30,
   short_name    => 'S',
   long_name     => 'SENSITIVE');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ols_pol',
   level_num     => 20,
   short_name    => 'C',
   long_name     => 'CONFIDENTIAL');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ols_pol',
   level_num     => 10,
   short_name    => 'P',
   long_name     => 'PUBLIC');
END;
SELECT * FROM ALL_SA_LEVELS;

-- create compartment
BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'ols_pol',
   comp_num        => '10',
   short_name      => 'FN',
   long_name       => 'FINANCE');
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'ols_pol',
   comp_num        => '20',
   short_name      => 'AD',
   long_name       => 'ACADEMIC');
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'ols_pol',
   comp_num        => '30',
   short_name      => 'OP',
   long_name       => 'OPERATION');
END;
SELECT * FROM ALL_SA_COMPARTMENTS;

-- create group
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 10,
  short_name      => 'UN',
  long_name       => 'UNIVERSITY');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 100,
  short_name      => 'SOC',
  long_name       => 'SCHOOL_OF_COMPUTING',
  parent_name     => 'UN');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 200,
  short_name      => 'BIZ',
  long_name       => 'SCHOOL_OF_BUSINESS',
  parent_name     => 'UN');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 1100,
  short_name      => 'CS5322',
  long_name       => 'DATABASE_SECURITY',
  parent_name     => 'SOC');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 1200,
  short_name      => 'CS5228',
  long_name       => 'DATA_MINING',
  parent_name     => 'SOC');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ols_pol',
  group_num       => 2100,
  short_name      => 'BT4211',
  long_name       => 'MARKETING',
  parent_name     => 'BIZ');
END;
SELECT * FROM ALL_SA_GROUPS;

-- create data label
BEGIN
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '1000',
  label_value     => 'P::',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2000',
  label_value     => 'C:AD,OP:CS5322',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3000',
  label_value     => 'S:OP:SOC',
  data_label      => TRUE);
END;
SELECT * FROM ALL_SA_LABELS;

-- set user level 
BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'cs5322_test', 
  max_level     => 'HS',
  min_level     => 'P',
  def_level     => 'C',
  row_level     => 'C');
END;
SELECT * FROM ALL_SA_USER_LEVELS;

-- set user compartment 
BEGIN
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'cs5322_test', 
  read_comps    => 'OP',
  write_comps   => 'OP',
  def_comps     => 'OP',
  row_comps     => 'OP');
END;
SELECT * FROM DBA_SA_USER_COMPARTMENTS;

-- set user group 
BEGIN
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'cs5322_test', 
  read_groups   => 'CS5322',
  write_groups  => 'CS5322',
  def_groups    => 'CS5322',
  row_groups    => 'CS5322');
END;
SELECT * FROM DBA_SA_USER_GROUPS;

-- set user privilege 
BEGIN
 SA_USER_ADMIN.SET_USER_PRIVS(
  policy_name   => 'ols_pol',
  user_name     => 'cs5322', 
  privileges    => 'FULL');
END;
SELECT * FROM DBA_SA_USER_PRIVS;


-- LBACSYS/lbacsys for policy management
-- cs5322/cs5322 for test schema
-- cs5322_test/cs5322_test for test policy

-- cs5322/cs5322
CREATE TABLE academic_year (
    id INTEGER PRIMARY KEY,
    start_year INTEGER NOT NULL,
    end_year INTEGER NOT NULL
);
GRANT ALL PRIVILEGES TO LBACSYS;
GRANT SELECT ON academic_year TO cs5322_test;


-- LBACSYS/lbacsys
BEGIN
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'academic_year',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
END;

SELECT * FROM cs5322.academic_year;

INSERT INTO cs5322.academic_year (id, start_year, end_year, ols_pol_col) VALUES ('1', '2012', '2013', CHAR_TO_LABEL('ols_pol','P::'));
INSERT INTO cs5322.academic_year (id, start_year, end_year, ols_pol_col) VALUES ('2', '2013', '2014', CHAR_TO_LABEL('ols_pol','C:AD,OP:CS5322'));
INSERT INTO cs5322.academic_year (id, start_year, end_year, ols_pol_col) VALUES ('3', '2014', '2015', CHAR_TO_LABEL('ols_pol','S:OP:SOC'));
SELECT LABEL_TO_CHAR (ols_pol_col) FROM cs5322.academic_year;

-- DROP USER cs5322 CASCADE;











