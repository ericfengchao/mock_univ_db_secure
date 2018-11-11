-- cs5322

GRANT ALL PRIVILEGES TO LBACSYS;

GRANT SELECT ON academic_year TO guest;
GRANT SELECT ON semester TO guest;
GRANT SELECT ON school TO guest;
GRANT SELECT ON course TO guest;
GRANT SELECT ON course_schedule TO guest;
GRANT SELECT ON professor TO guest;
GRANT SELECT ON admin_officer TO guest;

GRANT SELECT ON academic_year TO professor;
GRANT SELECT ON semester TO professor;
GRANT SELECT ON school TO professor;
GRANT SELECT ON course TO professor;
GRANT SELECT ON course_schedule TO professor;
GRANT SELECT ON professor TO professor;
GRANT SELECT ON admin_officer TO professor;
GRANT SELECT ON student TO professor;
GRANT SELECT ON course_enrollment TO professor;
GRANT SELECT, UPDATE, INSERT, DELETE ON grade TO professor;

GRANT SELECT ON academic_year TO op_staff;
GRANT SELECT ON semester TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON school TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON course TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_schedule TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON professor TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON admin_officer TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON student TO op_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_enrollment TO op_staff;
GRANT SELECT ON staff_salary TO op_staff;

GRANT SELECT, UPDATE, INSERT, DELETE ON academic_year TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON semester TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON school TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON course TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_schedule TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON professor TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON admin_officer TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON student TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_enrollment TO op_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON grade TO op_director;
GRANT SELECT ON staff_salary TO op_director;

GRANT SELECT ON academic_year TO fn_staff;
GRANT SELECT ON semester TO fn_staff;
GRANT SELECT ON school TO fn_staff;
GRANT SELECT ON course TO fn_staff;
GRANT SELECT ON course_schedule TO fn_staff;
GRANT SELECT ON professor TO fn_staff;
GRANT SELECT ON admin_officer TO fn_staff;
GRANT SELECT ON student TO fn_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON school_fee TO fn_staff;
GRANT SELECT, UPDATE, INSERT, DELETE ON loan TO fn_staff;
GRANT SELECT ON staff_salary TO fn_staff;

GRANT SELECT ON academic_year TO fn_director;
GRANT SELECT ON semester TO fn_director;
GRANT SELECT ON school TO fn_director;
GRANT SELECT ON course TO fn_director;
GRANT SELECT ON course_schedule TO fn_director;
GRANT SELECT ON professor TO fn_director;
GRANT SELECT ON admin_officer TO fn_director;
GRANT SELECT ON student TO fn_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON school_fee TO fn_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON loan TO fn_director;
GRANT SELECT, UPDATE, INSERT, DELETE ON staff_salary TO fn_director;