select FamilyMembers.status, FamilyMembers.member_name,sum(Payments.unit_price*Payments.amount) as costs
from FamilyMembers
    join Payments on FamilyMembers.member_id=Payments.family_member
    join Goods on Payments.good=Goods.good_id
    join GoodTypes on Goods.type=GoodTypes.good_type_id
where GoodTypes.good_type_name='entertainment'
group by FamilyMembers.status, FamilyMembers.member_name