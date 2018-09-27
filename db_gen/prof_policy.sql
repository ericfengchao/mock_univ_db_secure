CREATE ROLE professor WITH LOGIN;


-- Professor can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer
GRANT SELECT ON academic_year TO professor;
CREATE POLICY prof_sel_academic_year ON academic_year
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON semester TO professor;
CREATE POLICY prof_sel_semester ON semester
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON school TO professor;
CREATE POLICY prof_sel_school ON school
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON specialization TO professor;
CREATE POLICY prof_sel_specialization ON specialization
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON course TO professor;
CREATE POLICY prof_sel_course ON course
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON course_schedule TO professor;
CREATE POLICY prof_sel_course_schedule ON course_schedule
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON professor TO professor;
CREATE POLICY prof_sel_professor ON professor
    FOR SELECT
    TO professor
    USING (true);

GRANT SELECT ON admin_officer TO professor;
CREATE POLICY prof_sel_admin_officer ON admin_officer
    FOR SELECT
    TO professor
    USING (true);

-- Professor can view and update grade own Course Enrollment
GRANT SELECT ON course_enrollment TO professor;
GRANT UPDATE(grade) ON course_enrollment TO professor;
CREATE POLICY prof_sel_course_enrollment ON course_enrollment
    FOR SELECT
    TO professor
    USING (
        course_schedule_id IN (
            SELECT cs.id 
            FROM professor p INNER JOIN course_schedule cs ON (p.id=cs.professor_id)
            WHERE p.id=current_user
        )
    );

-- Professor can view student(excluding address/postal) who enrolled in his/her courses
GRANT SELECT(id,last_name,first_name,gender,matric_no,email,tel,specialization_id) ON student TO professor;
CREATE POLICY prof_sel_enrolled_student_info ON student
    FOR SELECT
    TO professor
    USING (
        id IN (
            SELECT ce.student_id 
            FROM professor p INNER JOIN course_schedule cs ON (p.id=cs.professor_id) INNER JOIN course_enrollment ce ON (ce.course_schedule_id = cs.id)
            WHERE p.id=current_user
        )
    );

-- Professor can update email of own Professor
GRANT UPDATE(email) ON professor TO professor;
CREATE POLICY prof_update_self_email ON professor
    FOR UPDATE
    TO professor
    USING (
        id = current_user
    );

-- Professor can update(description) of own Course
GRANT UPDATE(description) ON course TO professor; 
CREATE POLICY prof_update_course_description ON course
    FOR UPDATE
    TO professor
    USING (
        id IN (
            SELECT c.id 
            FROM professor p INNER JOIN course_schedule cs ON (p.id=cs.professor_id) INNER JOIN course c ON (c.id = cs.course_id)
            WHERE p.id=current_user
        )
    );
