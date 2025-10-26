/* 
Each admission costs $50 for patients without 
insurance, and $10 for patients with insurance.
 All patients with an even patient_id have insurance.
Give each patient a 'Yes' if they have insurance,
 and a 'No' if they don't have insurance. 
  
  link:https://www.sql-practice.com/
  */ 

SELECT 
  case
      when patient_id%2 = 0
        then 'Yes'
      else 'No' 
  end as has_insurance,
sum(
  case
     when patient_id%2 = 0
       then 10 
     Else 50
  end) as cost_after_insurance
FROM admissions
group by has_insurance;
