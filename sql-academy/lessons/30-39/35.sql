select distinct count(*) as count
from  
    Class
    join Schedule on Class.id=Schedule.class
where Schedule.date=STR_TO_DATE('02.09.2019','%d.%m.%Y')