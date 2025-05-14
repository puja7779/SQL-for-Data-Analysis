select * from sales;

select SaleDate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;

select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount_per_box' from sales;
select * from sales
where amount > 10000 order by amount;

select * from sales
where geoid= 'g1'
order by PID,Amount desc;

select * from sales
where amount>10000
and SaleDate>='2022-01-01';

select SaleDate, Amount from sales
where amount>10000 and year(SaleDate)=2022
order by amount desc;

select * from sales
where Boxes between 0 and 50;


select * from sales
where boxes >0 and boxes<=50;

select SaleDate, Amount, Boxes,weekday(SaleDate) as 'Day of Week'
from sales;

select * from people;

select * from people 
where team='Delish' or team ='Jucies';

select * from people
where team in('Delis', 'Jucies');

-- like operator--
select * from people
where Salesperson like '%B%';

select * from sales;

-- multiple conditions--
select SaleDate, Amount,
       case when amount<1000 then 'under 1k'
			when amount<5000 then 'under 5k'
			when amount<10000 then 'under 10k'
		else'10k or more'
        end as 'Amount Category'
from sales;
