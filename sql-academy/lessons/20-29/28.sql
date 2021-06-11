select count(*) as count
from Trip
where 
    Trip.town_from='Rostov'
    and Trip.town_to='Moscow'