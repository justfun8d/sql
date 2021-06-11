select avg(Payments.unit_price) as cost
FROM Payments
    join Goods on Payments.good=Goods.good_id
where Goods.good_name in('red caviar', 'black caviar')