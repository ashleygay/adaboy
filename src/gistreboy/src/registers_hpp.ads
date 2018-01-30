pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package registers_hpp is

   type Register is limited interface;  -- ./registers.hpp:3
   pragma Import (CPP, Register);  -- ./registers.hpp:3

   type DRegister is limited interface;  -- ./registers.hpp:7
   pragma Import (CPP, DRegister);  -- ./registers.hpp:7

   package Class_FlagRegister is
      type FlagRegister is limited record
         parent : aliased Register;
      end record;
      pragma Import (CPP, FlagRegister);

      function New_FlagRegister return FlagRegister;  -- ./registers.hpp:13
      pragma CPP_Constructor (New_FlagRegister, "_ZN12FlagRegisterC1Ev");

      procedure setFlag (this : access FlagRegister; the_flag : Flag);  -- ./registers.hpp:15
      pragma Import (CPP, setFlag, "_ZN12FlagRegister7setFlagENS_4FlagE");

      procedure unsetFlag (this : access FlagRegister; the_flag : Flag);  -- ./registers.hpp:16
      pragma Import (CPP, unsetFlag, "_ZN12FlagRegister9unsetFlagENS_4FlagE");

      function getFlag (this : access FlagRegister; the_flag : Flag) return Extensions.bool;  -- ./registers.hpp:17
      pragma Import (CPP, getFlag, "_ZN12FlagRegister7getFlagENS_4FlagE");

      function get_value (this : access FlagRegister) return unsigned_char;  -- ./registers.hpp:18
      pragma Import (CPP, get_value, "_ZN12FlagRegister9get_valueEv");

      procedure set_value (this : access FlagRegister; val : unsigned_char);  -- ./registers.hpp:19
      pragma Import (CPP, set_value, "_ZN12FlagRegister9set_valueEh");
   end;
   use Class_FlagRegister;
end registers_hpp;
