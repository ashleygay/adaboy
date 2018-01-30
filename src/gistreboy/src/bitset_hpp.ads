pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package bitset_hpp is

   package bitset_3 is
      type bitset is limited record
         internal_array : aliased bitset_internal_array_array;  -- ./bitset.hpp:19
      end record;
      pragma Import (CPP, bitset);

      function New_bitset return bitset;  -- ./bitset.cpp:7
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj3EEC1Ev");

      function New_bitset (value : unsigned) return bitset;  -- ./bitset.cpp:14
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj3EEC1Ej");

      function operator_ob (this : access constant bitset; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:26
      pragma Import (CPP, operator_ob, "_ZNKSt6bitsetILj3EEixEj");

      function operator_ob (this : access bitset; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:20
      pragma Import (CPP, operator_ob, "_ZNSt6bitsetILj3EEixEj");

      function size (this : access bitset) return unsigned;  -- ./bitset.cpp:32
      pragma Import (CPP, size, "_ZNSt6bitsetILj3EE4sizeEv");

      function any (this : access bitset) return Extensions.bool;  -- ./bitset.cpp:38
      pragma Import (CPP, any, "_ZNSt6bitsetILj3EE3anyEv");

      procedure operator_as (this : access bitset; value : unsigned);  -- ./bitset.cpp:48
      pragma Import (CPP, operator_as, "_ZNSt6bitsetILj3EEaSEj");

      function to_ulong (this : access bitset) return unsigned_long;  -- ./bitset.cpp:56
      pragma Import (CPP, to_ulong, "_ZNSt6bitsetILj3EE8to_ulongEv");

   end;
   use bitset_3;

   package bitset_8 is
      type bitset is limited record
         internal_array : aliased bitset_internal_array_array;  -- ./bitset.hpp:19
      end record;
      pragma Import (CPP, bitset);

      function New_bitset return bitset;  -- ./bitset.cpp:7
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj8EEC1Ev");

      function New_bitset (value : unsigned) return bitset;  -- ./bitset.cpp:14
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj8EEC1Ej");

      function operator_ob (this : access constant bitset; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:26
      pragma Import (CPP, operator_ob, "_ZNKSt6bitsetILj8EEixEj");

      function operator_ob (this : access bitset; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:20
      pragma Import (CPP, operator_ob, "_ZNSt6bitsetILj8EEixEj");

      function size (this : access bitset) return unsigned;  -- ./bitset.cpp:32
      pragma Import (CPP, size, "_ZNSt6bitsetILj8EE4sizeEv");

      function any (this : access bitset) return Extensions.bool;  -- ./bitset.cpp:38
      pragma Import (CPP, any, "_ZNSt6bitsetILj8EE3anyEv");

      procedure operator_as (this : access bitset; value : unsigned);  -- ./bitset.cpp:48
      pragma Import (CPP, operator_as, "_ZNSt6bitsetILj8EEaSEj");

      function to_ulong (this : access bitset) return unsigned_long;  -- ./bitset.cpp:56
      pragma Import (CPP, to_ulong, "_ZNSt6bitsetILj8EE8to_ulongEv");

   end;
   use bitset_8;



end bitset_hpp;
