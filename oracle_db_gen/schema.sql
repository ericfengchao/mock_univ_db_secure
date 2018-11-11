DROP TABLE loan;
DROP TABLE grade;
DROP TABLE staff_salary;
DROP TABLE course_enrollment;
DROP TABLE school_fee;
DROP TABLE course_schedule;
DROP TABLE course;
DROP TABLE student;
DROP TABLE professor;
DROP TABLE admin_officer;
DROP TABLE semester;
DROP TABLE academic_year;
DROP TABLE school;

CREATE TABLE school (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL
);

CREATE TABLE academic_year (
    id INTEGER PRIMARY KEY,
    start_year INTEGER NOT NULL,
    end_year INTEGER NOT NULL
);

CREATE TABLE semester (
    id INTEGER PRIMARY KEY,
    semester INTEGER NOT NULL,
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    end_date TIMESTAMP WITH TIME ZONE NOT NULL,
    academic_year_id INTEGER,

    CONSTRAINT fk_sem_academic_year
    FOREIGN KEY (academic_year_id)
    REFERENCES academic_year(id)
);

CREATE TABLE admin_officer (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id INTEGER,

   CONSTRAINT fk_admin_school
    FOREIGN KEY (school_id)
    REFERENCES school(id)
);

CREATE TABLE professor (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    email VARCHAR(50) NOT NULL,
    office_address VARCHAR(100) NOT NULL,
    office_postal VARCHAR(10) NOT NULL,
    office_tel VARCHAR(20) NOT NULL,
    school_id INTEGER,

    CONSTRAINT fk_prof_school
    FOREIGN KEY (school_id)
    REFERENCES school(id)
);

CREATE TABLE student (
    id VARCHAR(50) PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    matric_no VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    postal VARCHAR(10) NOT NULL,
    tel VARCHAR(20) NOT NULL,
    school_id INTEGER,

    CONSTRAINT fk_stu_sch
    FOREIGN KEY(school_id)
    REFERENCES school(id)
);

CREATE TABLE loan (
    id INTEGER PRIMARY KEY,
    amount FLOAT NOT NULL,
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    due_date TIMESTAMP WITH TIME ZONE NOT NULL,
    paid_amount FLOAT NOT NULL,
    student_id VARCHAR(50),

    CONSTRAINT fk_loan_stu
    FOREIGN KEY (student_id)
    REFERENCES student(id)
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    idx INTEGER NOT NULL,
    description CLOB NOT NULL,
    school_id INTEGER,

    CONSTRAINT fk_course_sch
    FOREIGN KEY (school_id)
    REFERENCES school(id)
);

CREATE TABLE course_schedule (
    id INTEGER PRIMARY KEY,
    course_id INTEGER,
    semester_id INTEGER,
    professor_id VARCHAR(50),

    CONSTRAINT fk_cs_course
    FOREIGN KEY (course_id)
    REFERENCES course(id),

    CONSTRAINT fk_cs_semester
    FOREIGN KEY (semester_id)
    REFERENCES semester(id),

    CONSTRAINT fk_cs_prof
    FOREIGN KEY (professor_id)
    REFERENCES professor(id)
);

CREATE TABLE school_fee (
    student_id VARCHAR(50),
    semester_id INTEGER,
    school_fee FLOAT NOT NULL,
    school_fee_paid FLOAT NOT NULL,

    PRIMARY KEY(student_id, semester_id),

    CONSTRAINT fk_sf_stu
    FOREIGN KEY (student_id)
    REFERENCES student(id),

    CONSTRAINT fk_sf_sem
    FOREIGN KEY (semester_id)
    REFERENCES semester(id)
);

CREATE TABLE course_enrollment (
    id INTEGER PRIMARY KEY,
    student_id VARCHAR(50),
    course_schedule_id INTEGER,

    CONSTRAINT fk_ce_stu
    FOREIGN KEY (student_id)
    REFERENCES student(id),

    CONSTRAINT fk_ce_csi
    FOREIGN KEY (course_schedule_id)
    REFERENCES course_schedule(id)
);

CREATE TABLE grade (
    course_enrollment_id INTEGER,
    grade FLOAT NOT NULL,

    CONSTRAINT fk_gr_ce
    FOREIGN KEY (course_enrollment_id)
    REFERENCES course_enrollment(id)
);

CREATE TABLE staff_salary (
    staff_id VARCHAR(50) PRIMARY KEY,
    salary FLOAT NOT NULL
);



