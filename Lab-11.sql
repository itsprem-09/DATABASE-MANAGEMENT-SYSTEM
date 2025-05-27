CREATE TABLE STU_INFO(
    RNO INT,
    NAME VARCHAR(20),
    BRANCH VARCHAR(10)
);

INSERT INTO STU_INFO VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

SELECT * FROM STU_INFO;

CREATE TABLE RESULT(
    RNO INT,
    SPI DECIMAL(2,1)
);

INSERT INTO RESULT VALUES 
(101 , 8.8),
(102 , 9.2),
(103 , 7.6),
(104 , 8.2),
(105 , 7.0),
(107 , 8.2);

SELECT * FROM RESULT;

DROP TABLE RESULT;

CREATE TABLE EMPLOYEE_MASTER(
    EMPLOYEENO VARCHAR(3),
    NAME VARCHAR(10),
    MANAGERNO VARCHAR(3)
);

INSERT INTO EMPLOYEE_MASTER VALUES
('E01','Tarun',NULL),
('E02','Rohan','E02'),
('E03','Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');

SELECT * FROM EMPLOYEE_MASTER;

-- PART - A

-- 1. Combine information from student and result table using cross join or Cartesian product.

SELECT * FROM STU_INFO
CROSS JOIN RESULT;

-- 2. Perform inner join on Student and Result tables.

SELECT * FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

-- 3. Perform the left outer join on Student and Result tables.

SELECT * FROM STU_INFO -- IT WILL CONSIDER LEFT TABLE WHICH IS WRITEEN LEFT SIDE OF LEFT KEYWORD
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT * FROM RESULT
LEFT JOIN STU_INFO
ON STU_INFO.RNO = RESULT.RNO;

-- 4. Perform the right outer join on Student and Result tables.

SELECT * FROM STU_INFO
RIGHT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

-- 5. Perform the full outer join on Student and Result tables.

SELECT * FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT * FROM STU_INFO
FULL JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

-- 6. Display Rno, Name, Branch and SPI of all students.

SELECT STU_INFO.RNO , STU_INFO.NAME , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

-- 7. Display Rno, Name, Branch and SPI of CE branch’s student only.

SELECT STU_INFO.RNO , STU_INFO.NAME , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE STU_INFO.BRANCH = 'CE';

-- 8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.

SELECT S.RNO , S.NAME , S.BRANCH , R.SPI  
FROM STU_INFO AS S
LEFT JOIN RESULT AS R
ON S.RNO = R.RNO
WHERE S.BRANCH <> 'EC';

-- 9. Display average result of each branch.

SELECT S.BRANCH , AVG(R.SPI) AS AVG  
FROM STU_INFO AS S
LEFT JOIN RESULT AS R
ON S.RNO = R.RNO
GROUP BY S.BRANCH;

-- 10. Display average result of CE and ME branch.

SELECT BRANCH , AVG(SPI) AS AVG
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH = 'CE' OR BRANCH = 'ME'
GROUP BY BRANCH;

-- Part – B:

-- 1. Display average result of each branch and sort them in ascending order by SPI.

SELECT BRANCH , AVG(SPI) AS AVG
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY AVG(SPI);

-- 2. Display highest SPI from each branch and sort them in descending order.

SELECT BRANCH , MAX(SPI) AS MAX
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY MAX(SPI) DESC;

-- PART - C

-- 1. Retrieve the names of employee along with their manager’s name from the Employee table

SELECT E1.NAME AS EMPLOYEE , E2.NAME AS MANAGER
FROM EMPLOYEE_MASTER E1
INNER JOIN EMPLOYEE_MASTER E2
ON E1.MANAGERNO = E2.EMPLOYEENO;
