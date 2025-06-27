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
