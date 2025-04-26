CREATE DATABASE country;
USE country;
CREATE TABLE airlines_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(50),
    founded_year INT,
    fleet_size INT
);

CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population BIGINT,
    area_sq_km FLOAT
);

CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100),
    country VARCHAR(50),
    population BIGINT,
    area_sq_km FLOAT
);

ALTER TABLE airlines_info
ADD ceo_name VARCHAR(100),
ADD headquarters VARCHAR(100),
ADD alliance VARCHAR(50);

ALTER TABLE country_info
ADD capital VARCHAR(100),
ADD official_language VARCHAR(50),
ADD currency VARCHAR(50);

ALTER TABLE state_info
ADD capital VARCHAR(100),
ADD official_language VARCHAR(50),
ADD governor VARCHAR(100);

ALTER TABLE airlines_info
RENAME COLUMN ceo_name TO chief_executive,
RENAME COLUMN country TO origin_country,
RENAME COLUMN alliance TO airline_alliance;

ALTER TABLE country_info
RENAME COLUMN capital TO capital_city,
RENAME COLUMN currency TO national_currency,
RENAME COLUMN continent TO world_region;

ALTER TABLE state_info
RENAME COLUMN governor TO state_governor,
RENAME COLUMN country TO nation,
RENAME COLUMN capital TO capital_city;

ALTER TABLE airlines_info
MODIFY fleet_size SMALLINT,
MODIFY founded_year YEAR,
MODIFY airline_name VARCHAR(150);

ALTER TABLE country_info
MODIFY population BIGINT UNSIGNED,
MODIFY official_language VARCHAR(100),
MODIFY area_sq_km DOUBLE;

ALTER TABLE state_info
MODIFY area_sq_km DOUBLE,
MODIFY population INT UNSIGNED,
MODIFY state_name VARCHAR(150);

INSERT INTO airlines_info (airline_id, airline_name, origin_country, founded_year, fleet_size, chief_executive, headquarters, airline_alliance)
VALUES
(1, 'Air India', 'India', 1932, 118, 'Campbell Wilson', 'New Delhi', 'Star Alliance'),
(2, 'IndiGo', 'India', 2006, 300, 'Pieter Elbers', 'Gurgaon', 'None'),
(3, 'Emirates', 'UAE', 1985, 270, 'Tim Clark', 'Dubai', 'None'),
(4, 'Qatar Airways', 'Qatar', 1993, 234, 'Akbar Al Baker', 'Doha', 'Oneworld'),
(5, 'Lufthansa', 'Germany', 1953, 280, 'Carsten Spohr', 'Frankfurt', 'Star Alliance'),
(6, 'British Airways', 'UK', 1974, 254, 'Sean Doyle', 'London', 'Oneworld'),
(7, 'Delta Airlines', 'USA', 1929, 800, 'Ed Bastian', 'Atlanta', 'SkyTeam'),
(8, 'American Airlines', 'USA', 1930, 950, 'Robert Isom', 'Fort Worth', 'Oneworld'),
(9, 'United Airlines', 'USA', 1926, 850, 'Scott Kirby', 'Chicago', 'Star Alliance'),
(10, 'Singapore Airlines', 'Singapore', 1947, 150, 'Goh Choon Phong', 'Singapore', 'Star Alliance'),
(11, 'Turkish Airlines', 'Turkey', 1933, 370, 'Ahmet Bolat', 'Istanbul', 'Star Alliance'),
(12, 'Air France', 'France', 1933, 224, 'Anne Rigail', 'Paris', 'SkyTeam'),
(13, 'KLM Royal Dutch', 'Netherlands', 1919, 200, 'Marjan Rintel', 'Amstelveen', 'SkyTeam'),
(14, 'Ethiopian Airlines', 'Ethiopia', 1945, 130, 'Mesfin Tasew Bekele', 'Addis Ababa', 'Star Alliance'),
(15, 'China Southern', 'China', 1988, 640, 'Han Wensheng', 'Guangzhou', 'SkyTeam'),
(16, 'China Eastern', 'China', 1988, 600, 'Wang Jian', 'Shanghai', 'SkyTeam'),
(17, 'Japan Airlines', 'Japan', 1951, 230, 'Yuji Akasaka', 'Tokyo', 'Oneworld'),
(18, 'ANA', 'Japan', 1952, 250, 'Shinya Katanozaka', 'Tokyo', 'Star Alliance'),
(19, 'Cathay Pacific', 'Hong Kong', 1946, 150, 'Ronald Lam', 'Hong Kong', 'Oneworld'),
(20, 'Thai Airways', 'Thailand', 1960, 80, 'Chai Eamsiri', 'Bangkok', 'Star Alliance');

SELECT * FROM airlines_info;

