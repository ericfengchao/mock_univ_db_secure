-- LBACSYS

-- create policy
BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'ols_pol',
  column_name      => 'ols_pol_col',
  default_options  => 'READ_CONTROL,WRITE_CONTROL,LABEL_DEFAULT');
END;
SELECT * FROM ALL_SA_POLICIES;

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
  label_tag       => '2100',
  label_value     => 'C:AD:',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2200',
  label_value     => 'C:FN:',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2300',
  label_value     => 'C::CS5322',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2400',
  label_value     => 'C::CS5228',
  data_label      => TRUE); 
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2500',
  label_value     => 'C::BT4211',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2600',
  label_value     => 'C:OP:CS5322',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '2700',
  label_value     => 'C:AD:CS5322',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3100',
  label_value     => 'S:FN:',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3200',
  label_value     => 'S::CS5228',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3300',
  label_value     => 'S::BT4211',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3400',
  label_value     => 'S:OP:CS5228',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3500',
  label_value     => 'S:OP:BT4211',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3600',
  label_value     => 'S:AD:CS5228',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3700',
  label_value     => 'S:AD:BT4211',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3800',
  label_value     => 'S:FN:SOC',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3900',
  label_value     => 'S:OP:SOC',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3910',
  label_value     => 'S:FN:BIZ',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '3920',
  label_value     => 'S:OP:UN',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '4100',
  label_value     => 'HS::',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '4200',
  label_value     => 'HS:FN:',
  data_label      => TRUE);
 SA_LABEL_ADMIN.CREATE_LABEL  (
  policy_name     => 'ols_pol',
  label_tag       => '4300',
  label_value     => 'HS:OP:SOC',
  data_label      => TRUE);
END;
SELECT * FROM ALL_SA_LABELS;


-- set user level, compartment, group
BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'guest', 
  max_level     => 'P',
  min_level     => 'P',
  def_level     => 'P',
  row_level     => 'P');
END;

BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'professor', 
  max_level     => 'C',
  min_level     => 'C',
  def_level     => 'C',
  row_level     => 'C');
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'professor', 
  read_comps    => 'AD,OP',
  write_comps   => 'AD,OP',
  def_comps     => 'AD,OP',
  row_comps     => 'AD,OP');
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'professor', 
  read_groups   => 'CS5322',
  write_groups  => 'CS5322',
  def_groups    => 'CS5322',
  row_groups    => 'CS5322');
END;

BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'op_staff', 
  max_level     => 'S',
  min_level     => 'S',
  def_level     => 'S',
  row_level     => 'S');
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'op_staff', 
  read_comps    => 'OP',
  write_comps   => 'OP',
  def_comps     => 'OP',
  row_comps     => 'OP');
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'op_staff', 
  read_groups   => 'SOC',
  write_groups  => 'SOC',
  def_groups    => 'SOC',
  row_groups    => 'SOC');
END;

BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'op_director', 
  max_level     => 'HS',
  min_level     => 'HS',
  def_level     => 'HS',
  row_level     => 'HS');
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'op_director', 
  read_comps    => 'AD,OP',
  write_comps   => 'AD,OP',
  def_comps     => 'AD,OP',
  row_comps     => 'AD,OP');
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'op_director', 
  read_groups   => 'UN',
  write_groups  => 'UN',
  def_groups    => 'UN',
  row_groups    => 'UN');
END;

BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_staff', 
  max_level     => 'S',
  min_level     => 'S',
  def_level     => 'S',
  row_level     => 'S');
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_staff', 
  read_comps    => 'FN',
  write_comps   => 'FN',
  def_comps     => 'FN',
  row_comps     => 'FN');
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_staff', 
  read_groups   => 'SOC',
  write_groups  => 'SOC',
  def_groups    => 'SOC',
  row_groups    => 'SOC');
END;

BEGIN
 SA_USER_ADMIN.SET_LEVELS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_director', 
  max_level     => 'HS',
  min_level     => 'HS',
  def_level     => 'HS',
  row_level     => 'HS');
 SA_USER_ADMIN.SET_COMPARTMENTS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_director', 
  read_comps    => 'FN',
  write_comps   => 'FN',
  def_comps     => 'FN',
  row_comps     => 'FN');
 SA_USER_ADMIN.SET_GROUPS (
  policy_name   => 'ols_pol',
  user_name     => 'fn_director', 
  read_groups   => 'UN',
  write_groups  => 'UN',
  def_groups    => 'UN',
  row_groups    => 'UN');
END;

SELECT * FROM ALL_SA_USER_LEVELS;
SELECT * FROM DBA_SA_USER_COMPARTMENTS;
SELECT * FROM DBA_SA_USER_GROUPS;


-- set user privilege 
BEGIN
 SA_USER_ADMIN.SET_USER_PRIVS(
  policy_name   => 'ols_pol',
  user_name     => 'cs5322', 
  privileges    => 'FULL');
END;
SELECT * FROM DBA_SA_USER_PRIVS;


BEGIN
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'academic_year',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'semester',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'school',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'course',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'course_schedule',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'professor',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'admin_officer',
  table_options  => 'WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'student',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'course_enrollment',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'grade',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'school_fee',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'loan',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'staff_salary',
  table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL',
  label_function => NULL,
  predicate      => NULL);
END;


-- remove query
BEGIN
 SA_SYSDBA.DROP_POLICY (
  policy_name      => 'ols_pol');
END;

BEGIN
 SA_POLICY_ADMIN.REMOVE_TABLE_POLICY (
  policy_name    => 'ols_pol',
  schema_name    => 'cs5322', 
  table_name     => 'academic_year',
  drop_column    => false);
END;




