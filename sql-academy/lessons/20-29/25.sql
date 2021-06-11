

select Goods.good_name
from 
    Goods
    left join Payments on 
        Payments.good=Goods.good_id and 
        YEAR(Payments.date)=2005
WHERE 
    Payments.good is null






select Goods.good_name
from Payments
RIGHT JOIN Goods on 
    Payments.good=Goods.good_id and 
    YEAR(Payments.date)=2005
WHERE 
    Payments.good is null
    


select g.good_name as good_name
from Payments p
RIGHT JOIN Goods g on 
    p.good = g.good_id and 
    YEAR (p.date) = 2005
WHERE p.good IS NULL




select distinct Goods.good_name AS good_name
from 
    Payments
    join Goods on Payments.good=Goods.good_id
where 
    Payments.good not in(
        select distinct good from Payments where Year(date)=2005
    )



select distinct Goods.good_name
from Goods
    join Payments on Goods.good_id=Payments.good
where 
    Goods.good_name not in(
        select distinct Goods.good_name
        from Goods
            join Payments on Goods.good_id=Payments.good
        where YEAR(Payments.date)=2005
    )




select distinct Goods.good_name
from Goods
    join Payments on Goods.good_id=Payments.good
where YEAR(Payments.date)!=2005