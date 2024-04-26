SELECT patient_id, diagnosis, count(*)
FROM admissions
GROUP BY patient_id, diagnosis
HAVING COUNT(*) > 1

