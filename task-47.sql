with sh as (
  select c.country, s.name from classes c join ships s on c.class=s.class
  union
  select c.country, o.ship from outcomes o join classes c on c.class=o.ship
), 
t as (
  select
    country, name, 
    case
        when result='sunk' then 1
        else 0
    end as sunk
  from sh left join outcomes o on o.ship=sh.name
)
select country from t group by country having count(distinct name)=sum(sunk);