SELECT c.city_id,cr.year, cr.month, cr.violent_crimes, d.firstofficiallanguage, e.it_engineering, cl.gasolina_avg_price as fuel_price, w.avg_temperature
FROM city c
INNER JOIN crime cr 
ON c.city_id=cr.city_id
INNER JOIN demographics d 
ON cr.city_id=d.city_id 
AND cr.year=d.year 
AND cr.month=d.month
INNER JOIN employment e 
ON cr.city_id=e.city_id 
AND cr.year=e.years 
AND cr.month=e.month
INNER JOIN cost_of_living cl 
ON cr.city_id=cl.city_id 
AND cr.year=cl.year 
AND cr.month=cl.month
INNER JOIN weather w 
ON cr.city_id=w.city_id 
AND cr.year=w.year 
AND cr.month=w.month
ORDER BY city_id, year, month
