select distinct Subject.name as subjects
from Subject
    join Schedule on Subject.id=Schedule.subject
    join Teacher on Schedule.teacher=Teacher.id
where 
    Teacher.last_name='Romashkin'
    and Teacher.first_name like 'P%'
    and Teacher.middle_name like 'P%'