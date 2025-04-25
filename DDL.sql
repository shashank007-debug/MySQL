create database course_registration2;
create database gym_enroll;
create database booking_movies;
create database flight_booking;

use course_registration2;

create table course(id int, duration int, name varchar(20), scope varchar(10), courseTechnology varchar(20), origin_country varchar(20), discovered_by varchar(20), discovered_in date, typeofcourse varchar(5), eligibleto varchar(20));
select * from course; 

use gym_enroll;
create table gym(id int, gym_location varchar(10), gym_fees double, trainer varchar(20), owner varchar(20), admission_fees double, equitment int, area double, clealiness varchar(3), hygine varchar(3));
select * from gym;

use booking_movies;
create table movie(id int, hero varchar(20), heroine varchar(20), comedian varchar(20), cast varchar(20), movie_duration double, movie_genere varchar(20), producer_name varchar(20), director_name varchar(20));
select * from movie;

use flight_booking;
create table flight(id int, flight_name varchar(20), flight_type varchar(20), flight_brand varchar(20), flight_duration double, flight_peice double, flight_classes varchar(20), flight_attendents varchar(20));
select * from flight;

CREATE DATABASE hospital_mgmt;
USE hospital_mgmt;


CREATE TABLE hospital(id INT, hospital_name VARCHAR(30), location VARCHAR(20), capacity INT, specialty VARCHAR(30), rating DOUBLE, established_year INT, head_doctor VARCHAR(30), is_government BOOLEAN, emergency_services BOOLEAN);

SELECT * FROM hospital;

ALTER TABLE hospital ADD COLUMN contact_number VARCHAR(15);
ALTER TABLE hospital ADD COLUMN accreditation VARCHAR(30);
ALTER TABLE hospital ADD COLUMN has_pharmacy BOOLEAN DEFAULT TRUE;
ALTER TABLE hospital ADD COLUMN ambulance_count INT;

ALTER TABLE hospital MODIFY COLUMN rating DECIMAL(3,2);
ALTER TABLE hospital MODIFY COLUMN hospital_name VARCHAR(50);
ALTER TABLE hospital MODIFY COLUMN location VARCHAR(50);
ALTER TABLE hospital MODIFY COLUMN specialty VARCHAR(50);

RENAME TABLE hospital TO hospital_details;
RENAME TABLE hospital_details TO medical_centers;
RENAME TABLE medical_centers TO registered_hospitals;
RENAME TABLE registered_hospitals TO final_hospital_data;

ALTER TABLE final_hospital_data DROP COLUMN has_pharmacy;


CREATE DATABASE hotel_booking;
USE hotel_booking;

CREATE TABLE hotel(id INT, hotel_name VARCHAR(30), location VARCHAR(20), room_type VARCHAR(20), available_rooms INT, price_per_night DOUBLE, star_rating INT, has_wifi BOOLEAN, has_breakfast BOOLEAN, owner_name VARCHAR(30));

SELECT * FROM hotel;
ALTER TABLE hotel ADD COLUMN check_in_time TIME;
ALTER TABLE hotel ADD COLUMN check_out_time TIME;
ALTER TABLE hotel ADD COLUMN is_pet_friendly BOOLEAN DEFAULT FALSE;
ALTER TABLE hotel ADD COLUMN total_floors INT;

ALTER TABLE hotel MODIFY COLUMN star_rating TINYINT;
ALTER TABLE hotel MODIFY COLUMN price_per_night DECIMAL(10,2);
ALTER TABLE hotel MODIFY COLUMN location VARCHAR(50);
ALTER TABLE hotel MODIFY COLUMN owner_name VARCHAR(50);

RENAME TABLE hotel TO hotel_info;
RENAME TABLE hotel_info TO hotel_records;
RENAME TABLE hotel_records TO active_hotels;
RENAME TABLE active_hotels TO final_hotel_info;

ALTER TABLE final_hotel_info DROP COLUMN is_pet_friendly;

