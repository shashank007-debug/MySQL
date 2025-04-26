CREATE DATABASE EMPLOYEE1;
USE EMPLOYEE1;

CREATE TABLE employee_info (
    id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_id INT,
    emp_dept VARCHAR(50),
    emp_sal BIGINT,
    emp_exp INT,
    emp_city VARCHAR(50),
    emp_join_date DATE
);

CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    country_capital VARCHAR(50),
    country_population BIGINT,
    official_language VARCHAR(50),
    currency VARCHAR(50),
    continent VARCHAR(50),
    independence_year INT
);

CREATE TABLE airline_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(50),
    origin_country VARCHAR(50),
    airline_type VARCHAR(50),
    seats_available INT,
    rating FLOAT,
    established_year INT,
    headquarters_city VARCHAR(50)
);
INSERT INTO employee_info VALUES
(1, 'Amit', 101, 'DevOps', 750000, 4, 'Mumbai', '2021-06-10'),
(2, 'Sara', 102, 'QA', 600000, 3, 'Delhi', '2020-05-12'),
(3, 'Raj', 103, 'HR', 500000, 2, 'Pune', '2019-04-22'),
(4, 'Nina', 104, 'Dev', 850000, 5, 'Chennai', '2018-07-15'),
(5, 'Vikram', 105, 'DevOps', 920000, 6, 'Bangalore', '2022-01-01'),
(6, 'Anjali', 106, 'Support', 450000, 1, 'Hyderabad', '2023-01-20'),
(7, 'Ravi', 107, 'QA', 680000, 4, 'Kolkata', '2021-09-30'),
(8, 'Priya', 108, 'Dev', 870000, 5, 'Jaipur', '2017-03-13'),
(9, 'Deepak', 109, 'DevOps', 940000, 7, 'Ahmedabad', '2016-02-01'),
(10, 'Sneha', 110, 'HR', 550000, 2, 'Indore', '2022-10-14'),
(11, 'Ajay', 111, 'Support', 470000, 1, 'Patna', '2023-06-06'),
(12, 'Kiran', 112, 'QA', 620000, 3, 'Nagpur', '2020-11-11'),
(13, 'Meena', 113, 'DevOps', 980000, 8, 'Goa', '2015-12-12'),
(14, 'Rohit', 114, 'Dev', 890000, 5, 'Bhopal', '2019-09-09'),
(15, 'Tina', 115, 'HR', 570000, 2, 'Ranchi', '2021-02-02'),
(16, 'Lokesh', 116, 'DevOps', 770000, 4, 'Kanpur', '2020-01-01'),
(17, 'Alok', 117, 'Support', 480000, 2, 'Varanasi', '2022-05-05'),
(18, 'Seema', 118, 'QA', 610000, 3, 'Surat', '2020-08-08'),
(19, 'Manoj', 119, 'Dev', 860000, 5, 'Ludhiana', '2017-07-07'),
(20, 'Neha', 120, 'DevOps', 930000, 6, 'Vijayawada', '2018-03-03');

INSERT INTO country_info (country_id, country_name, country_capital, country_population, official_language, currency, continent,  independence_year) VALUES
(101, 'Sweden', 'Stockholm', 10300000, 'Swedish', 'SEK', 'Europe', 1523),
(103, 'Norway', 'Oslo', 5400000, 'Norwegian', 'NOK', 'Europe', 1905),
(106, 'Denmark', 'Copenhagen', 5800000, 'Danish', 'DKK', 'Europe', 1849),
(109, 'Finland', 'Helsinki', 5500000, 'Finnish', 'Euro', 'Europe', 1917),
(112, 'Netherlands', 'Amsterdam', 17400000, 'Dutch', 'Euro', 'Europe', 1581),
(115, 'Belgium', 'Brussels', 11500000, 'Dutch/French', 'Euro', 'Europe', 1830),
(118, 'Austria', 'Vienna', 8900000, 'German', 'Euro', 'Europe', 1955),
(121, 'Switzerland', 'Bern', 8600000, 'German/French', 'CHF', 'Europe', 1291),
(124, 'Portugal', 'Lisbon', 10200000, 'Portuguese', 'Euro', 'Europe', 1143),
(127, 'New Zealand', 'Wellington', 5100000, 'English', 'NZD', 'Oceania', 1947),
(130, 'Ireland', 'Dublin', 5000000, 'Irish/English', 'Euro', 'Europe', 1922),
(133, 'Singapore', 'Singapore', 5700000, 'English/Malay', 'SGD', 'Asia', 1965),
(136, 'Malaysia', 'Kuala Lumpur', 33000000, 'Malay', 'MYR', 'Asia', 1957),
(139, 'Thailand', 'Bangkok', 70000000, 'Thai', 'Baht', 'Asia', 1238),
(142, 'Vietnam', 'Hanoi', 97000000, 'Vietnamese', 'Dong', 'Asia', 1945),
(145, 'Philippines', 'Manila', 113000000, 'Filipino', 'Peso', 'Asia', 1946),
(148, 'Indonesia', 'Jakarta', 273000000, 'Indonesian', 'Rupiah', 'Asia', 1945),
(151, 'Turkey', 'Ankara', 84000000, 'Turkish', 'Lira', 'Asia/Europe', 1923),
(154, 'Greece', 'Athens', 10400000, 'Greek', 'Euro', 'Europe', 1821),
(157, 'Poland', 'Warsaw', 38000000, 'Polish', 'Zloty', 'Europe', 1918);


