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

-- ac_test/ac_test for test policy
CREATE USER ac_test IDENTIFIED BY ac_test;
GRANT CONNECT TO ac_test;


-- create policy
BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'ac_ols_pol',
  column_name      => 'ac_ols_pol_col',
  default_options  => 'read_control');
END;
SELECT * FROM ALL_SA_POLICIES;

-- create level
BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ac_ols_pol',
   level_num     => 40,
   short_name    => 'HS',
   long_name     => 'HIGHLY_SENSITIVE');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ac_ols_pol',
   level_num     => 30,
   short_name    => 'S',
   long_name     => 'SENSITIVE');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ac_ols_pol',
   level_num     => 20,
   short_name    => 'C',
   long_name     => 'CONFIDENTIAL');
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'ac_ols_pol',
   level_num     => 10,
   short_name    => 'P',
   long_name     => 'PUBLIC');
END;
SELECT * FROM ALL_SA_LEVELS;

-- create compartment-- create policy
BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'ac_ols_pol',
   comp_num        => '10',
   short_name      => 'FINCL',
   long_name       => 'FINANCIAL');
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'ac_ols_pol',
   comp_num        => '20',
   short_name      => 'OP',
   long_name       => 'OPERATIONAL');
  SA_LABEL_ADMIN.CREATE_LABEL  (
   policy_name     => 'ac_ols_pol',
   label_tag       => '3000',
   label_value     => 'HS:FINCL:SOC',
  data_label      => TRUE);
END;
SELECT * FROM ALL_SA_COMPARTMENTS;

-- create grouo
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ac_ols_pol',
  group_num       => 10,
  short_name      => 'NUS',
  long_name       => 'NUS');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ac_ols_pol',
  group_num       => 100,
  short_name      => 'SOC',
  long_name       => 'SOC',
  parent_name     => 'NUS');
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'ac_ols_pol',
  group_num       => 200,
  short_name      => 'BIZ',
  long_name       => 'BIZ',
  parent_name     => 'NUS');
END;
SELECT * FROM ALL_SA_GROUPS;

-- create data label
BEGIN
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ac_ols_pol',
  label_tag       => '1000',
  label_value     => 'S:FINCL:SOC',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ac_ols_pol',
  label_tag       => '2000',
  label_value     => 'S:FINCL,OP:SOC,BIZ',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ac_ols_pol',
  label_tag       => '3000',
  label_value     => 'HS:FINCL:SOC',
  data_label      => TRUE);
END;
SELECT * FROM ALL_SA_LABELS;

-- set user level 
BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ac_ols_pol',
  user_name     => 'ac_test', 
  max_level     => 'HS',
  min_level     => 'P',
  def_level     => 'C',
  row_level     => 'C');
END;
SELECT * FROM ALL_SA_USER_LEVELS;

-- set user compartment 
BEGIN
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ac_ols_pol',
  user_name     => 'ac_test', 
  read_comps    => 'FINCL',
  write_comps   => 'FINCL',
  def_comps     => 'FINCL',
  row_comps     => 'FINCL');
END;
SELECT * FROM DBA_SA_USER_COMPARTMENTS;

-- set user group 
BEGIN
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ac_ols_pol',
  user_name     => 'ac_test', 
  read_groups   => 'SOC',
  write_groups  => 'SOC',
  def_groups    => 'SOC',
  row_groups    => 'SOC');
END;
SELECT * FROM DBA_SA_USER_GROUPS;

-- set user privilege 
BEGIN
 SA_USER_ADMIN.SET_USER_PRIVS(
  policy_name   => 'ac_ols_pol',
  user_name     => 'ac_test', 
  privileges    => 'READ');
END;
SELECT * FROM DBA_SA_USER_PRIVS;


-- LBACSYS/lbacsys for policy management
-- cs5322/cs5322 for test schema
-- ac_test/ac_test for test policy

-- cs5322/cs5322
CREATE TABLE academic_year (
    id INTEGER PRIMARY KEY,
    start_year INTEGER NOT NULL,
    end_year INTEGER NOT NULL
);
GRANT ALL PRIVILEGES TO LBACSYS;


-- LBACSYS/lbacsys
BEGIN
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ac_ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'academic_year',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
END;

INSERT INTO cs5322.academic_year (id, start_year, end_year, ac_ols_pol_col) VALUES ('1', '2012', '2013', CHAR_TO_LABEL('ac_ols_pol','HS:FINCL:SOC'));
INSERT INTO cs5322.academic_year (id, start_year, end_year, ac_ols_pol_col) VALUES ('2', '2013', '2014', CHAR_TO_LABEL('ac_ols_pol','S:FINCL:SOC'));
SELECT LABEL_TO_CHAR (ac_ols_pol_col) FROM cs5322.academic_year;