CREATE DATABASE library_mgmt;
USE library_mgmt;

CREATE TABLE library(id INT, book_title VARCHAR(50), author_name VARCHAR(30), publication_year INT, genre VARCHAR(20), isbn_number VARCHAR(20), is_available BOOLEAN, language VARCHAR(20), shelf_no VARCHAR(10), no_of_pages INT);

SELECT * FROM library;
ALTER TABLE library ADD COLUMN book_condition VARCHAR(20);
ALTER TABLE library ADD COLUMN edition INT;
ALTER TABLE library ADD COLUMN added_date DATE;
ALTER TABLE library ADD COLUMN is_reserved BOOLEAN DEFAULT FALSE;

ALTER TABLE library MODIFY COLUMN isbn_number CHAR(13);
ALTER TABLE library MODIFY COLUMN book_title VARCHAR(100);
ALTER TABLE library MODIFY COLUMN author_name VARCHAR(50);
ALTER TABLE library MODIFY COLUMN shelf_no VARCHAR(5);

RENAME TABLE library TO library_books;
RENAME TABLE library_books TO book_inventory;
RENAME TABLE book_inventory TO catalog_books;
RENAME TABLE catalog_books TO final_library_books;

ALTER TABLE final_library_books DROP COLUMN is_reserved;

CREATE DATABASE online_shopping;
USE online_shopping;

CREATE TABLE product(id INT, product_name VARCHAR(30), category VARCHAR(20), brand VARCHAR(20), price DOUBLE, in_stock BOOLEAN, rating DOUBLE, warranty_years INT, seller_name VARCHAR(30), delivery_days INT);

SELECT * FROM product;
ALTER TABLE product ADD COLUMN discount_percentage DOUBLE;
ALTER TABLE product ADD COLUMN return_policy_days INT;
ALTER TABLE product ADD COLUMN is_featured BOOLEAN DEFAULT FALSE;
ALTER TABLE product ADD COLUMN manufacture_country VARCHAR(30);

ALTER TABLE product MODIFY COLUMN price DECIMAL(10,2);
ALTER TABLE product MODIFY COLUMN product_name VARCHAR(100);
ALTER TABLE product MODIFY COLUMN rating DECIMAL(3,2);
ALTER TABLE product MODIFY COLUMN seller_name VARCHAR(50);

RENAME TABLE product TO product_catalog;
RENAME TABLE product_catalog TO available_products;
RENAME TABLE available_products TO active_inventory;
RENAME TABLE active_inventory TO final_product_catalog;

ALTER TABLE final_product_catalog DROP COLUMN is_featured;


CREATE DATABASE car_rental;
USE car_rental;

CREATE TABLE car(id INT, car_name VARCHAR(30), car_brand VARCHAR(20), car_type VARCHAR(20), seating_capacity INT, rent_per_day DOUBLE, fuel_type VARCHAR(10), availability BOOLEAN, color VARCHAR(15), model_year INT);

SELECT * FROM car;
ALTER TABLE car ADD COLUMN mileage DOUBLE;
ALTER TABLE car ADD COLUMN color VARCHAR(30);
ALTER TABLE car ADD COLUMN transmission_type VARCHAR(20);
ALTER TABLE car ADD COLUMN is_available BOOLEAN DEFAULT TRUE;

ALTER TABLE car MODIFY COLUMN rent_per_day DECIMAL(8,2);
ALTER TABLE car MODIFY COLUMN model_name VARCHAR(100);
ALTER TABLE car MODIFY COLUMN fuel_type VARCHAR(20);
ALTER TABLE car MODIFY COLUMN seating_capacity TINYINT;

RENAME TABLE car TO car_inventory;
RENAME TABLE car_inventory TO vehicle_inventory;
RENAME TABLE vehicle_inventory TO available_vehicles;
RENAME TABLE available_vehicles TO final_car_inventory;

ALTER TABLE final_car_inventory DROP COLUMN is_available;




