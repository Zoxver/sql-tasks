select inc.point, inc.date, inc.inc, out.out from Income_o as inc left JOIN Outcome_o as out ON (inc.point=out.point and inc.date=out.date)
UNION
select out.point, out.date, inc.inc, out.out from Outcome_o as out left JOIN Income_o as inc ON (inc.point=out.point and inc.date=out.date);