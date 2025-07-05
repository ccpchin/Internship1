Create function calcgrade(marks int)
returns text
deterministic
begin
declare grade text;
if marks<=6 then set grade='F';
elseif marks>6 and marks<=8 then set grade='B';
else set grade='A';
End if;
return grade;
End $$
