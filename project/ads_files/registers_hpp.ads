pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package registers_hpp is

   type Register is record
      value : aliased unsigned_char;  -- ./registers.hpp:4
   end record;
   pragma Convention (C_Pass_By_Copy, Register);  -- ./registers.hpp:3

   type DRegister is record
      value : aliased unsigned_short;  -- ./registers.hpp:8
   end record;
   pragma Convention (C_Pass_By_Copy, DRegister);  -- ./registers.hpp:7

   type Flag is 
     (ZERO,
      SUBTRACT,
      HALFCARRY,
      CARRY);
   pragma Convention (C, Flag);  -- ./registers.hpp:12

  --enum Flag { ZERO, SUBTRACT, HALFCARRY, CARRY };
   package Class_FlagRegister is
      type FlagRegister is limited record
         value : aliased unsigned_char;  -- ./registers.hpp:24
      end record;
      pragma Import (CPP, FlagRegister);

      function New_FlagRegister return FlagRegister;  -- ./registers.hpp:16
      pragma CPP_Constructor (New_FlagRegister, "_ZN12FlagRegisterC1Ev");

      procedure setFlag (this : access FlagRegister; the_flag : Flag);  -- ./registers.hpp:18
      pragma Import (CPP, setFlag, "_ZN12FlagRegister7setFlagE4Flag");

      procedure unsetFlag (this : access FlagRegister; the_flag : Flag);  -- ./registers.hpp:19
      pragma Import (CPP, unsetFlag, "_ZN12FlagRegister9unsetFlagE4Flag");

      function getFlag (this : access FlagRegister; the_flag : Flag) return Extensions.bool;  -- ./registers.hpp:20
      pragma Import (CPP, getFlag, "_ZN12FlagRegister7getFlagE4Flag");

      function get_value (this : access FlagRegister) return unsigned_char;  -- ./registers.hpp:21
      pragma Import (CPP, get_value, "_ZN12FlagRegister9get_valueEv");

      procedure set_value (this : access FlagRegister; val : unsigned_char);  -- ./registers.hpp:22
      pragma Import (CPP, set_value, "_ZN12FlagRegister9set_valueEh");
   end;
   use Class_FlagRegister;
end registers_hpp;
