pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with word_operations_hpp;

package instructionargs_hpp is

   type ARG (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            word : aliased word_operations_hpp.uint16_t;  -- ./instructionargs.hpp:6
         when others =>
            byte : aliased word_operations_hpp.uint8_t;  -- ./instructionargs.hpp:7
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, ARG);
   pragma Unchecked_Union (ARG);  -- ./instructionargs.hpp:5

   subtype InstructionArg is ARG;  -- ./instructionargs.hpp:10

end instructionargs_hpp;
