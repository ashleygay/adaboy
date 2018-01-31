with Text_IO;

-- We import the gameboy
with gameboy_hpp;

procedure Main
is
   GB : gameboy_hpp.Class_Gameboy.Gameboy := gameboy_hpp.Class_Gameboy.New_Gameboy;
begin
   loop
      Text_IO.Put_Line("Hello Ada world");
   end loop;
end Main;
