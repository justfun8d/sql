/*Одной из характеристик корабля является половина куба 
калибра его главных орудий (mw). 
С точностью до 2 десятичных знаков определите среднее значение 
mw для кораблей каждой страны, 
у которой есть корабли в базе данных.*/


select 
	t.country,
	cast(avg((t.bore*t.bore*t.bore)/2) as numeric(6,2)) as weight
from (
	select
		Classes.country, 
		Classes.bore
	from 
		Classes
		join Ships on Classes.class=Ships.class
		left join Outcomes on Classes.class=Outcomes.ship
	where Outcomes.ship is null
	union all
		select distinct
			Classes.country, 
			Classes.bore
		from 
			Outcomes
			join Classes on Outcomes.ship=Classes.class
			left join Ships on Classes.class=Ships.class
		where Ships.name is null
) as t
group by t.country






select 
	t.country,
	cast(avg((t.bore*t.bore*t.bore)/2) as numeric(6,2)) as weight
from (
	select
		Classes.country, 
		Classes.bore
	from 
		Classes
		join Ships on Classes.class=Ships.class
		left join Outcomes on Classes.class=Outcomes.ship
	where Outcomes.ship is null
	union all
		select distinct
			Classes.country, 
			Classes.bore
		from 
			Outcomes
			join Classes on Outcomes.ship=Classes.class
) as t
group by t.country






select 
	Classes.country, 
	cast(avg((Classes.bore*Classes.bore*Classes.bore)/2) as numeric(6,2)) as weight
from 
	Classes
	left join Ships on Classes.class=Ships.class
group by Classes.country


--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//


select 
	Classes.country,
	cast(avg((Classes.bore*Classes.bore*Classes.bore)/2) as numeric(6,2)) as weight
from 
	Classes
	join (
		select Ships.class as class
		from 
			Ships
		union all
			select distinct Outcomes.ship
			from 
				Outcomes
				join Classes on Outcomes.ship=Classes.class
	) as ShipsAll on Classes.class=ShipsAll.class
group by Classes.country








select class
from Classes


select 
	t.country,
	cast(avg((t.bore*t.bore*t.bore)/2) as numeric(6,2)) as weight
from Classes as t
group by t.country





select 
	Classes.country as country, 
	Classes.bore as bore
from 
	Classes
	join (
		select 
		from 
			Ships

	)



select 
	t.country,
	cast(avg((t.bore*t.bore*t.bore)/2) as numeric(6,2)) as weight
from (
		select 
			Classes.country as country, 
			Classes.bore as bore
		from
			Classes
			join Ships on Classes.class=Ships.class
		union
			select
				Classes.country, 
				Classes.bore as bore
			from 
				Classes
				join Outcomes on Classes.class=Outcomes.ship
	) as t
group by t.country





select 
	t.country,
	t.weight
from (
		select 
			Classes.country as country, 
			cast(avg((Classes.bore*Classes.bore*Classes.bore)/2) as numeric(6,2)) as weight
		from
			Classes
			join Ships on Classes.class=Ships.class
		group by Classes.country
		union all
			select
				Classes.country, 
				cast(avg((Classes.bore*Classes.bore*Classes.bore)/2) as numeric(6,2)) as weight
			from 
				Classes
				join Outcomes on Classes.class=Outcomes.ship
			group by Classes.country
	) as t




select 
	Classes.country, 
	cast(avg((Classes.bore*Classes.bore*Classes.bore)/2) as numeric(6,2)) as weight
from 
	Classes
	left join Ships on Classes.class=Ships.class
group by Classes.country





select Classes.country, avg((Classes.bore*Classes.bore*Classes.bore)/3 as numeric(6,2))
from Classes
where 
	Classes.country in (
		select distinct country
		from Classes as ClassesIn
		left join Outcomes as OutcomesIn on ClassesIn.class=OutcomesIn.ship
	)
group by Classes.country