create database address_book_service;
use address_book_service;
--Creating address book table
create table address_book(
first_name varchar(30),
last_name varchar(30),
address varchar(50),
city varchar(20),
state varchar(10),
zip int,
phone int,
email varchar(15)
);
--Inserting values
insert into address_book(first_name,last_name,address,city,state,zip,phone,email)
values('Aakash','Das','HN 24','Bareily','UP',484824,94949,'aak@gmail.com'),
('Ramesh','Pathak','HN 01','Silchar','Assam',949401,99981,'ram@gmail.com'),
('Amrita','Pandit','HN 09','Wayanad','Kerala',939303,94948,'Amr@gmail.com');
