/*  psahan_project_part2.sql 
    PERIHAN SAHAN
    CS 155A, Fall 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */

\W    

/* UNIVERSITY DATABASE */

/* USE university; */ 

/* Query 0 */

SELECT user(), current_date(), version(), @@sql_mode\G

/* Query 1 */

SELECT * FROM course 
WHERE course_id = 'EN100'; 

/* Query 2 */

SELECT s.section_id, s.course_id, s.term_id 
FROM section s, term t 
WHERE s.term_id = t.term_id 
AND term_desc = 'Winter 2013';

/* Query 3 */

ALTER TABLE course
MODIFY title VARCHAR(50) NOT NULL; 

UPDATE course
SET title = 'Introduction to Relational Databases' 
WHERE course_id = 'CIS253' ; 

SELECT title FROM course 
WHERE title = 'Introduction to Relational Databases' ;

/* Query 4 */

SELECT section_id, course_id, count(*) AS no_of_enrollments
FROM section
WHERE section_id = '1103'
AND course_id = 'MA150';

/* Query 5 */

SELECT c.course_id, s.section_id, CONCAT(t.last_name, ',' , t.first_name) AS "student_roster"
FROM course c 
JOIN faculty f ON (c.dept_id = f.dept_id)
JOIN section s ON (f.faculty_id = s.faculty_id)
JOIN registration r ON (s.section_id = r.section_id)
JOIN student t ON (r.student_id = t.student_id)
WHERE f.name = 'Sen' ; 

/* Query 6 */

SELECT d.dept_name, COUNT(*) AS total_no_of_instructors 
FROM department d, faculty f 
WHERE d.dept_id = f.dept_id 
GROUP BY d.dept_name; 

/* Query 7 */

SELECT faculty_id, name, dept_id 
FROM faculty
WHERE dept_id = 4 OR dept_id = 5; 

/* Query 8 */

SELECT s.section_id, s.course_id, f.name
FROM section s 
JOIN term t ON ( s.term_id = t.term_id) 
JOIN faculty f ON (s.faculty_id = f.faculty_id)
WHERE term_desc = 'Winter 2013' ; 

/* Query 9 */

SELECT CONCAT(first_name, ' ' , last_name) AS "Student_Full_Name" , m.major_desc AS "Major_Description"
FROM student s, major m 
WHERE s.major_id = m.major_id ; 

/* Query 10 */

SELECT s.last_name, s.first_name
FROM student s
JOIN registration r ON (s.student_id = r.student_id)
JOIN section c ON ( r.section_id = c.section_id)
JOIN term t ON (c.term_id = t.term_id)
WHERE r.midterm_grade = 'A' 
AND t.term_desc = 'Winter 2013' ; 


/* Query 11 */

SELECT f.faculty_id, f.name, f.room_id, f.salary
FROM faculty f 
JOIN department d ON (f.dept_id = d.dept_id) 
WHERE dept_name = 'Computer Science' ; 

/* Query 12 */

SELECT count(r.student_id) AS "TOTAL_ENROLLED"
FROM registration r 
JOIN section s ON ( r.section_id = s.section_id)
WHERE s.course_id = 'CIS253' ; 

/* Query 13 */

SELECT c.title, SUM(s.max_count) AS total_capacity, 
       COUNT(s.section_id) AS no_of_section 
FROM course c, section s 
WHERE c.course_id = s.course_id 
GROUP BY c.title
HAVING count(s.section_id) > 1; 

/* Query 14 */

CREATE VIEW course_sections AS
SELECT c.course_id, c.title, c.credits , c.dept_id, c.prerequisite
FROM course c 
JOIN section s ON (c.course_id = s.course_id)
JOIN term t ON (s.term_id = t.term_id)
WHERE c.title = 'Accounting'
AND t.term_desc = 'Winter 2013' 
GROUP BY c.course_id; 



/* Query 15 */

SELECT s.course_id, r.section_id, count(*) AS no_of_enrollments 
FROM section s, registration r
WHERE s.section_id = r.section_id 
GROUP BY s.section_id HAVING count(*) > 2; 




