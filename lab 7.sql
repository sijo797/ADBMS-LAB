use invoice;
desc customer;
create table cust_update(cust_id int primary key auto_increment,address varchar(20),city varchar(20),ph_no bigint,name varchar(10));
delimiter //
create TRIGGER cust_update
after 
update
ON customer 
for each row
begin 
insert into cust_update
set cust_id=old.cust_id,address=old.address,city=old.city,ph_no=old.ph_no,name=old.name;
end
//
delimiter ;
select * from customer;
update customer set address='kkpp'where cust_id=3;
select * from customer;


delimiter //
create trigger min_price
before insert
on product for each row
begin
if new.price<=5 then set new.price=10;
end if;
end //
delimiter ;
select * from product;
insert into product values(15,'scale',2);
select * from product;










