```ada
function Factorial(N : Integer) return Integer is
   Invalid_Input : exception;
begin
   if N < 0 then
      raise Invalid_Input;
   elsif N = 0 then
      return 1;
   else
      return N * Factorial(N - 1);
   end if;
exception
   when Invalid_Input =>
      Put_Line("Error: Input must be a non-negative integer");
      return -1; -- Or raise a more specific exception
end Factorial;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Result : Integer;
begin
   Result := Factorial(5);
   Put_Line("Factorial of 5 is: " & Integer'Image(Result));

   begin
      Result := Factorial(-1); -- This will now raise Invalid_Input
      Put_Line("Factorial of -1 is: " & Integer'Image(Result));
   exception
      when Invalid_Input =>
         Put_Line("Exception handled in main");
   end;
end Main;
```