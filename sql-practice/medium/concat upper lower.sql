select concat(upper(last_name),',',lower(first_name)) as fulln
from patients
order by first_name desc

SELECT
  UPPER(last_name) || ',' || LOWER(first_name) AS new_name_format
FROM patients
ORDER BY first_name DESC;
