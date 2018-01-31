with Last_Chance_Handler; pragma Unreferenced (Last_Chance_Handler);

with STM32.Board;         use STM32.Board;
--  with STM32.DMA2D;         use STM32.DMA2D;
with STM32.DMA2D_Bitmap;  use STM32.DMA2D_Bitmap;
with HAL;                 use HAL;
with HAL.Bitmap;          use HAL.Bitmap;

--  We import the gameboy
--  with gameboy_hpp;

procedure Main
is
--  GB : gameboy_hpp.Class_Gameboy.Gameboy := gameboy_hpp.Class_Gameboy.New_Gameboy;
   function Bitmap_Buffer return not null Any_Bitmap_Buffer;

   function Bitmap_Buffer return not null Any_Bitmap_Buffer is
   begin
      if Display.Hidden_Buffer (1).all not in DMA2D_Bitmap_Buffer then
         raise Program_Error with "We expect a DMA2D buffer here";
      end if;

      return Display.Hidden_Buffer (1);
   end Bitmap_Buffer;

   X : Natural;
   Y : Natural;

   Width : Natural;
   Height : Natural;

   Black : Natural;

begin
   Display.Initialize;
   Display.Initialize_Layer (1, HAL.Bitmap.ARGB_8888);

   Width := Display.Hidden_Buffer (1).Width;
   Height := Display.Hidden_Buffer (1).Height;

   loop
      Bitmap_Buffer.Set_Source (HAL.Bitmap.Dark_Green);
      Bitmap_Buffer.Fill;

      Black := 0;
      X := 0;
      Y := 0;
      Bitmap_Buffer.Set_Pixel ((Width / 2, Height / 2), HAL.Bitmap.Red);
      while X < 144 loop
         while Y < 160 loop
            if Black = 1 then
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.Black);
               Black := 0;
            else
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.White);
               Black := 1;
            end if;
            Y := Y + 1;
         end loop;
         Y := 0;
         X := X + 1;
      end loop;
      Display.Update_Layers;
   end loop;
end Main;
