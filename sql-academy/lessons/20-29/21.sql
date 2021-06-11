SELECT Goods.good_name
from Payments
    join Goods on Payments.good=Goods.good_id
group by Payments.good
having count(Goods.good_name)>1