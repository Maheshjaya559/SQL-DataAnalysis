select *from sales;

select saleDate,Amount,Customers from sales;
select Amount, Customers, GeoID from sales;

select SaleDate,Amount,Boxes,Amount/boxes from sales;

select SaleDate,Amount,Boxes,Amount/boxes 'Amount per box' from sales;

select * from sales
Where amount > 10000 ;

select * from sales
Where amount > 10000
order by amount desc;

select * from sales
where geoid='g1'
order by PID, Amount desc;

select * from sales 
Where amount > 10000 and SaleDate >= '2022-01-01' ;

select SaleDate,Amount from sales
Where amount > 10000 and year(SaleDate) =2022
Order by amount desc;

Select *from sales 
Where boxes>0 and boxes <=50;

select* from sales
where boxes between 0 and 50;

Select SaleDate ,Amount,Boxes, weekday(SaleDate) as 'Day of Week'
from sales
where weekday(SaleDate) =4;

Select * from people;

Select * from people
Where team ='Delish' or team = 'Jucies' ;

Select * from people
where team in ('Delish','Jucies');


select*from people
where Salesperson like 'B%';

select*from people
where Salesperson like '%B%';

 Select * from sales;
 
 Select SaleDate ,Amount ,
	case  	when amount < 1000 then 'Under 1k'
			when amount < 5000 then 'Under 5k'
            when amount <10000 then 'Under 10k'
            else '10k or more'
            end as 'Amount category '
from Sales ;








