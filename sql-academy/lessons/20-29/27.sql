select GoodTypes.good_type_name, sum(Payments.amount*Payments.unit_price) as costs
from 
    GoodTypes
    join Goods on GoodTypes.good_type_id=Goods.type
    join Payments on Goods.good_id=Payments.good
where YEAR(Payments.date)=2005
group by GoodTypes.good_type_name