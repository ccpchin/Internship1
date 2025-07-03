CREATE VIEW vw as
SELECT e.Student_Id,e.Student_Id,e.marks,c.Class_Name,c.Teacher,c.Class_id
FROM Example e, Class c
where e.class_id=c.class_id and e.marks>10;

SELECT * from vw;
