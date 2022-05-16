select name from customer where cust_id in(select cust_id from invoice_master where inv_date='2018-02-03');
select pname,price from product where p_id in(select p_id from invoice_item);
select pname from product where p_id in(select p_id from invoice_item where quantity>3);
select pname from product where p_id not in(select p_id from invoice_item);
select name from customer where cust_id in(select cust_id from invoice_master where inv_id in(select inv_id from invoice_item where p_id in(select p_id from product where pname='powder') and (select p_id from product where pname='pencil')));
select * from invoice_item where inv_id in(select inv_id from invoice_master where cust_id in(select cust_id from customer where name='sachin'));
select distinct name from customer where cust_id in(select cust_id from invoice_master where inv_id in (select inv_id from invoice_item where quantity>=-2));

                JOINS;
select pname,quantity from product natural join invoice_item;
select * from invoice_master natural join invoice_item natural join product natural join customer where inv_date='2018-01-31';
select name,pname,inv_date from customer natural join product natural join invoice_master natural join invoice_item where pname='soap';
select * from customer left join invoice_master natural join invoice_item natural join product on customer.cust_id=invoice_master.cust_id;

                 VIEWS;

create  view customers as select name from customer natural join invoice_master;
select * from customers;
create view invoice_products as select pname,quantity,inv_id,p_id as product_id from product natural join invoice_item;
select * from invoice_products;


select cust_id as all_id from customer union select p_id from product;
select p_id, pname,price +5 from product;
select * from customer where ph_no is null and city='kozhikode';
select pname from product where p_id in(select p_id from invoice_item where quantity=2);  



