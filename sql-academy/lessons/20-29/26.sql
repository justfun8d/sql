


select distinct GoodTypes.good_type_name
from 
    GoodTypes
where 
    GoodTypes.good_type_name not in(
        select distinct GoodTypes.good_type_name
        from 
            GoodTypes
            join Goods on GoodTypes.good_type_id=Goods.type
            join Payments on Goods.good_id=Payments.good
        where YEAR(Payments.date)=2005
    )
order by GoodTypes.good_type_name












select distinct GoodTypes.good_type_name
from 
    GoodTypes
    left join Goods on GoodTypes.good_type_id=Goods.type
    left join Payments on Goods.good_id=Payments.good
where 
    GoodTypes.good_type_name not in(
        select distinct GoodTypes.good_type_name
        from 
            GoodTypes
            join Goods on GoodTypes.good_type_id=Goods.type
            join Payments on Goods.good_id=Payments.good
        where YEAR(Payments.date)=2005
    )
order by GoodTypes.good_type_name