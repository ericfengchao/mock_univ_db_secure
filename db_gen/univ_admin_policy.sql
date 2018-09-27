CREATE ROLE univ_admin WITH LOGIN;


-- University Administrative Officer can view SELECT, UPDATE, INSERT, DELETE;
GRANT SELECT, UPDATE, INSERT ON academic_year TO univ_admin;
GRANT SELECT, UPDATE, INSERT ON semester TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON school TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON specialization TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON course TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_schedule TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON professor TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON admin_officer TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON student TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON loan TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON school_fee TO univ_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON course_enrollment TO univ_admin;