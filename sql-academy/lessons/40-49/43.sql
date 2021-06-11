select distinct Teacher.last_name as last_name
from Teacher
    join Schedule on Teacher.id=Schedule.number_pair
    join Subject on Schedule.subject=Subject.id
where Subject.name='Physical Culture'
order by Teacher.last_name