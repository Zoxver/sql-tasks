select country, round(avg(power(bore, 3) / 2)::numeric, 2) from  ( 
select c.class, s.name, c.country, c.bore  from classes as c join ships as s on c.class=s.class 
union 
select c.class, o.ship, c.country, c.bore from classes as c join outcomes as o on c.class=o.ship ) as t
group by country;