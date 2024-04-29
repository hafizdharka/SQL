select patient_id, attending_doctor_id, diagnosis
from admissions
where (mod(patient_id, 2)!=0 and attending_doctor_id in (1,5,19)) 
or (attending_doctor_id like '%2%' and length(patient_id)=3)  
