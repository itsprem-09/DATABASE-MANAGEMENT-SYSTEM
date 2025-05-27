-- CREATE TABLE STUDENT_INFO(
--     RNo INT,
--     Name VARCHAR(30),
--     Branch VARCHAR(3),
--     SPI DECIMAL(3,2),
--     Bklog INT
-- );

INSERT INTO STUDENT_INFO VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 1),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'EC', 4.50, 3);

-- PART - A

-- 1. Create a view Personal with all columns.

CREATE VIEW PERSONAL 
AS
SELECT * FROM STUDENT_INFO;

SELECT * FROM PERSONAL;

-- 2. Create a view Student_Details having columns Name, Branch & SPI.

CREATE VIEW STUDENT_DETAILS
AS
SELECT Name,Branch,SPI FROM STUDENT_INFO;

SELECT * FROM STUDENT_DETAILS;

-- 3. Create a view AcademicData having columns RNo, Name, Branch.

CREATE VIEW AcademicData
AS
SELECT RNo,Name,Branch FROM STUDENT_INFO;

SELECT * FROM AcademicData;

-- 4. Create a view Student_ bklog having all columns but students whose bklog more than 2.

CREATE VIEW STUDENT_BKLOG
AS
SELECT * FROM STUDENT_INFO
WHERE Bklog > 2;

SELECT * FROM STUDENT_BKLOG;

-- 5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.

CREATE VIEW STUDENT_PATTERN
AS
SELECT RNo,Name,Branch FROM STUDENT_INFO
WHERE Name LIKE '____'; 

SELECT * FROM  STUDENT_PATTERN;

-- 6. Insert a new record to AcademicData view. (107, Meet, ME)

INSERT INTO AcademicData VALUES
(107, 'Meet', 'ME');

SELECT * FROM AcademicData; 
--IT WILL ADD DATA INTO MAIN TABLE

-- 7. Update the branch of Amit from CE to ME in Student_Details view.

UPDATE STUDENT_DETAILS
SET Branch = 'ME'
WHERE Name = 'Amit';

-- 8. Delete a student whose roll number is 104 from AcademicData view.

DELETE FROM AcademicData
WHERE RNo = 104;

SELECT * FROM AcademicData;


-- Part – B:


-- 1. Create a view that displays information of all students whose SPI is above 8.5

CREATE VIEW CUSTOM1
AS
SELECT * FROM STUDENT_INFO
WHERE SPI > 8.5;

SELECT * FROM CUSTOM1;

-- 2. Create a view that displays 0 backlog students.

CREATE VIEW VW_BACKLOG
AS
SELECT * FROM STUDENT_INFO
WHERE Bklog = 0; 

SELECT * FROM VW_BACKLOG;

-- 3. Create a view Computerview that displays CE branch data only.

CREATE VIEW COMPUTERVIEW 
AS
SELECT * FROM STUDENT_INFO
WHERE Branch = 'CE';

SELECT * FROM COMPUTERVIEW;


-- Part – C:


-- 1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.

CREATE VIEW RESULT_EC
AS
SELECT Name,SPI FROM STUDENT_INFO
WHERE SPI < 5 AND Branch = 'EC';

SELECT * FROM RESULT_EC;

-- 2. Update the result of student MAHESH to 4.90 in Result_EC view.

UPDATE RESULT_EC
SET SPI = 4.9
WHERE Name = 'Mahesh';

-- 3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.

CREATE VIEW Stu_Bklog
AS
SELECT RNo,Name,Bklog FROM STUDENT_INFO
WHERE Name LIKE 'M%' AND Bklog > 5;

SELECT * FROM Stu_Bklog;

-- 4. Drop Computerview form the database

DROP VIEW COMPUTERVIEW;