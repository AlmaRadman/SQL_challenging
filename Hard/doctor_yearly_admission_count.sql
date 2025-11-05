/*
We need a breakdown for the total amount of admissions each doctor has
 started each year. Show the doctor_id, doctor_full_name, specialty,
    year, total_admissions for that year.
link:https://www.sql-practice.com/
*/


SELECT
d.doctor_id,
concat(d.first_name,' ',d.last_name)as full_name,
d.specialty,
year(a.admission_date),
COUNT(a.patient_id) AS total_admissions
FROM doctors d
join admissions a on a.attending_doctor_id=d.doctor_id
group by year(a.admission_date),d.doctor_id