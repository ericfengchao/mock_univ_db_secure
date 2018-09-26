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
DROP TABLE IF EXISTS "semester" CASCADE;

CREATE TABLE "school" (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL
);

CREATE TABLE "academic_year" (
    id INTEGER PRIMARY KEY,
    start_year INTEGER NOT NULL,
    end_year INTEGER NOT NULL
);

CREATE TABLE "semester" (
    id INTEGER PRIMARY KEY,
    semester INTEGER NOT NULL,
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    end_date TIMESTAMP WITH TIME ZONE NOT NULL,
    academic_year_id INTEGER REFERENCES academic_year(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "specialization" (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    index VARCHAR(10) NOT NULL,
    school_id INTEGER REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "admin_officer" (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id INTEGER REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "professor" (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id INTEGER REFERENCES school(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "student" (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    matric_no VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL,
    specialization_id INTEGER REFERENCES specialization(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "loan" (
    id INTEGER PRIMARY KEY,
    amount FLOAT NOT NULL,
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    due_date TIMESTAMP WITH TIME ZONE NOT NULL,
    paid_amount FLOAT NOT NULL,
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "course" (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    index INTEGER NOT NULL,
    description TEXT NOT NULL,
    specialization_id INTEGER REFERENCES specialization(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "course_schedule" (
    id INTEGER PRIMARY KEY,
    course_id INTEGER REFERENCES course(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    semester_id INTEGER REFERENCES semester(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    professor_id VARCHAR(50) REFERENCES professor(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE "school_fee" (
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    semester_id INTEGER REFERENCES semester(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    school_fee FLOAT NOT NULL,
    school_fee_paid FLOAT NOT NULL,
    PRIMARY KEY(student_id, semester_id)
);

CREATE TABLE "course_enrollment" (
    student_id VARCHAR(50) REFERENCES student(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    course_schedule_id INTEGER REFERENCES course_schedule(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    grade FLOAT NOT NULL,
    PRIMARY KEY(student_id, course_schedule_id)
);
