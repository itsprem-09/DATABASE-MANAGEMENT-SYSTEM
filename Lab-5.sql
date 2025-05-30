--PART - A

CREATE TABLE STUDENT(
    StuID INT,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    Website VARCHAR(50),
    City VARCHAR(25),
    Address VARCHAR(100)
);

INSERT INTO STUDENT VALUES 
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
(1022, 'Hardik', 'Shah' ,'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig''s Home", Narol'),
(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
(1066, 'Ashok', 'Jani', NULL, 'Baroda' ,'A502, Club House Building')

SELECT * FROM STUDENT

-- 1. Display the name of students whose name starts with ‘k’.

SELECT FirstName FROM STUDENT 
WHERE FirstName LIKE 'k%'

-- 2. Display the name of students whose name consists of five characters.

SELECT FirstName FROM STUDENT
WHERE FirstName LIKE '_____'

-- 3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.

SELECT FirstName,LastName FROM STUDENT
WHERE City LIKE '_____a'; 

-- 4. Display all the students whose last name ends with ‘tel’.

SELECT * FROM STUDENT
WHERE LastName LIKE '%tel';

-- 5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.

SELECT * FROM STUDENT 
WHERE FirstName LIKE 'ha%t';

-- 6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.

SELECT * FROM STUDENT
WHERE FirstName LIKE 'k_y%'

-- 7. Display the name of students having no website and name consists of five characters.

SELECT Firstname FROM STUDENT
WHERE Website IS NOT NULL AND FirstName LIKE '_____'

-- 8. Display all the students whose last name consist of ‘jer’.

SELECT * FROM STUDENT 
WHERE LastName LIKE '%jer%';

-- 9. Display all the students whose city name starts with either ‘r’ or ‘b’.

SELECT * FROM STUDENT
WHERE City LIKE '[rb]%'

SELECT * FROM STUDENT
WHERE City LIKE '[r,b]%'

SELECT * FROM STUDENT
WHERE City LIKE 'r%' OR City LIKE 'b%'


-- 10. Display all the name students having websites.

SELECT * FROM STUDENT
WHERE Website IS NULL

-- 11. Display all the students whose name starts from alphabet A to H.

SELECT * FROM STUDENT
WHERE FirstName LIKE '[a-h]%'

-- 12. Display all the students whose name’s second character is vowel.

SELECT * FROM STUDENT
WHERE FirstName LIKE '_[aeiou]%';

-- 13. Display the name of students having no website and name consists of minimum five characters.

SELECT * FROM STUDENT
WHERE Website IS NOT NULL AND FirstName LIKE '%_____%'

-- 14. Display all the students whose last name starts with ‘Pat’.

SELECT * FROM STUDENT
WHERE LastName LIKE 'Pat%';

-- 15. Display all the students whose city name does not starts with ‘b’

SELECT * FROM STUDENT
WHERE City NOT LIKE 'b%'


-- Part – B:


-- 1. Display all the students whose name starts from alphabet A or H.

SELECT * FROM STUDENT
WHERE FirstName LIKE '[AH]%'

-- 2. Display all the students whose name’s second character is vowel and of and start with H.

SELECT * FROM STUDENT
WHERE FirstName LIKE 'H[aeiou]%'

-- 3. Display all the students whose last name does not ends with ‘a’.

SELECT * FROM STUDENT
WHERE LastName NOT LIKE '%a';

-- 4. Display all the students whose first name starts with consonant.

SELECT * FROM STUDENT
WHERE FirstName NOT LIKE '[aeiou]%';

-- 5. Display all the students whose website contains .net

SELECT * FROM STUDENT
WHERE Website LIKE '%.net%';


-- Part – C:


-- 1. Display all the students whose address consist of -.

SELECT * FROM STUDENT
WHERE Address LIKE '%-%'

-- 2. Display all the students whose address contains single quote or double quote.

SELECT * FROM STUDENT
WHERE Address LIKE '%''%''%' OR Address LIKE '%"%"%'

-- 3. Display all the students whose website contains @.

SELECT * FROM STUDENT
WHERE Website LIKE '%@%'

-- 4. Display all the names those are either four or five characters

SELECT * FROM STUDENT
WHERE FirstName LIKE '_____' OR FirstName LIKE '____';