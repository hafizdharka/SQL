select concat(first_name,' ', last_name), round((height/30.48),1), round((weight*2.205),0), birth_date, 
case when gender='M' then 'MALE' when gender='F' then 'FEMALE' END AS gender
from patients

select
    concat(first_name, ' ', last_name) AS 'patient_name', 
    ROUND(height / 30.48, 1) as 'height "Feet"', 
    ROUND(weight * 2.205, 0) AS 'weight "Pounds"', birth_date,
CASE
	WHEN gender = 'M' THEN 'MALE' 
  ELSE 'FEMALE' 
END AS 'gender_type'
from patients
