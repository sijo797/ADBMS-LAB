select pname,price from product where pname !='soap';
select min(price),max(price),avg(price) from product;
select city,count(city) as count from customer group by city;
select city,count(city) as count from customer group by city having count(city)>1;
