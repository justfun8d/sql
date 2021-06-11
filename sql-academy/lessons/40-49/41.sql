select Timepair.start_pair
from Timepair
where id=4






select Timepair.start_pair
from Timepair
where id=(
    select Schedule.number_pair
    from Schedule
    order by Schedule.date
    limit 1
    offset 3
)





select Timepair.start_pair
from Timepair
order by Timepair.start_pair 
limit 1
offset 3 