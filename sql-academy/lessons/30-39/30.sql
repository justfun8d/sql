select Trip.id as trip, count(*) as count
from 
    Trip
    join Pass_in_trip on Trip.id=Pass_in_trip.trip
    join Passenger on Pass_in_trip.passenger=Passenger.id
group by Trip.id
order by count(*) desc