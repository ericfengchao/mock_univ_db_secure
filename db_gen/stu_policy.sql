CREATE ROLE student WITH LOGIN;


-- Student can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer
GRANT SELECT ON academic_year TO student;
GRANT SELECT ON semester TO student;
GRANT SELECT ON school TO student;
GRANT SELECT ON specialization TO student;
GRANT SELECT ON course TO student;
GRANT SELECT ON course_schedule TO student;
GRANT SELECT ON professor TO student;
GRANT SELECT ON admin_officer TO student;

-- Student can view and update email, address, postal, tel of own Student 
GRANT SELECT ON student TO student;
CREATE POLICY student_sel_own_info ON student
    FOR SELECT
    TO student
    USING (
        id = current_user
    );
GRANT UPDATE(email,address,postal,tel) ON student TO student;
CREATE POLICY student_update_own_info ON student
    FOR UPDATE
    TO student
    USING (
        id = current_user
    );

-- Student can view Loan
GRANT SELECT ON loan TO student;
CREATE POLICY student_sel_own_loan ON loan
    FOR SELECT
    TO student
    USING (
        student_id = current_user
    );

-- Student can view School Fee
GRANT SELECT ON school_fee TO student;
CREATE POLICY student_sel_own_school_fee ON school_fee
    FOR SELECT
    TO student
    USING (
        student_id = current_user
    );

-- Student can view Course Enrollment
GRANT SELECT ON course_enrollment TO student;
CREATE POLICY student_sel_own_course_enrollment ON course_enrollment
    FOR SELECT
    TO student
    USING (
        student_id = current_user
    );
    