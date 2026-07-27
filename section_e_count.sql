--===================================================================================
--SECTION E - COUNT
--===================================================================================

---How many students are currently in Form 3?

select count(student_id)as total_students, class 
from greenwood_academy.students 
where class = 'Form 3'
group by class;

---How many exam results have a mark of 70 or above? 

select count(*) as result_count
from greenwood_academy.exam_results 
where marks >= 70;
