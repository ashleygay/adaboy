pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package screen_hpp is

  -- Struct used to pass around infos about the buffer used for display
  -- We assume that rowstride = 1 (memory is contiguous)
  -- We assume that n_channels = 3 (RGB)
   package Class_Screen is
      type Screen is limited record
         pixels : access unsigned_char;  -- ./screen.hpp:8
         rowstride : aliased unsigned;  -- ./screen.hpp:9
         n_channels : aliased unsigned;  -- ./screen.hpp:10
      end record;
      pragma Import (CPP, Screen);
   end;
   use Class_Screen;
end screen_hpp;
