with Last_Chance_Handler; pragma Unreferenced (Last_Chance_Handler);

with STM32.Board;         use STM32.Board;
with STM32.DMA2D_Bitmap;  use STM32.DMA2D_Bitmap;

with HAL;                 use HAL;
with HAL.Bitmap;          use HAL.Bitmap;

--  We import the gameboy
with gameboy_hpp;

with Interfaces.C;        use Interfaces.C;

procedure Main
is
   GB : aliased gameboy_hpp.Class_Gameboy.Gameboy := gameboy_hpp.Class_Gameboy.New_Gameboy;
   type uchar_array is array (size_t range <>) of aliased unsigned_char;
   pixels_array : uchar_array (0 .. 23039);
   ptr : constant access unsigned_char := pixels_array (pixels_array'First)'Access;

   function Bitmap_Buffer return not null Any_Bitmap_Buffer is
   begin
      if Display.Hidden_Buffer (1).all not in DMA2D_Bitmap_Buffer then
         raise Program_Error with "We expect a DMA2D buffer here";
      end if;

      return Display.Hidden_Buffer (1);
   end Bitmap_Buffer;

   X : Natural;
   Y : Natural;

   pix : unsigned_char := 0;
   pix_x : size_t := 0;
   pix_y : size_t := 0;

   Width : Natural;
   Height : Natural;

begin
   Display.Initialize;
   Display.Initialize_Layer (1, HAL.Bitmap.ARGB_8888);

   Width := Display.Hidden_Buffer (1).Width;
   Height := Display.Hidden_Buffer (1).Height;

   loop
      Bitmap_Buffer.Set_Source (HAL.Bitmap.Dark_Green);
      Bitmap_Buffer.Fill;

      X := 0;
      Y := 0;

      pix_x := 0;
      pix_y := 0;

      Bitmap_Buffer.Set_Pixel ((Width / 2, Height / 2), HAL.Bitmap.Red);
      while X < 160 loop
         while Y < 144 loop
            pix := pixels_array (pix_y * 144 + pix_x);
            if pix = 0 then
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.White);
            elsif pix = 1 then
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.Light_Grey);
            elsif pix = 2 then
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.Dark_Grey);
            else
               Bitmap_Buffer.Set_Pixel ((X, Y), HAL.Bitmap.Black);
            end if;
            Y := Y + 1;
            pix_y := pix_y + 1;
         end loop;
         Y := 0;
         X := X + 1;
         pix_y := 0;
         pix_x := pix_x + 1;
      end loop;
      Display.Update_Layers;

      gameboy_hpp.Class_Gameboy.step (GB'Access, ptr);

   end loop;
end Main;