INSERT INTO airline_info VALUES
(21, 'Air India', 'India', 'International', 180, 4.5, 1932, 'New Delhi'),
(2, 'IndiGo', 'India', 'Domestic', 200, 4.0, 2006, 'Gurgaon'),
(3, 'SpiceJet', 'India', 'Domestic', 150, 3.8, 2005, 'Gurgaon'),
(4, 'Vistara', 'India', 'Domestic', 120, 4.2, 2015, 'Delhi'),
(5, 'Delta', 'USA', 'International', 250, 4.6, 1929, 'Atlanta'),
(6, 'United Airlines', 'USA', 'International', 230, 4.3, 1926, 'Chicago'),
(7, 'American Airlines', 'USA', 'International', 260, 4.4, 1930, 'Texas'),
(8, 'British Airways', 'UK', 'International', 220, 4.7, 1974, 'London'),
(9, 'Lufthansa', 'Germany', 'International', 240, 4.5, 1953, 'Frankfurt'),
(10, 'Emirates', 'UAE', 'International', 300, 4.8, 1985, 'Dubai'),
(11, 'Qatar Airways', 'Qatar', 'International', 280, 4.9, 1993, 'Doha'),
(12, 'Singapore Airlines', 'Singapore', 'International', 260, 4.9, 1947, 'Singapore'),
(13, 'Qantas', 'Australia', 'International', 210, 4.6, 1920, 'Sydney'),
(14, 'Air France', 'France', 'International', 230, 4.5, 1933, 'Paris'),
(15, 'KLM', 'Netherlands', 'International', 225, 4.3, 1919, 'Amsterdam'),
(16, 'Turkish Airlines', 'Turkey', 'International', 215, 4.2, 1933, 'Istanbul'),
(17, 'Ethiopian Airlines', 'Ethiopia', 'International', 190, 4.1, 1945, 'Addis Ababa'),
(18, 'Southwest Airlines', 'USA', 'Domestic', 160, 4.0, 1967, 'Dallas'),
(19, 'Alaska Airlines', 'USA', 'Domestic', 170, 4.2, 1932, 'Seattle'),
(20, 'JetBlue', 'USA', 'Domestic', 180, 4.1, 1998, 'New York');

UPDATE employee_info SET emp_sal = 990000 WHERE id = 1;
UPDATE employee_info SET emp_dept = 'Cloud' WHERE id = 2;
UPDATE employee_info SET emp_exp = 6 WHERE id = 3;
UPDATE employee_info SET emp_city = 'Noida' WHERE id = 4;
UPDATE employee_info SET emp_name = 'Nikita' WHERE id = 5;
UPDATE employee_info SET emp_id = 999 WHERE id = 6;
UPDATE employee_info SET emp_join_date = '2024-01-01' WHERE id = 7;
UPDATE employee_info SET emp_sal = 880000 WHERE id = 8;
UPDATE employee_info SET emp_dept = 'Security' WHERE id = 9;
UPDATE employee_info SET emp_city = 'Lucknow' WHERE id = 10;

UPDATE country_info SET country_population = 1500000000 WHERE country_id = 1;
UPDATE country_info SET official_language = 'Tamil' WHERE country_id = 2;
UPDATE country_info SET currency = 'Euro' WHERE country_id = 3;
UPDATE country_info SET continent = 'Oceania' WHERE country_id = 4;
UPDATE country_info SET independence_year = 1950 WHERE country_id = 5;
UPDATE country_info SET country_name = 'Italia' WHERE country_id = 6;
UPDATE country_info SET country_capital = 'Barcelona' WHERE country_id = 7;
UPDATE country_info SET currency = 'Yuan' WHERE country_id = 8;
UPDATE country_info SET official_language = 'Hindi' WHERE country_id = 9;
UPDATE country_info SET country_population = 99999999 WHERE country_id = 10;

