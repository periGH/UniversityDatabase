# UniversityDatabase

## Author: Perihan Hill 

A university database for the design and implementation of a relational database system that will provide information on the courses it offers, the academic departments that run the courses, the academic staff, and the enrolled students. 
Following requirements were collected for this application: 
- Department: The university is organized into departments. Each department is identified by a unique identification number (department ID), has a name, and has a budget. 
- Course: Each department runs several courses. Each course is associated with a course ID, title, credits, department ID, and may also have associated prerequisites. 
- Faculty: Faculties are identified by their unique ID. Each faculty has a name, an associated department (department ID), room ID, and salary. 
- Student: Students are identified by their unique ID. Each student has a name, address, birthdate, phone, student type, and a major ID. 
- Term: The university maintains a list of terms, specifying the term ID, term description, start date and end date. 
- Section: The university maintains a list of all classes (sections) taught. Each section is identified by a section ID, course ID, section number, room ID, start time, end time, day, maximum count, and term ID. A section can be used in one course only but can be studied by many students. The department has a list of teaching assignments specifying the sections each faculty is teaching. 
- Registration: The university has a list of all student course registrations specifying the associated sections each student has taken (or registered for), midterm grade, and final grade. 
- Location: The university maintains a list of classrooms which specifies the room ID, building, room number, capacity, room type, and room description. 
- Major: The university has a list of all majors. Each major is identified by a unique number (major ID) and a description. 

Logical Design:

The full set of normalized tables for the University Database is as follows: 
Schema
Department {dept_id, dept_name, budget} 
Course {course_id, title, credits, dept_id, prerequisite} 
Faculty {faculty_id, name, room_id, dept_id, salary} 
Student {student_id, last_name , first_name, street, city, state, zip, birth_date, major_id, phone, student_type} 
Term {term_id , term_desc , start_date , end_date} 
Section (section_id , course_id , section_number , term_id , faculty_id , day , max_count , start_time , end_time, room_id} 
Registration (student_id , section_id , midterm_grade, final_grade} 
Major {major_id , major_desc} 
Location {room_id , building, room_no, capacity, room_type , room_description}
ry. 

Primary Key: DEPARTMENT (dept_id), COURSE (course_id), FACULTY (faculty_id), MAJOR (major_id), STUDENT (student_id), TERM (term_id), LOCATION (room_id), SECTION (section_id), REGISTRATION (student_id, section_id). 

Foreign Key:  COURSE (dept_id), FACULTY (dept_id), STUDENT (major_id), SECTION (course_id, room_id), REGISTRATION (student_id). 

