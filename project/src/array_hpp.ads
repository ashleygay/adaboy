pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with sprite_hpp;

package array_hpp is

   subtype size_type is unsigned;  -- ./array.hpp:5

-- For some reason, g++ -fdump-ada-spec does not generate
-- templated types, we must write them by hand.

-- The binding generator does not make the connection between
-- the templated type and its instanciation
-- ie: memory expects a member of type class_array but
-- the type generated is actually a record of type c_array_unsigned_char65536


   type c_array_sprite40 is array (0 .. 39) of sprite_hpp.Class_Sprite.Sprite;
   type c_array_unsigned_char65536 is array (0 .. 65535) of unsigned_char;
   type c_array_int144 is array (0 .. 143) of int;
   type c_array_c_array160 is array (0 .. 159) of c_array_int144;

   -- Manual check done
   package template_array_c_array_160 is
      type instance is limited record
         underlying_array : aliased c_array_c_array160;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, instance);

      function New_c_array return instance;  -- ./array.hpp:11
      pragma CPP_Constructor (New_c_array, "_ZNSt5arrayIS_IiLj144EELj160EEC1Ev");

      function operator_ob (this : access instance; index : size_type) return access c_array_int144;  -- ./array.hpp:11
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIS_IiLj144EELj160EEixEj");

      function size (this : access constant instance) return size_type;  -- ./array.hpp:13
      pragma Import (CPP, size, "_ZNKSt5arrayIS_IiLj144EELj160EE4sizeEv");

   end;
   use template_array_c_array_160;

   -- Manual check done
   package template_array_int_144 is
      type instance is limited record
         underlying_array : aliased c_array_int144;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, instance);

      function New_c_array return instance;  -- ./array.hpp:11
      pragma CPP_Constructor (New_c_array, "_ZNSt5arrayIiLj144EEC1Ev");

      function operator_ob (this : access instance; index : size_type) return access int;  -- ./array.hpp:11
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIiLj144EEixEj");

      function size (this : access constant instance) return size_type;  -- ./array.hpp:13
      pragma Import (CPP, size, "_ZNKSt5arrayIiLj144EE4sizeEv");

   end;
   use template_array_int_144;

   -- Manual check done
   package template_array_unsigned_char_65536 is
      type instance is limited record
         underlying_array : aliased c_array_unsigned_char65536;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, instance);

      function New_c_array return instance;  -- ./array.hpp:11
      pragma CPP_Constructor (New_c_array, "_ZNSt5arrayIhLj65536EEC1Ev");

      function operator_ob (this : access instance; index : size_type) return access unsigned_char;  -- ./array.hpp:11
      pragma Import (CPP, operator_ob, "_ZNSt5arrayIhLj65536EEixEj");

      function size (this : access constant instance) return size_type;  -- ./array.hpp:13
      pragma Import (CPP, size, "_ZNKSt5arrayIhLj65536EE4sizeEv");

   end;
   use template_array_unsigned_char_65536;

   -- Manual check done
   package template_array_Class_Sprite_40 is
      type instance is limited record
         underlying_array : aliased c_array_sprite40;  -- ./array.hpp:15
         current_size : aliased size_type;  -- ./array.hpp:16
      end record;
      pragma Import (CPP, instance);

      function New_c_array return instance;  -- ./array.hpp:11
      pragma CPP_Constructor (New_c_array, "_ZNSt5arrayI6SpriteLj40EEC1Ev");

      function operator_ob (this : access instance; index : size_type) return access sprite_hpp.Class_Sprite.Sprite;  -- ./array.hpp:11
      pragma Import (CPP, operator_ob, "_ZNSt5arrayI6SpriteLj40EEixEj");

      function size (this : access constant instance) return size_type;  -- ./array.hpp:13
      pragma Import (CPP, size, "_ZNKSt5arrayI6SpriteLj40EE4sizeEv");

   end;
   use template_array_Class_Sprite_40;



  --const T& operator[](size_type index) const;
end array_hpp;