UPDATE airline_info SET rating = 4.9 WHERE airline_id = 1;
UPDATE airline_info SET airline_type = 'Hybrid' WHERE airline_id = 2;
UPDATE airline_info SET origin_country = 'UAE' WHERE airline_id = 3;
UPDATE airline_info SET seats_available = 300 WHERE airline_id = 4;
UPDATE airline_info SET headquarters_city = 'Houston' WHERE airline_id = 5;
UPDATE airline_info SET airline_name = 'SkyAir' WHERE airline_id = 6;
UPDATE airline_info SET rating = 4.1 WHERE airline_id = 7;
UPDATE airline_info SET established_year = 2000 WHERE airline_id = 8;
UPDATE airline_info SET airline_type = 'Budget' WHERE airline_id = 9;
UPDATE airline_info SET origin_country = 'India' WHERE airline_id = 10;

DELETE FROM employee_info WHERE emp_exp = 1;
DELETE FROM employee_info WHERE emp_dept = 'HR' AND emp_sal < 600000;
DELETE FROM employee_info WHERE emp_city = 'Bangalore' OR emp_city = 'Noida';
DELETE FROM employee_info WHERE id IN (13, 14);
DELETE FROM employee_info WHERE id NOT IN (1, 2, 3, 4, 5);
DELETE FROM employee_info WHERE id BETWEEN 15 AND 17;
DELETE FROM employee_info WHERE id NOT BETWEEN 18 AND 20;

DELETE FROM country_info WHERE country_name = 'Mexico';
DELETE FROM country_info WHERE currency = 'Euro' AND continent = 'Europe';
DELETE FROM country_info WHERE official_language = 'Arabic' OR official_language = 'Russian';
DELETE FROM country_info WHERE country_id IN (11, 12);
DELETE FROM country_info WHERE country_id NOT IN (1, 2, 3);
DELETE FROM country_info WHERE country_id BETWEEN 16 AND 18;
DELETE FROM country_info WHERE independence_year NOT BETWEEN 1800 AND 2000;

DELETE FROM airline_info WHERE rating < 4.2;
DELETE FROM airline_info WHERE origin_country = 'India' AND airline_type = 'Domestic';
DELETE FROM airline_info WHERE airline_name = 'Qantas' OR airline_name = 'KLM';
DELETE FROM airline_info WHERE airline_id IN (18, 19);
DELETE FROM airline_info WHERE airline_id NOT IN (1, 2, 3, 4);
DELETE FROM airline_info WHERE airline_id BETWEEN 5 AND 7;
DELETE FROM airline_info WHERE established_year NOT BETWEEN 1930 AND 2000;

SELECT * FROM employee_info WHERE emp_dept = 'DevOps';
SELECT * FROM country_info WHERE continent = 'Asia';
SELECT * FROM airline_info WHERE rating > 4.5;

SELECT * FROM employee_info WHERE emp_exp > 3 AND emp_sal > 800000;
SELECT * FROM employee_info WHERE emp_dept = 'QA' OR emp_city = 'Pune';
SELECT * FROM employee_info WHERE id IN (1, 3, 5, 7);
SELECT * FROM employee_info WHERE id NOT IN (2, 4, 6);
SELECT * FROM employee_info WHERE emp_sal BETWEEN 600000 AND 900000;
SELECT * FROM employee_info WHERE emp_exp NOT BETWEEN 2 AND 5;

SELECT * FROM country_info 
WHERE currency = 'INR' 
AND country_population > 1000000000;

SELECT * FROM country_info 
WHERE currency = 'Euro' 
AND country_population > 5000000;

SELECT * FROM country_info 
WHERE official_language LIKE '%English%' 
OR continent = 'Asia';

SELECT * FROM country_info 
WHERE id IN (101, 109, 115);

SELECT * FROM country_info 
WHERE country_id NOT IN (106, 112, 118);

SELECT * FROM country_info 
WHERE independence_year BETWEEN 1800 AND 1950;

SELECT * FROM country_info 
WHERE country_population NOT BETWEEN 50000000 AND 100000000;

SELECT * FROM country_info 
WHERE continent = 'Europe' 
AND currency = 'Euro';

SELECT * FROM country_info 
WHERE country_capital LIKE 'S%' 
OR country_capital LIKE 'B%';

SELECT * FROM country_info 
WHERE official_language NOT LIKE '%Spanish%';

SELECT * FROM country_info 
WHERE independence_year NOT BETWEEN 1900 AND 1950;


SELECT * FROM country_info;
SELECT * FROM employee_info;
SELECT * FROM airline_info;

