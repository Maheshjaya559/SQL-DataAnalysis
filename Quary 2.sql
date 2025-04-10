Select * from sales;

Select * from  people;

Select s. SaleDate,S.Amount, p.Salesperson , s. SPID, p.SPID
from sales s
join people p on  p. SPID = s . SPID;

select s.saleDate, S .amount ,pr. Product
from sales s
left join products pr on pr . pid = s.pid;

Select s. SaleDate,S.Amount, p.Salesperson , pr. Product ,p. team
from sales s
join people p on  p. SPID = s . SPID
join products pr on pr . pid = s.pid;

Select s. SaleDate,S.Amount, p.Salesperson , pr. Product ,p. team
from sales s
join people p on  p. SPID = s . SPID
join products pr on pr . pid = s.pid
where s.amount <500
and p. team = 'Delish';

Select s. SaleDate,S.Amount, p.Salesperson , pr. Product ,p. team
from sales s
join people p on  p. SPID = s . SPID
join products pr on pr . pid = s.pid
where s.amount <500
and p.Team = '';

Select s. SaleDate,S.Amount, p.Salesperson , pr. Product ,p. team
from sales s
join geo g on g.GeoID = s.GeoID
join people p on  p. SPID = s . SPID
join products pr on pr . pid = s.pid
where s.amount <500
and p.Team = ''
and g.Geo in ('New Zealand', 'India' )
order by SaleDate;