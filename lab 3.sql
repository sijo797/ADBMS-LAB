select * from customer;
select pname,price from product;
select distinct p_id from invoice_item;
select price from product where price between 5 and 50;
select * from customer where city in('pta','tvm');
select * from invoice_master where inv_date between '2021-01-01' and '2021-03-31'; 
select * from customer where city not in('tvm');
select name from customer where ph_no IS NULL;
select name from customer order by cust_id desc;
select * from customer order by city asc, name desc;
select name from customer where name like binary'A%';
select name from customer where name like binary'%e%' or name like binary '%a%';
select name from customer where name like'___%';
select name from customer where name like binary'_r%';
select name from customer where name like binary 'a___%';
