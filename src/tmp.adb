

with Text_IO;
with animal_hpp;
with Interfaces.C;

procedure Main
is
   Domino : aliased animal_hpp.Class_Dog.Dog := animal_hpp.Class_Dog.New_Dog;
   Variable : Integer := 0;
begin
   Domino.Set_Age(9);
   loop
      Text_IO.Put_Line("Domino is" & Interfaces.C.int'IMAGE(Domino.Age) & " years old");
   end loop;
end Main;
