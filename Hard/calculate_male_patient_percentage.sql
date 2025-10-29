/* 
Show the percent of patients that have 'M' as their gender.
 Round the answer to the nearest hundreth number and in percent form.
  
  link:https://www.sql-practice.com/
  */ 

  SELECT  
cast(round(cast(count(case when gender='M'then 1 else null end)as Real)
      /count(*)*100, 2)as text)
      ||'%'
      as percent_of_male_patients
from patients