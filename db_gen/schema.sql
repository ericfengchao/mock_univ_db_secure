DROP TABLE IF EXISTS "course_enrollment" CASCADE;
DROP TABLE IF EXISTS "school_fee" CASCADE;
DROP TABLE IF EXISTS "course_schedule" CASCADE;
DROP TABLE IF EXISTS "course" CASCADE;
DROP TABLE IF EXISTS "loan" CASCADE;
DROP TABLE IF EXISTS "student" CASCADE;
DROP TABLE IF EXISTS "professor" CASCADE;
DROP TABLE IF EXISTS "admin_officer" CASCADE;
DROP TABLE IF EXISTS "specialization" CASCADE;
DROP TABLE IF EXISTS "academic_year" CASCADE;
DROP TABLE IF EXISTS "school" CASCADE;

CREATE TABLE "school" (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL
);

CREATE TABLE "academic_year" (
    id BIGSERIAL PRIMARY KEY,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    semster int NOT NULL
);

CREATE TABLE "specialization" (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    index VARCHAR(10) NOT NULL,
    school_id BIGSERIAL REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "admin_officer" (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    office_email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id BIGSERIAL REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "professor" (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    office_email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id BIGSERIAL REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "student" (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL,
    specialization_id VARCHAR(50) REFERENCES specialization(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "loan" (
    id BIGSERIAL PRIMARY KEY,
    amount float NOT NULL,
    start_date timestamp with time zone NOT NULL,
    due_date timestamp with time zone NOT NULL,
    amount_paid float NOT NULL,
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "course" (
    id VARCHAR(50) PRIMARY KEY,
    index int NOT NULL,
    name VARCHAR(50) NOT NULL,
    description text NOT NULL,
    specialization_id VARCHAR(50) REFERENCES specialization(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "course_schedule" (
    id VARCHAR(50) PRIMARY KEY,
    course_id VARCHAR(50) REFERENCES course(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    academic_year_id BIGSERIAL REFERENCES academic_year(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    professor_id VARCHAR(50) REFERENCES professor(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "school_fee" (
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    academic_year_id BIGSERIAL REFERENCES academic_year(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    school_fee float NOT NULL,
    school_fee_paid float NOT NULL,
    PRIMARY KEY(student_id, academic_year_id)
);

CREATE TABLE "course_enrollment" (
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    course_schedule_id VARCHAR(50) REFERENCES course_schedule(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    grade float NOT NULL,
    PRIMARY KEY(student_id, course_schedule_id)
);

