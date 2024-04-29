select (max(weight)-min(weight)) as delta
from patients
where last_name='Maroni'