INSERT INTO country_info (country_id, country_name, world_region, population, area_sq_km, capital_city, official_language, national_currency)
VALUES
(1, 'India', 'Asia', 1393409038, 3287263.0, 'New Delhi', 'Hindi', 'INR'),
(2, 'USA', 'North America', 331002651, 9833517.0, 'Washington D.C.', 'English', 'USD'),
(3, 'Germany', 'Europe', 83166711, 357022.0, 'Berlin', 'German', 'EUR'),
(4, 'France', 'Europe', 67348000, 551695.0, 'Paris', 'French', 'EUR'),
(5, 'Japan', 'Asia', 125960000, 377975.0, 'Tokyo', 'Japanese', 'JPY'),
(6, 'UK', 'Europe', 67215293, 243610.0, 'London', 'English', 'GBP'),
(7, 'Canada', 'North America', 38246108, 9984670.0, 'Ottawa', 'English/French', 'CAD'),
(8, 'Australia', 'Oceania', 25687041, 7692024.0, 'Canberra', 'English', 'AUD'),
(9, 'China', 'Asia', 1444216107, 9596961.0, 'Beijing', 'Mandarin', 'CNY'),
(10, 'Brazil', 'South America', 212559417, 8515767.0, 'Brasilia', 'Portuguese', 'BRL'),
(11, 'Russia', 'Europe/Asia', 145912025, 17098246.0, 'Moscow', 'Russian', 'RUB'),
(12, 'South Africa', 'Africa', 59308690, 1219090.0, 'Pretoria', '11 Languages', 'ZAR'),
(13, 'Italy', 'Europe', 60317116, 301340.0, 'Rome', 'Italian', 'EUR'),
(14, 'Mexico', 'North America', 128932753, 1964375.0, 'Mexico City', 'Spanish', 'MXN'),
(15, 'South Korea', 'Asia', 51780579, 100210.0, 'Seoul', 'Korean', 'KRW'),
(16, 'Indonesia', 'Asia', 273523615, 1904569.0, 'Jakarta', 'Indonesian', 'IDR'),
(17, 'Argentina', 'South America', 45376763, 2780400.0, 'Buenos Aires', 'Spanish', 'ARS'),
(18, 'Saudi Arabia', 'Asia', 34813867, 2149690.0, 'Riyadh', 'Arabic', 'SAR'),
(19, 'Nigeria', 'Africa', 206139589, 923769.0, 'Abuja', 'English', 'NGN'),
(20, 'UAE', 'Asia', 9890402, 83600.0, 'Abu Dhabi', 'Arabic', 'AED');

SELECT * FROM country_info;

INSERT INTO state_info (state_id, state_name, nation, population, area_sq_km, capital_city, official_language, state_governor)
VALUES
(1, 'Maharashtra', 'India', 123000000, 307713.0, 'Mumbai', 'Marathi', 'Ramesh Bais'),
(2, 'California', 'USA', 39500000, 423967.0, 'Sacramento', 'English', 'Gavin Newsom'),
(3, 'Bavaria', 'Germany', 13124737, 70550.0, 'Munich', 'German', 'Markus Söder'),
(4, 'Île-de-France', 'France', 12160000, 12012.0, 'Paris', 'French', 'Valérie Pécresse'),
(5, 'Karnataka', 'India', 67562686, 191791.0, 'Bengaluru', 'Kannada', 'Thawar Chand Gehlot'),
(6, 'Texas', 'USA', 29100000, 695662.0, 'Austin', 'English', 'Greg Abbott'),
(7, 'New South Wales', 'Australia', 8089526, 800642.0, 'Sydney', 'English', 'Chris Minns'),
(8, 'Ontario', 'Canada', 14734014, 1076395.0, 'Toronto', 'English', 'Doug Ford'),
(9, 'Tokyo', 'Japan', 13929286, 2194.0, 'Tokyo', 'Japanese', 'Yuriko Koike'),
(10, 'São Paulo', 'Brazil', 46289333, 248209.0, 'São Paulo', 'Portuguese', 'Tarcísio de Freitas'),
(11, 'Western Cape', 'South Africa', 7000000, 129462.0, 'Cape Town', 'Afrikaans', 'Alan Winde'),
(12, 'Lazio', 'Italy', 5879082, 17232.0, 'Rome', 'Italian', 'Francesco Rocca'),
(13, 'Gyeonggi-do', 'South Korea', 13239000, 10184.0, 'Suwon', 'Korean', 'Kim Dong-yeon'),
(14, 'Jakarta', 'Indonesia', 10640000, 664.0, 'Jakarta', 'Indonesian', 'Heru Budi Hartono'),
(15, 'Buenos Aires', 'Argentina', 17300000, 307571.0, 'La Plata', 'Spanish', 'Axel Kicillof'),
(16, 'Riyadh', 'Saudi Arabia', 8200000, 380000.0, 'Riyadh', 'Arabic', 'Faisal bin Bandar'),
(17, 'Lagos', 'Nigeria', 21000000, 1171.0, 'Ikeja', 'English', 'Babajide Sanwo-Olu'),
(18, 'Dubai', 'UAE', 3500000, 4114.0, 'Dubai', 'Arabic', 'Sheikh Mohammed bin Rashid'),
(19, 'Quebec', 'Canada', 8600000, 1542056.0, 'Quebec City', 'French', 'François Legault'),
(20, 'Tamil Nadu', 'India', 77841267, 130058.0, 'Chennai', 'Tamil', 'R. N. Ravi');

SELECT * FROM state_info;
