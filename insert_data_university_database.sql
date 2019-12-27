
USE university;

--
-- Insert data for DEPARTMENT table
--
INSERT INTO department (dept_id, dept_name, budget) VALUES
(1 , 'Computer Science' , '90000' ), 
(2 , 'Telecommunications' , '100000'), 
(3 , 'Accounting' , '85000'), 
(4 , 'Math and Science' , '120000'), 
(5 , 'Liberal Arts' , '800000'), 
(6 , 'English' , '70000'); 

--
-- Insert data for COURSE table
--
INSERT INTO course
VALUES ('AC101' , 'Accounting' , 3 , 3 , 'EN100');
INSERT INTO course
VALUES ('CIS253' , 'Database Systems' , 3 , 1 , ' '); 
INSERT INTO course
VALUES('CIS265' , 'Systems Analysis' , 3 , 3 , 'CIS253'); 
INSERT INTO course
VALUES('EN100' , 'Basic English' , 0 , 6 , ' ' ); 
INSERT INTO course
VALUES('LA123' , 'English Literature' , 3 , 5 , 'EN100'); 
INSERT INTO course
VALUES('MA150' , 'College Algebra' , 3 , 4 , 'EN100'); 

--
-- Insert data for FACULTY table
--
INSERT INTO faculty
VALUES (63395, 'Jones' , 11 , 1 , 94333.99); 
INSERT INTO faculty
VALUES (78699, 'Mobley' , 11 , 1 , 59303.62);
INSERT INTO faculty
VALUES (96895, 'Williams' , 20 , 2 , 119921.41); 
INSERT INTO faculty
VALUES (79653, 'Vajpayee' , 12 , 2 , 88791.45); 
INSERT INTO faculty
VALUES (97302, 'Collins' , 17 , 3 , 61387.56); 
INSERT INTO faculty
VALUES (57180, 'Sen' , 12 , 3 , 32570.50); 
INSERT INTO faculty
VALUES (74420, 'Rivera' , 21 , 4 , 89805.83); 
INSERT INTO faculty
VALUES (35579, 'Chang' , 17 , 5 , 108011.81); 
INSERT INTO faculty
VALUES (98377, 'Brad' , 12 , 6 , 35570.50); 

--
-- Insert data for MAJOR table
--
INSERT INTO major
VALUES ( 100 , 'AAS-Accounting'); 
INSERT INTO major
VALUES ( 200 , 'AAS-Computer Science'); 
INSERT INTO major
VALUES ( 300 , 'AAS-Telecommunications'); 
INSERT INTO major
VALUES ( 400 , 'BS-Accounting'); 
INSERT INTO major
VALUES ( 500 , 'BS-Computer Science'); 
INSERT INTO major
VALUES ( 600 , 'BS-Telecommunications'); 

--
-- Insert data for STUDENT table
--
INSERT INTO student
VALUES (24746, 'Diaz' , 'Jose' , '1 Ford Avenue #7' , 'Hill' , 
        'NJ' , '08863' , '1993-02-12' , 100 , '9735551111' , 'ugrad'); 
INSERT INTO student
VALUES (79352, 'Tyler' , 'Kee' , '12 Morris Avenue' , 'Bronx' , 
         'NY' , '10468' , '1994-03-18' , 500 , '7185552222' , 'grad'); 
INSERT INTO student
VALUES (76672, 'Miliko' , 'Rajesh' , '25 River Road #3' , 'Edison' , 
         'NJ' , '08837' , '1995-12-12' , 400 , '7325553333' , 'ugrad'); 
INSERT INTO student
VALUES (14182, 'Rickles' , 'Alex' , '100 Main Street' , 'Iselin' , 
         'NJ' , '08838' , '1990-10-20' , 500 , '7325554444' , 'grad'); 
INSERT INTO student
VALUES (44985, 'Lee' , 'Ho' , '2845 First Lane' , 'Hope' , 
         'NY' , '11373' , '1995-10-28' , 600 , '2125555555' , 'grad'); 
INSERT INTO student
VALUES (96052, 'Holn' , 'Amir' , '213 Broadway' , 'Clifton' ,
         'NJ' , '07222' , '1994-07-07' , 200 , '2015556666' , 'ugrad'); 

--
-- Insert data for TERM table
--
INSERT INTO term 
VALUES ('FL12' , 'Fall 2012' , '2012-09-08' , '2012-12-20'); 
INSERT INTO term 
VALUES ('FL13' , 'Fall 2013' , '2013-09-07' , '2013-12-19');
INSERT INTO term 
VALUES ('SP12' , 'Spring 2012' , '2012-04-28' , '2012-07-16'); 
INSERT INTO term 
VALUES ('SP13' , 'Spring 2013' , '2013-03-27' , '2013-07-15'); 
INSERT INTO term 
VALUES ('WN13' , 'Winter 2013' , '2013-01-05' , '2013-04-18'); 

