






select count(Schedule.classroom) as counts
from Schedule
group by Schedule.classroom
order by counts desc limit 1





select classroom, count(classroom) as counts
from Schedule
where count(classroom)=(
    select max(t.counts))
    from (
        select classroom, count(classroom) as counts
        from Schedule
        group by classroom
    ) as t
)



select max(t.counts))
from (
    select classroom, count(classroom) as counts
    from Schedule
) as t