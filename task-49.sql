select s.name from Ships s join Classes c on c.class = s.class where c.bore = 16
union
select o.ship from Outcomes o join Classes c on c.class = o.ship where c.bore = 16