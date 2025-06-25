select class as sh from ships where name in (select ship from Outcomes where result='sunk')   
union  
select ship as sh from Outcomes where ship not in (select name from ships) and ship in (select class from classes) and result='sunk';