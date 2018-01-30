pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package word_operations_hpp is

  -- * File : word_operations.hpp
  -- *
  -- * File created by : Corentin Gay
  -- * File was created at : 06/12/2017
  --  

   subtype uint16_t is unsigned_short;  -- ./word_operations.hpp:10

   subtype int16_t is short;  -- ./word_operations.hpp:11

   subtype uint8_t is unsigned_char;  -- ./word_operations.hpp:12

   subtype int8_t is signed_char;  -- ./word_operations.hpp:13

   subtype size_t is Extensions.unsigned_long_long;  -- ./word_operations.hpp:14

   subtype uint is unsigned;  -- ./word_operations.hpp:15

   function make_word (low : uint8_t; high : uint8_t) return uint16_t;  -- ./word_operations.hpp:17
   pragma Import (CPP, make_word, "_Z9make_wordhh");

   function get_high (word : uint16_t) return uint8_t;  -- ./word_operations.hpp:18
   pragma Import (CPP, get_high, "_Z8get_hight");

   function get_low (word : uint16_t) return uint8_t;  -- ./word_operations.hpp:19
   pragma Import (CPP, get_low, "_Z7get_lowt");

end word_operations_hpp;
