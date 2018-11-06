CREATE ROLE univ_admin WITH LOGIN;


GRANT SELECT ON academic_year TO univ_admin;
CREATE POLICY univ_admin_sel_academic_year ON academic_year
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON academic_year TO univ_admin;
CREATE POLICY univ_admin_update_academic_year ON academic_year
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON academic_year TO univ_admin;
CREATE POLICY univ_admin_insert_academic_year ON academic_year
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT SELECT ON semester TO univ_admin;
CREATE POLICY univ_admin_sel_semester ON semester
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON semester TO univ_admin;
CREATE POLICY univ_admin_update_semester ON semester
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON semester TO univ_admin;
CREATE POLICY univ_admin_insert_semester ON semester
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);


GRANT SELECT ON school TO univ_admin;
CREATE POLICY univ_admin_sel_school ON school
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON school TO univ_admin;
CREATE POLICY univ_admin_update_school ON school
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON school TO univ_admin;
CREATE POLICY univ_admin_insert_school ON school
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON school TO univ_admin;
CREATE POLICY univ_admin_del_school ON school
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON specialization TO univ_admin;
CREATE POLICY univ_admin_sel_semester ON specialization
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON specialization TO univ_admin;
CREATE POLICY univ_admin_upd_specialization ON specialization
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON specialization TO univ_admin;
CREATE POLICY univ_admin_ins_specialization ON specialization
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON specialization TO univ_admin;
CREATE POLICY univ_admin_del_specialization ON specialization
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON course TO univ_admin;
CREATE POLICY univ_admin_sel_course ON course
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON course TO univ_admin;
CREATE POLICY univ_admin_update_course ON course
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON course TO univ_admin;
CREATE POLICY univ_admin_insert_course ON course
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON course TO univ_admin;
CREATE POLICY univ_admin_del_semester ON course
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON course_schedule TO univ_admin;
CREATE POLICY univ_admin_sel_cs ON course_schedule
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON course_schedule TO univ_admin;
CREATE POLICY univ_admin_update_cs ON course_schedule
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON course_schedule TO univ_admin;
CREATE POLICY univ_admin_insert_cs ON course_schedule
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON course_schedule TO univ_admin;
CREATE POLICY univ_admin_del_cs ON course_schedule
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON professor TO univ_admin;
CREATE POLICY univ_admin_sel_professor ON professor
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON professor TO univ_admin;
CREATE POLICY univ_admin_update_professor ON professor
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON professor TO univ_admin;
CREATE POLICY univ_admin_insert_professor ON professor
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON professor TO univ_admin;
CREATE POLICY univ_admin_del_professor ON professor
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON admin_officer TO univ_admin;
CREATE POLICY univ_admin_sel_ao ON admin_officer
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON admin_officer TO univ_admin;
CREATE POLICY univ_admin_update_ao ON admin_officer
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON admin_officer TO univ_admin;
CREATE POLICY univ_admin_insert_ao ON admin_officer
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON admin_officer TO univ_admin;
CREATE POLICY univ_admin_del_ao ON admin_officer
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON student TO univ_admin;
CREATE POLICY univ_admin_sel_student ON student
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON student TO univ_admin;
CREATE POLICY univ_admin_update_student ON student
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON student TO univ_admin;
CREATE POLICY univ_admin_insert_student ON student
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON student TO univ_admin;
CREATE POLICY univ_admin_del_student ON student
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON loan TO univ_admin;
CREATE POLICY univ_admin_sel_loan ON loan
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON loan TO univ_admin;
CREATE POLICY univ_admin_update_loan ON loan
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON loan TO univ_admin;
CREATE POLICY univ_admin_insert_loan ON loan
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON loan TO univ_admin;
CREATE POLICY univ_admin_del_loan ON loan
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON school_fee TO univ_admin;
CREATE POLICY univ_admin_sel_sf ON school_fee
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON school_fee TO univ_admin;
CREATE POLICY univ_admin_update_sf ON school_fee
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON school_fee TO univ_admin;
CREATE POLICY univ_admin_insert_sf ON school_fee
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON school_fee TO univ_admin;
CREATE POLICY univ_admin_del_sf ON school_fee
    FOR DELETE
    TO univ_admin
    USING (true);

GRANT SELECT ON course_enrollment TO univ_admin;
CREATE POLICY univ_admin_sel_ce ON course_enrollment
    FOR SELECT
    TO univ_admin
    USING (true);

GRANT UPDATE ON course_enrollment TO univ_admin;
CREATE POLICY univ_admin_update_ce ON course_enrollment
    FOR UPDATE
    TO univ_admin
    USING (true);

GRANT INSERT ON course_enrollment TO univ_admin;
CREATE POLICY univ_admin_insert_ce ON course_enrollment
    FOR INSERT
    TO univ_admin
    WITH CHECK (true);

GRANT DELETE ON course_enrollment TO univ_admin;
CREATE POLICY univ_admin_del_ce ON course_enrollment
    FOR DELETE
    TO univ_admin
    USING (true);

