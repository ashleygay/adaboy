pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package bitset_hpp is

   type c_bitset3 is array (0 .. 3) of Extensions.Bool;
   type c_bitset8 is array (0 .. 8) of Extensions.Bool;

   package template_bitset_3 is
      type instance is limited record
         internal_array : aliased c_bitset3;  -- ./bitset.hpp:19
      end record;
      pragma Import (CPP, instance);

      function New_bitset return instance;  -- ./bitset.cpp:7
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj3EEC1Ev");

      function New_bitset (value : unsigned) return instance;  -- ./bitset.cpp:14
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj3EEC1Ej");

      function operator_ob (this : access instance; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:20
      pragma Import (CPP, operator_ob, "_ZNSt6bitsetILj3EEixEj");

      function size (this : access instance) return unsigned;  -- ./bitset.cpp:32
      pragma Import (CPP, size, "_ZNSt6bitsetILj3EE4sizeEv");

      function any (this : access instance) return Extensions.bool;  -- ./bitset.cpp:38
      pragma Import (CPP, any, "_ZNSt6bitsetILj3EE3anyEv");

      procedure operator_as (this : access instance; value : unsigned);  -- ./bitset.cpp:48
      pragma Import (CPP, operator_as, "_ZNSt6bitsetILj3EEaSEj");

      function to_ulong (this : access instance) return unsigned_long;  -- ./bitset.cpp:56
      pragma Import (CPP, to_ulong, "_ZNSt6bitsetILj3EE8to_ulongEv");

   end;
   use template_bitset_3;

   package template_bitset_8 is
      type instance is limited record
         internal_array : aliased c_bitset8;  -- ./bitset.hpp:19
      end record;
      pragma Import (CPP, instance);

      function New_bitset return instance;  -- ./bitset.cpp:7
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj8EEC1Ev");

      function New_bitset (value : unsigned) return instance;  -- ./bitset.cpp:14
      pragma CPP_Constructor (New_bitset, "_ZNSt6bitsetILj8EEC1Ej");

      function operator_ob (this : access instance; index : unsigned) return access Extensions.bool;  -- ./bitset.cpp:20
      pragma Import (CPP, operator_ob, "_ZNSt6bitsetILj8EEixEj");

      function size (this : access instance) return unsigned;  -- ./bitset.cpp:32
      pragma Import (CPP, size, "_ZNSt6bitsetILj8EE4sizeEv");

      function any (this : access instance) return Extensions.bool;  -- ./bitset.cpp:38
      pragma Import (CPP, any, "_ZNSt6bitsetILj8EE3anyEv");

      procedure operator_as (this : access instance; value : unsigned);  -- ./bitset.cpp:48
      pragma Import (CPP, operator_as, "_ZNSt6bitsetILj8EEaSEj");

      function to_ulong (this : access instance) return unsigned_long;  -- ./bitset.cpp:56
      pragma Import (CPP, to_ulong, "_ZNSt6bitsetILj8EE8to_ulongEv");

   end;
   use template_bitset_8;



  --const bool& operator[](size_type index) const;
end bitset_hpp;
