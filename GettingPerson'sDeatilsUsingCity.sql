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
--Updating data using the firstname of the address
update address_book set city = 'Tezpur' where first_name='Ramesh';
--Deleting a row using person's firstname
delete from address_book where first_name='Amrita';
insert into address_book(first_name,last_name,address,city,state,zip,phone,email)
values('Kuldeep','Gandhi','HN 22','Tezpur','Assam',90293,930392,'kul@gmail.com');
--Retrieving person data using city and sort them alphabetically
select first_name from address_book where city='Tezpur' order by first_name;
--Getting size of the address book on the basis of city
select count(city) from address_book where city='Tezpur'; 
--Retrieving person's details using city and sort them alphabetically
select * from address_book where city='Tezpur' order by first_name;