--
-- Insert data for LOCATION table
--
INSERT INTO location
VALUES (11 , 'Gandhi' , 101 , '2' , 'O' , 'Office'); 
INSERT INTO location
VALUES (12 , 'Gandhi' , 103 , '2' , 'O' , 'Office'); 
INSERT INTO location
VALUES (13 , 'Kennedy' , 202 , '35' , 'L' , 'Lab'); 
INSERT INTO location
VALUES (14 , 'Kennedy' , 204 , '50' , 'L' , 'Lab'); 
INSERT INTO location
VALUES (15 , 'Nehru' , 301 , '50' , 'C' , 'Classroom'); 
INSERT INTO location
VALUES (16 , 'Nehru' , 309 , '45' , 'C' , 'Classroom'); 
INSERT INTO location
VALUES (17 , 'Gandhi' , 105 , '2' , 'O' , 'Office' ); 
INSERT INTO location
VALUES (18 , 'Kennedy' , 206 , '40' , 'L' , 'Lab'); 
INSERT INTO location
VALUES (19 , 'Kennedy' , 210 , '30' , 'C' , 'Classroom'); 
INSERT INTO location
VALUES (20 , 'Gandhi' , 107 , '2' , 'O' , 'Office'); 
INSERT INTO location
VALUES (21 , 'Gandhi' , 109 , '2' , 'O' , 'Office'); 


--
-- Insert data for SECTION table
--
INSERT INTO section
VALUES (1101, 'CIS265' , '01' , 'WN13' , 63395 , 'MW' , 
         30, '09:00' , '10:30' , 13); 
INSERT INTO section
VALUES (1102, 'CIS253' , '01' , 'WN13' , 78699 , 'TR' , 
         40, '09:00' , '10:30' , 18); 
INSERT INTO section
VALUES (1103, 'MA150' , '02' , 'WN13' , 74420 , 'F' , 
         25, '09:00' , '12:00' , 15); 
INSERT INTO section
VALUES (1104, 'AC101' , '01' , 'FL13' , 57180 , 'MW' ,
         35, '10:30' , '12:00' , 16); 
INSERT INTO section
VALUES (1205, 'CIS265' , '01' , 'SP13' , 96895 , 'MW' ,
         35 , '09:00' , '10:30' , 14); 
INSERT INTO section
VALUES (1206, 'CIS265' , '02' , 'SP13' , 63395 , 'TR' ,
         30 , '09:00' , '10:30' , 18); 
INSERT INTO section
VALUES (1207, 'LA123' , '05' , 'SP13' , NULL , 'MW' , 
         30 , '09:00' , '10:30' , 15); 
INSERT INTO section
VALUES (1208, 'CIS253' , '21' , 'SP13' , 78699 , 'TR' , 
         40 , '09:00' , '10:30' , 14);
INSERT INTO section
VALUES (1209, 'CIS253' , '11' , 'FL12' , 63395 , 'MW' , 
         40 , '09:00' , '10:30' , 18); 
INSERT INTO section
VALUES (1210, 'CIS253' , '31' , 'FL13' , 78699 , 'F' , 
         45 , 'TBA' , 'TBA' , 19); 
INSERT INTO section
VALUES (1311, 'EN100' , '01' , 'FL13' , 98377 , 'MW' , 
         50 , '09:00' , '10:30' , 14); 
--
-- Insert data for REGISTRATION table
--
INSERT INTO registration  
VALUES (24746, 1102 , 'B' , 'B'); 
INSERT INTO registration  
VALUES (24746, 1103 , 'C' , 'F'); 
INSERT INTO registration  
VALUES (24746, 1104 , 'B' , 'A'); 
INSERT INTO registration  
VALUES (24746, 1207 , ' ' , ' '); 
INSERT INTO registration  
VALUES (79352, 1205 , ' ' , ' '); 
INSERT INTO registration  
VALUES (76672, 1102 , 'F' , 'D'); 
INSERT INTO registration  
VALUES (76672, 1103 , 'A' , 'A'); 
INSERT INTO registration  
VALUES (76672, 1206 , 'B' , 'C'); 
INSERT INTO registration  
VALUES (76672, 1207 , ' ' , ' '); 
INSERT INTO registration  
VALUES (76672, 1210 , ' ' , ' '); 
INSERT INTO registration  
VALUES (14182, 1101 , 'F' , 'W'); 
INSERT INTO registration  
VALUES (14182, 1104 , 'D' , 'D'); 
INSERT INTO registration  
VALUES (14182, 1206 , 'A' , 'B'); 
INSERT INTO registration  
VALUES (14182, 1311 , 'A' , 'A'); 
INSERT INTO registration  
VALUES (44985, 1206 , ' ' , ' '); 
INSERT INTO registration  
VALUES (44985, 1207 , ' ' , ' '); 
INSERT INTO registration  
VALUES (44985, 1210 , ' ' , ' ');  
INSERT INTO registration  
VALUES (96052, 1208 , ' ' , ' '); 
INSERT INTO registration  
VALUES (96052, 1311 , 'B' , 'B'); 
 





















































