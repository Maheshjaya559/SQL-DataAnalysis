select geoID, sum(amount), avg(amount) , sum(Boxes)
from sales 
group by GeoID;

select geo, sum(amount), avg(amount) , sum(Boxes)
from sales s
join geo g on s. geoID = g.geoID
group by g.Geo;

Select pr.Category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by  pr .Category, p.team
;



Select pr.Category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <>''
group by  pr .Category, p.team
order by pr .Category, p.team;

Select pr. product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr. pid =s.pid
group by pr.Product
order by 'total Amount' desc;

Select pr. product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr. pid =s.pid
group by pr.Product
order by 'total Amount' desc
limit 10;

