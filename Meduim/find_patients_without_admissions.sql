/*
Show patient_id, first_name, last_name from patients whose does not have any records in the admissions
 table. (Their patient_id does not exist in any admissions.patient_id rows.)
link: https://www.sql-practice.com/
*/ 


SELECT
  p.patient_id,
  p.first_name,
  p.last_name
FROM
  patients p
LEFT JOIN
  admissions a 
  ON p.patient_id = a.patient_id
WHERE
  a.patient_id IS NULL; 