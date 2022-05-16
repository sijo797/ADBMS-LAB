CREATE DATABASE invoice;
use invoice;
show databases;
create table student(id int primary key auto_increment, name varchar(20), age int, city varchar(30));
desc student;
alter table student add dob date;
desc student;
alter table student modify dob year;
desc student;
alter table student drop city;
desc student;
create table CUSTOMER(cust_id int primary key auto_increment, address varchar(30), city varchar(20), ph_no int, name varchar(30));
desc CUSTOMER;
create table PRODUCT(p_id int primary key auto_increment, pname varchar(20), price int default'0');
desc PRODUCT;
create table INVOICE_MASTER(inv_id int primary key auto_increment, cust_id int, constraint cust_id foreign key(cust_id) references CUSTOMER(cust_id),inv_date date);
desc INVOICE_MASTER;
create table INVOICE_ITEM(inv_id int, constraint inv_id foreign key(inv_id) references INVOICE_MASTER(inv_id),p_id int, constraint p_id foreign key(p_id) references PRODUCT(p_id),quantity int); 
desc INVOICE_ITEM;
show tables;
TRUNCATE student;
drop table student;
show tables;




