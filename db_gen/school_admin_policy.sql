CREATE ROLE school_admin WITH LOGIN;


-- Administrative Officer can view Academic Year / Semester / School / Specialization / Course / Course Schedule / Professor / Administrative Officer 
GRANT SELECT ON academic_year TO school_admin;
GRANT SELECT ON semester TO school_admin;
GRANT SELECT ON school TO school_admin;
GRANT SELECT ON specialization TO school_admin;
GRANT SELECT ON course TO school_admin;
GRANT SELECT ON course_schedule TO school_admin;
GRANT SELECT ON professor TO school_admin;
GRANT SELECT ON admin_officer TO school_admin;

-- Administrative Officer can update own Administrative Officer;
GRANT UPDATE ON admin_officer TO school_admin;
CREATE POLICY school_admin_update_own_info ON admin_officer
    FOR UPDATE
    TO school_admin
    USING (
        id = current_user
    );

-- Administrative Officer can update own School; 
GRANT UPDATE ON school TO school_admin;
CREATE POLICY school_admin_update_own_school ON school
    FOR UPDATE
    TO school_admin
    USING (
        id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can update, insert, delete Specialization of own School; 
GRANT UPDATE, INSERT, DELETE ON specialization TO school_admin;
CREATE POLICY school_admin_update_own_specialization ON specialization
    FOR UPDATE
    TO school_admin
    USING (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_specialization ON specialization
    FOR INSERT
    TO school_admin
    WITH CHECK (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_specialization ON specialization
    FOR DELETE
    TO school_admin
    USING (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can update, insert, delete Course of own School; 
GRANT UPDATE, INSERT, DELETE ON course TO school_admin;
CREATE POLICY school_admin_update_own_course ON course
    FOR UPDATE
    TO school_admin
    USING (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_course ON course
    FOR INSERT
    TO school_admin
    WITH CHECK (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_course ON course
    FOR DELETE
    TO school_admin
    USING (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can update, insert, delete Professor of own School; 
GRANT UPDATE, INSERT, DELETE ON professor TO school_admin;
CREATE POLICY school_admin_update_own_professor ON professor
    FOR UPDATE
    TO school_admin
    USING (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_professor ON professor
    FOR INSERT
    TO school_admin
    WITH CHECK (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_professor ON professor
    FOR DELETE
    TO school_admin
    USING (
        school_id IN (
            SELECT ao.school_id 
            FROM admin_officer ao
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can update, insert, delete Course Schedule of own School; 
GRANT UPDATE, INSERT, DELETE ON course_schedule TO school_admin;
CREATE POLICY school_admin_update_own_course_schedule ON course_schedule
    FOR UPDATE
    TO school_admin
    USING (
        course_id IN (
            SELECT co.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN course co ON (sp.id=co.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_course_schedule ON course_schedule
    FOR INSERT
    TO school_admin
    WITH CHECK (
        course_id IN (
            SELECT co.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN course co ON (sp.id=co.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_course_schedule ON course_schedule
    FOR DELETE
    TO school_admin
    USING (
        course_id IN (
            SELECT co.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN course co ON (sp.id=co.specialization_id)
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can view, update, insert, delete Student of own School; 
GRANT SELECT, UPDATE, INSERT, DELETE ON student TO school_admin;
CREATE POLICY school_admin_sel_own_school_student ON student
    FOR SELECT
    TO school_admin
    USING (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_update_own_school_student ON student
    FOR UPDATE
    TO school_admin
    USING (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_school_student ON student
    FOR INSERT
    TO school_admin
    WITH CHECK (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_school_student ON student
    FOR DELETE
    TO school_admin
    USING (
        specialization_id IN (
            SELECT sp.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id)
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can view, update, insert, delete Loan of own School; 
GRANT SELECT, UPDATE, INSERT, DELETE ON loan TO school_admin;
CREATE POLICY school_admin_sel_own_school_loan ON loan
    FOR SELECT
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_update_own_school_loan ON loan
    FOR UPDATE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_school_loan ON loan
    FOR INSERT
    TO school_admin
    WITH CHECK (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_school_loan ON loan
    FOR DELETE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );

-- Administrative Officer can view, update, insert, delete School Fee of own School; 
GRANT SELECT, UPDATE, INSERT, DELETE ON school_fee TO school_admin;
CREATE POLICY school_admin_sel_own_school_fee ON school_fee
    FOR SELECT
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_update_own_school_fee ON school_fee
    FOR UPDATE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_school_fee ON school_fee
    FOR INSERT
    TO school_admin
    WITH CHECK (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_school_fee ON school_fee
    FOR DELETE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );


-- Administrative Officer can view(excluding grade), insert, delete Course Enrollment  of own School;
GRANT SELECT(student_id,course_schedule_id), UPDATE(student_id,course_schedule_id), INSERT, DELETE ON course_enrollment TO school_admin;
CREATE POLICY school_admin_sel_own_school_course_enrollment ON course_enrollment
    FOR SELECT
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_update_own_school_course_enrollment ON course_enrollment
    FOR UPDATE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_insert_own_school_course_enrollment ON course_enrollment
    FOR INSERT
    TO school_admin
    WITH CHECK (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );
CREATE POLICY school_admin_delete_own_school_course_enrollment ON course_enrollment
    FOR DELETE
    TO school_admin
    USING (
        student_id IN (
            SELECT stu.id 
            FROM admin_officer ao INNER JOIN specialization sp ON (ao.school_id=sp.school_id) INNER JOIN student stu ON (sp.id = stu.specialization_id)
            WHERE ao.id=current_user
        )
    );    

-- Administrative Officer can view average grade of each Student in Course Enrollment of own School;  
CREATE VIEW student_avg_grade AS 
	SELECT ce.student_id, to_char(AVG (ce.grade), '99999999999999999D99') AS avg_grade
	FROM course_enrollment ce
    GROUP bY ce.student_id;
GRANT SELECT ON student_avg_grade TO school_admin;

