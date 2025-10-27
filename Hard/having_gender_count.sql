/*
Show the provinces that has more patients identified as 'M' than 'F'.
 Must only show full province_name

 link:https://www.sql-practice.com/

*/

SELECT 
pr.province_name
FROM province_names pr
join patients pa on pa.province_id=pr.province_id
group by pr.province_name
having
COUNT(CASE WHEN pa.gender = 'M' THEN 1 ELSE NULL END) > COUNT(CASE WHEN pa.gender = 'F' THEN 1 ELSE NULL END)
