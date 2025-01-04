```ada
function Factorial(N : Integer) return Integer is
begin
  if N = 0 then
    return 1;
  else
    return N * Factorial(N - 1);
  end if;
exception
  when others =>
    return -1; -- Handle potential errors
end Factorial;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  Result : Integer;
begin
  Result := Factorial(5);
  Put_Line("Factorial of 5 is: " & Integer'Image(Result));
  Result := Factorial(-1); -- This will raise Constraint_Error
  Put_Line("Factorial of -1 is: " & Integer'Image(Result));
end Main;
```