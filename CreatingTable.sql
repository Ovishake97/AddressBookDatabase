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