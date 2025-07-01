CREATE TABLE Example (
    Student_Name Text not null,
    Student_Id integer unique PRIMARY KEY,
    Class Text not null,
    Teacher Text not null,
    Marks Integer not null,
    Foreign Key (Class_id) REFERENCES Class(Class_id)
);
CREATE TABLE Class(
    Class_Name text not null,
    Class_id integer unique PRIMARY KEY,
    Teacher Text not null
);
SELECT e.Student_Name, e.Student_Id, e.Class, c.teacher, c.class_id, SUM(e.marks), AVG(e.Marks), COUNT(*)
from Example e, Class c
Where e.class_id=c.class_id or( marks between 50 and 70 and Student_Name like "R%")
GROUP BY e.Student_id
HAVING SUM(e.marks)<100 and AVG(e.marks)<100
Order by c.class_id;

Select e.Student_Name, e.Student_Id, e.Class, c.teacher, c.class_id, e.marks
from Example e
LEFT JOIN Class c on e.class_id=c.class_id;

Select e.Student_Name, e.Student_Id, e.Class, c.teacher, c.class_id, e.marks
From Example e
RIGHT JOIN Class c on e.class_id=c.class_id;

Select e.Student_Name, e.Student_Id, e.Class, c.teacher, c.class_id, e.marks
From Example e
Full JOIN Class c on e.class_id=c.class_id;

Select Student_Name,Student_id
From Example
Where Class_id = (
    Select Class_name
    From Class
    Where Teacher="Bibi");

Select Student_Name,Student_id
From Example
Where Class_id in (
    Select Class_Name
    From Class
    Where Teacher="Bibi");

Select e.Student_Name,e.Student
From Example e
Where e.class_id exists(
    Select c.class_name
    From class
    where teacher="Bibi");
