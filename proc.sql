DELIMITER $$$
Create PROCEDURE proced (
  in pr_sid int ,
  in minmarks int )
Begin
Select Student_Name,Marks
From Example
Where Student_Id=pr_sid and Marks>=minmarks;
End $$
Call proced(1,7);
