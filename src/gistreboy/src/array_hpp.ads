pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with sprite_hpp;

package array_hpp is

   subtype size_type is unsigned;  -- ./array.hpp:5

   package c_array_c_array_160 is
      type c_array is limited record
         underlying_array : aliased c_array_underlying_array_array;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, c_array);

      function operator_ob (this : access c_array; index : unsigned) return access c_array;  -- ./array.cpp:7
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIS_IiLj144EELj160EEixEj");

      function operator_ob (this : access constant c_array; index : unsigned) return access constant c_array;  -- ./array.cpp:17
      pragma Import (CPP, operator_ob, "_ZNKSt5arrayIS_IiLj144EELj160EEixEj");

      function size (this : access constant c_array) return unsigned;  -- ./array.cpp:23
      pragma Import (CPP, size, "_ZNKSt5arrayIS_IiLj144EELj160EE4sizeEv");

   end;
   use c_array_c_array_160;

   package c_array_int_144 is
      type c_array is limited record
         underlying_array : aliased c_array_underlying_array_array;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, c_array);

      function operator_ob (this : access c_array; index : unsigned) return access int;  -- ./array.cpp:7
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIiLj144EEixEj");

      function operator_ob (this : access constant c_array; index : unsigned) return access int;  -- ./array.cpp:17
      pragma Import (CPP, operator_ob, "_ZNKSt5arrayIiLj144EEixEj");

      function size (this : access constant c_array) return unsigned;  -- ./array.cpp:23
      pragma Import (CPP, size, "_ZNKSt5arrayIiLj144EE4sizeEv");

   end;
   use c_array_int_144;

   package c_array_unsigned_char_65536 is
      type c_array is limited record
         underlying_array : aliased c_array_underlying_array_array;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, c_array);

      function operator_ob (this : access c_array; index : unsigned) return access unsigned_char;  -- ./array.cpp:7
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIhLj65536EEixEj");

      function operator_ob (this : access constant c_array; index : unsigned) return access unsigned_char;  -- ./array.cpp:17
      pragma Import (CPP, operator_ob, "_ZNKSt5arrayIhLj65536EEixEj");

      function size (this : access constant c_array) return unsigned;  -- ./array.cpp:23
      pragma Import (CPP, size, "_ZNKSt5arrayIhLj65536EE4sizeEv");

   end;
   use c_array_unsigned_char_65536;

   package c_array_Class_Sprite.Sprite_40 is
      type c_array is limited record
         underlying_array : aliased c_array_underlying_array_array;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, c_array);

      function operator_ob (this : access c_array; index : unsigned) return access sprite_hpp.Class_Sprite.Sprite;  -- ./array.cpp:7
      pragma Import (CPP, operator_ob, "_ZNSt5arrayI6SpriteLj40EEixEj");

      function operator_ob (this : access constant c_array; index : unsigned) return access constant sprite_hpp.Class_Sprite.Sprite;  -- ./array.cpp:17
      pragma Import (CPP, operator_ob, "_ZNKSt5arrayI6SpriteLj40EEixEj");

      function size (this : access constant c_array) return unsigned;  -- ./array.cpp:23
      pragma Import (CPP, size, "_ZNKSt5arrayI6SpriteLj40EE4sizeEv");

   end;
   use c_array_Class_Sprite.Sprite_40;



end array_hpp;
