/* ****************************************************************************/
/*	                                                				          */
/*												  */
/*	                The University Database            			   */
/*											 	   */
/*	                                            			                           */
/* ******************************************************************************/
USE university;

/* drop the tables */

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS term;
DROP TABLE IF EXISTS section;
DROP TABLE IF EXISTS registration;
DROP TABLE IF EXISTS major;
DROP TABLE IF EXISTS location; 

/* create the tables for the database */

/* create DEPARTMENT the table */

CREATE TABLE department (
    dept_id INT(1) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(20) NOT NULL, 
    budget VARCHAR(6) NOT NULL UNIQUE) ENGINE=INNODB;



/* create the COURSE table */

CREATE TABLE course (
    course_id VARCHAR(8) NOT NULL,
    title VARCHAR(20) NOT NULL,
    credits INT(1) NOT NULL,
    dept_id INT(1) NOT NULL,
    prerequisite VARCHAR(8),
    CONSTRAINT course_pk PRIMARY KEY (course_id),
    CONSTRAINT course_fk_department FOREIGN KEY (dept_id)
        REFERENCES department (dept_id)
) ENGINE=INNODB;



/* create the FACULTY table */
 
CREATE TABLE faculty (
    faculty_id INT(5) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL ,
    room_id INT(2) NOT NULL,
    dept_id INT(1) NOT NULL,
    salary DECIMAL(10 , 2 ) NOT NULL,
    CONSTRAINT faculty_fk_department FOREIGN KEY (dept_id)
        REFERENCES department (dept_id)
 ) ENGINE=INNODB;


/* create the MAJOR table */

CREATE TABLE major (
    major_id INT(3) PRIMARY KEY AUTO_INCREMENT,
    major_desc VARCHAR(25) NOT NULL
) ENGINE=INNODB;



/* create the STUDENT table */

CREATE TABLE student (
    student_id INT(5) NOT NULL PRIMARY KEY,
    last_name CHAR(25) NOT NULL UNIQUE,
    first_name CHAR(25) NOT NULL,
    street VARCHAR(25) NOT NULL, 
    city VARCHAR(10) NOT NULL, 
    state VARCHAR(2) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL, 
    major_id INT(3) NOT NULL, 
    phone VARCHAR(10) NOT NULL,
    student_type VARCHAR(5), 
    CONSTRAINT student_fk_major FOREIGN KEY (major_id)   
      REFERENCES major (major_id)
   ) ENGINE=INNODB;


/*  create the TERM table */

CREATE TABLE term (
    term_id CHAR(4) NOT NULL,
    term_desc VARCHAR(12) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT term_pk PRIMARY KEY (term_id)
) ENGINE=INNODB;


/*  create the LOCATION table */

CREATE TABLE location (
    room_id INT(2) NOT NULL PRIMARY KEY,
    building VARCHAR(10) NOT NULL,
    room_no INT(3) NOT NULL,
    capacity VARCHAR(3) NOT NULL,
    room_type CHAR NOT NULL,
    room_description VARCHAR(10) NOT NULL, 
    CONSTRAINT location_capacity_ck CHECK (capacity IN ('2' , '2' , '35' , 
      '50' , '50' , '45' , '2' , '40' , '30' , '2' , '2'))
 ) ENGINE=INNODB;


/*  create the SECTION table */

CREATE TABLE section (
    section_id INT(4) NOT NULL PRIMARY KEY,
    course_id VARCHAR(8) NOT NULL,
    section_number CHAR(3) NOT NULL,
    term_id CHAR(4) NOT NULL,
    faculty_id INT(5) DEFAULT NULL,
    day VARCHAR(3) NOT NULL,
    max_count INT(2) NOT NULL,
    start_time VARCHAR(6) NOT NULL,
    end_time VARCHAR(6) NOT NULL,
    room_id INT(2) NOT NULL,
    CONSTRAINT section_fk_course FOREIGN KEY (course_id)
        REFERENCES course (course_id), 
    CONSTRAINT section_fk_location FOREIGN KEY (room_id)
        REFERENCES location (room_id)
) ENGINE=INNODB;



/* create the REGISTRATION table */

CREATE TABLE registration (
    student_id INT(5) NOT NULL,
    section_id INT(4) NOT NULL,
    midterm_grade CHAR NOT NULL,
    final_grade CHAR NOT NULL, 
    PRIMARY KEY (student_id, section_id),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id)
)  ENGINE=INNODB;












