pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with word_operations_hpp;
with System;

package instructionset_hpp is

   --  skipped empty struct Instruction

   subtype OpCode is word_operations_hpp.uint16_t;  -- ./instructionset.hpp:6

  -- -1 invalid instruction
  -- otherwise, the number of arguments it takes
  -- Function not safe on its own, use isOpCodeValid() first
   type InstructionSet_map_array is array (0 .. 53246) of System.Address;
   package Class_InstructionSet is
      type InstructionSet is limited record
         map : InstructionSet_map_array;  -- ./instructionset.hpp:21
      end record;
      pragma Import (CPP, InstructionSet);

      function New_InstructionSet return InstructionSet;  -- ./instructionset.hpp:11
      pragma CPP_Constructor (New_InstructionSet, "_ZN14InstructionSetC1Ev");

      function isValidOpCode (this : access InstructionSet; the_opcode : OpCode) return int;  -- ./instructionset.hpp:15
      pragma Import (CPP, isValidOpCode, "_ZN14InstructionSet13isValidOpCodeEt");

      function getInstruction (this : access InstructionSet; the_opcode : OpCode) return System.Address;  -- ./instructionset.hpp:18
      pragma Import (CPP, getInstruction, "_ZN14InstructionSet14getInstructionEt");
   end;
   use Class_InstructionSet;
end instructionset_hpp;
