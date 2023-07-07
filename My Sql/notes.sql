CREATE SCHEMA `demo` ;
use demo;

create database test;
show databases;
drop database test;

CREATE TABLE `demo`.`new_table` (
  `id` INT NOT NULL,
  `fname` VARCHAR(45) NULL,
  `lname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

drop table new_table;

CREATE TABLE `demotable` (
  `id` INT NOT NULL,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
insert into demotable
values(1,'Naruto','Uzumaki'),(2,'Sasuke','Uchiha'),(3,'Kakashi','Hatake');
  
select * from demotable;



/* creating Test DB */
create database test;
use test;
drop database test;
show databases;

create table people(
pid int,
first_name varchar(30),
last_name varchar(30)
);

create table addresses(
id int,
pid int,
house_num int,
city varchar(30),
postcode varchar(30)
);

create table pets(
id int,
pid int,
name varchar(20),
species varchar(20)
);

select * from people;
select * from addresses;
select * from pets;
drop table people;
drop table addresses;
drop table pets;
show tables;

/* modifying Test DB */

describe people;
describe addresses;
desc pets;

alter table people
add primary key(pid);

alter table people
drop primary key;
/* if we drop PK in a table then it will be always Not-Null */

alter table people
add column email varchar(30);

alter table people
add unique(email);




alter table addresses
add primary key(id);

alter table addresses
drop primary key;

alter table addresses
add constraint  FK_PeopleAddresses
foreign key(pid) references people(pid);

alter table addresses
drop foreign key Fk_PeopleAddresses;

alter table addresses change postcode zipcode varchar(30);
alter table addresses modify zipcode varchar(7);
desc addresses;


alter table pets
add primary key(id);

alter table pets
add constraint PFK_PersonPets
foreign key(pid) references people(pid);

alter table pets
add constraint U_species
unique (species);

alter table pets
drop index U_species;

desc pets;

/* DML - insert, update, delete */

/*...................................*/

create database coffee_store;
use coffee_store;

create table products(
id int auto_increment primary key,
name varchar(30),
price decimal(3,2),
coffee_origin varchar(30)
);

create table customers(
id int auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender enum('M','F'),
phone_number varchar(11)
);

create table orders(
id int auto_increment primary key,
product_id int,
customer_id int,
order_time datetime,
foreign key (product_id) references products(id),
foreign key (customer_id) references customers(id)
);

show tables;

desc customers;
desc products;
desc orders;

insert into products(id, name, price, coffee_origin)
value(1,'Espresso','2.50','Brazil');

insert into products(id, name, price, coffee_origin)
values(2,'Macchiato','3.00','Brazil'),(3,'Cappuccino','3.50','Costa Rica'),
(4,'Latte','3.50','Indonesia'),(5,'Americano','3.50','Brazil'),(6,'Flat White','3.50','Indonesia'),
(7,'Filter','3.00','India');

update products
set price = '3.00'
where id = 5;

update products
set price='3.25',coffee_origin='Mexico'
where id=5;

delete from products
where id=2;

delete from products
where id in (1,2,3,4,5,6,7);

delete from products; /* deletes all records in a table */

select * from products;

alter table products
drop column coffee_origin;

alter table products
add column coffee_origin varchar(30);

drop table orders; /* deletes table including the values*/
truncate table orders; /* deletes table and then recreates new table without values*/
select * from orders;

use coffee_store;

desc customers;
desc products;
desc orders;

INSERT INTO orders (product_id,customer_id,order_time) VALUES (1,1,'2017-01-01 08-02-11'),(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12'),(6,17,'2017-01-23 12-45-30'),(2,11,'2017-01-24 08-01-27'),(1,1,'2017-01-25 08-05-13'),(6,11,'2017-01-26 10-49-10'),(7,3,'2017-01-27 09-23-57'),(7,1,'2017-01-27 10-08-16'),(3,18,'2017-01-27 10-13-09'),(4,19,'2017-01-27 11-02-40'),(3,10,'2017-01-28 08-03-21'),(1,2,'2017-01-28 08-33-28'),(1,12,'2017-01-28 11-55-33'),(1,13,'2017-01-29 09-10-17'),(6,6,'2017-01-30 10-07-13'),(1,1,'2017-02-01 08-10-14'),(2,14,'2017-02-02 10-02-11'),(7,10,'2017-02-02 09-43-17'),(7,20,'2017-02-03 08-33-49'),(4,21,'2017-02-04 09-31-01'),(5,22,'2017-02-05 09-07-10'),(3,23,'2017-02-06 08-15-10'),(2,24,'2017-02-07 08-27-26'),(1,1,'2017-02-07 08-45-10'),(6,11,'2017-02-08 10-37-10'),(3,13,'2017-02-09 08-58-18'),(3,14,'2017-02-10 09-12-40'),(5,4,'2017-02-10 11-05-34'),(1,2,'2017-02-11 08-00-38'),(3,8,'2017-02-12 08-08-08'),(7,20,'2017-02-12 09-22-10'),(1,1,'2017-02-13 08-37-45'),(5,2,'2017-02-13 12-34-56'),(4,3,'2017-02-14 08-22-43'),(5,4,'2017-02-14 09-12-56'),(3,5,'2017-02-15 08-09-10'),(6,7,'2017-02-15 09-05-12'),(1,8,'2017-02-15 09-27-50'),(2,9,'2017-02-16 08-51-12'),(3,10,'2017-02-16 13-07-46'),(4,11,'2017-02-17 08-03-55'),(4,12,'2017-02-17 09-12-11'),(5,10,'2017-02-17 11-41-17'),(6,18,'2017-02-17 13-05-56'),(7,19,'2017-02-18 08-33-27'),(1,17,'2017-02-19 08-12-31'),(1,1,'2017-02-20 09-50-17'),(3,5,'2017-02-20 09-51-29'),(4,6,'2017-02-20 10-43-39'),(3,1,'2017-02-21 08-32-17'),(1,1,'2017-02-21 10-30-11'),(3,2,'2017-02-21 11-08-45'),(4,3,'2017-02-22 11-46-32'),(2,15,'2017-02-22 13-35-16'),(6,13,'2017-02-23 08-34-48'),(4,24,'2017-02-24 08-32-03'),(2,13,'2017-02-25 08-03-12'),(7,17,'2017-02-25 09-34-23'),(7,23,'2017-02-25 11-32-54'),(5,12,'2017-02-26 11-47-34'),(6,4,'2017-02-27 12-12-34'),(1,1,'2017-02-28 08-59-22');
INSERT INTO customers (first_name, last_name, gender, phone_number) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');

select * from customers;
select * from products;
select * from orders;

Select name,coffee_origin from products;
select * from products
where coffee_origin = 'Brazil';

select * from products
where coffee_origin = 'Brazil'
and price=3.00;

select * from products
where coffee_origin = 'Brazil'
or price=3.00;

select * from products
where price>=3.50;

select * from customers
where phone_number is null;

select * from customers
where phone_number is not null;

/*
-- 1. From the customers table, select the first name and phone number of all the females 
-- who have a last name of Bluth.

SELECT first_name, phone_number FROM customers 
WHERE gender = 'F'
AND last_name = 'Bluth';


-- 2. From the products table, select the name for all products that have a price greater than 3.00 
-- or a coffee origin of Sri Lanka.


SELECT name, price, coffee_origin FROM products 
WHERE price > 3.00 
OR coffee_origin = 'Sri Lanka';


-- 3. How many male customers don’t have a phone number entered into the customers table?

SELECT * FROM customers 
WHERE gender = 'M'
AND phone_number IS NULL;
*/

select first_name,phone_number from customers
where last_name='Bluth' and gender='F';
select name from products
where price>3.00 or coffee_origin='Srilanka';
select * from customers
where phone_number is null
and gender='M';

select * from customers
where last_name in('Bluth','Taylor','Armstrong');
select * from customers
where first_name not in('Kaite','John','George');

select * from orders
where order_time between '2017-01-01' and '2017-01-07';
select * from orders
where customer_id between 5 and 10;
select * from customers
where last_name between 'A' and 'C';

select * from customers
where last_name like 'W%';
select * from customers
where last_name like '%o%';
select * from customers
where first_name like '_o_';

select * from products
order by price asc;
select * from products
order by price desc;
select * from customers
order by last_name asc;
select * from customers
order by last_name desc;

select * from orders
where product_id=1
order by order_time asc;
/*
USE coffee_store;

-- 1. From the products table, select the name and price of all products with a coffee origin
-- equal to Colombia or Indonesia. Ordered by name from A-Z.


SELECT name, price FROM products 
WHERE coffee_origin IN ('Colombia','Indonesia')
ORDER BY name;


-- 2. From the orders table, select all the orders from February 2017 for customers with 
-- id’s of 2, 4, 6 or 8. 


SELECT * FROM orders 
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id IN (2,4,6,8);


-- 3. From the customers table, select the first name and phone number of all customers 
-- who’s last name contains the pattern ‘ar’.


SELECT first_name, phone_number, last_name FROM customers 
WHERE last_name LIKE '%ar%';
*/
select name,price from products
where coffee_origin in('Brazil','Indonesia')
order by name;

select * from orders;
select * from orders
where order_time like '2017-02%'
and customer_id in (2,4,6,8);

select * from customers;
select first_name,phone_number from customers
where last_name like '%ar%';

use coffee_store;

select distinct coffee_origin from products;
select distinct customer_id, product_id from orders
where order_time between '2017-02-01' and '2017-02-28'
order by customer_id asc;

select * from customers
limit 5 offset 5;

select id, name as coffee, price, coffee_origin as country from products;

/*
USE coffee_store;

-- 1. From the customers table, select distinct last names and order alphabetically from A-Z. 

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;


-- 2. From the orders table, select the first 3 orders placed by customer with id 1, in February 2017.

SELECT * FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id = 1
ORDER BY order_time ASC
LIMIT 3;


-- 3. From the products table, select the name, price and coffee origin but rename the price to 
-- retail_price in the results set.

SELECT name, price AS retail_price, coffee_origin FROM products;
*/
select distinct last_name from customers
order by last_name asc;

select * from orders
where customer_id=1
and order_time like '2017-02-%'
limit 3;

select name, price as retail_price, coffee_origin from products;

/* JOINS */
/* INNER JOIN */
select * from products;
select * from orders;

select products.name, orders.order_time
from products inner join orders
on products.id=orders.product_id;

/* which is equalent to */

select p.name, p.price, o.order_time
from products p inner join orders o
on p.id=o.product_id
where o.product_id = 7
order by o.order_time;

/* LEFT JOIN */
select * from customers;
select * from orders;

update orders
set customer_id = null
where id = 1;

select o.id, c.phone_number, c.last_name, o.order_time
from orders o left join customers c
on o.customer_id = c.id
order by o.order_time
limit 5;

/* RIGHT JOIN */

update orders
set customer_id = 1
where id = null;

select o.id, c.phone_number, c.last_name, o.order_time
from orders o right join customers c
on o.customer_id = c.id
order by o.order_time
limit 5;

/* Joining more then 2 tables */

select * from products;
select * from customers;
select * from orders;

select p.name, p.price, c.first_name, c.last_name, o.order_time
from products p 
join orders o
on p.id = o.product_id
join customers c
on c.id=o.customer_id
where c.last_name='Martin'
order by o.order_time
limit 5;

/*
USE coffee_store;

--  1. Select the order id and customers phone number for all orders of product id 4. 

SELECT o.id, c.phone_number FROM orders o
JOIN customers c ON o.customer_id = c.id
WHERE o.product_id = 4;

--  2. Select the product name and order time for filter coffees sold between January 15th 2017 and February 14th 2017. 

SELECT p.name, o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
WHERE p.name = ‘Filter’
AND o.order_time BETWEEN ‘2017-01-15’ AND ‘2017-02-14’;

-- 3. Select the product name and price and order time for all orders from females in January 2017.

SELECT p.name, p.price, o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
JOIN customers c ON o.customer_id = c.id
WHERE c.gender = ‘F’
AND o.order_time BETWEEN ‘2017-01-01’ AND ‘2017-01-31’;
*/
use coffee_store;
select * from products;
select * from customers;
select * from orders;

select o.id, c.phone_number
from orders o join customers c
on o.customer_id = c.id
where o.product_id = 4;

select p.name,o.order_time
from products p join orders o
on p.id = o.product_id
where p.name='Filter'
and order_time between '2017-01-15' and '2017-02-14';

select p.name, p.price, o.order_time
from products p join orders o
on p.id = o.product_id
join customers c
on c.id = o.customer_id
where c.gender = 'F'
and o.order_time like '2017-01-%';


/* Cinema Booking System */

CREATE DATABASE cinema_booking_system;
USE cinema_booking_system; 

CREATE TABLE films (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL UNIQUE,
	length_min INT NOT NULL
);

CREATE TABLE customers (

	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(45),
	last_name VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE rooms (

	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL,
	no_seats INT NOT NULL
);

CREATE TABLE screenings (

	id INT PRIMARY KEY AUTO_INCREMENT,
	film_id INT NOT NULL,
	room_id INT NOT NULL, 
	start_time DATETIME NOT NULL,
	FOREIGN KEY (film_id) REFERENCES films(id),
	FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE seats (

	id INT PRIMARY KEY AUTO_INCREMENT, 
	roww CHAR(1) NOT NULL,
	number INT NOT NULL,
	room_id INT NOT NULL, 
	FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE bookings (

	id INT PRIMARY KEY AUTO_INCREMENT,
	screening_id INT NOT NULL, 
	customer_id INT NOT NULL,
	FOREIGN KEY (screening_id) REFERENCES screenings(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE reserved_seat (

	id INT PRIMARY KEY AUTO_INCREMENT,
	booking_id INT NOT NULL,
	seat_id INT NOT NULL,
	FOREIGN KEY (booking_id) REFERENCES bookings(id),
	FOREIGN KEY (seat_id) REFERENCES seats(id)
);

show tables;

desc bookings;
desc customers;
desc films;
desc reserved_seat;
desc rooms;
desc screenings;
desc seats;

INSERT INTO films (name, length_min)
VALUES ('Blade Runner 2049',153),
('Dunkirk',106),
('Geostorm',121),
('Thor: Ragnarok',107),
('Jigsaw',116),
('The Death of Stalin',98),
('The Lego Ninjago Movie',101),
('Murder on the Orient Express',135),
('Paddington 2',88),
('Breathe',117),
('Blade Runner',127),
('Victoria and Abdul',112);

INSERT INTO customers (first_name, last_name, email)
VALUES ('David','May','dmay@gmail.com'),('Theresa','Davis','tdavis@gmail.com'),('Jerry','Martin','jermar@gmail.com'),('John','Smith','smithy@gmail.com'),
('Martin','Watkins','mwatto@gmail.com'),('Emma','Watson','itswingardiumleviosa@gmail.com'),('Javier','Pastore','jp@gmail.com'),('Charlotte','Hare','chare@gmail.com'),
('Mark','Smith','markysmith@gmail.com'),('Emily','Thorne','ethorne@gmail.com'),('David','Paul','davpaul@gmail.com'),('Cherry','Wang','cherryw@gmail.com'),
('Winston','Smith','room101@gmail.com'),('Gemma','Arton','garton@gmail.com'),('Renton','McDonald','rent@gmail.com'),
('Maggie','Chu','chuchu@gmail.com');

INSERT INTO rooms (name, no_seats) 
VALUES ('Chaplin',72),
('Kubrick',36),
('Coppola',36);

INSERT INTO screenings (film_id, room_id, start_time)
VALUES (2,1,'2017-10-01 13:00:00'),(1,2,'2017-10-01 13:30:00'),(2,3,'2017-10-01 14:00:00'),
(3,1,'2017-10-01 16:00:00'),(6,2,'2017-10-01 16:30:00'),(3,3,'2017-10-01 17:00:00'),
(4,1,'2017-10-01 19:00:00'),(6,2,'2017-10-01 19:30:00'),(4,3,'2017-10-01 20:00:00'),
(6,1,'2017-10-28 13:00:00'),(12,2,'2017-10-28 13:30:00'),(5,3,'2017-10-28 14:00:00'),
(5,1,'2017-10-28 16:00:00'),(6,2,'2017-10-28 16:30:00'),(5,3,'2017-10-28 17:00:00'),
(5,1,'2017-10-28 19:00:00'),(7,2,'2017-10-28 19:30:00'),(8,3,'2017-10-28 20:00:00');

INSERT INTO seats (roww, number, room_id)
VALUES ('A',1,1),('A',2,1),('A',3,1),('A',4,1),('A',5,1),('A',6,1),('A',7,1),('A',8,1),
('B',1,1),('B',2,1),('B',3,1),('B',4,1),('B',5,1),('B',6,1),('B',7,1),('B',8,1),
('C',1,1),('C',2,1),('C',3,1),('C',4,1),('C',5,1),('C',6,1),('C',7,1),('C',8,1),
('F',1,3),('F',2,3),('F',3,3),('F',4,3),('F',5,3),('F',6,3);

INSERT INTO bookings (screening_id, customer_id)
VALUES (2,2),(1,4),(2,6),(4,8),(6,10),(1,12),(5,14),(1,16),(2,18),(3,20),
(5,120),(4,12),(8,24),(10,33),(9,37),(4,67),(11,87),(4,109),(5,12),(6,21),
(8,11),(10,13),(14,7),(16,103),(18,81),(7,89),(17,52),(7,50),(8,49),(9,37),
(47,45),(82,118),(98,67),(94,11),(81,55),(82,4),(83,23),(67,4),(86,80),(45,19),
(50,44),(88,117),(104,61),(100,97),(81,35),(85,3),(89,35),(76,41),(86,90),(48,17);

INSERT INTO reserved_seat (booking_id, seat_id) 
VALUES (1,74),(1,75),(1,76),(2,10),(2,11),(3,100),(3,101),(4,66),(4,67),(5,141),
(6,33),(6,34),(7,102),(7,103),(8,2),(8,3),(8,4),(8,5),(9,98),(9,99),
(215,111),(216,30),(216,31),(217,106),(217,107),(218,40),(218,41),(219,91),(219,92),(220,123),
(410,117),(410,118),(410,119);

select * from bookings;
select * from customers;
select * from films;
select * from reserved_seat;
select * from rooms;
select * from screenings;
select * from seats;

drop database cinema_booking_system;


/* Aggregate Funcions */
select * from customers;
select count(*) from customers;
select count(id) from customers;
select count(*) as count from customers
where last_name='Smith';

select * from rooms;
select sum(no_seats) as total_no_of_seats from rooms;

select * from films;
select min(length_min) as MIN from films;
select max(length_min) as MAX from films;

select avg(length_min) as AVG from films
where length_min>120;

-- Count the number of screenings for Blade Runner 2049 in October 2017. 
select * from screenings;
select * from films;
select count(*) from screenings s
join films f on s.film_id = f.id
where f.name='Blade Runner 2049' 
and s.start_time like '2017-10-%';

select * from films;
select name, max(length_min) as MAX from films
group by name
order by name desc;

select name, count(length_min) from films
group by name
having name = 'Blade Runner 2049';

-- Select the film name and count the number of screenings for each film that is over 2 hours long.
select * from screenings;
select * from films;
select f.name,f.length_min, count(s.id) from films f
join screenings s on f.id=s.film_id
group by f.name,f.length_min
having f.length_min>120;

/* Sub Queries */
select * from films;
select * from screenings;

select f.name, f.length_min, s.room_id, s.start_time from screenings s
join films f on s.film_id = f.id
where s.film_id in(select id from films where length_min>120)
order by f.length_min;


