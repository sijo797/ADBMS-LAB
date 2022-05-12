use invoice;
create user user1@'localhost' identified by 'user1';
create user user2@'localhost' identified by 'user2';
show grants for user1 @'localhost';
grant update,delete on invoice.*to user2@'localhost';
show grants for user2 @'localhost';
revoke delete on invoice.* from user2 @'localhost';

create database SCHOOL;
use SCHOOL;
show databases;
create table student(id int primary key auto_increment,name varchar(20), department varchar(30));
desc student;
insert into student values(1,'abhijith','mca');
insert into student values(2,'nayana','mca');
insert into student values(3,'Anu','mca');
insert into student values(4,'Ammu','mba');
insert into student values(5,'Aju','mba');
insert into student values(6,'Athira','mba');
commit;
select * from student;
insert into student values(7,'anju','bca');
rollback;
insert into student values(7,'anju','bca');
savepoint t1;
insert into student values(8,'varun','bca');
select * from student;
rollback to t1;
select * from student;
insert into student values(8,'varun','bca');
select * from student;






