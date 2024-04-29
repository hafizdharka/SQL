select patient_id, weight, height, 
CASE 
	WHEN (weight/power(height/100.0,2))>=30 then 1 
    else 0 
   end as 'isbool'
from patients
