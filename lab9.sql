use invoice;
delimiter //
create procedure display()
begin
show tables;
end//
call display()//

create procedure invoice_details(a varchar(10))
begin
select inv_id,inv_date,price,quantity from customer natural join invoice_master natural join invoice_item natural join product where name=a;
end //

call invoice_details('sonu')//

create procedure great_num(a int, b int,c int)
begin
if a>b and a>c then
select a as'Greatest';
else
select c as 'Greatest';
end if;
end //
call great_num(4,5,6)// 
