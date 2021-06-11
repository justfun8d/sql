select timediff(
    (
        select Timepair.end_pair
        from Timepair
        where Timepair.id=4
    ),
     (
        select Timepair.start_pair
        from Timepair
        where Timepair.id=2
    )
) as time 