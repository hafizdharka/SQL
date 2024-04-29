select first_name, last_name, birth_date
from patients
where year(birth_date)>=1970 and year(birth_date)<1980
order by birth_date

SELECT
  first_name,
  last_name,
  birth_date
FROM patients
WHERE
  YEAR(birth_date) BETWEEN 1970 AND 1979
ORDER BY birth_date ASC;
