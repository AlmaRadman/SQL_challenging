/*
For each day display the total amount of admissions on that day.
 Display the amount changed from the previous date.

 link:https://www.sql-practice.com/

*/

SELECT 
    admission_date,
    count(*) as admission_day,
    count(*)- lag(count(*)) OVER (ORDER BY admission_date) as admission_count_change
FROM admissions
group by admission_date
ORDER BY admission_date;