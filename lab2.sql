use invoice;
show tables;
desc customer;
insert into customer values(1,'kaattuparambil','kozhikode',89900987,'Appu');
insert into customer values(2,'meleparambil','tvm',89900988,'ansu');
insert into customer values(3,'pazhayedathu','knr',89900989,'jeffin');
insert into customer values(4,'malayail','wynd',89900990,'sachin');
insert into customer values(5,'mangalasseri','kochi',89900991,'sonu');
insert into customer values(6,'mangalathu','ktym',null,'pranav');
select * from customer;
insert into product values(100,'ink',20);
insert into product values(101,'soap',50);
insert into product values(102,'notebook',40);
insert into product values(103,'refiller',5);
insert into product values(104,'eraser',10);
select * from product;
insert into invoice_master values(200,1,'2021-02-01'); 
insert into invoice_master values(201,2,'2021-03-11'); 
insert into invoice_master values(202,3,'2018-02-03'); 
insert into invoice_master values(203,4,'2018-02-03'); 
insert into invoice_master values(204,5,'2018-01-31');
select * from invoice_master; 
insert into invoice_item values(200,10,4);
insert into invoice_item values(201,11,5);
insert into invoice_item values(202,12,6);
insert into invoice_item values(203,13,7);
insert into invoice_item values(204,14,8);
select * from invoice_item;
update customer set city='pta' where cust_id=1;
select * from customer;
update customer  set ph_no=89900970 where cust_id=2;
select * from customer;
delete from invoice_item where inv_id=202;
select * from invoice_item;
delete from invoice_master where inv_id=200;
select * from invoice_master;










