CREATE TABLE DEPOSIT
(

    ACTNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8,2),
    ADATE DATETIME
);

INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (101, 'ANIL', 'VRCE', 1000.00, '1995-03-01');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (103, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (104, 'MADHURI', 'CHANDI', 1200.00, '1995-12-17');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (105, 'PRAMOD', 'M.G. ROAD', 3000.00, '1996-03-27');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02');
INSERT INTO DEPOSIT
    (ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
    (109, 'MINU', 'POWAI', 7000.00, '1995-08-10');

-- PART - A

-- 1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(50), PINCODE INT;

-- 2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT
ALTER COLUMN BNAME VARCHAR(20);

-- 3. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT;

-- 4. Rename Column ActNo to ANO.

EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO';

-- 5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT
DROP COLUMN CITY;

-- 6. Change name of table DEPOSIT to DEPOSIT_DETAIL.

EXEC sp_rename 'DEPOSIT','DEPOSIT_DETAIL';


-- Part – B:


-- 1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';

SELECT *
FROM DEPOSIT_DETAIL


-- 2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;

-- 3. Rename Column CNAME to CustomerName.

EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMERNAME';

-- Part – C:

CREATE TABLE STUDENT_DETAIL
(
    Enrollment_No VARCHAR(20),
    Name VARCHAR(25),
    CPI DECIMAL(5,2),
    Birthdate DATETIME
);

-- 1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

ALTER TABLE STUDENT_DETAIL
    ADD CITY VARCHAR(20) NOT NULL,BACKLOG INT NULL;

SELECT *
FROM STUDENT_DETAIL;

-- 2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).

ALTER TABLE STUDENT_DETAIL
    ALTER COLUMN NAME VARCHAR(35);

-- 3. Change the data type DECIMAL to INT in CPI Column.

ALTER TABLE STUDENT_DETAIL
    ALTER COLUMN CPI INT;

-- 4. Rename Column Enrollment_No to ENO.

EXEC SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO.';

-- 5. Delete Column City from the student_detail table.

ALTER TABLE STUDENT_DETAIL
    DROP COLUMN CITY;

-- 6. Change name of table student_detail to STUDENT_MASTER.

EXEC SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER';


--DELETE, Truncate, Drop Operation


--PART - A

-- 1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.

DELETE FROM DEPOSIT_DETAIL
    WHERE AMOUNT>=4000;

-- 2. Delete all the accounts CHANDI BRANCH.

DELETE FROM DEPOSIT_DETAIL
    WHERE BNAME = 'CHANDI';

SELECT *
FROM DEPOSIT_DETAIL;

-- 3. Delete all the accounts having account number (ANO) is greater than 105.

DELETE FROM DEPOSIT_DETAIL
    WHERE ANO > 105;

-- 4. Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL

SELECT *
FROM DEPOSIT_DETAIL;

-- 5. Remove Deposit_Detail table. (Use Drop)

DROP TABLE DEPOSIT_DETAIL;


--PART - B

CREATE TABLE EMPLOYEE_MASTER(
    EmpNo INT,
    EmpName VARCHAR(25),
    JoiningDate DATETIME,
    Salary DECIMAL (8,2),
    City VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER VALUES
(101, 'Keyur ','2005-01-02', 12000.00 ,'Rajkot'),
(102, 'Hardik', '2015-02-04', 14000.00 ,'Ahmedabad'),
(103, 'Kajal ','2014-03-06', 15000.00 ,'Baroda'),
(104, 'Bhoomi','2023-06-05', 12500.00 ,'Ahmedabad'),
(105, 'Harmit','2015-02-04', 14000.00 ,'Rajkot'),
(106, 'Mitesh','2025-09-01' ,5000.00 ,'Jamnagar'),
(107, 'Meera ',Null ,7000.00, 'Morbi'),
(108, 'Kishan','2006-02-03', 10000.00, NULL);


-- 1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.

DELETE FROM EMPLOYEE_MASTER
WHERE Salary>=14000

-- 2. Delete all the Employees who belongs to ‘RAJKOT’ city.

DELETE FROM EMPLOYEE_MASTER
WHERE City = 'Rajkot';

-- 3. Delete all the Employees who joined after 1-1-2007.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate > '2007-01-01';

-- 4. Delete the records of Employees whose joining date is null and Name is not null.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate IS NULL AND EmpName IS NOT NULL; 

-- 5. Delete the records of Employees whose salary is 50% of 20000.

DELETE FROM EMPLOYEE_MASTER
WHERE Salary = 0.5*20000;

SELECT * FROM EMPLOYEE_MASTER;

-- 6. Delete the records of Employees whose City Name is not empty.

DELETE FROM EMPLOYEE_MASTER
WHERE City IS NOT NULL;

DELETE FROM EMPLOYEE_MASTER
WHERE City <> '';

-- 7. Delete all the records of Employee_MASTER table. (Use Truncate)

TRUNCATE TABLE EMPLOYEE_MASTER

-- 8. Remove Employee_MASTER table. (Use Drop)

DROP TABLE EMPLOYEE_MASTER;
