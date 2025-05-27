USE EXTRAJOIN

SELECT * FROM CUSTOMER2;

SELECT * FROM ORDERS;

SELECT * FROM SALESMAN;

--From the above given tables perform the following SQL queries (Join):

--1. Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman,cust_name and city.

SELECT SALESMAN.name AS SALESMAN , CUSTOMER2.cust_name AS Customer, SALESMAN.city
FROM SALESMAN
INNER JOIN CUSTOMER2
ON SALESMAN.city = CUSTOMER2.city;

--2. Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no,purch_amt, cust_name, city.

SELECT ORDERS.ord_no , ORDERS.purch_amt , CUSTOMER2.cust_name , CUSTOMER2.city
FROM ORDERS
INNER JOIN CUSTOMER2
ON ORDERS.salesman_id = CUSTOMER2.salesman_id
WHERE ORDERS.purch_amt between 500 AND 2000;

--3. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name,city, Salesman, commission.

SELECT CUSTOMER2.cust_name , CUSTOMER2.city , SALESMAN.name , SALESMAN.commission
FROM CUSTOMER2
JOIN SALESMAN
ON CUSTOMER2.salesman_id = SALESMAN.salesman_id;

--4. Write a SQL query to find salespeople who received commissions of more than 12 percent from the
--company. Return Customer Name, customer city, Salesman, commission.
--5. Write a SQL query to locate those salespeople who do not live in the same city where their customers live
--and have received a commission of more than 12% from the company. Return Customer Name, customer
--city, Salesman, salesman city, commission.
--6. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade,
--Salesman, commission.
--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each
--table appears once and only the relational rows are returned.
--8. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results
--should be sorted by ascending customer_id.
--9. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city,
--grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 
--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order
--amount in ascending order according to the order date to determine whether any of the existing customers
--have placed an order or not.

-------------Part B -----------

-- 1. Write a SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.

SELECT CUSTOMER2.cust_name , CUSTOMER2.city , ORDERS.ord_no , ORDERS.ord_date , ORDERS.purch_amt , SALESMAN.name , SALESMAN.commission
FROM CUSTOMER2
LEFT JOIN ORDERS
ON CUSTOMER2.salesman_id = ORDERS.salesman_id
INNER JOIN SALESMAN
ON CUSTOMER2.salesman_id = SALESMAN.salesman_id;

-- 2. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more

SELECT SALESMAN.name , COUNT(SALESMAN.salesman_id)
FROM CUSTOMER2 
RIGHT JOIN SALESMAN
ON SALESMAN.salesman_id = CUSTOMER2.salesman_id
GROUP BY SALESMAN.name
ORDER BY COUNT(SALESMAN.salesman_id);


-- customers or have not yet joined any of the customers.
-- 3. Write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and
-- amount.
-- 4. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to
-- join any of the customer. The customer may have placed, either one or more orders on or above order
-- amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
-- 5. For those customers from the existing list who put one or more orders, or which orders have been placed by
-- the customer who is not on the list, create a report containing the customer name, city, order number, order
-- date, and purchase amount.
-- 6. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase
-- amount for only those customers on the list who must have a grade and placed one or more orders or which
-- order(s) have been placed by the customer who neither is on the list nor has a grade.
-- 7. Write a SQL query to combine each row of the salesman table with each row of the customer table.
-- 8. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
-- salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
-- 9. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
-- salesperson will appear for every customer and vice versa for those salesmen who belong to a city and
-- customers who require a grade.
-- 10. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman
-- will appear for all customers and vice versa for those salesmen who muust belong to a city which is not the
-- same as his customer and the customers should have their own grade.