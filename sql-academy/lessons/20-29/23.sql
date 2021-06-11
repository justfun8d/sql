

SELECT Goods.good_name, Payments.unit_price
from GoodTypes
    join Goods on GoodTypes.good_type_id=Goods.type
    join Payments on Goods.good_id=Payments.good
where 
    Payments.unit_price=(
        select max(Payments.unit_price)
        from GoodTypes
            join Goods on GoodTypes.good_type_id=Goods.type
            join Payments on Goods.good_id=Payments.good
        where GoodTypes.good_type_name='delicacies'
    ) AND 
    GoodTypes.good_type_name='delicacies'