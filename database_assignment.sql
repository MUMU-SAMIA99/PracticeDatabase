DROP DATABASE customers;

-- creating a database
CREATE DATABASE customers;
 
USE customers;
-- creating a table
CREATE TABLE customers(
ID INT AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME VARCHAR(15) NOT NULL,
LAST_NAME VARCHAR(50) NOT NULL,
DATE_of_Birth DATE NOT NULL,
Phone VARCHAR(15),
Address VARCHAR(200) NOT NULL,
City VARCHAR(200) NOT NULL,
State VARCHAR(200) NOT NULL,
Points INT (200) NOT NULL
);

SELECT * FROM customers;

INSERT INTO customers(FIRST_NAME,LAST_NAME,DATE_of_Birth,Phone,Address,City,State,Points) VALUES
('Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA','2273'),

('Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA','947'),

('Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO','2967'),

('Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL','457'),

('Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX','3675')
;

SELECT *
FROM Customers
WHERE Points > 1000
ORDER BY Points
LIMIT 2;

SELECT * FROM customers WHERE (YEAR(DATE_of_Birth)BETWEEN 1980 TO 1990) OR (Points < 1000);




SELECT * FROM Customers ORDER BY Points ASC;

SELECT * FROM Customers WHERE Last_NAME REGEXP  'burgh';
SELECT * FROM Customers WHERE FIRST_NAME REGEXP  'burgh';


SELECT *
FROM Customers
WHERE Phone = NULL
ORDER BY Phone;



ALTER TABLE DATE_of_Birth RENAME TO dob;




SELECT  MAX(Points) FROM Customers;
SELECT id,FIRST_NAME,MAX(Points) AS max_Points FROM `Customers`

SELECT   ID,FIRST_NAME,LAST_NAME, Phone,Points,
CASE
	WHEN Points<1000 THEN 'they are bronze members.'
	WHEN Points>1000 AND Points<2000 THEN ' they are silver members.'
	WHEN Points>2000 AND Points<3000 THEN ' they are gold members.'
	
	WHEN Points>3000 THEN ' they are platinum  members.'
	
	
END AS Points_measurement FROM Customers;






