pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with word_operations_hpp;
with Interfaces.C.Extensions;

package sprite_hpp is

   package Class_Sprite is
      type Sprite is limited record
         x_pos_u : aliased word_operations_hpp.uint8_t;  -- ./sprite.hpp:29
         y_pos_u : aliased word_operations_hpp.uint8_t;  -- ./sprite.hpp:30
         tile_u : aliased word_operations_hpp.uint8_t;  -- ./sprite.hpp:32
         x_flipped : aliased Extensions.bool;  -- ./sprite.hpp:34
         y_flipped : aliased Extensions.bool;  -- ./sprite.hpp:35
         above_bg : aliased Extensions.bool;  -- ./sprite.hpp:36
         obp1 : aliased Extensions.bool;  -- ./sprite.hpp:38
      end record;
      pragma Import (CPP, Sprite);

      function New_Sprite return Sprite;  -- ./sprite.hpp:8
      pragma CPP_Constructor (New_Sprite, "_ZN6SpriteC1Ev");

      function New_Sprite
        (y_pos : word_operations_hpp.uint8_t;
         x_pos : word_operations_hpp.uint8_t;
         tile : word_operations_hpp.uint8_t;
         flag : word_operations_hpp.uint8_t) return Sprite;  -- ./sprite.hpp:10
      pragma CPP_Constructor (New_Sprite, "_ZN6SpriteC1Ehhhh");

      function get_x (this : access Sprite) return word_operations_hpp.uint8_t;  -- ./sprite.hpp:18
      pragma Import (CPP, get_x, "_ZN6Sprite5get_xEv");

      function get_y (this : access Sprite) return word_operations_hpp.uint8_t;  -- ./sprite.hpp:19
      pragma Import (CPP, get_y, "_ZN6Sprite5get_yEv");

      function get_x_pos (this : access Sprite) return int;  -- ./sprite.hpp:20
      pragma Import (CPP, get_x_pos, "_ZN6Sprite9get_x_posEv");

      function get_y_pos (this : access Sprite) return int;  -- ./sprite.hpp:21
      pragma Import (CPP, get_y_pos, "_ZN6Sprite9get_y_posEv");

      function get_tile (this : access Sprite) return word_operations_hpp.uint8_t;  -- ./sprite.hpp:22
      pragma Import (CPP, get_tile, "_ZN6Sprite8get_tileEv");

      function is_x_flipped (this : access Sprite) return Extensions.bool;  -- ./sprite.hpp:23
      pragma Import (CPP, is_x_flipped, "_ZN6Sprite12is_x_flippedEv");

      function is_y_flipped (this : access Sprite) return Extensions.bool;  -- ./sprite.hpp:24
      pragma Import (CPP, is_y_flipped, "_ZN6Sprite12is_y_flippedEv");

      function is_above_bg (this : access Sprite) return Extensions.bool;  -- ./sprite.hpp:25
      pragma Import (CPP, is_above_bg, "_ZN6Sprite11is_above_bgEv");

      function is_obp1 (this : access Sprite) return Extensions.bool;  -- ./sprite.hpp:26
      pragma Import (CPP, is_obp1, "_ZN6Sprite7is_obp1Ev");
   end;
   use Class_Sprite;
end sprite_hpp;
