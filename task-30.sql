select point, date, sum(outcome), sum(income)  from (select inc.point, inc.date, null as outcome, sum(inc.inc) as income from Income as inc group by inc.point, inc.date
UNION
select out.point, out.date, sum(out.out) as outcome, null as income  from Outcome as out group by out.point, out.date) as t group by point, date;