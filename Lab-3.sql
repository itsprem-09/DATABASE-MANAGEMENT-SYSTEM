USE CSE_3A_109;
CREATE TABLE CRICKET(
	NAME VARCHAR(20),
	CITY VARCHAR(20),
	AGE INT
);

INSERT INTO CRICKET VALUES 
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30);

SELECT * FROM CRICKET;

--PART A

--1 Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET;

SELECT * FROM WORLDCUP;

-- 2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=3;

SELECT * FROM T20;

-- 3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2;

SELECT * FROM IPL;

-- PART - B 

CREATE TABLE EMPLOYEE(
	NAME VARCHAR(20),
	CITY VARCHAR(20),
	AGE INT
);

INSERT INTO EMPLOYEE VALUES
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30);

SELECT * FROM EMPLOYEE;

-- 1. Create table Employee_detail from Employee with all the columns and data.

SELECT * INTO EMPLYOYEE_DETAIL FROM EMPLOYEE;

SELECT * FROM EMPLYOYEE_DETAIL;

-- 2. Create table Employee_data from Employee with first two columns with no data

SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1 = 2;

SELECT * FROM EMPLOYEE_DATA;

-- 3. Create table Employee_info from Employee with no Data

SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1 = 3;

SELECT * FROM EMPLOYEE_INFO;

-- PART - C 

-- 1. Insert the Data into Employee_info from Employee whose CITY is Rajkot

INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE 
WHERE CITY='RAJKOT';

SELECT * FROM EMPLOYEE_INFO;

-- 2.Insert the Data into Employee_info from Employee whose age is more than 32.

INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE
WHERE AGE > 32;

SELECT * FROM EMPLOYEE_INFO

-- Update Operation

-- Part – A:

-- 1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE AMOUNT = 3000;

-- 2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)

UPDATE BORROW
SET BNAME = 'C.G.ROAD'
WHERE CNAME = 'ANIL' AND BNAME = 'VRCE';

-- 3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)

UPDATE DEPOSIT
SET ACTNO = 111, AMOUNT = 5000
WHERE CNAME = 'SANDIP';

-- 4. Update amount of KRANTI to 7000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 7000
WHERE CNAME = 'KRANTI';

-- 5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)

UPDATE BRANCH
SET BNAME = 'ANDHERI WEST'
WHERE BNAME = 'ANDHERI';

-- 6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)

UPDATE DEPOSIT
SET BNAME = 'NEHRU PALACE'
WHERE CNAME = 'MEHUL';

-- 7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE ACTNO BETWEEN 103 AND 107;

-- 8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)

UPDATE DEPOSIT
SET ADATE = '1995-04-01'
WHERE CNAME = 'ANIL';

-- 9. Update the amount of MINU to 10000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 10000
WHERE CNAME = 'MINU';

-- 10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 5000 , ADATE = '1996-04-01'
WHERE CNAME = 'PRAMOD';

-- PART - B

-- 1. Give 10% Increment in Loan Amount. (Use Borrow Table)

UPDATE BORROW
SET AMOUNT = AMOUNT * 1.1;

SELECT * FROM BORROW;

-- 2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT *= 1.2;

SELECT * FROM DEPOSIT;

-- PART C

-- 1. Update amount of loan no 321 to NULL. (Use Borrow Table)

UPDATE BORROW
SET LOANNO = NULL
WHERE LOANNO = 321;

SELECT * FROM BORROW;

-- 2. Update branch name of KRANTI to NULL (Use Borrow Table)

UPDATE BORROW
SET BNAME = NULL
WHERE CNAME = 'KRANTI';

SELECT * FROM BORROW;

-- 3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)

SELECT * FROM BORROW WHERE AMOUNT IS NULL;

-- 4. Display the Borrowers whose having branch. (Use Borrow Table)

SELECT * FROM BORROW WHERE BNAME IS NOT NULL;

SELECT * FROM BORROW;

-- 5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481. (Use Borrow Table)

UPDATE BORROW
SET AMOUNT = 5000,BNAME = 'VRCE',CNAME = 'DARSHAN'
WHERE LOANNO = 481;

SELECT * FROM BORROW;

-- 6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.

UPDATE DEPOSIT
SET ADATE = '2021-01-01' 
WHERE AMOUNT<2000;

SELECT * FROM DEPOSIT

-- 7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.

UPDATE DEPOSIT 
SET ADATE = NULL,BNAME='ANDHERI'
WHERE ACTNO = 110;

SELECT * FROM DEPOSIT;