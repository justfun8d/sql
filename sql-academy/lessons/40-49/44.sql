select TIMESTAMPDIFF(year, min(Student.birthday), now()) as max_year
from Student
    join Student_in_class on Student.id=Student_in_class.student
    join Class on Student_in_class.class=Class.id
where Class.name like '10%'