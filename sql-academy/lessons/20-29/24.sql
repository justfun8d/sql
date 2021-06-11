SELECT FamilyMembers.member_name, sum(Payments.amount*Payments.unit_price) as costs
from FamilyMembers
    join Payments on FamilyMembers.member_id=Payments.family_member
where YEAR(Payments.date)=2005 and MONTH(Payments.date)=6  
group by FamilyMembers.member_name