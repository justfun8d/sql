select distinct Passenger.name
FROM 
    Passenger
    join Pass_in_trip on Passenger.id=Pass_in_trip.passenger
    join Trip on Pass_in_trip.trip=Trip.id
where 
    Trip.town_to='Moscow'
    and Trip.plane='TU-134'