create database address_book_service;
use address_book_service;
select * from address_book;
--Performing Normalisation on the table
--and separating the data into different normalised tables
create table persons(
first_name varchar(30) primary key,
last_name varchar(30),
zip int,
);
create table person_contact(
first_name varchar(30) foreign key references persons(first_name),
phone int,
email varchar(20)
);
create table person_address(
zip int,
address varchar(30),
city varchar(20),
state varchar(20)
);
create table person_type(
first_name varchar(30) foreign key references persons(first_name),
type varchar(10)
);
--Inserting values to the normalised tables
insert into persons(first_name,last_name,zip)
values('Amit','Das',100234),
('Mahesh','Pathak',678131),
('Sweta','Sharma',891204),
('Lintu','Roy',123092);
insert into person_address(zip,address,city,state)
values(100234,'HN 101','Guwahati','Assam'),
(678131,'HN 21','Agra','UP'),
(891204,'HN 03','Mathura','UP'),
(123092,'HN 88','Guwahati','Assam');
insert into person_type(first_name,type)
values('Amit','Family'),
('Mahesh','Friend'),
('Sweta','Friend'),
('Lintu','Family');
--ability to perform UC6 query with the normalised tables
select first_name from persons where zip in (select zip from person_address where city = 'Guwahati');
--ability to perform UC7 query with the normalised tables
select count(first_name) from persons where zip in ( select zip from person_address where state='UP');
--ability to perform UC8 query with the normalised tables
select * from persons where zip in (select zip from person_address where city = 'Guwahati') order by first_name;
--ability to perform UC10 query with the normalised tables
select first_name,last_name from persons where first_name in (select first_name from person_type where type='friend') order by first_name;
select count(type) as no_of_family_members from person_type where type = 'family';