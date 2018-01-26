pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with processor_hpp;
with Interfaces.C.Strings;
with bits_stdint_uintn_h;
with Interfaces.C.Extensions;
with instructionargs_hpp;

package instruction_hpp is

  --#include <iostream>
  --#include <vector>
   package Class_Instruction is
      type Instruction is limited interface;  -- instruction.hpp:9
      pragma Import (CPP, Instruction);

      procedure exec (this : access Instruction; p : access processor_hpp.Class_Processor.Processor) is abstract;  -- instruction.hpp:11

      function toStr (this : access Instruction) return Interfaces.C.Strings.chars_ptr is abstract;  -- instruction.hpp:12

      function opCode (this : access Instruction) return bits_stdint_uintn_h.uint16_t is abstract;  -- instruction.hpp:13

      function nbCycles (this : access Instruction) return int is abstract;  -- instruction.hpp:14

      function hasArg (this : access Instruction) return Extensions.bool is abstract;  -- instruction.hpp:15

      procedure setArg (this : access Instruction; args : access instructionargs_hpp.InstructionArg) is abstract;  -- instruction.hpp:16

      function argSize (this : access Instruction) return int is abstract;  -- instruction.hpp:17
   end;
   use Class_Instruction;
  --   We expanded the macro by hand since g++ does not support
  --   generating ada bindings from macros with arguments.

  -- LD INSTRUCTIONS
   package Class_LD_AX is
      type LD_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:43
      end record;
      pragma Import (CPP, LD_AX);

      procedure exec (this : access LD_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:43
      pragma Import (CPP, exec, "_ZN5LD_AX4execEP9Processor");

      function toStr (this : access LD_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:43
      pragma Import (CPP, toStr, "_ZN5LD_AX5toStrEv");

      function opCode (this : access LD_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:43
      pragma Import (CPP, opCode, "_ZN5LD_AX6opCodeEv");

      function nbCycles (this : access LD_AX) return int;  -- instruction.hpp:43
      pragma Import (CPP, nbCycles, "_ZN5LD_AX8nbCyclesEv");

      function hasArg (this : access LD_AX) return Extensions.bool;  -- instruction.hpp:43
      pragma Import (CPP, hasArg, "_ZN5LD_AX6hasArgEv");

      procedure setArg (this : access LD_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:43
      pragma Import (CPP, setArg, "_ZN5LD_AX6setArgER3ARG");

      function argSize (this : access LD_AX) return int;  -- instruction.hpp:43
      pragma Import (CPP, argSize, "_ZN5LD_AX7argSizeEv");
   end;
   use Class_LD_AX;
   package Class_LD_BX is
      type LD_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:44
      end record;
      pragma Import (CPP, LD_BX);

      procedure exec (this : access LD_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:44
      pragma Import (CPP, exec, "_ZN5LD_BX4execEP9Processor");

      function toStr (this : access LD_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:44
      pragma Import (CPP, toStr, "_ZN5LD_BX5toStrEv");

      function opCode (this : access LD_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:44
      pragma Import (CPP, opCode, "_ZN5LD_BX6opCodeEv");

      function nbCycles (this : access LD_BX) return int;  -- instruction.hpp:44
      pragma Import (CPP, nbCycles, "_ZN5LD_BX8nbCyclesEv");

      function hasArg (this : access LD_BX) return Extensions.bool;  -- instruction.hpp:44
      pragma Import (CPP, hasArg, "_ZN5LD_BX6hasArgEv");

      procedure setArg (this : access LD_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:44
      pragma Import (CPP, setArg, "_ZN5LD_BX6setArgER3ARG");

      function argSize (this : access LD_BX) return int;  -- instruction.hpp:44
      pragma Import (CPP, argSize, "_ZN5LD_BX7argSizeEv");
   end;
   use Class_LD_BX;
   package Class_LD_CX is
      type LD_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:45
      end record;
      pragma Import (CPP, LD_CX);

      procedure exec (this : access LD_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:45
      pragma Import (CPP, exec, "_ZN5LD_CX4execEP9Processor");

      function toStr (this : access LD_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:45
      pragma Import (CPP, toStr, "_ZN5LD_CX5toStrEv");

      function opCode (this : access LD_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:45
      pragma Import (CPP, opCode, "_ZN5LD_CX6opCodeEv");

      function nbCycles (this : access LD_CX) return int;  -- instruction.hpp:45
      pragma Import (CPP, nbCycles, "_ZN5LD_CX8nbCyclesEv");

      function hasArg (this : access LD_CX) return Extensions.bool;  -- instruction.hpp:45
      pragma Import (CPP, hasArg, "_ZN5LD_CX6hasArgEv");

      procedure setArg (this : access LD_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:45
      pragma Import (CPP, setArg, "_ZN5LD_CX6setArgER3ARG");

      function argSize (this : access LD_CX) return int;  -- instruction.hpp:45
      pragma Import (CPP, argSize, "_ZN5LD_CX7argSizeEv");
   end;
   use Class_LD_CX;
   package Class_LD_DX is
      type LD_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:46
      end record;
      pragma Import (CPP, LD_DX);

      procedure exec (this : access LD_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:46
      pragma Import (CPP, exec, "_ZN5LD_DX4execEP9Processor");

      function toStr (this : access LD_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:46
      pragma Import (CPP, toStr, "_ZN5LD_DX5toStrEv");

      function opCode (this : access LD_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:46
      pragma Import (CPP, opCode, "_ZN5LD_DX6opCodeEv");

      function nbCycles (this : access LD_DX) return int;  -- instruction.hpp:46
      pragma Import (CPP, nbCycles, "_ZN5LD_DX8nbCyclesEv");

      function hasArg (this : access LD_DX) return Extensions.bool;  -- instruction.hpp:46
      pragma Import (CPP, hasArg, "_ZN5LD_DX6hasArgEv");

      procedure setArg (this : access LD_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:46
      pragma Import (CPP, setArg, "_ZN5LD_DX6setArgER3ARG");

      function argSize (this : access LD_DX) return int;  -- instruction.hpp:46
      pragma Import (CPP, argSize, "_ZN5LD_DX7argSizeEv");
   end;
   use Class_LD_DX;
   package Class_LD_EX is
      type LD_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:47
      end record;
      pragma Import (CPP, LD_EX);

      procedure exec (this : access LD_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:47
      pragma Import (CPP, exec, "_ZN5LD_EX4execEP9Processor");

      function toStr (this : access LD_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:47
      pragma Import (CPP, toStr, "_ZN5LD_EX5toStrEv");

      function opCode (this : access LD_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:47
      pragma Import (CPP, opCode, "_ZN5LD_EX6opCodeEv");

      function nbCycles (this : access LD_EX) return int;  -- instruction.hpp:47
      pragma Import (CPP, nbCycles, "_ZN5LD_EX8nbCyclesEv");

      function hasArg (this : access LD_EX) return Extensions.bool;  -- instruction.hpp:47
      pragma Import (CPP, hasArg, "_ZN5LD_EX6hasArgEv");

      procedure setArg (this : access LD_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:47
      pragma Import (CPP, setArg, "_ZN5LD_EX6setArgER3ARG");

      function argSize (this : access LD_EX) return int;  -- instruction.hpp:47
      pragma Import (CPP, argSize, "_ZN5LD_EX7argSizeEv");
   end;
   use Class_LD_EX;
   package Class_LD_HX is
      type LD_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:48
      end record;
      pragma Import (CPP, LD_HX);

      procedure exec (this : access LD_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:48
      pragma Import (CPP, exec, "_ZN5LD_HX4execEP9Processor");

      function toStr (this : access LD_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:48
      pragma Import (CPP, toStr, "_ZN5LD_HX5toStrEv");

      function opCode (this : access LD_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:48
      pragma Import (CPP, opCode, "_ZN5LD_HX6opCodeEv");

      function nbCycles (this : access LD_HX) return int;  -- instruction.hpp:48
      pragma Import (CPP, nbCycles, "_ZN5LD_HX8nbCyclesEv");

      function hasArg (this : access LD_HX) return Extensions.bool;  -- instruction.hpp:48
      pragma Import (CPP, hasArg, "_ZN5LD_HX6hasArgEv");

      procedure setArg (this : access LD_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:48
      pragma Import (CPP, setArg, "_ZN5LD_HX6setArgER3ARG");

      function argSize (this : access LD_HX) return int;  -- instruction.hpp:48
      pragma Import (CPP, argSize, "_ZN5LD_HX7argSizeEv");
   end;
   use Class_LD_HX;
   package Class_LD_LX is
      type LD_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:49
      end record;
      pragma Import (CPP, LD_LX);

      procedure exec (this : access LD_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:49
      pragma Import (CPP, exec, "_ZN5LD_LX4execEP9Processor");

      function toStr (this : access LD_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:49
      pragma Import (CPP, toStr, "_ZN5LD_LX5toStrEv");

      function opCode (this : access LD_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:49
      pragma Import (CPP, opCode, "_ZN5LD_LX6opCodeEv");

      function nbCycles (this : access LD_LX) return int;  -- instruction.hpp:49
      pragma Import (CPP, nbCycles, "_ZN5LD_LX8nbCyclesEv");

      function hasArg (this : access LD_LX) return Extensions.bool;  -- instruction.hpp:49
      pragma Import (CPP, hasArg, "_ZN5LD_LX6hasArgEv");

      procedure setArg (this : access LD_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:49
      pragma Import (CPP, setArg, "_ZN5LD_LX6setArgER3ARG");

      function argSize (this : access LD_LX) return int;  -- instruction.hpp:49
      pragma Import (CPP, argSize, "_ZN5LD_LX7argSizeEv");
   end;
   use Class_LD_LX;
   package Class_LD_AA is
      type LD_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:51
      end record;
      pragma Import (CPP, LD_AA);

      procedure exec (this : access LD_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:51
      pragma Import (CPP, exec, "_ZN5LD_AA4execEP9Processor");

      function toStr (this : access LD_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:51
      pragma Import (CPP, toStr, "_ZN5LD_AA5toStrEv");

      function opCode (this : access LD_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:51
      pragma Import (CPP, opCode, "_ZN5LD_AA6opCodeEv");

      function nbCycles (this : access LD_AA) return int;  -- instruction.hpp:51
      pragma Import (CPP, nbCycles, "_ZN5LD_AA8nbCyclesEv");

      function hasArg (this : access LD_AA) return Extensions.bool;  -- instruction.hpp:51
      pragma Import (CPP, hasArg, "_ZN5LD_AA6hasArgEv");

      procedure setArg (this : access LD_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:51
      pragma Import (CPP, setArg, "_ZN5LD_AA6setArgER3ARG");

      function argSize (this : access LD_AA) return int;  -- instruction.hpp:51
      pragma Import (CPP, argSize, "_ZN5LD_AA7argSizeEv");
   end;
   use Class_LD_AA;
   package Class_LD_AB is
      type LD_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:52
      end record;
      pragma Import (CPP, LD_AB);

      procedure exec (this : access LD_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:52
      pragma Import (CPP, exec, "_ZN5LD_AB4execEP9Processor");

      function toStr (this : access LD_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:52
      pragma Import (CPP, toStr, "_ZN5LD_AB5toStrEv");

      function opCode (this : access LD_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:52
      pragma Import (CPP, opCode, "_ZN5LD_AB6opCodeEv");

      function nbCycles (this : access LD_AB) return int;  -- instruction.hpp:52
      pragma Import (CPP, nbCycles, "_ZN5LD_AB8nbCyclesEv");

      function hasArg (this : access LD_AB) return Extensions.bool;  -- instruction.hpp:52
      pragma Import (CPP, hasArg, "_ZN5LD_AB6hasArgEv");

      procedure setArg (this : access LD_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:52
      pragma Import (CPP, setArg, "_ZN5LD_AB6setArgER3ARG");

      function argSize (this : access LD_AB) return int;  -- instruction.hpp:52
      pragma Import (CPP, argSize, "_ZN5LD_AB7argSizeEv");
   end;
   use Class_LD_AB;
   package Class_LD_AC is
      type LD_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:53
      end record;
      pragma Import (CPP, LD_AC);

      procedure exec (this : access LD_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:53
      pragma Import (CPP, exec, "_ZN5LD_AC4execEP9Processor");

      function toStr (this : access LD_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:53
      pragma Import (CPP, toStr, "_ZN5LD_AC5toStrEv");

      function opCode (this : access LD_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:53
      pragma Import (CPP, opCode, "_ZN5LD_AC6opCodeEv");

      function nbCycles (this : access LD_AC) return int;  -- instruction.hpp:53
      pragma Import (CPP, nbCycles, "_ZN5LD_AC8nbCyclesEv");

      function hasArg (this : access LD_AC) return Extensions.bool;  -- instruction.hpp:53
      pragma Import (CPP, hasArg, "_ZN5LD_AC6hasArgEv");

      procedure setArg (this : access LD_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:53
      pragma Import (CPP, setArg, "_ZN5LD_AC6setArgER3ARG");

      function argSize (this : access LD_AC) return int;  -- instruction.hpp:53
      pragma Import (CPP, argSize, "_ZN5LD_AC7argSizeEv");
   end;
   use Class_LD_AC;
   package Class_LD_AD is
      type LD_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:54
      end record;
      pragma Import (CPP, LD_AD);

      procedure exec (this : access LD_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:54
      pragma Import (CPP, exec, "_ZN5LD_AD4execEP9Processor");

      function toStr (this : access LD_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:54
      pragma Import (CPP, toStr, "_ZN5LD_AD5toStrEv");

      function opCode (this : access LD_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:54
      pragma Import (CPP, opCode, "_ZN5LD_AD6opCodeEv");

      function nbCycles (this : access LD_AD) return int;  -- instruction.hpp:54
      pragma Import (CPP, nbCycles, "_ZN5LD_AD8nbCyclesEv");

      function hasArg (this : access LD_AD) return Extensions.bool;  -- instruction.hpp:54
      pragma Import (CPP, hasArg, "_ZN5LD_AD6hasArgEv");

      procedure setArg (this : access LD_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:54
      pragma Import (CPP, setArg, "_ZN5LD_AD6setArgER3ARG");

      function argSize (this : access LD_AD) return int;  -- instruction.hpp:54
      pragma Import (CPP, argSize, "_ZN5LD_AD7argSizeEv");
   end;
   use Class_LD_AD;
   package Class_LD_AE is
      type LD_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:55
      end record;
      pragma Import (CPP, LD_AE);

      procedure exec (this : access LD_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:55
      pragma Import (CPP, exec, "_ZN5LD_AE4execEP9Processor");

      function toStr (this : access LD_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:55
      pragma Import (CPP, toStr, "_ZN5LD_AE5toStrEv");

      function opCode (this : access LD_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:55
      pragma Import (CPP, opCode, "_ZN5LD_AE6opCodeEv");

      function nbCycles (this : access LD_AE) return int;  -- instruction.hpp:55
      pragma Import (CPP, nbCycles, "_ZN5LD_AE8nbCyclesEv");

      function hasArg (this : access LD_AE) return Extensions.bool;  -- instruction.hpp:55
      pragma Import (CPP, hasArg, "_ZN5LD_AE6hasArgEv");

      procedure setArg (this : access LD_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:55
      pragma Import (CPP, setArg, "_ZN5LD_AE6setArgER3ARG");

      function argSize (this : access LD_AE) return int;  -- instruction.hpp:55
      pragma Import (CPP, argSize, "_ZN5LD_AE7argSizeEv");
   end;
   use Class_LD_AE;
   package Class_LD_AH is
      type LD_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:56
      end record;
      pragma Import (CPP, LD_AH);

      procedure exec (this : access LD_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:56
      pragma Import (CPP, exec, "_ZN5LD_AH4execEP9Processor");

      function toStr (this : access LD_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:56
      pragma Import (CPP, toStr, "_ZN5LD_AH5toStrEv");

      function opCode (this : access LD_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:56
      pragma Import (CPP, opCode, "_ZN5LD_AH6opCodeEv");

      function nbCycles (this : access LD_AH) return int;  -- instruction.hpp:56
      pragma Import (CPP, nbCycles, "_ZN5LD_AH8nbCyclesEv");

      function hasArg (this : access LD_AH) return Extensions.bool;  -- instruction.hpp:56
      pragma Import (CPP, hasArg, "_ZN5LD_AH6hasArgEv");

      procedure setArg (this : access LD_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:56
      pragma Import (CPP, setArg, "_ZN5LD_AH6setArgER3ARG");

      function argSize (this : access LD_AH) return int;  -- instruction.hpp:56
      pragma Import (CPP, argSize, "_ZN5LD_AH7argSizeEv");
   end;
   use Class_LD_AH;
   package Class_LD_AL is
      type LD_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:57
      end record;
      pragma Import (CPP, LD_AL);

      procedure exec (this : access LD_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:57
      pragma Import (CPP, exec, "_ZN5LD_AL4execEP9Processor");

      function toStr (this : access LD_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:57
      pragma Import (CPP, toStr, "_ZN5LD_AL5toStrEv");

      function opCode (this : access LD_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:57
      pragma Import (CPP, opCode, "_ZN5LD_AL6opCodeEv");

      function nbCycles (this : access LD_AL) return int;  -- instruction.hpp:57
      pragma Import (CPP, nbCycles, "_ZN5LD_AL8nbCyclesEv");

      function hasArg (this : access LD_AL) return Extensions.bool;  -- instruction.hpp:57
      pragma Import (CPP, hasArg, "_ZN5LD_AL6hasArgEv");

      procedure setArg (this : access LD_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:57
      pragma Import (CPP, setArg, "_ZN5LD_AL6setArgER3ARG");

      function argSize (this : access LD_AL) return int;  -- instruction.hpp:57
      pragma Import (CPP, argSize, "_ZN5LD_AL7argSizeEv");
   end;
   use Class_LD_AL;
   package Class_LD_AHL is
      type LD_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:58
      end record;
      pragma Import (CPP, LD_AHL);

      procedure exec (this : access LD_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:58
      pragma Import (CPP, exec, "_ZN6LD_AHL4execEP9Processor");

      function toStr (this : access LD_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:58
      pragma Import (CPP, toStr, "_ZN6LD_AHL5toStrEv");

      function opCode (this : access LD_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:58
      pragma Import (CPP, opCode, "_ZN6LD_AHL6opCodeEv");

      function nbCycles (this : access LD_AHL) return int;  -- instruction.hpp:58
      pragma Import (CPP, nbCycles, "_ZN6LD_AHL8nbCyclesEv");

      function hasArg (this : access LD_AHL) return Extensions.bool;  -- instruction.hpp:58
      pragma Import (CPP, hasArg, "_ZN6LD_AHL6hasArgEv");

      procedure setArg (this : access LD_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:58
      pragma Import (CPP, setArg, "_ZN6LD_AHL6setArgER3ARG");

      function argSize (this : access LD_AHL) return int;  -- instruction.hpp:58
      pragma Import (CPP, argSize, "_ZN6LD_AHL7argSizeEv");
   end;
   use Class_LD_AHL;
   package Class_LD_BA is
      type LD_BA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:59
      end record;
      pragma Import (CPP, LD_BA);

      procedure exec (this : access LD_BA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:59
      pragma Import (CPP, exec, "_ZN5LD_BA4execEP9Processor");

      function toStr (this : access LD_BA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:59
      pragma Import (CPP, toStr, "_ZN5LD_BA5toStrEv");

      function opCode (this : access LD_BA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:59
      pragma Import (CPP, opCode, "_ZN5LD_BA6opCodeEv");

      function nbCycles (this : access LD_BA) return int;  -- instruction.hpp:59
      pragma Import (CPP, nbCycles, "_ZN5LD_BA8nbCyclesEv");

      function hasArg (this : access LD_BA) return Extensions.bool;  -- instruction.hpp:59
      pragma Import (CPP, hasArg, "_ZN5LD_BA6hasArgEv");

      procedure setArg (this : access LD_BA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:59
      pragma Import (CPP, setArg, "_ZN5LD_BA6setArgER3ARG");

      function argSize (this : access LD_BA) return int;  -- instruction.hpp:59
      pragma Import (CPP, argSize, "_ZN5LD_BA7argSizeEv");
   end;
   use Class_LD_BA;
   package Class_LD_BB is
      type LD_BB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:60
      end record;
      pragma Import (CPP, LD_BB);

      procedure exec (this : access LD_BB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:60
      pragma Import (CPP, exec, "_ZN5LD_BB4execEP9Processor");

      function toStr (this : access LD_BB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:60
      pragma Import (CPP, toStr, "_ZN5LD_BB5toStrEv");

      function opCode (this : access LD_BB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:60
      pragma Import (CPP, opCode, "_ZN5LD_BB6opCodeEv");

      function nbCycles (this : access LD_BB) return int;  -- instruction.hpp:60
      pragma Import (CPP, nbCycles, "_ZN5LD_BB8nbCyclesEv");

      function hasArg (this : access LD_BB) return Extensions.bool;  -- instruction.hpp:60
      pragma Import (CPP, hasArg, "_ZN5LD_BB6hasArgEv");

      procedure setArg (this : access LD_BB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:60
      pragma Import (CPP, setArg, "_ZN5LD_BB6setArgER3ARG");

      function argSize (this : access LD_BB) return int;  -- instruction.hpp:60
      pragma Import (CPP, argSize, "_ZN5LD_BB7argSizeEv");
   end;
   use Class_LD_BB;
   package Class_LD_BC is
      type LD_BC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:61
      end record;
      pragma Import (CPP, LD_BC);

      procedure exec (this : access LD_BC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:61
      pragma Import (CPP, exec, "_ZN5LD_BC4execEP9Processor");

      function toStr (this : access LD_BC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:61
      pragma Import (CPP, toStr, "_ZN5LD_BC5toStrEv");

      function opCode (this : access LD_BC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:61
      pragma Import (CPP, opCode, "_ZN5LD_BC6opCodeEv");

      function nbCycles (this : access LD_BC) return int;  -- instruction.hpp:61
      pragma Import (CPP, nbCycles, "_ZN5LD_BC8nbCyclesEv");

      function hasArg (this : access LD_BC) return Extensions.bool;  -- instruction.hpp:61
      pragma Import (CPP, hasArg, "_ZN5LD_BC6hasArgEv");

      procedure setArg (this : access LD_BC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:61
      pragma Import (CPP, setArg, "_ZN5LD_BC6setArgER3ARG");

      function argSize (this : access LD_BC) return int;  -- instruction.hpp:61
      pragma Import (CPP, argSize, "_ZN5LD_BC7argSizeEv");
   end;
   use Class_LD_BC;
   package Class_LD_BD is
      type LD_BD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:62
      end record;
      pragma Import (CPP, LD_BD);

      procedure exec (this : access LD_BD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:62
      pragma Import (CPP, exec, "_ZN5LD_BD4execEP9Processor");

      function toStr (this : access LD_BD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:62
      pragma Import (CPP, toStr, "_ZN5LD_BD5toStrEv");

      function opCode (this : access LD_BD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:62
      pragma Import (CPP, opCode, "_ZN5LD_BD6opCodeEv");

      function nbCycles (this : access LD_BD) return int;  -- instruction.hpp:62
      pragma Import (CPP, nbCycles, "_ZN5LD_BD8nbCyclesEv");

      function hasArg (this : access LD_BD) return Extensions.bool;  -- instruction.hpp:62
      pragma Import (CPP, hasArg, "_ZN5LD_BD6hasArgEv");

      procedure setArg (this : access LD_BD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:62
      pragma Import (CPP, setArg, "_ZN5LD_BD6setArgER3ARG");

      function argSize (this : access LD_BD) return int;  -- instruction.hpp:62
      pragma Import (CPP, argSize, "_ZN5LD_BD7argSizeEv");
   end;
   use Class_LD_BD;
   package Class_LD_BE is
      type LD_BE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:63
      end record;
      pragma Import (CPP, LD_BE);

      procedure exec (this : access LD_BE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:63
      pragma Import (CPP, exec, "_ZN5LD_BE4execEP9Processor");

      function toStr (this : access LD_BE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:63
      pragma Import (CPP, toStr, "_ZN5LD_BE5toStrEv");

      function opCode (this : access LD_BE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:63
      pragma Import (CPP, opCode, "_ZN5LD_BE6opCodeEv");

      function nbCycles (this : access LD_BE) return int;  -- instruction.hpp:63
      pragma Import (CPP, nbCycles, "_ZN5LD_BE8nbCyclesEv");

      function hasArg (this : access LD_BE) return Extensions.bool;  -- instruction.hpp:63
      pragma Import (CPP, hasArg, "_ZN5LD_BE6hasArgEv");

      procedure setArg (this : access LD_BE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:63
      pragma Import (CPP, setArg, "_ZN5LD_BE6setArgER3ARG");

      function argSize (this : access LD_BE) return int;  -- instruction.hpp:63
      pragma Import (CPP, argSize, "_ZN5LD_BE7argSizeEv");
   end;
   use Class_LD_BE;
   package Class_LD_BH is
      type LD_BH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:64
      end record;
      pragma Import (CPP, LD_BH);

      procedure exec (this : access LD_BH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:64
      pragma Import (CPP, exec, "_ZN5LD_BH4execEP9Processor");

      function toStr (this : access LD_BH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:64
      pragma Import (CPP, toStr, "_ZN5LD_BH5toStrEv");

      function opCode (this : access LD_BH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:64
      pragma Import (CPP, opCode, "_ZN5LD_BH6opCodeEv");

      function nbCycles (this : access LD_BH) return int;  -- instruction.hpp:64
      pragma Import (CPP, nbCycles, "_ZN5LD_BH8nbCyclesEv");

      function hasArg (this : access LD_BH) return Extensions.bool;  -- instruction.hpp:64
      pragma Import (CPP, hasArg, "_ZN5LD_BH6hasArgEv");

      procedure setArg (this : access LD_BH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:64
      pragma Import (CPP, setArg, "_ZN5LD_BH6setArgER3ARG");

      function argSize (this : access LD_BH) return int;  -- instruction.hpp:64
      pragma Import (CPP, argSize, "_ZN5LD_BH7argSizeEv");
   end;
   use Class_LD_BH;
   package Class_LD_BL is
      type LD_BL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:65
      end record;
      pragma Import (CPP, LD_BL);

      procedure exec (this : access LD_BL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:65
      pragma Import (CPP, exec, "_ZN5LD_BL4execEP9Processor");

      function toStr (this : access LD_BL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:65
      pragma Import (CPP, toStr, "_ZN5LD_BL5toStrEv");

      function opCode (this : access LD_BL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:65
      pragma Import (CPP, opCode, "_ZN5LD_BL6opCodeEv");

      function nbCycles (this : access LD_BL) return int;  -- instruction.hpp:65
      pragma Import (CPP, nbCycles, "_ZN5LD_BL8nbCyclesEv");

      function hasArg (this : access LD_BL) return Extensions.bool;  -- instruction.hpp:65
      pragma Import (CPP, hasArg, "_ZN5LD_BL6hasArgEv");

      procedure setArg (this : access LD_BL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:65
      pragma Import (CPP, setArg, "_ZN5LD_BL6setArgER3ARG");

      function argSize (this : access LD_BL) return int;  -- instruction.hpp:65
      pragma Import (CPP, argSize, "_ZN5LD_BL7argSizeEv");
   end;
   use Class_LD_BL;
   package Class_LD_BHL is
      type LD_BHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:66
      end record;
      pragma Import (CPP, LD_BHL);

      procedure exec (this : access LD_BHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:66
      pragma Import (CPP, exec, "_ZN6LD_BHL4execEP9Processor");

      function toStr (this : access LD_BHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:66
      pragma Import (CPP, toStr, "_ZN6LD_BHL5toStrEv");

      function opCode (this : access LD_BHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:66
      pragma Import (CPP, opCode, "_ZN6LD_BHL6opCodeEv");

      function nbCycles (this : access LD_BHL) return int;  -- instruction.hpp:66
      pragma Import (CPP, nbCycles, "_ZN6LD_BHL8nbCyclesEv");

      function hasArg (this : access LD_BHL) return Extensions.bool;  -- instruction.hpp:66
      pragma Import (CPP, hasArg, "_ZN6LD_BHL6hasArgEv");

      procedure setArg (this : access LD_BHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:66
      pragma Import (CPP, setArg, "_ZN6LD_BHL6setArgER3ARG");

      function argSize (this : access LD_BHL) return int;  -- instruction.hpp:66
      pragma Import (CPP, argSize, "_ZN6LD_BHL7argSizeEv");
   end;
   use Class_LD_BHL;
   package Class_LD_CA is
      type LD_CA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:67
      end record;
      pragma Import (CPP, LD_CA);

      procedure exec (this : access LD_CA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:67
      pragma Import (CPP, exec, "_ZN5LD_CA4execEP9Processor");

      function toStr (this : access LD_CA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:67
      pragma Import (CPP, toStr, "_ZN5LD_CA5toStrEv");

      function opCode (this : access LD_CA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:67
      pragma Import (CPP, opCode, "_ZN5LD_CA6opCodeEv");

      function nbCycles (this : access LD_CA) return int;  -- instruction.hpp:67
      pragma Import (CPP, nbCycles, "_ZN5LD_CA8nbCyclesEv");

      function hasArg (this : access LD_CA) return Extensions.bool;  -- instruction.hpp:67
      pragma Import (CPP, hasArg, "_ZN5LD_CA6hasArgEv");

      procedure setArg (this : access LD_CA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:67
      pragma Import (CPP, setArg, "_ZN5LD_CA6setArgER3ARG");

      function argSize (this : access LD_CA) return int;  -- instruction.hpp:67
      pragma Import (CPP, argSize, "_ZN5LD_CA7argSizeEv");
   end;
   use Class_LD_CA;
   package Class_LD_CB is
      type LD_CB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:68
      end record;
      pragma Import (CPP, LD_CB);

      procedure exec (this : access LD_CB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:68
      pragma Import (CPP, exec, "_ZN5LD_CB4execEP9Processor");

      function toStr (this : access LD_CB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:68
      pragma Import (CPP, toStr, "_ZN5LD_CB5toStrEv");

      function opCode (this : access LD_CB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:68
      pragma Import (CPP, opCode, "_ZN5LD_CB6opCodeEv");

      function nbCycles (this : access LD_CB) return int;  -- instruction.hpp:68
      pragma Import (CPP, nbCycles, "_ZN5LD_CB8nbCyclesEv");

      function hasArg (this : access LD_CB) return Extensions.bool;  -- instruction.hpp:68
      pragma Import (CPP, hasArg, "_ZN5LD_CB6hasArgEv");

      procedure setArg (this : access LD_CB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:68
      pragma Import (CPP, setArg, "_ZN5LD_CB6setArgER3ARG");

      function argSize (this : access LD_CB) return int;  -- instruction.hpp:68
      pragma Import (CPP, argSize, "_ZN5LD_CB7argSizeEv");
   end;
   use Class_LD_CB;
   package Class_LD_CC is
      type LD_CC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:69
      end record;
      pragma Import (CPP, LD_CC);

      procedure exec (this : access LD_CC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:69
      pragma Import (CPP, exec, "_ZN5LD_CC4execEP9Processor");

      function toStr (this : access LD_CC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:69
      pragma Import (CPP, toStr, "_ZN5LD_CC5toStrEv");

      function opCode (this : access LD_CC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:69
      pragma Import (CPP, opCode, "_ZN5LD_CC6opCodeEv");

      function nbCycles (this : access LD_CC) return int;  -- instruction.hpp:69
      pragma Import (CPP, nbCycles, "_ZN5LD_CC8nbCyclesEv");

      function hasArg (this : access LD_CC) return Extensions.bool;  -- instruction.hpp:69
      pragma Import (CPP, hasArg, "_ZN5LD_CC6hasArgEv");

      procedure setArg (this : access LD_CC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:69
      pragma Import (CPP, setArg, "_ZN5LD_CC6setArgER3ARG");

      function argSize (this : access LD_CC) return int;  -- instruction.hpp:69
      pragma Import (CPP, argSize, "_ZN5LD_CC7argSizeEv");
   end;
   use Class_LD_CC;
   package Class_LD_CD is
      type LD_CD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:70
      end record;
      pragma Import (CPP, LD_CD);

      procedure exec (this : access LD_CD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:70
      pragma Import (CPP, exec, "_ZN5LD_CD4execEP9Processor");

      function toStr (this : access LD_CD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:70
      pragma Import (CPP, toStr, "_ZN5LD_CD5toStrEv");

      function opCode (this : access LD_CD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:70
      pragma Import (CPP, opCode, "_ZN5LD_CD6opCodeEv");

      function nbCycles (this : access LD_CD) return int;  -- instruction.hpp:70
      pragma Import (CPP, nbCycles, "_ZN5LD_CD8nbCyclesEv");

      function hasArg (this : access LD_CD) return Extensions.bool;  -- instruction.hpp:70
      pragma Import (CPP, hasArg, "_ZN5LD_CD6hasArgEv");

      procedure setArg (this : access LD_CD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:70
      pragma Import (CPP, setArg, "_ZN5LD_CD6setArgER3ARG");

      function argSize (this : access LD_CD) return int;  -- instruction.hpp:70
      pragma Import (CPP, argSize, "_ZN5LD_CD7argSizeEv");
   end;
   use Class_LD_CD;
   package Class_LD_CE is
      type LD_CE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:71
      end record;
      pragma Import (CPP, LD_CE);

      procedure exec (this : access LD_CE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:71
      pragma Import (CPP, exec, "_ZN5LD_CE4execEP9Processor");

      function toStr (this : access LD_CE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:71
      pragma Import (CPP, toStr, "_ZN5LD_CE5toStrEv");

      function opCode (this : access LD_CE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:71
      pragma Import (CPP, opCode, "_ZN5LD_CE6opCodeEv");

      function nbCycles (this : access LD_CE) return int;  -- instruction.hpp:71
      pragma Import (CPP, nbCycles, "_ZN5LD_CE8nbCyclesEv");

      function hasArg (this : access LD_CE) return Extensions.bool;  -- instruction.hpp:71
      pragma Import (CPP, hasArg, "_ZN5LD_CE6hasArgEv");

      procedure setArg (this : access LD_CE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:71
      pragma Import (CPP, setArg, "_ZN5LD_CE6setArgER3ARG");

      function argSize (this : access LD_CE) return int;  -- instruction.hpp:71
      pragma Import (CPP, argSize, "_ZN5LD_CE7argSizeEv");
   end;
   use Class_LD_CE;
   package Class_LD_CH is
      type LD_CH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:72
      end record;
      pragma Import (CPP, LD_CH);

      procedure exec (this : access LD_CH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:72
      pragma Import (CPP, exec, "_ZN5LD_CH4execEP9Processor");

      function toStr (this : access LD_CH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:72
      pragma Import (CPP, toStr, "_ZN5LD_CH5toStrEv");

      function opCode (this : access LD_CH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:72
      pragma Import (CPP, opCode, "_ZN5LD_CH6opCodeEv");

      function nbCycles (this : access LD_CH) return int;  -- instruction.hpp:72
      pragma Import (CPP, nbCycles, "_ZN5LD_CH8nbCyclesEv");

      function hasArg (this : access LD_CH) return Extensions.bool;  -- instruction.hpp:72
      pragma Import (CPP, hasArg, "_ZN5LD_CH6hasArgEv");

      procedure setArg (this : access LD_CH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:72
      pragma Import (CPP, setArg, "_ZN5LD_CH6setArgER3ARG");

      function argSize (this : access LD_CH) return int;  -- instruction.hpp:72
      pragma Import (CPP, argSize, "_ZN5LD_CH7argSizeEv");
   end;
   use Class_LD_CH;
   package Class_LD_CL is
      type LD_CL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:73
      end record;
      pragma Import (CPP, LD_CL);

      procedure exec (this : access LD_CL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:73
      pragma Import (CPP, exec, "_ZN5LD_CL4execEP9Processor");

      function toStr (this : access LD_CL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:73
      pragma Import (CPP, toStr, "_ZN5LD_CL5toStrEv");

      function opCode (this : access LD_CL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:73
      pragma Import (CPP, opCode, "_ZN5LD_CL6opCodeEv");

      function nbCycles (this : access LD_CL) return int;  -- instruction.hpp:73
      pragma Import (CPP, nbCycles, "_ZN5LD_CL8nbCyclesEv");

      function hasArg (this : access LD_CL) return Extensions.bool;  -- instruction.hpp:73
      pragma Import (CPP, hasArg, "_ZN5LD_CL6hasArgEv");

      procedure setArg (this : access LD_CL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:73
      pragma Import (CPP, setArg, "_ZN5LD_CL6setArgER3ARG");

      function argSize (this : access LD_CL) return int;  -- instruction.hpp:73
      pragma Import (CPP, argSize, "_ZN5LD_CL7argSizeEv");
   end;
   use Class_LD_CL;
   package Class_LD_CHL is
      type LD_CHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:74
      end record;
      pragma Import (CPP, LD_CHL);

      procedure exec (this : access LD_CHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:74
      pragma Import (CPP, exec, "_ZN6LD_CHL4execEP9Processor");

      function toStr (this : access LD_CHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:74
      pragma Import (CPP, toStr, "_ZN6LD_CHL5toStrEv");

      function opCode (this : access LD_CHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:74
      pragma Import (CPP, opCode, "_ZN6LD_CHL6opCodeEv");

      function nbCycles (this : access LD_CHL) return int;  -- instruction.hpp:74
      pragma Import (CPP, nbCycles, "_ZN6LD_CHL8nbCyclesEv");

      function hasArg (this : access LD_CHL) return Extensions.bool;  -- instruction.hpp:74
      pragma Import (CPP, hasArg, "_ZN6LD_CHL6hasArgEv");

      procedure setArg (this : access LD_CHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:74
      pragma Import (CPP, setArg, "_ZN6LD_CHL6setArgER3ARG");

      function argSize (this : access LD_CHL) return int;  -- instruction.hpp:74
      pragma Import (CPP, argSize, "_ZN6LD_CHL7argSizeEv");
   end;
   use Class_LD_CHL;
   package Class_LD_DA is
      type LD_DA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:75
      end record;
      pragma Import (CPP, LD_DA);

      procedure exec (this : access LD_DA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:75
      pragma Import (CPP, exec, "_ZN5LD_DA4execEP9Processor");

      function toStr (this : access LD_DA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:75
      pragma Import (CPP, toStr, "_ZN5LD_DA5toStrEv");

      function opCode (this : access LD_DA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:75
      pragma Import (CPP, opCode, "_ZN5LD_DA6opCodeEv");

      function nbCycles (this : access LD_DA) return int;  -- instruction.hpp:75
      pragma Import (CPP, nbCycles, "_ZN5LD_DA8nbCyclesEv");

      function hasArg (this : access LD_DA) return Extensions.bool;  -- instruction.hpp:75
      pragma Import (CPP, hasArg, "_ZN5LD_DA6hasArgEv");

      procedure setArg (this : access LD_DA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:75
      pragma Import (CPP, setArg, "_ZN5LD_DA6setArgER3ARG");

      function argSize (this : access LD_DA) return int;  -- instruction.hpp:75
      pragma Import (CPP, argSize, "_ZN5LD_DA7argSizeEv");
   end;
   use Class_LD_DA;
   package Class_LD_DB is
      type LD_DB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:76
      end record;
      pragma Import (CPP, LD_DB);

      procedure exec (this : access LD_DB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:76
      pragma Import (CPP, exec, "_ZN5LD_DB4execEP9Processor");

      function toStr (this : access LD_DB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:76
      pragma Import (CPP, toStr, "_ZN5LD_DB5toStrEv");

      function opCode (this : access LD_DB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:76
      pragma Import (CPP, opCode, "_ZN5LD_DB6opCodeEv");

      function nbCycles (this : access LD_DB) return int;  -- instruction.hpp:76
      pragma Import (CPP, nbCycles, "_ZN5LD_DB8nbCyclesEv");

      function hasArg (this : access LD_DB) return Extensions.bool;  -- instruction.hpp:76
      pragma Import (CPP, hasArg, "_ZN5LD_DB6hasArgEv");

      procedure setArg (this : access LD_DB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:76
      pragma Import (CPP, setArg, "_ZN5LD_DB6setArgER3ARG");

      function argSize (this : access LD_DB) return int;  -- instruction.hpp:76
      pragma Import (CPP, argSize, "_ZN5LD_DB7argSizeEv");
   end;
   use Class_LD_DB;
   package Class_LD_DC is
      type LD_DC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:77
      end record;
      pragma Import (CPP, LD_DC);

      procedure exec (this : access LD_DC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:77
      pragma Import (CPP, exec, "_ZN5LD_DC4execEP9Processor");

      function toStr (this : access LD_DC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:77
      pragma Import (CPP, toStr, "_ZN5LD_DC5toStrEv");

      function opCode (this : access LD_DC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:77
      pragma Import (CPP, opCode, "_ZN5LD_DC6opCodeEv");

      function nbCycles (this : access LD_DC) return int;  -- instruction.hpp:77
      pragma Import (CPP, nbCycles, "_ZN5LD_DC8nbCyclesEv");

      function hasArg (this : access LD_DC) return Extensions.bool;  -- instruction.hpp:77
      pragma Import (CPP, hasArg, "_ZN5LD_DC6hasArgEv");

      procedure setArg (this : access LD_DC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:77
      pragma Import (CPP, setArg, "_ZN5LD_DC6setArgER3ARG");

      function argSize (this : access LD_DC) return int;  -- instruction.hpp:77
      pragma Import (CPP, argSize, "_ZN5LD_DC7argSizeEv");
   end;
   use Class_LD_DC;
   package Class_LD_DD is
      type LD_DD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:78
      end record;
      pragma Import (CPP, LD_DD);

      procedure exec (this : access LD_DD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:78
      pragma Import (CPP, exec, "_ZN5LD_DD4execEP9Processor");

      function toStr (this : access LD_DD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:78
      pragma Import (CPP, toStr, "_ZN5LD_DD5toStrEv");

      function opCode (this : access LD_DD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:78
      pragma Import (CPP, opCode, "_ZN5LD_DD6opCodeEv");

      function nbCycles (this : access LD_DD) return int;  -- instruction.hpp:78
      pragma Import (CPP, nbCycles, "_ZN5LD_DD8nbCyclesEv");

      function hasArg (this : access LD_DD) return Extensions.bool;  -- instruction.hpp:78
      pragma Import (CPP, hasArg, "_ZN5LD_DD6hasArgEv");

      procedure setArg (this : access LD_DD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:78
      pragma Import (CPP, setArg, "_ZN5LD_DD6setArgER3ARG");

      function argSize (this : access LD_DD) return int;  -- instruction.hpp:78
      pragma Import (CPP, argSize, "_ZN5LD_DD7argSizeEv");
   end;
   use Class_LD_DD;
   package Class_LD_DE is
      type LD_DE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:79
      end record;
      pragma Import (CPP, LD_DE);

      procedure exec (this : access LD_DE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:79
      pragma Import (CPP, exec, "_ZN5LD_DE4execEP9Processor");

      function toStr (this : access LD_DE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:79
      pragma Import (CPP, toStr, "_ZN5LD_DE5toStrEv");

      function opCode (this : access LD_DE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:79
      pragma Import (CPP, opCode, "_ZN5LD_DE6opCodeEv");

      function nbCycles (this : access LD_DE) return int;  -- instruction.hpp:79
      pragma Import (CPP, nbCycles, "_ZN5LD_DE8nbCyclesEv");

      function hasArg (this : access LD_DE) return Extensions.bool;  -- instruction.hpp:79
      pragma Import (CPP, hasArg, "_ZN5LD_DE6hasArgEv");

      procedure setArg (this : access LD_DE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:79
      pragma Import (CPP, setArg, "_ZN5LD_DE6setArgER3ARG");

      function argSize (this : access LD_DE) return int;  -- instruction.hpp:79
      pragma Import (CPP, argSize, "_ZN5LD_DE7argSizeEv");
   end;
   use Class_LD_DE;
   package Class_LD_DH is
      type LD_DH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:80
      end record;
      pragma Import (CPP, LD_DH);

      procedure exec (this : access LD_DH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:80
      pragma Import (CPP, exec, "_ZN5LD_DH4execEP9Processor");

      function toStr (this : access LD_DH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:80
      pragma Import (CPP, toStr, "_ZN5LD_DH5toStrEv");

      function opCode (this : access LD_DH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:80
      pragma Import (CPP, opCode, "_ZN5LD_DH6opCodeEv");

      function nbCycles (this : access LD_DH) return int;  -- instruction.hpp:80
      pragma Import (CPP, nbCycles, "_ZN5LD_DH8nbCyclesEv");

      function hasArg (this : access LD_DH) return Extensions.bool;  -- instruction.hpp:80
      pragma Import (CPP, hasArg, "_ZN5LD_DH6hasArgEv");

      procedure setArg (this : access LD_DH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:80
      pragma Import (CPP, setArg, "_ZN5LD_DH6setArgER3ARG");

      function argSize (this : access LD_DH) return int;  -- instruction.hpp:80
      pragma Import (CPP, argSize, "_ZN5LD_DH7argSizeEv");
   end;
   use Class_LD_DH;
   package Class_LD_DL is
      type LD_DL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:81
      end record;
      pragma Import (CPP, LD_DL);

      procedure exec (this : access LD_DL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:81
      pragma Import (CPP, exec, "_ZN5LD_DL4execEP9Processor");

      function toStr (this : access LD_DL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:81
      pragma Import (CPP, toStr, "_ZN5LD_DL5toStrEv");

      function opCode (this : access LD_DL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:81
      pragma Import (CPP, opCode, "_ZN5LD_DL6opCodeEv");

      function nbCycles (this : access LD_DL) return int;  -- instruction.hpp:81
      pragma Import (CPP, nbCycles, "_ZN5LD_DL8nbCyclesEv");

      function hasArg (this : access LD_DL) return Extensions.bool;  -- instruction.hpp:81
      pragma Import (CPP, hasArg, "_ZN5LD_DL6hasArgEv");

      procedure setArg (this : access LD_DL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:81
      pragma Import (CPP, setArg, "_ZN5LD_DL6setArgER3ARG");

      function argSize (this : access LD_DL) return int;  -- instruction.hpp:81
      pragma Import (CPP, argSize, "_ZN5LD_DL7argSizeEv");
   end;
   use Class_LD_DL;
   package Class_LD_DHL is
      type LD_DHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:82
      end record;
      pragma Import (CPP, LD_DHL);

      procedure exec (this : access LD_DHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:82
      pragma Import (CPP, exec, "_ZN6LD_DHL4execEP9Processor");

      function toStr (this : access LD_DHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:82
      pragma Import (CPP, toStr, "_ZN6LD_DHL5toStrEv");

      function opCode (this : access LD_DHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:82
      pragma Import (CPP, opCode, "_ZN6LD_DHL6opCodeEv");

      function nbCycles (this : access LD_DHL) return int;  -- instruction.hpp:82
      pragma Import (CPP, nbCycles, "_ZN6LD_DHL8nbCyclesEv");

      function hasArg (this : access LD_DHL) return Extensions.bool;  -- instruction.hpp:82
      pragma Import (CPP, hasArg, "_ZN6LD_DHL6hasArgEv");

      procedure setArg (this : access LD_DHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:82
      pragma Import (CPP, setArg, "_ZN6LD_DHL6setArgER3ARG");

      function argSize (this : access LD_DHL) return int;  -- instruction.hpp:82
      pragma Import (CPP, argSize, "_ZN6LD_DHL7argSizeEv");
   end;
   use Class_LD_DHL;
   package Class_LD_EA is
      type LD_EA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:83
      end record;
      pragma Import (CPP, LD_EA);

      procedure exec (this : access LD_EA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:83
      pragma Import (CPP, exec, "_ZN5LD_EA4execEP9Processor");

      function toStr (this : access LD_EA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:83
      pragma Import (CPP, toStr, "_ZN5LD_EA5toStrEv");

      function opCode (this : access LD_EA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:83
      pragma Import (CPP, opCode, "_ZN5LD_EA6opCodeEv");

      function nbCycles (this : access LD_EA) return int;  -- instruction.hpp:83
      pragma Import (CPP, nbCycles, "_ZN5LD_EA8nbCyclesEv");

      function hasArg (this : access LD_EA) return Extensions.bool;  -- instruction.hpp:83
      pragma Import (CPP, hasArg, "_ZN5LD_EA6hasArgEv");

      procedure setArg (this : access LD_EA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:83
      pragma Import (CPP, setArg, "_ZN5LD_EA6setArgER3ARG");

      function argSize (this : access LD_EA) return int;  -- instruction.hpp:83
      pragma Import (CPP, argSize, "_ZN5LD_EA7argSizeEv");
   end;
   use Class_LD_EA;
   package Class_LD_EB is
      type LD_EB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:84
      end record;
      pragma Import (CPP, LD_EB);

      procedure exec (this : access LD_EB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:84
      pragma Import (CPP, exec, "_ZN5LD_EB4execEP9Processor");

      function toStr (this : access LD_EB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:84
      pragma Import (CPP, toStr, "_ZN5LD_EB5toStrEv");

      function opCode (this : access LD_EB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:84
      pragma Import (CPP, opCode, "_ZN5LD_EB6opCodeEv");

      function nbCycles (this : access LD_EB) return int;  -- instruction.hpp:84
      pragma Import (CPP, nbCycles, "_ZN5LD_EB8nbCyclesEv");

      function hasArg (this : access LD_EB) return Extensions.bool;  -- instruction.hpp:84
      pragma Import (CPP, hasArg, "_ZN5LD_EB6hasArgEv");

      procedure setArg (this : access LD_EB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:84
      pragma Import (CPP, setArg, "_ZN5LD_EB6setArgER3ARG");

      function argSize (this : access LD_EB) return int;  -- instruction.hpp:84
      pragma Import (CPP, argSize, "_ZN5LD_EB7argSizeEv");
   end;
   use Class_LD_EB;
   package Class_LD_EC is
      type LD_EC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:85
      end record;
      pragma Import (CPP, LD_EC);

      procedure exec (this : access LD_EC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:85
      pragma Import (CPP, exec, "_ZN5LD_EC4execEP9Processor");

      function toStr (this : access LD_EC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:85
      pragma Import (CPP, toStr, "_ZN5LD_EC5toStrEv");

      function opCode (this : access LD_EC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:85
      pragma Import (CPP, opCode, "_ZN5LD_EC6opCodeEv");

      function nbCycles (this : access LD_EC) return int;  -- instruction.hpp:85
      pragma Import (CPP, nbCycles, "_ZN5LD_EC8nbCyclesEv");

      function hasArg (this : access LD_EC) return Extensions.bool;  -- instruction.hpp:85
      pragma Import (CPP, hasArg, "_ZN5LD_EC6hasArgEv");

      procedure setArg (this : access LD_EC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:85
      pragma Import (CPP, setArg, "_ZN5LD_EC6setArgER3ARG");

      function argSize (this : access LD_EC) return int;  -- instruction.hpp:85
      pragma Import (CPP, argSize, "_ZN5LD_EC7argSizeEv");
   end;
   use Class_LD_EC;
   package Class_LD_ED is
      type LD_ED is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:86
      end record;
      pragma Import (CPP, LD_ED);

      procedure exec (this : access LD_ED; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:86
      pragma Import (CPP, exec, "_ZN5LD_ED4execEP9Processor");

      function toStr (this : access LD_ED) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:86
      pragma Import (CPP, toStr, "_ZN5LD_ED5toStrEv");

      function opCode (this : access LD_ED) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:86
      pragma Import (CPP, opCode, "_ZN5LD_ED6opCodeEv");

      function nbCycles (this : access LD_ED) return int;  -- instruction.hpp:86
      pragma Import (CPP, nbCycles, "_ZN5LD_ED8nbCyclesEv");

      function hasArg (this : access LD_ED) return Extensions.bool;  -- instruction.hpp:86
      pragma Import (CPP, hasArg, "_ZN5LD_ED6hasArgEv");

      procedure setArg (this : access LD_ED; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:86
      pragma Import (CPP, setArg, "_ZN5LD_ED6setArgER3ARG");

      function argSize (this : access LD_ED) return int;  -- instruction.hpp:86
      pragma Import (CPP, argSize, "_ZN5LD_ED7argSizeEv");
   end;
   use Class_LD_ED;
   package Class_LD_EE is
      type LD_EE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:87
      end record;
      pragma Import (CPP, LD_EE);

      procedure exec (this : access LD_EE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:87
      pragma Import (CPP, exec, "_ZN5LD_EE4execEP9Processor");

      function toStr (this : access LD_EE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:87
      pragma Import (CPP, toStr, "_ZN5LD_EE5toStrEv");

      function opCode (this : access LD_EE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:87
      pragma Import (CPP, opCode, "_ZN5LD_EE6opCodeEv");

      function nbCycles (this : access LD_EE) return int;  -- instruction.hpp:87
      pragma Import (CPP, nbCycles, "_ZN5LD_EE8nbCyclesEv");

      function hasArg (this : access LD_EE) return Extensions.bool;  -- instruction.hpp:87
      pragma Import (CPP, hasArg, "_ZN5LD_EE6hasArgEv");

      procedure setArg (this : access LD_EE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:87
      pragma Import (CPP, setArg, "_ZN5LD_EE6setArgER3ARG");

      function argSize (this : access LD_EE) return int;  -- instruction.hpp:87
      pragma Import (CPP, argSize, "_ZN5LD_EE7argSizeEv");
   end;
   use Class_LD_EE;
   package Class_LD_EH is
      type LD_EH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:88
      end record;
      pragma Import (CPP, LD_EH);

      procedure exec (this : access LD_EH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:88
      pragma Import (CPP, exec, "_ZN5LD_EH4execEP9Processor");

      function toStr (this : access LD_EH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:88
      pragma Import (CPP, toStr, "_ZN5LD_EH5toStrEv");

      function opCode (this : access LD_EH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:88
      pragma Import (CPP, opCode, "_ZN5LD_EH6opCodeEv");

      function nbCycles (this : access LD_EH) return int;  -- instruction.hpp:88
      pragma Import (CPP, nbCycles, "_ZN5LD_EH8nbCyclesEv");

      function hasArg (this : access LD_EH) return Extensions.bool;  -- instruction.hpp:88
      pragma Import (CPP, hasArg, "_ZN5LD_EH6hasArgEv");

      procedure setArg (this : access LD_EH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:88
      pragma Import (CPP, setArg, "_ZN5LD_EH6setArgER3ARG");

      function argSize (this : access LD_EH) return int;  -- instruction.hpp:88
      pragma Import (CPP, argSize, "_ZN5LD_EH7argSizeEv");
   end;
   use Class_LD_EH;
   package Class_LD_EL is
      type LD_EL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:89
      end record;
      pragma Import (CPP, LD_EL);

      procedure exec (this : access LD_EL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:89
      pragma Import (CPP, exec, "_ZN5LD_EL4execEP9Processor");

      function toStr (this : access LD_EL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:89
      pragma Import (CPP, toStr, "_ZN5LD_EL5toStrEv");

      function opCode (this : access LD_EL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:89
      pragma Import (CPP, opCode, "_ZN5LD_EL6opCodeEv");

      function nbCycles (this : access LD_EL) return int;  -- instruction.hpp:89
      pragma Import (CPP, nbCycles, "_ZN5LD_EL8nbCyclesEv");

      function hasArg (this : access LD_EL) return Extensions.bool;  -- instruction.hpp:89
      pragma Import (CPP, hasArg, "_ZN5LD_EL6hasArgEv");

      procedure setArg (this : access LD_EL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:89
      pragma Import (CPP, setArg, "_ZN5LD_EL6setArgER3ARG");

      function argSize (this : access LD_EL) return int;  -- instruction.hpp:89
      pragma Import (CPP, argSize, "_ZN5LD_EL7argSizeEv");
   end;
   use Class_LD_EL;
   package Class_LD_EHL is
      type LD_EHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:90
      end record;
      pragma Import (CPP, LD_EHL);

      procedure exec (this : access LD_EHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:90
      pragma Import (CPP, exec, "_ZN6LD_EHL4execEP9Processor");

      function toStr (this : access LD_EHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:90
      pragma Import (CPP, toStr, "_ZN6LD_EHL5toStrEv");

      function opCode (this : access LD_EHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:90
      pragma Import (CPP, opCode, "_ZN6LD_EHL6opCodeEv");

      function nbCycles (this : access LD_EHL) return int;  -- instruction.hpp:90
      pragma Import (CPP, nbCycles, "_ZN6LD_EHL8nbCyclesEv");

      function hasArg (this : access LD_EHL) return Extensions.bool;  -- instruction.hpp:90
      pragma Import (CPP, hasArg, "_ZN6LD_EHL6hasArgEv");

      procedure setArg (this : access LD_EHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:90
      pragma Import (CPP, setArg, "_ZN6LD_EHL6setArgER3ARG");

      function argSize (this : access LD_EHL) return int;  -- instruction.hpp:90
      pragma Import (CPP, argSize, "_ZN6LD_EHL7argSizeEv");
   end;
   use Class_LD_EHL;
   package Class_LD_HA is
      type LD_HA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:91
      end record;
      pragma Import (CPP, LD_HA);

      procedure exec (this : access LD_HA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:91
      pragma Import (CPP, exec, "_ZN5LD_HA4execEP9Processor");

      function toStr (this : access LD_HA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:91
      pragma Import (CPP, toStr, "_ZN5LD_HA5toStrEv");

      function opCode (this : access LD_HA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:91
      pragma Import (CPP, opCode, "_ZN5LD_HA6opCodeEv");

      function nbCycles (this : access LD_HA) return int;  -- instruction.hpp:91
      pragma Import (CPP, nbCycles, "_ZN5LD_HA8nbCyclesEv");

      function hasArg (this : access LD_HA) return Extensions.bool;  -- instruction.hpp:91
      pragma Import (CPP, hasArg, "_ZN5LD_HA6hasArgEv");

      procedure setArg (this : access LD_HA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:91
      pragma Import (CPP, setArg, "_ZN5LD_HA6setArgER3ARG");

      function argSize (this : access LD_HA) return int;  -- instruction.hpp:91
      pragma Import (CPP, argSize, "_ZN5LD_HA7argSizeEv");
   end;
   use Class_LD_HA;
   package Class_LD_HB is
      type LD_HB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:92
      end record;
      pragma Import (CPP, LD_HB);

      procedure exec (this : access LD_HB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:92
      pragma Import (CPP, exec, "_ZN5LD_HB4execEP9Processor");

      function toStr (this : access LD_HB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:92
      pragma Import (CPP, toStr, "_ZN5LD_HB5toStrEv");

      function opCode (this : access LD_HB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:92
      pragma Import (CPP, opCode, "_ZN5LD_HB6opCodeEv");

      function nbCycles (this : access LD_HB) return int;  -- instruction.hpp:92
      pragma Import (CPP, nbCycles, "_ZN5LD_HB8nbCyclesEv");

      function hasArg (this : access LD_HB) return Extensions.bool;  -- instruction.hpp:92
      pragma Import (CPP, hasArg, "_ZN5LD_HB6hasArgEv");

      procedure setArg (this : access LD_HB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:92
      pragma Import (CPP, setArg, "_ZN5LD_HB6setArgER3ARG");

      function argSize (this : access LD_HB) return int;  -- instruction.hpp:92
      pragma Import (CPP, argSize, "_ZN5LD_HB7argSizeEv");
   end;
   use Class_LD_HB;
   package Class_LD_HC is
      type LD_HC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:93
      end record;
      pragma Import (CPP, LD_HC);

      procedure exec (this : access LD_HC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:93
      pragma Import (CPP, exec, "_ZN5LD_HC4execEP9Processor");

      function toStr (this : access LD_HC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:93
      pragma Import (CPP, toStr, "_ZN5LD_HC5toStrEv");

      function opCode (this : access LD_HC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:93
      pragma Import (CPP, opCode, "_ZN5LD_HC6opCodeEv");

      function nbCycles (this : access LD_HC) return int;  -- instruction.hpp:93
      pragma Import (CPP, nbCycles, "_ZN5LD_HC8nbCyclesEv");

      function hasArg (this : access LD_HC) return Extensions.bool;  -- instruction.hpp:93
      pragma Import (CPP, hasArg, "_ZN5LD_HC6hasArgEv");

      procedure setArg (this : access LD_HC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:93
      pragma Import (CPP, setArg, "_ZN5LD_HC6setArgER3ARG");

      function argSize (this : access LD_HC) return int;  -- instruction.hpp:93
      pragma Import (CPP, argSize, "_ZN5LD_HC7argSizeEv");
   end;
   use Class_LD_HC;
   package Class_LD_HD is
      type LD_HD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:94
      end record;
      pragma Import (CPP, LD_HD);

      procedure exec (this : access LD_HD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:94
      pragma Import (CPP, exec, "_ZN5LD_HD4execEP9Processor");

      function toStr (this : access LD_HD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:94
      pragma Import (CPP, toStr, "_ZN5LD_HD5toStrEv");

      function opCode (this : access LD_HD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:94
      pragma Import (CPP, opCode, "_ZN5LD_HD6opCodeEv");

      function nbCycles (this : access LD_HD) return int;  -- instruction.hpp:94
      pragma Import (CPP, nbCycles, "_ZN5LD_HD8nbCyclesEv");

      function hasArg (this : access LD_HD) return Extensions.bool;  -- instruction.hpp:94
      pragma Import (CPP, hasArg, "_ZN5LD_HD6hasArgEv");

      procedure setArg (this : access LD_HD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:94
      pragma Import (CPP, setArg, "_ZN5LD_HD6setArgER3ARG");

      function argSize (this : access LD_HD) return int;  -- instruction.hpp:94
      pragma Import (CPP, argSize, "_ZN5LD_HD7argSizeEv");
   end;
   use Class_LD_HD;
   package Class_LD_HE is
      type LD_HE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:95
      end record;
      pragma Import (CPP, LD_HE);

      procedure exec (this : access LD_HE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:95
      pragma Import (CPP, exec, "_ZN5LD_HE4execEP9Processor");

      function toStr (this : access LD_HE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:95
      pragma Import (CPP, toStr, "_ZN5LD_HE5toStrEv");

      function opCode (this : access LD_HE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:95
      pragma Import (CPP, opCode, "_ZN5LD_HE6opCodeEv");

      function nbCycles (this : access LD_HE) return int;  -- instruction.hpp:95
      pragma Import (CPP, nbCycles, "_ZN5LD_HE8nbCyclesEv");

      function hasArg (this : access LD_HE) return Extensions.bool;  -- instruction.hpp:95
      pragma Import (CPP, hasArg, "_ZN5LD_HE6hasArgEv");

      procedure setArg (this : access LD_HE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:95
      pragma Import (CPP, setArg, "_ZN5LD_HE6setArgER3ARG");

      function argSize (this : access LD_HE) return int;  -- instruction.hpp:95
      pragma Import (CPP, argSize, "_ZN5LD_HE7argSizeEv");
   end;
   use Class_LD_HE;
   package Class_LD_HH is
      type LD_HH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:96
      end record;
      pragma Import (CPP, LD_HH);

      procedure exec (this : access LD_HH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:96
      pragma Import (CPP, exec, "_ZN5LD_HH4execEP9Processor");

      function toStr (this : access LD_HH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:96
      pragma Import (CPP, toStr, "_ZN5LD_HH5toStrEv");

      function opCode (this : access LD_HH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:96
      pragma Import (CPP, opCode, "_ZN5LD_HH6opCodeEv");

      function nbCycles (this : access LD_HH) return int;  -- instruction.hpp:96
      pragma Import (CPP, nbCycles, "_ZN5LD_HH8nbCyclesEv");

      function hasArg (this : access LD_HH) return Extensions.bool;  -- instruction.hpp:96
      pragma Import (CPP, hasArg, "_ZN5LD_HH6hasArgEv");

      procedure setArg (this : access LD_HH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:96
      pragma Import (CPP, setArg, "_ZN5LD_HH6setArgER3ARG");

      function argSize (this : access LD_HH) return int;  -- instruction.hpp:96
      pragma Import (CPP, argSize, "_ZN5LD_HH7argSizeEv");
   end;
   use Class_LD_HH;
   package Class_LD_HL is
      type LD_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:97
      end record;
      pragma Import (CPP, LD_HL);

      procedure exec (this : access LD_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:97
      pragma Import (CPP, exec, "_ZN5LD_HL4execEP9Processor");

      function toStr (this : access LD_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:97
      pragma Import (CPP, toStr, "_ZN5LD_HL5toStrEv");

      function opCode (this : access LD_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:97
      pragma Import (CPP, opCode, "_ZN5LD_HL6opCodeEv");

      function nbCycles (this : access LD_HL) return int;  -- instruction.hpp:97
      pragma Import (CPP, nbCycles, "_ZN5LD_HL8nbCyclesEv");

      function hasArg (this : access LD_HL) return Extensions.bool;  -- instruction.hpp:97
      pragma Import (CPP, hasArg, "_ZN5LD_HL6hasArgEv");

      procedure setArg (this : access LD_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:97
      pragma Import (CPP, setArg, "_ZN5LD_HL6setArgER3ARG");

      function argSize (this : access LD_HL) return int;  -- instruction.hpp:97
      pragma Import (CPP, argSize, "_ZN5LD_HL7argSizeEv");
   end;
   use Class_LD_HL;
   package Class_LD_HHL is
      type LD_HHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:98
      end record;
      pragma Import (CPP, LD_HHL);

      procedure exec (this : access LD_HHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:98
      pragma Import (CPP, exec, "_ZN6LD_HHL4execEP9Processor");

      function toStr (this : access LD_HHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:98
      pragma Import (CPP, toStr, "_ZN6LD_HHL5toStrEv");

      function opCode (this : access LD_HHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:98
      pragma Import (CPP, opCode, "_ZN6LD_HHL6opCodeEv");

      function nbCycles (this : access LD_HHL) return int;  -- instruction.hpp:98
      pragma Import (CPP, nbCycles, "_ZN6LD_HHL8nbCyclesEv");

      function hasArg (this : access LD_HHL) return Extensions.bool;  -- instruction.hpp:98
      pragma Import (CPP, hasArg, "_ZN6LD_HHL6hasArgEv");

      procedure setArg (this : access LD_HHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:98
      pragma Import (CPP, setArg, "_ZN6LD_HHL6setArgER3ARG");

      function argSize (this : access LD_HHL) return int;  -- instruction.hpp:98
      pragma Import (CPP, argSize, "_ZN6LD_HHL7argSizeEv");
   end;
   use Class_LD_HHL;
   package Class_LD_LA is
      type LD_LA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:99
      end record;
      pragma Import (CPP, LD_LA);

      procedure exec (this : access LD_LA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:99
      pragma Import (CPP, exec, "_ZN5LD_LA4execEP9Processor");

      function toStr (this : access LD_LA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:99
      pragma Import (CPP, toStr, "_ZN5LD_LA5toStrEv");

      function opCode (this : access LD_LA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:99
      pragma Import (CPP, opCode, "_ZN5LD_LA6opCodeEv");

      function nbCycles (this : access LD_LA) return int;  -- instruction.hpp:99
      pragma Import (CPP, nbCycles, "_ZN5LD_LA8nbCyclesEv");

      function hasArg (this : access LD_LA) return Extensions.bool;  -- instruction.hpp:99
      pragma Import (CPP, hasArg, "_ZN5LD_LA6hasArgEv");

      procedure setArg (this : access LD_LA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:99
      pragma Import (CPP, setArg, "_ZN5LD_LA6setArgER3ARG");

      function argSize (this : access LD_LA) return int;  -- instruction.hpp:99
      pragma Import (CPP, argSize, "_ZN5LD_LA7argSizeEv");
   end;
   use Class_LD_LA;
   package Class_LD_LB is
      type LD_LB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:100
      end record;
      pragma Import (CPP, LD_LB);

      procedure exec (this : access LD_LB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:100
      pragma Import (CPP, exec, "_ZN5LD_LB4execEP9Processor");

      function toStr (this : access LD_LB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:100
      pragma Import (CPP, toStr, "_ZN5LD_LB5toStrEv");

      function opCode (this : access LD_LB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:100
      pragma Import (CPP, opCode, "_ZN5LD_LB6opCodeEv");

      function nbCycles (this : access LD_LB) return int;  -- instruction.hpp:100
      pragma Import (CPP, nbCycles, "_ZN5LD_LB8nbCyclesEv");

      function hasArg (this : access LD_LB) return Extensions.bool;  -- instruction.hpp:100
      pragma Import (CPP, hasArg, "_ZN5LD_LB6hasArgEv");

      procedure setArg (this : access LD_LB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:100
      pragma Import (CPP, setArg, "_ZN5LD_LB6setArgER3ARG");

      function argSize (this : access LD_LB) return int;  -- instruction.hpp:100
      pragma Import (CPP, argSize, "_ZN5LD_LB7argSizeEv");
   end;
   use Class_LD_LB;
   package Class_LD_LC is
      type LD_LC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:101
      end record;
      pragma Import (CPP, LD_LC);

      procedure exec (this : access LD_LC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:101
      pragma Import (CPP, exec, "_ZN5LD_LC4execEP9Processor");

      function toStr (this : access LD_LC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:101
      pragma Import (CPP, toStr, "_ZN5LD_LC5toStrEv");

      function opCode (this : access LD_LC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:101
      pragma Import (CPP, opCode, "_ZN5LD_LC6opCodeEv");

      function nbCycles (this : access LD_LC) return int;  -- instruction.hpp:101
      pragma Import (CPP, nbCycles, "_ZN5LD_LC8nbCyclesEv");

      function hasArg (this : access LD_LC) return Extensions.bool;  -- instruction.hpp:101
      pragma Import (CPP, hasArg, "_ZN5LD_LC6hasArgEv");

      procedure setArg (this : access LD_LC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:101
      pragma Import (CPP, setArg, "_ZN5LD_LC6setArgER3ARG");

      function argSize (this : access LD_LC) return int;  -- instruction.hpp:101
      pragma Import (CPP, argSize, "_ZN5LD_LC7argSizeEv");
   end;
   use Class_LD_LC;
   package Class_LD_LD is
      type LD_LD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:102
      end record;
      pragma Import (CPP, LD_LD);

      procedure exec (this : access LD_LD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:102
      pragma Import (CPP, exec, "_ZN5LD_LD4execEP9Processor");

      function toStr (this : access LD_LD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:102
      pragma Import (CPP, toStr, "_ZN5LD_LD5toStrEv");

      function opCode (this : access LD_LD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:102
      pragma Import (CPP, opCode, "_ZN5LD_LD6opCodeEv");

      function nbCycles (this : access LD_LD) return int;  -- instruction.hpp:102
      pragma Import (CPP, nbCycles, "_ZN5LD_LD8nbCyclesEv");

      function hasArg (this : access LD_LD) return Extensions.bool;  -- instruction.hpp:102
      pragma Import (CPP, hasArg, "_ZN5LD_LD6hasArgEv");

      procedure setArg (this : access LD_LD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:102
      pragma Import (CPP, setArg, "_ZN5LD_LD6setArgER3ARG");

      function argSize (this : access LD_LD) return int;  -- instruction.hpp:102
      pragma Import (CPP, argSize, "_ZN5LD_LD7argSizeEv");
   end;
   use Class_LD_LD;
   package Class_LD_LE is
      type LD_LE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:103
      end record;
      pragma Import (CPP, LD_LE);

      procedure exec (this : access LD_LE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:103
      pragma Import (CPP, exec, "_ZN5LD_LE4execEP9Processor");

      function toStr (this : access LD_LE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:103
      pragma Import (CPP, toStr, "_ZN5LD_LE5toStrEv");

      function opCode (this : access LD_LE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:103
      pragma Import (CPP, opCode, "_ZN5LD_LE6opCodeEv");

      function nbCycles (this : access LD_LE) return int;  -- instruction.hpp:103
      pragma Import (CPP, nbCycles, "_ZN5LD_LE8nbCyclesEv");

      function hasArg (this : access LD_LE) return Extensions.bool;  -- instruction.hpp:103
      pragma Import (CPP, hasArg, "_ZN5LD_LE6hasArgEv");

      procedure setArg (this : access LD_LE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:103
      pragma Import (CPP, setArg, "_ZN5LD_LE6setArgER3ARG");

      function argSize (this : access LD_LE) return int;  -- instruction.hpp:103
      pragma Import (CPP, argSize, "_ZN5LD_LE7argSizeEv");
   end;
   use Class_LD_LE;
   package Class_LD_LH is
      type LD_LH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:104
      end record;
      pragma Import (CPP, LD_LH);

      procedure exec (this : access LD_LH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:104
      pragma Import (CPP, exec, "_ZN5LD_LH4execEP9Processor");

      function toStr (this : access LD_LH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:104
      pragma Import (CPP, toStr, "_ZN5LD_LH5toStrEv");

      function opCode (this : access LD_LH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:104
      pragma Import (CPP, opCode, "_ZN5LD_LH6opCodeEv");

      function nbCycles (this : access LD_LH) return int;  -- instruction.hpp:104
      pragma Import (CPP, nbCycles, "_ZN5LD_LH8nbCyclesEv");

      function hasArg (this : access LD_LH) return Extensions.bool;  -- instruction.hpp:104
      pragma Import (CPP, hasArg, "_ZN5LD_LH6hasArgEv");

      procedure setArg (this : access LD_LH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:104
      pragma Import (CPP, setArg, "_ZN5LD_LH6setArgER3ARG");

      function argSize (this : access LD_LH) return int;  -- instruction.hpp:104
      pragma Import (CPP, argSize, "_ZN5LD_LH7argSizeEv");
   end;
   use Class_LD_LH;
   package Class_LD_LL is
      type LD_LL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:105
      end record;
      pragma Import (CPP, LD_LL);

      procedure exec (this : access LD_LL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:105
      pragma Import (CPP, exec, "_ZN5LD_LL4execEP9Processor");

      function toStr (this : access LD_LL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:105
      pragma Import (CPP, toStr, "_ZN5LD_LL5toStrEv");

      function opCode (this : access LD_LL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:105
      pragma Import (CPP, opCode, "_ZN5LD_LL6opCodeEv");

      function nbCycles (this : access LD_LL) return int;  -- instruction.hpp:105
      pragma Import (CPP, nbCycles, "_ZN5LD_LL8nbCyclesEv");

      function hasArg (this : access LD_LL) return Extensions.bool;  -- instruction.hpp:105
      pragma Import (CPP, hasArg, "_ZN5LD_LL6hasArgEv");

      procedure setArg (this : access LD_LL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:105
      pragma Import (CPP, setArg, "_ZN5LD_LL6setArgER3ARG");

      function argSize (this : access LD_LL) return int;  -- instruction.hpp:105
      pragma Import (CPP, argSize, "_ZN5LD_LL7argSizeEv");
   end;
   use Class_LD_LL;
   package Class_LD_LHL is
      type LD_LHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:106
      end record;
      pragma Import (CPP, LD_LHL);

      procedure exec (this : access LD_LHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:106
      pragma Import (CPP, exec, "_ZN6LD_LHL4execEP9Processor");

      function toStr (this : access LD_LHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:106
      pragma Import (CPP, toStr, "_ZN6LD_LHL5toStrEv");

      function opCode (this : access LD_LHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:106
      pragma Import (CPP, opCode, "_ZN6LD_LHL6opCodeEv");

      function nbCycles (this : access LD_LHL) return int;  -- instruction.hpp:106
      pragma Import (CPP, nbCycles, "_ZN6LD_LHL8nbCyclesEv");

      function hasArg (this : access LD_LHL) return Extensions.bool;  -- instruction.hpp:106
      pragma Import (CPP, hasArg, "_ZN6LD_LHL6hasArgEv");

      procedure setArg (this : access LD_LHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:106
      pragma Import (CPP, setArg, "_ZN6LD_LHL6setArgER3ARG");

      function argSize (this : access LD_LHL) return int;  -- instruction.hpp:106
      pragma Import (CPP, argSize, "_ZN6LD_LHL7argSizeEv");
   end;
   use Class_LD_LHL;
   package Class_LD_HLB is
      type LD_HLB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:107
      end record;
      pragma Import (CPP, LD_HLB);

      procedure exec (this : access LD_HLB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:107
      pragma Import (CPP, exec, "_ZN6LD_HLB4execEP9Processor");

      function toStr (this : access LD_HLB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:107
      pragma Import (CPP, toStr, "_ZN6LD_HLB5toStrEv");

      function opCode (this : access LD_HLB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:107
      pragma Import (CPP, opCode, "_ZN6LD_HLB6opCodeEv");

      function nbCycles (this : access LD_HLB) return int;  -- instruction.hpp:107
      pragma Import (CPP, nbCycles, "_ZN6LD_HLB8nbCyclesEv");

      function hasArg (this : access LD_HLB) return Extensions.bool;  -- instruction.hpp:107
      pragma Import (CPP, hasArg, "_ZN6LD_HLB6hasArgEv");

      procedure setArg (this : access LD_HLB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:107
      pragma Import (CPP, setArg, "_ZN6LD_HLB6setArgER3ARG");

      function argSize (this : access LD_HLB) return int;  -- instruction.hpp:107
      pragma Import (CPP, argSize, "_ZN6LD_HLB7argSizeEv");
   end;
   use Class_LD_HLB;
   package Class_LD_HLC is
      type LD_HLC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:108
      end record;
      pragma Import (CPP, LD_HLC);

      procedure exec (this : access LD_HLC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:108
      pragma Import (CPP, exec, "_ZN6LD_HLC4execEP9Processor");

      function toStr (this : access LD_HLC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:108
      pragma Import (CPP, toStr, "_ZN6LD_HLC5toStrEv");

      function opCode (this : access LD_HLC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:108
      pragma Import (CPP, opCode, "_ZN6LD_HLC6opCodeEv");

      function nbCycles (this : access LD_HLC) return int;  -- instruction.hpp:108
      pragma Import (CPP, nbCycles, "_ZN6LD_HLC8nbCyclesEv");

      function hasArg (this : access LD_HLC) return Extensions.bool;  -- instruction.hpp:108
      pragma Import (CPP, hasArg, "_ZN6LD_HLC6hasArgEv");

      procedure setArg (this : access LD_HLC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:108
      pragma Import (CPP, setArg, "_ZN6LD_HLC6setArgER3ARG");

      function argSize (this : access LD_HLC) return int;  -- instruction.hpp:108
      pragma Import (CPP, argSize, "_ZN6LD_HLC7argSizeEv");
   end;
   use Class_LD_HLC;
   package Class_LD_HLD is
      type LD_HLD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:109
      end record;
      pragma Import (CPP, LD_HLD);

      procedure exec (this : access LD_HLD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:109
      pragma Import (CPP, exec, "_ZN6LD_HLD4execEP9Processor");

      function toStr (this : access LD_HLD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:109
      pragma Import (CPP, toStr, "_ZN6LD_HLD5toStrEv");

      function opCode (this : access LD_HLD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:109
      pragma Import (CPP, opCode, "_ZN6LD_HLD6opCodeEv");

      function nbCycles (this : access LD_HLD) return int;  -- instruction.hpp:109
      pragma Import (CPP, nbCycles, "_ZN6LD_HLD8nbCyclesEv");

      function hasArg (this : access LD_HLD) return Extensions.bool;  -- instruction.hpp:109
      pragma Import (CPP, hasArg, "_ZN6LD_HLD6hasArgEv");

      procedure setArg (this : access LD_HLD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:109
      pragma Import (CPP, setArg, "_ZN6LD_HLD6setArgER3ARG");

      function argSize (this : access LD_HLD) return int;  -- instruction.hpp:109
      pragma Import (CPP, argSize, "_ZN6LD_HLD7argSizeEv");
   end;
   use Class_LD_HLD;
   package Class_LD_HLE is
      type LD_HLE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:110
      end record;
      pragma Import (CPP, LD_HLE);

      procedure exec (this : access LD_HLE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:110
      pragma Import (CPP, exec, "_ZN6LD_HLE4execEP9Processor");

      function toStr (this : access LD_HLE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:110
      pragma Import (CPP, toStr, "_ZN6LD_HLE5toStrEv");

      function opCode (this : access LD_HLE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:110
      pragma Import (CPP, opCode, "_ZN6LD_HLE6opCodeEv");

      function nbCycles (this : access LD_HLE) return int;  -- instruction.hpp:110
      pragma Import (CPP, nbCycles, "_ZN6LD_HLE8nbCyclesEv");

      function hasArg (this : access LD_HLE) return Extensions.bool;  -- instruction.hpp:110
      pragma Import (CPP, hasArg, "_ZN6LD_HLE6hasArgEv");

      procedure setArg (this : access LD_HLE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:110
      pragma Import (CPP, setArg, "_ZN6LD_HLE6setArgER3ARG");

      function argSize (this : access LD_HLE) return int;  -- instruction.hpp:110
      pragma Import (CPP, argSize, "_ZN6LD_HLE7argSizeEv");
   end;
   use Class_LD_HLE;
   package Class_LD_HLH is
      type LD_HLH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:111
      end record;
      pragma Import (CPP, LD_HLH);

      procedure exec (this : access LD_HLH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:111
      pragma Import (CPP, exec, "_ZN6LD_HLH4execEP9Processor");

      function toStr (this : access LD_HLH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:111
      pragma Import (CPP, toStr, "_ZN6LD_HLH5toStrEv");

      function opCode (this : access LD_HLH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:111
      pragma Import (CPP, opCode, "_ZN6LD_HLH6opCodeEv");

      function nbCycles (this : access LD_HLH) return int;  -- instruction.hpp:111
      pragma Import (CPP, nbCycles, "_ZN6LD_HLH8nbCyclesEv");

      function hasArg (this : access LD_HLH) return Extensions.bool;  -- instruction.hpp:111
      pragma Import (CPP, hasArg, "_ZN6LD_HLH6hasArgEv");

      procedure setArg (this : access LD_HLH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:111
      pragma Import (CPP, setArg, "_ZN6LD_HLH6setArgER3ARG");

      function argSize (this : access LD_HLH) return int;  -- instruction.hpp:111
      pragma Import (CPP, argSize, "_ZN6LD_HLH7argSizeEv");
   end;
   use Class_LD_HLH;
   package Class_LD_HLL is
      type LD_HLL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:112
      end record;
      pragma Import (CPP, LD_HLL);

      procedure exec (this : access LD_HLL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:112
      pragma Import (CPP, exec, "_ZN6LD_HLL4execEP9Processor");

      function toStr (this : access LD_HLL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:112
      pragma Import (CPP, toStr, "_ZN6LD_HLL5toStrEv");

      function opCode (this : access LD_HLL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:112
      pragma Import (CPP, opCode, "_ZN6LD_HLL6opCodeEv");

      function nbCycles (this : access LD_HLL) return int;  -- instruction.hpp:112
      pragma Import (CPP, nbCycles, "_ZN6LD_HLL8nbCyclesEv");

      function hasArg (this : access LD_HLL) return Extensions.bool;  -- instruction.hpp:112
      pragma Import (CPP, hasArg, "_ZN6LD_HLL6hasArgEv");

      procedure setArg (this : access LD_HLL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:112
      pragma Import (CPP, setArg, "_ZN6LD_HLL6setArgER3ARG");

      function argSize (this : access LD_HLL) return int;  -- instruction.hpp:112
      pragma Import (CPP, argSize, "_ZN6LD_HLL7argSizeEv");
   end;
   use Class_LD_HLL;
   package Class_LD_HLn is
      type LD_HLn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:113
      end record;
      pragma Import (CPP, LD_HLn);

      procedure exec (this : access LD_HLn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:113
      pragma Import (CPP, exec, "_ZN6LD_HLn4execEP9Processor");

      function toStr (this : access LD_HLn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:113
      pragma Import (CPP, toStr, "_ZN6LD_HLn5toStrEv");

      function opCode (this : access LD_HLn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:113
      pragma Import (CPP, opCode, "_ZN6LD_HLn6opCodeEv");

      function nbCycles (this : access LD_HLn) return int;  -- instruction.hpp:113
      pragma Import (CPP, nbCycles, "_ZN6LD_HLn8nbCyclesEv");

      function hasArg (this : access LD_HLn) return Extensions.bool;  -- instruction.hpp:113
      pragma Import (CPP, hasArg, "_ZN6LD_HLn6hasArgEv");

      procedure setArg (this : access LD_HLn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:113
      pragma Import (CPP, setArg, "_ZN6LD_HLn6setArgER3ARG");

      function argSize (this : access LD_HLn) return int;  -- instruction.hpp:113
      pragma Import (CPP, argSize, "_ZN6LD_HLn7argSizeEv");
   end;
   use Class_LD_HLn;
   package Class_LD_ABC is
      type LD_ABC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:115
      end record;
      pragma Import (CPP, LD_ABC);

      procedure exec (this : access LD_ABC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:115
      pragma Import (CPP, exec, "_ZN6LD_ABC4execEP9Processor");

      function toStr (this : access LD_ABC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:115
      pragma Import (CPP, toStr, "_ZN6LD_ABC5toStrEv");

      function opCode (this : access LD_ABC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:115
      pragma Import (CPP, opCode, "_ZN6LD_ABC6opCodeEv");

      function nbCycles (this : access LD_ABC) return int;  -- instruction.hpp:115
      pragma Import (CPP, nbCycles, "_ZN6LD_ABC8nbCyclesEv");

      function hasArg (this : access LD_ABC) return Extensions.bool;  -- instruction.hpp:115
      pragma Import (CPP, hasArg, "_ZN6LD_ABC6hasArgEv");

      procedure setArg (this : access LD_ABC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:115
      pragma Import (CPP, setArg, "_ZN6LD_ABC6setArgER3ARG");

      function argSize (this : access LD_ABC) return int;  -- instruction.hpp:115
      pragma Import (CPP, argSize, "_ZN6LD_ABC7argSizeEv");
   end;
   use Class_LD_ABC;
   package Class_LD_BCA is
      type LD_BCA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:116
      end record;
      pragma Import (CPP, LD_BCA);

      procedure exec (this : access LD_BCA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:116
      pragma Import (CPP, exec, "_ZN6LD_BCA4execEP9Processor");

      function toStr (this : access LD_BCA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:116
      pragma Import (CPP, toStr, "_ZN6LD_BCA5toStrEv");

      function opCode (this : access LD_BCA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:116
      pragma Import (CPP, opCode, "_ZN6LD_BCA6opCodeEv");

      function nbCycles (this : access LD_BCA) return int;  -- instruction.hpp:116
      pragma Import (CPP, nbCycles, "_ZN6LD_BCA8nbCyclesEv");

      function hasArg (this : access LD_BCA) return Extensions.bool;  -- instruction.hpp:116
      pragma Import (CPP, hasArg, "_ZN6LD_BCA6hasArgEv");

      procedure setArg (this : access LD_BCA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:116
      pragma Import (CPP, setArg, "_ZN6LD_BCA6setArgER3ARG");

      function argSize (this : access LD_BCA) return int;  -- instruction.hpp:116
      pragma Import (CPP, argSize, "_ZN6LD_BCA7argSizeEv");
   end;
   use Class_LD_BCA;
   package Class_LD_ADE is
      type LD_ADE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:117
      end record;
      pragma Import (CPP, LD_ADE);

      procedure exec (this : access LD_ADE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:117
      pragma Import (CPP, exec, "_ZN6LD_ADE4execEP9Processor");

      function toStr (this : access LD_ADE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:117
      pragma Import (CPP, toStr, "_ZN6LD_ADE5toStrEv");

      function opCode (this : access LD_ADE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:117
      pragma Import (CPP, opCode, "_ZN6LD_ADE6opCodeEv");

      function nbCycles (this : access LD_ADE) return int;  -- instruction.hpp:117
      pragma Import (CPP, nbCycles, "_ZN6LD_ADE8nbCyclesEv");

      function hasArg (this : access LD_ADE) return Extensions.bool;  -- instruction.hpp:117
      pragma Import (CPP, hasArg, "_ZN6LD_ADE6hasArgEv");

      procedure setArg (this : access LD_ADE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:117
      pragma Import (CPP, setArg, "_ZN6LD_ADE6setArgER3ARG");

      function argSize (this : access LD_ADE) return int;  -- instruction.hpp:117
      pragma Import (CPP, argSize, "_ZN6LD_ADE7argSizeEv");
   end;
   use Class_LD_ADE;
   package Class_LD_DEA is
      type LD_DEA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:118
      end record;
      pragma Import (CPP, LD_DEA);

      procedure exec (this : access LD_DEA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:118
      pragma Import (CPP, exec, "_ZN6LD_DEA4execEP9Processor");

      function toStr (this : access LD_DEA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:118
      pragma Import (CPP, toStr, "_ZN6LD_DEA5toStrEv");

      function opCode (this : access LD_DEA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:118
      pragma Import (CPP, opCode, "_ZN6LD_DEA6opCodeEv");

      function nbCycles (this : access LD_DEA) return int;  -- instruction.hpp:118
      pragma Import (CPP, nbCycles, "_ZN6LD_DEA8nbCyclesEv");

      function hasArg (this : access LD_DEA) return Extensions.bool;  -- instruction.hpp:118
      pragma Import (CPP, hasArg, "_ZN6LD_DEA6hasArgEv");

      procedure setArg (this : access LD_DEA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:118
      pragma Import (CPP, setArg, "_ZN6LD_DEA6setArgER3ARG");

      function argSize (this : access LD_DEA) return int;  -- instruction.hpp:118
      pragma Import (CPP, argSize, "_ZN6LD_DEA7argSizeEv");
   end;
   use Class_LD_DEA;
   package Class_LD_HLA is
      type LD_HLA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:119
      end record;
      pragma Import (CPP, LD_HLA);

      procedure exec (this : access LD_HLA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:119
      pragma Import (CPP, exec, "_ZN6LD_HLA4execEP9Processor");

      function toStr (this : access LD_HLA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:119
      pragma Import (CPP, toStr, "_ZN6LD_HLA5toStrEv");

      function opCode (this : access LD_HLA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:119
      pragma Import (CPP, opCode, "_ZN6LD_HLA6opCodeEv");

      function nbCycles (this : access LD_HLA) return int;  -- instruction.hpp:119
      pragma Import (CPP, nbCycles, "_ZN6LD_HLA8nbCyclesEv");

      function hasArg (this : access LD_HLA) return Extensions.bool;  -- instruction.hpp:119
      pragma Import (CPP, hasArg, "_ZN6LD_HLA6hasArgEv");

      procedure setArg (this : access LD_HLA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:119
      pragma Import (CPP, setArg, "_ZN6LD_HLA6setArgER3ARG");

      function argSize (this : access LD_HLA) return int;  -- instruction.hpp:119
      pragma Import (CPP, argSize, "_ZN6LD_HLA7argSizeEv");
   end;
   use Class_LD_HLA;
   package Class_LD_Ann is
      type LD_Ann is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:120
      end record;
      pragma Import (CPP, LD_Ann);

      procedure exec (this : access LD_Ann; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:120
      pragma Import (CPP, exec, "_ZN6LD_Ann4execEP9Processor");

      function toStr (this : access LD_Ann) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:120
      pragma Import (CPP, toStr, "_ZN6LD_Ann5toStrEv");

      function opCode (this : access LD_Ann) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:120
      pragma Import (CPP, opCode, "_ZN6LD_Ann6opCodeEv");

      function nbCycles (this : access LD_Ann) return int;  -- instruction.hpp:120
      pragma Import (CPP, nbCycles, "_ZN6LD_Ann8nbCyclesEv");

      function hasArg (this : access LD_Ann) return Extensions.bool;  -- instruction.hpp:120
      pragma Import (CPP, hasArg, "_ZN6LD_Ann6hasArgEv");

      procedure setArg (this : access LD_Ann; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:120
      pragma Import (CPP, setArg, "_ZN6LD_Ann6setArgER3ARG");

      function argSize (this : access LD_Ann) return int;  -- instruction.hpp:120
      pragma Import (CPP, argSize, "_ZN6LD_Ann7argSizeEv");
   end;
   use Class_LD_Ann;
   package Class_LD_nnA is
      type LD_nnA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:121
      end record;
      pragma Import (CPP, LD_nnA);

      procedure exec (this : access LD_nnA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:121
      pragma Import (CPP, exec, "_ZN6LD_nnA4execEP9Processor");

      function toStr (this : access LD_nnA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:121
      pragma Import (CPP, toStr, "_ZN6LD_nnA5toStrEv");

      function opCode (this : access LD_nnA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:121
      pragma Import (CPP, opCode, "_ZN6LD_nnA6opCodeEv");

      function nbCycles (this : access LD_nnA) return int;  -- instruction.hpp:121
      pragma Import (CPP, nbCycles, "_ZN6LD_nnA8nbCyclesEv");

      function hasArg (this : access LD_nnA) return Extensions.bool;  -- instruction.hpp:121
      pragma Import (CPP, hasArg, "_ZN6LD_nnA6hasArgEv");

      procedure setArg (this : access LD_nnA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:121
      pragma Import (CPP, setArg, "_ZN6LD_nnA6setArgER3ARG");

      function argSize (this : access LD_nnA) return int;  -- instruction.hpp:121
      pragma Import (CPP, argSize, "_ZN6LD_nnA7argSizeEv");
   end;
   use Class_LD_nnA;
   package Class_LD_AC2 is
      type LD_AC2 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:123
      end record;
      pragma Import (CPP, LD_AC2);

      procedure exec (this : access LD_AC2; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:123
      pragma Import (CPP, exec, "_ZN6LD_AC24execEP9Processor");

      function toStr (this : access LD_AC2) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:123
      pragma Import (CPP, toStr, "_ZN6LD_AC25toStrEv");

      function opCode (this : access LD_AC2) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:123
      pragma Import (CPP, opCode, "_ZN6LD_AC26opCodeEv");

      function nbCycles (this : access LD_AC2) return int;  -- instruction.hpp:123
      pragma Import (CPP, nbCycles, "_ZN6LD_AC28nbCyclesEv");

      function hasArg (this : access LD_AC2) return Extensions.bool;  -- instruction.hpp:123
      pragma Import (CPP, hasArg, "_ZN6LD_AC26hasArgEv");

      procedure setArg (this : access LD_AC2; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:123
      pragma Import (CPP, setArg, "_ZN6LD_AC26setArgER3ARG");

      function argSize (this : access LD_AC2) return int;  -- instruction.hpp:123
      pragma Import (CPP, argSize, "_ZN6LD_AC27argSizeEv");
   end;
   use Class_LD_AC2;
   package Class_LD_C2A is
      type LD_C2A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:124
      end record;
      pragma Import (CPP, LD_C2A);

      procedure exec (this : access LD_C2A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:124
      pragma Import (CPP, exec, "_ZN6LD_C2A4execEP9Processor");

      function toStr (this : access LD_C2A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:124
      pragma Import (CPP, toStr, "_ZN6LD_C2A5toStrEv");

      function opCode (this : access LD_C2A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:124
      pragma Import (CPP, opCode, "_ZN6LD_C2A6opCodeEv");

      function nbCycles (this : access LD_C2A) return int;  -- instruction.hpp:124
      pragma Import (CPP, nbCycles, "_ZN6LD_C2A8nbCyclesEv");

      function hasArg (this : access LD_C2A) return Extensions.bool;  -- instruction.hpp:124
      pragma Import (CPP, hasArg, "_ZN6LD_C2A6hasArgEv");

      procedure setArg (this : access LD_C2A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:124
      pragma Import (CPP, setArg, "_ZN6LD_C2A6setArgER3ARG");

      function argSize (this : access LD_C2A) return int;  -- instruction.hpp:124
      pragma Import (CPP, argSize, "_ZN6LD_C2A7argSizeEv");
   end;
   use Class_LD_C2A;
   package Class_LDD_AHL is
      type LDD_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:126
      end record;
      pragma Import (CPP, LDD_AHL);

      procedure exec (this : access LDD_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:126
      pragma Import (CPP, exec, "_ZN7LDD_AHL4execEP9Processor");

      function toStr (this : access LDD_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:126
      pragma Import (CPP, toStr, "_ZN7LDD_AHL5toStrEv");

      function opCode (this : access LDD_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:126
      pragma Import (CPP, opCode, "_ZN7LDD_AHL6opCodeEv");

      function nbCycles (this : access LDD_AHL) return int;  -- instruction.hpp:126
      pragma Import (CPP, nbCycles, "_ZN7LDD_AHL8nbCyclesEv");

      function hasArg (this : access LDD_AHL) return Extensions.bool;  -- instruction.hpp:126
      pragma Import (CPP, hasArg, "_ZN7LDD_AHL6hasArgEv");

      procedure setArg (this : access LDD_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:126
      pragma Import (CPP, setArg, "_ZN7LDD_AHL6setArgER3ARG");

      function argSize (this : access LDD_AHL) return int;  -- instruction.hpp:126
      pragma Import (CPP, argSize, "_ZN7LDD_AHL7argSizeEv");
   end;
   use Class_LDD_AHL;
   package Class_LDD_HLA is
      type LDD_HLA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:127
      end record;
      pragma Import (CPP, LDD_HLA);

      procedure exec (this : access LDD_HLA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:127
      pragma Import (CPP, exec, "_ZN7LDD_HLA4execEP9Processor");

      function toStr (this : access LDD_HLA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:127
      pragma Import (CPP, toStr, "_ZN7LDD_HLA5toStrEv");

      function opCode (this : access LDD_HLA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:127
      pragma Import (CPP, opCode, "_ZN7LDD_HLA6opCodeEv");

      function nbCycles (this : access LDD_HLA) return int;  -- instruction.hpp:127
      pragma Import (CPP, nbCycles, "_ZN7LDD_HLA8nbCyclesEv");

      function hasArg (this : access LDD_HLA) return Extensions.bool;  -- instruction.hpp:127
      pragma Import (CPP, hasArg, "_ZN7LDD_HLA6hasArgEv");

      procedure setArg (this : access LDD_HLA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:127
      pragma Import (CPP, setArg, "_ZN7LDD_HLA6setArgER3ARG");

      function argSize (this : access LDD_HLA) return int;  -- instruction.hpp:127
      pragma Import (CPP, argSize, "_ZN7LDD_HLA7argSizeEv");
   end;
   use Class_LDD_HLA;
   package Class_LDI_AHL is
      type LDI_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:128
      end record;
      pragma Import (CPP, LDI_AHL);

      procedure exec (this : access LDI_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:128
      pragma Import (CPP, exec, "_ZN7LDI_AHL4execEP9Processor");

      function toStr (this : access LDI_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:128
      pragma Import (CPP, toStr, "_ZN7LDI_AHL5toStrEv");

      function opCode (this : access LDI_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:128
      pragma Import (CPP, opCode, "_ZN7LDI_AHL6opCodeEv");

      function nbCycles (this : access LDI_AHL) return int;  -- instruction.hpp:128
      pragma Import (CPP, nbCycles, "_ZN7LDI_AHL8nbCyclesEv");

      function hasArg (this : access LDI_AHL) return Extensions.bool;  -- instruction.hpp:128
      pragma Import (CPP, hasArg, "_ZN7LDI_AHL6hasArgEv");

      procedure setArg (this : access LDI_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:128
      pragma Import (CPP, setArg, "_ZN7LDI_AHL6setArgER3ARG");

      function argSize (this : access LDI_AHL) return int;  -- instruction.hpp:128
      pragma Import (CPP, argSize, "_ZN7LDI_AHL7argSizeEv");
   end;
   use Class_LDI_AHL;
   package Class_LDI_HLA is
      type LDI_HLA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:129
      end record;
      pragma Import (CPP, LDI_HLA);

      procedure exec (this : access LDI_HLA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:129
      pragma Import (CPP, exec, "_ZN7LDI_HLA4execEP9Processor");

      function toStr (this : access LDI_HLA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:129
      pragma Import (CPP, toStr, "_ZN7LDI_HLA5toStrEv");

      function opCode (this : access LDI_HLA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:129
      pragma Import (CPP, opCode, "_ZN7LDI_HLA6opCodeEv");

      function nbCycles (this : access LDI_HLA) return int;  -- instruction.hpp:129
      pragma Import (CPP, nbCycles, "_ZN7LDI_HLA8nbCyclesEv");

      function hasArg (this : access LDI_HLA) return Extensions.bool;  -- instruction.hpp:129
      pragma Import (CPP, hasArg, "_ZN7LDI_HLA6hasArgEv");

      procedure setArg (this : access LDI_HLA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:129
      pragma Import (CPP, setArg, "_ZN7LDI_HLA6setArgER3ARG");

      function argSize (this : access LDI_HLA) return int;  -- instruction.hpp:129
      pragma Import (CPP, argSize, "_ZN7LDI_HLA7argSizeEv");
   end;
   use Class_LDI_HLA;
   package Class_LDH_nA is
      type LDH_nA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:130
      end record;
      pragma Import (CPP, LDH_nA);

      procedure exec (this : access LDH_nA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:130
      pragma Import (CPP, exec, "_ZN6LDH_nA4execEP9Processor");

      function toStr (this : access LDH_nA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:130
      pragma Import (CPP, toStr, "_ZN6LDH_nA5toStrEv");

      function opCode (this : access LDH_nA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:130
      pragma Import (CPP, opCode, "_ZN6LDH_nA6opCodeEv");

      function nbCycles (this : access LDH_nA) return int;  -- instruction.hpp:130
      pragma Import (CPP, nbCycles, "_ZN6LDH_nA8nbCyclesEv");

      function hasArg (this : access LDH_nA) return Extensions.bool;  -- instruction.hpp:130
      pragma Import (CPP, hasArg, "_ZN6LDH_nA6hasArgEv");

      procedure setArg (this : access LDH_nA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:130
      pragma Import (CPP, setArg, "_ZN6LDH_nA6setArgER3ARG");

      function argSize (this : access LDH_nA) return int;  -- instruction.hpp:130
      pragma Import (CPP, argSize, "_ZN6LDH_nA7argSizeEv");
   end;
   use Class_LDH_nA;
   package Class_LDH_An is
      type LDH_An is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:131
      end record;
      pragma Import (CPP, LDH_An);

      procedure exec (this : access LDH_An; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:131
      pragma Import (CPP, exec, "_ZN6LDH_An4execEP9Processor");

      function toStr (this : access LDH_An) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:131
      pragma Import (CPP, toStr, "_ZN6LDH_An5toStrEv");

      function opCode (this : access LDH_An) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:131
      pragma Import (CPP, opCode, "_ZN6LDH_An6opCodeEv");

      function nbCycles (this : access LDH_An) return int;  -- instruction.hpp:131
      pragma Import (CPP, nbCycles, "_ZN6LDH_An8nbCyclesEv");

      function hasArg (this : access LDH_An) return Extensions.bool;  -- instruction.hpp:131
      pragma Import (CPP, hasArg, "_ZN6LDH_An6hasArgEv");

      procedure setArg (this : access LDH_An; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:131
      pragma Import (CPP, setArg, "_ZN6LDH_An6setArgER3ARG");

      function argSize (this : access LDH_An) return int;  -- instruction.hpp:131
      pragma Import (CPP, argSize, "_ZN6LDH_An7argSizeEv");
   end;
   use Class_LDH_An;
   package Class_LD_BCnn is
      type LD_BCnn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:133
      end record;
      pragma Import (CPP, LD_BCnn);

      procedure exec (this : access LD_BCnn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:133
      pragma Import (CPP, exec, "_ZN7LD_BCnn4execEP9Processor");

      function toStr (this : access LD_BCnn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:133
      pragma Import (CPP, toStr, "_ZN7LD_BCnn5toStrEv");

      function opCode (this : access LD_BCnn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:133
      pragma Import (CPP, opCode, "_ZN7LD_BCnn6opCodeEv");

      function nbCycles (this : access LD_BCnn) return int;  -- instruction.hpp:133
      pragma Import (CPP, nbCycles, "_ZN7LD_BCnn8nbCyclesEv");

      function hasArg (this : access LD_BCnn) return Extensions.bool;  -- instruction.hpp:133
      pragma Import (CPP, hasArg, "_ZN7LD_BCnn6hasArgEv");

      procedure setArg (this : access LD_BCnn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:133
      pragma Import (CPP, setArg, "_ZN7LD_BCnn6setArgER3ARG");

      function argSize (this : access LD_BCnn) return int;  -- instruction.hpp:133
      pragma Import (CPP, argSize, "_ZN7LD_BCnn7argSizeEv");
   end;
   use Class_LD_BCnn;
   package Class_LD_DEnn is
      type LD_DEnn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:134
      end record;
      pragma Import (CPP, LD_DEnn);

      procedure exec (this : access LD_DEnn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:134
      pragma Import (CPP, exec, "_ZN7LD_DEnn4execEP9Processor");

      function toStr (this : access LD_DEnn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:134
      pragma Import (CPP, toStr, "_ZN7LD_DEnn5toStrEv");

      function opCode (this : access LD_DEnn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:134
      pragma Import (CPP, opCode, "_ZN7LD_DEnn6opCodeEv");

      function nbCycles (this : access LD_DEnn) return int;  -- instruction.hpp:134
      pragma Import (CPP, nbCycles, "_ZN7LD_DEnn8nbCyclesEv");

      function hasArg (this : access LD_DEnn) return Extensions.bool;  -- instruction.hpp:134
      pragma Import (CPP, hasArg, "_ZN7LD_DEnn6hasArgEv");

      procedure setArg (this : access LD_DEnn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:134
      pragma Import (CPP, setArg, "_ZN7LD_DEnn6setArgER3ARG");

      function argSize (this : access LD_DEnn) return int;  -- instruction.hpp:134
      pragma Import (CPP, argSize, "_ZN7LD_DEnn7argSizeEv");
   end;
   use Class_LD_DEnn;
   package Class_LD_HLnn is
      type LD_HLnn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:135
      end record;
      pragma Import (CPP, LD_HLnn);

      procedure exec (this : access LD_HLnn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:135
      pragma Import (CPP, exec, "_ZN7LD_HLnn4execEP9Processor");

      function toStr (this : access LD_HLnn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:135
      pragma Import (CPP, toStr, "_ZN7LD_HLnn5toStrEv");

      function opCode (this : access LD_HLnn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:135
      pragma Import (CPP, opCode, "_ZN7LD_HLnn6opCodeEv");

      function nbCycles (this : access LD_HLnn) return int;  -- instruction.hpp:135
      pragma Import (CPP, nbCycles, "_ZN7LD_HLnn8nbCyclesEv");

      function hasArg (this : access LD_HLnn) return Extensions.bool;  -- instruction.hpp:135
      pragma Import (CPP, hasArg, "_ZN7LD_HLnn6hasArgEv");

      procedure setArg (this : access LD_HLnn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:135
      pragma Import (CPP, setArg, "_ZN7LD_HLnn6setArgER3ARG");

      function argSize (this : access LD_HLnn) return int;  -- instruction.hpp:135
      pragma Import (CPP, argSize, "_ZN7LD_HLnn7argSizeEv");
   end;
   use Class_LD_HLnn;
   package Class_LD_SPnn is
      type LD_SPnn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:136
      end record;
      pragma Import (CPP, LD_SPnn);

      procedure exec (this : access LD_SPnn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:136
      pragma Import (CPP, exec, "_ZN7LD_SPnn4execEP9Processor");

      function toStr (this : access LD_SPnn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:136
      pragma Import (CPP, toStr, "_ZN7LD_SPnn5toStrEv");

      function opCode (this : access LD_SPnn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:136
      pragma Import (CPP, opCode, "_ZN7LD_SPnn6opCodeEv");

      function nbCycles (this : access LD_SPnn) return int;  -- instruction.hpp:136
      pragma Import (CPP, nbCycles, "_ZN7LD_SPnn8nbCyclesEv");

      function hasArg (this : access LD_SPnn) return Extensions.bool;  -- instruction.hpp:136
      pragma Import (CPP, hasArg, "_ZN7LD_SPnn6hasArgEv");

      procedure setArg (this : access LD_SPnn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:136
      pragma Import (CPP, setArg, "_ZN7LD_SPnn6setArgER3ARG");

      function argSize (this : access LD_SPnn) return int;  -- instruction.hpp:136
      pragma Import (CPP, argSize, "_ZN7LD_SPnn7argSizeEv");
   end;
   use Class_LD_SPnn;
   package Class_LD_nnSP is
      type LD_nnSP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:137
      end record;
      pragma Import (CPP, LD_nnSP);

      procedure exec (this : access LD_nnSP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:137
      pragma Import (CPP, exec, "_ZN7LD_nnSP4execEP9Processor");

      function toStr (this : access LD_nnSP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:137
      pragma Import (CPP, toStr, "_ZN7LD_nnSP5toStrEv");

      function opCode (this : access LD_nnSP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:137
      pragma Import (CPP, opCode, "_ZN7LD_nnSP6opCodeEv");

      function nbCycles (this : access LD_nnSP) return int;  -- instruction.hpp:137
      pragma Import (CPP, nbCycles, "_ZN7LD_nnSP8nbCyclesEv");

      function hasArg (this : access LD_nnSP) return Extensions.bool;  -- instruction.hpp:137
      pragma Import (CPP, hasArg, "_ZN7LD_nnSP6hasArgEv");

      procedure setArg (this : access LD_nnSP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:137
      pragma Import (CPP, setArg, "_ZN7LD_nnSP6setArgER3ARG");

      function argSize (this : access LD_nnSP) return int;  -- instruction.hpp:137
      pragma Import (CPP, argSize, "_ZN7LD_nnSP7argSizeEv");
   end;
   use Class_LD_nnSP;
   package Class_LD_SPHL is
      type LD_SPHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:138
      end record;
      pragma Import (CPP, LD_SPHL);

      procedure exec (this : access LD_SPHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:138
      pragma Import (CPP, exec, "_ZN7LD_SPHL4execEP9Processor");

      function toStr (this : access LD_SPHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:138
      pragma Import (CPP, toStr, "_ZN7LD_SPHL5toStrEv");

      function opCode (this : access LD_SPHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:138
      pragma Import (CPP, opCode, "_ZN7LD_SPHL6opCodeEv");

      function nbCycles (this : access LD_SPHL) return int;  -- instruction.hpp:138
      pragma Import (CPP, nbCycles, "_ZN7LD_SPHL8nbCyclesEv");

      function hasArg (this : access LD_SPHL) return Extensions.bool;  -- instruction.hpp:138
      pragma Import (CPP, hasArg, "_ZN7LD_SPHL6hasArgEv");

      procedure setArg (this : access LD_SPHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:138
      pragma Import (CPP, setArg, "_ZN7LD_SPHL6setArgER3ARG");

      function argSize (this : access LD_SPHL) return int;  -- instruction.hpp:138
      pragma Import (CPP, argSize, "_ZN7LD_SPHL7argSizeEv");
   end;
   use Class_LD_SPHL;
   package Class_LD_HLSPn is
      type LD_HLSPn is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:139
      end record;
      pragma Import (CPP, LD_HLSPn);

      procedure exec (this : access LD_HLSPn; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:139
      pragma Import (CPP, exec, "_ZN8LD_HLSPn4execEP9Processor");

      function toStr (this : access LD_HLSPn) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:139
      pragma Import (CPP, toStr, "_ZN8LD_HLSPn5toStrEv");

      function opCode (this : access LD_HLSPn) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:139
      pragma Import (CPP, opCode, "_ZN8LD_HLSPn6opCodeEv");

      function nbCycles (this : access LD_HLSPn) return int;  -- instruction.hpp:139
      pragma Import (CPP, nbCycles, "_ZN8LD_HLSPn8nbCyclesEv");

      function hasArg (this : access LD_HLSPn) return Extensions.bool;  -- instruction.hpp:139
      pragma Import (CPP, hasArg, "_ZN8LD_HLSPn6hasArgEv");

      procedure setArg (this : access LD_HLSPn; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:139
      pragma Import (CPP, setArg, "_ZN8LD_HLSPn6setArgER3ARG");

      function argSize (this : access LD_HLSPn) return int;  -- instruction.hpp:139
      pragma Import (CPP, argSize, "_ZN8LD_HLSPn7argSizeEv");
   end;
   use Class_LD_HLSPn;
   package Class_PUSH_BC is
      type PUSH_BC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:141
      end record;
      pragma Import (CPP, PUSH_BC);

      procedure exec (this : access PUSH_BC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:141
      pragma Import (CPP, exec, "_ZN7PUSH_BC4execEP9Processor");

      function toStr (this : access PUSH_BC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:141
      pragma Import (CPP, toStr, "_ZN7PUSH_BC5toStrEv");

      function opCode (this : access PUSH_BC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:141
      pragma Import (CPP, opCode, "_ZN7PUSH_BC6opCodeEv");

      function nbCycles (this : access PUSH_BC) return int;  -- instruction.hpp:141
      pragma Import (CPP, nbCycles, "_ZN7PUSH_BC8nbCyclesEv");

      function hasArg (this : access PUSH_BC) return Extensions.bool;  -- instruction.hpp:141
      pragma Import (CPP, hasArg, "_ZN7PUSH_BC6hasArgEv");

      procedure setArg (this : access PUSH_BC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:141
      pragma Import (CPP, setArg, "_ZN7PUSH_BC6setArgER3ARG");

      function argSize (this : access PUSH_BC) return int;  -- instruction.hpp:141
      pragma Import (CPP, argSize, "_ZN7PUSH_BC7argSizeEv");
   end;
   use Class_PUSH_BC;
   package Class_PUSH_DE is
      type PUSH_DE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:142
      end record;
      pragma Import (CPP, PUSH_DE);

      procedure exec (this : access PUSH_DE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:142
      pragma Import (CPP, exec, "_ZN7PUSH_DE4execEP9Processor");

      function toStr (this : access PUSH_DE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:142
      pragma Import (CPP, toStr, "_ZN7PUSH_DE5toStrEv");

      function opCode (this : access PUSH_DE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:142
      pragma Import (CPP, opCode, "_ZN7PUSH_DE6opCodeEv");

      function nbCycles (this : access PUSH_DE) return int;  -- instruction.hpp:142
      pragma Import (CPP, nbCycles, "_ZN7PUSH_DE8nbCyclesEv");

      function hasArg (this : access PUSH_DE) return Extensions.bool;  -- instruction.hpp:142
      pragma Import (CPP, hasArg, "_ZN7PUSH_DE6hasArgEv");

      procedure setArg (this : access PUSH_DE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:142
      pragma Import (CPP, setArg, "_ZN7PUSH_DE6setArgER3ARG");

      function argSize (this : access PUSH_DE) return int;  -- instruction.hpp:142
      pragma Import (CPP, argSize, "_ZN7PUSH_DE7argSizeEv");
   end;
   use Class_PUSH_DE;
   package Class_PUSH_HL is
      type PUSH_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:143
      end record;
      pragma Import (CPP, PUSH_HL);

      procedure exec (this : access PUSH_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:143
      pragma Import (CPP, exec, "_ZN7PUSH_HL4execEP9Processor");

      function toStr (this : access PUSH_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:143
      pragma Import (CPP, toStr, "_ZN7PUSH_HL5toStrEv");

      function opCode (this : access PUSH_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:143
      pragma Import (CPP, opCode, "_ZN7PUSH_HL6opCodeEv");

      function nbCycles (this : access PUSH_HL) return int;  -- instruction.hpp:143
      pragma Import (CPP, nbCycles, "_ZN7PUSH_HL8nbCyclesEv");

      function hasArg (this : access PUSH_HL) return Extensions.bool;  -- instruction.hpp:143
      pragma Import (CPP, hasArg, "_ZN7PUSH_HL6hasArgEv");

      procedure setArg (this : access PUSH_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:143
      pragma Import (CPP, setArg, "_ZN7PUSH_HL6setArgER3ARG");

      function argSize (this : access PUSH_HL) return int;  -- instruction.hpp:143
      pragma Import (CPP, argSize, "_ZN7PUSH_HL7argSizeEv");
   end;
   use Class_PUSH_HL;
   package Class_PUSH_AF is
      type PUSH_AF is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:144
      end record;
      pragma Import (CPP, PUSH_AF);

      procedure exec (this : access PUSH_AF; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:144
      pragma Import (CPP, exec, "_ZN7PUSH_AF4execEP9Processor");

      function toStr (this : access PUSH_AF) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:144
      pragma Import (CPP, toStr, "_ZN7PUSH_AF5toStrEv");

      function opCode (this : access PUSH_AF) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:144
      pragma Import (CPP, opCode, "_ZN7PUSH_AF6opCodeEv");

      function nbCycles (this : access PUSH_AF) return int;  -- instruction.hpp:144
      pragma Import (CPP, nbCycles, "_ZN7PUSH_AF8nbCyclesEv");

      function hasArg (this : access PUSH_AF) return Extensions.bool;  -- instruction.hpp:144
      pragma Import (CPP, hasArg, "_ZN7PUSH_AF6hasArgEv");

      procedure setArg (this : access PUSH_AF; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:144
      pragma Import (CPP, setArg, "_ZN7PUSH_AF6setArgER3ARG");

      function argSize (this : access PUSH_AF) return int;  -- instruction.hpp:144
      pragma Import (CPP, argSize, "_ZN7PUSH_AF7argSizeEv");
   end;
   use Class_PUSH_AF;
   package Class_POP_BC is
      type POP_BC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:145
      end record;
      pragma Import (CPP, POP_BC);

      procedure exec (this : access POP_BC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:145
      pragma Import (CPP, exec, "_ZN6POP_BC4execEP9Processor");

      function toStr (this : access POP_BC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:145
      pragma Import (CPP, toStr, "_ZN6POP_BC5toStrEv");

      function opCode (this : access POP_BC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:145
      pragma Import (CPP, opCode, "_ZN6POP_BC6opCodeEv");

      function nbCycles (this : access POP_BC) return int;  -- instruction.hpp:145
      pragma Import (CPP, nbCycles, "_ZN6POP_BC8nbCyclesEv");

      function hasArg (this : access POP_BC) return Extensions.bool;  -- instruction.hpp:145
      pragma Import (CPP, hasArg, "_ZN6POP_BC6hasArgEv");

      procedure setArg (this : access POP_BC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:145
      pragma Import (CPP, setArg, "_ZN6POP_BC6setArgER3ARG");

      function argSize (this : access POP_BC) return int;  -- instruction.hpp:145
      pragma Import (CPP, argSize, "_ZN6POP_BC7argSizeEv");
   end;
   use Class_POP_BC;
   package Class_POP_DE is
      type POP_DE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:146
      end record;
      pragma Import (CPP, POP_DE);

      procedure exec (this : access POP_DE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:146
      pragma Import (CPP, exec, "_ZN6POP_DE4execEP9Processor");

      function toStr (this : access POP_DE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:146
      pragma Import (CPP, toStr, "_ZN6POP_DE5toStrEv");

      function opCode (this : access POP_DE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:146
      pragma Import (CPP, opCode, "_ZN6POP_DE6opCodeEv");

      function nbCycles (this : access POP_DE) return int;  -- instruction.hpp:146
      pragma Import (CPP, nbCycles, "_ZN6POP_DE8nbCyclesEv");

      function hasArg (this : access POP_DE) return Extensions.bool;  -- instruction.hpp:146
      pragma Import (CPP, hasArg, "_ZN6POP_DE6hasArgEv");

      procedure setArg (this : access POP_DE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:146
      pragma Import (CPP, setArg, "_ZN6POP_DE6setArgER3ARG");

      function argSize (this : access POP_DE) return int;  -- instruction.hpp:146
      pragma Import (CPP, argSize, "_ZN6POP_DE7argSizeEv");
   end;
   use Class_POP_DE;
   package Class_POP_HL is
      type POP_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:147
      end record;
      pragma Import (CPP, POP_HL);

      procedure exec (this : access POP_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:147
      pragma Import (CPP, exec, "_ZN6POP_HL4execEP9Processor");

      function toStr (this : access POP_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:147
      pragma Import (CPP, toStr, "_ZN6POP_HL5toStrEv");

      function opCode (this : access POP_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:147
      pragma Import (CPP, opCode, "_ZN6POP_HL6opCodeEv");

      function nbCycles (this : access POP_HL) return int;  -- instruction.hpp:147
      pragma Import (CPP, nbCycles, "_ZN6POP_HL8nbCyclesEv");

      function hasArg (this : access POP_HL) return Extensions.bool;  -- instruction.hpp:147
      pragma Import (CPP, hasArg, "_ZN6POP_HL6hasArgEv");

      procedure setArg (this : access POP_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:147
      pragma Import (CPP, setArg, "_ZN6POP_HL6setArgER3ARG");

      function argSize (this : access POP_HL) return int;  -- instruction.hpp:147
      pragma Import (CPP, argSize, "_ZN6POP_HL7argSizeEv");
   end;
   use Class_POP_HL;
   package Class_POP_AF is
      type POP_AF is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:148
      end record;
      pragma Import (CPP, POP_AF);

      procedure exec (this : access POP_AF; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:148
      pragma Import (CPP, exec, "_ZN6POP_AF4execEP9Processor");

      function toStr (this : access POP_AF) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:148
      pragma Import (CPP, toStr, "_ZN6POP_AF5toStrEv");

      function opCode (this : access POP_AF) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:148
      pragma Import (CPP, opCode, "_ZN6POP_AF6opCodeEv");

      function nbCycles (this : access POP_AF) return int;  -- instruction.hpp:148
      pragma Import (CPP, nbCycles, "_ZN6POP_AF8nbCyclesEv");

      function hasArg (this : access POP_AF) return Extensions.bool;  -- instruction.hpp:148
      pragma Import (CPP, hasArg, "_ZN6POP_AF6hasArgEv");

      procedure setArg (this : access POP_AF; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:148
      pragma Import (CPP, setArg, "_ZN6POP_AF6setArgER3ARG");

      function argSize (this : access POP_AF) return int;  -- instruction.hpp:148
      pragma Import (CPP, argSize, "_ZN6POP_AF7argSizeEv");
   end;
   use Class_POP_AF;
  -- NOP INSTRUCTION
   package Class_NOP is
      type NOP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:152
      end record;
      pragma Import (CPP, NOP);

      procedure exec (this : access NOP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:152
      pragma Import (CPP, exec, "_ZN3NOP4execEP9Processor");

      function toStr (this : access NOP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:152
      pragma Import (CPP, toStr, "_ZN3NOP5toStrEv");

      function opCode (this : access NOP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:152
      pragma Import (CPP, opCode, "_ZN3NOP6opCodeEv");

      function nbCycles (this : access NOP) return int;  -- instruction.hpp:152
      pragma Import (CPP, nbCycles, "_ZN3NOP8nbCyclesEv");

      function hasArg (this : access NOP) return Extensions.bool;  -- instruction.hpp:152
      pragma Import (CPP, hasArg, "_ZN3NOP6hasArgEv");

      procedure setArg (this : access NOP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:152
      pragma Import (CPP, setArg, "_ZN3NOP6setArgER3ARG");

      function argSize (this : access NOP) return int;  -- instruction.hpp:152
      pragma Import (CPP, argSize, "_ZN3NOP7argSizeEv");
   end;
   use Class_NOP;
  -- ADD INSTRUCTIONS
   package Class_ADD_AA is
      type ADD_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:156
      end record;
      pragma Import (CPP, ADD_AA);

      procedure exec (this : access ADD_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:156
      pragma Import (CPP, exec, "_ZN6ADD_AA4execEP9Processor");

      function toStr (this : access ADD_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:156
      pragma Import (CPP, toStr, "_ZN6ADD_AA5toStrEv");

      function opCode (this : access ADD_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:156
      pragma Import (CPP, opCode, "_ZN6ADD_AA6opCodeEv");

      function nbCycles (this : access ADD_AA) return int;  -- instruction.hpp:156
      pragma Import (CPP, nbCycles, "_ZN6ADD_AA8nbCyclesEv");

      function hasArg (this : access ADD_AA) return Extensions.bool;  -- instruction.hpp:156
      pragma Import (CPP, hasArg, "_ZN6ADD_AA6hasArgEv");

      procedure setArg (this : access ADD_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:156
      pragma Import (CPP, setArg, "_ZN6ADD_AA6setArgER3ARG");

      function argSize (this : access ADD_AA) return int;  -- instruction.hpp:156
      pragma Import (CPP, argSize, "_ZN6ADD_AA7argSizeEv");
   end;
   use Class_ADD_AA;
   package Class_ADD_AB is
      type ADD_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:157
      end record;
      pragma Import (CPP, ADD_AB);

      procedure exec (this : access ADD_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:157
      pragma Import (CPP, exec, "_ZN6ADD_AB4execEP9Processor");

      function toStr (this : access ADD_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:157
      pragma Import (CPP, toStr, "_ZN6ADD_AB5toStrEv");

      function opCode (this : access ADD_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:157
      pragma Import (CPP, opCode, "_ZN6ADD_AB6opCodeEv");

      function nbCycles (this : access ADD_AB) return int;  -- instruction.hpp:157
      pragma Import (CPP, nbCycles, "_ZN6ADD_AB8nbCyclesEv");

      function hasArg (this : access ADD_AB) return Extensions.bool;  -- instruction.hpp:157
      pragma Import (CPP, hasArg, "_ZN6ADD_AB6hasArgEv");

      procedure setArg (this : access ADD_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:157
      pragma Import (CPP, setArg, "_ZN6ADD_AB6setArgER3ARG");

      function argSize (this : access ADD_AB) return int;  -- instruction.hpp:157
      pragma Import (CPP, argSize, "_ZN6ADD_AB7argSizeEv");
   end;
   use Class_ADD_AB;
   package Class_ADD_AC is
      type ADD_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:158
      end record;
      pragma Import (CPP, ADD_AC);

      procedure exec (this : access ADD_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:158
      pragma Import (CPP, exec, "_ZN6ADD_AC4execEP9Processor");

      function toStr (this : access ADD_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:158
      pragma Import (CPP, toStr, "_ZN6ADD_AC5toStrEv");

      function opCode (this : access ADD_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:158
      pragma Import (CPP, opCode, "_ZN6ADD_AC6opCodeEv");

      function nbCycles (this : access ADD_AC) return int;  -- instruction.hpp:158
      pragma Import (CPP, nbCycles, "_ZN6ADD_AC8nbCyclesEv");

      function hasArg (this : access ADD_AC) return Extensions.bool;  -- instruction.hpp:158
      pragma Import (CPP, hasArg, "_ZN6ADD_AC6hasArgEv");

      procedure setArg (this : access ADD_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:158
      pragma Import (CPP, setArg, "_ZN6ADD_AC6setArgER3ARG");

      function argSize (this : access ADD_AC) return int;  -- instruction.hpp:158
      pragma Import (CPP, argSize, "_ZN6ADD_AC7argSizeEv");
   end;
   use Class_ADD_AC;
   package Class_ADD_AD is
      type ADD_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:159
      end record;
      pragma Import (CPP, ADD_AD);

      procedure exec (this : access ADD_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:159
      pragma Import (CPP, exec, "_ZN6ADD_AD4execEP9Processor");

      function toStr (this : access ADD_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:159
      pragma Import (CPP, toStr, "_ZN6ADD_AD5toStrEv");

      function opCode (this : access ADD_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:159
      pragma Import (CPP, opCode, "_ZN6ADD_AD6opCodeEv");

      function nbCycles (this : access ADD_AD) return int;  -- instruction.hpp:159
      pragma Import (CPP, nbCycles, "_ZN6ADD_AD8nbCyclesEv");

      function hasArg (this : access ADD_AD) return Extensions.bool;  -- instruction.hpp:159
      pragma Import (CPP, hasArg, "_ZN6ADD_AD6hasArgEv");

      procedure setArg (this : access ADD_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:159
      pragma Import (CPP, setArg, "_ZN6ADD_AD6setArgER3ARG");

      function argSize (this : access ADD_AD) return int;  -- instruction.hpp:159
      pragma Import (CPP, argSize, "_ZN6ADD_AD7argSizeEv");
   end;
   use Class_ADD_AD;
   package Class_ADD_AE is
      type ADD_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:160
      end record;
      pragma Import (CPP, ADD_AE);

      procedure exec (this : access ADD_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:160
      pragma Import (CPP, exec, "_ZN6ADD_AE4execEP9Processor");

      function toStr (this : access ADD_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:160
      pragma Import (CPP, toStr, "_ZN6ADD_AE5toStrEv");

      function opCode (this : access ADD_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:160
      pragma Import (CPP, opCode, "_ZN6ADD_AE6opCodeEv");

      function nbCycles (this : access ADD_AE) return int;  -- instruction.hpp:160
      pragma Import (CPP, nbCycles, "_ZN6ADD_AE8nbCyclesEv");

      function hasArg (this : access ADD_AE) return Extensions.bool;  -- instruction.hpp:160
      pragma Import (CPP, hasArg, "_ZN6ADD_AE6hasArgEv");

      procedure setArg (this : access ADD_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:160
      pragma Import (CPP, setArg, "_ZN6ADD_AE6setArgER3ARG");

      function argSize (this : access ADD_AE) return int;  -- instruction.hpp:160
      pragma Import (CPP, argSize, "_ZN6ADD_AE7argSizeEv");
   end;
   use Class_ADD_AE;
   package Class_ADD_AH is
      type ADD_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:161
      end record;
      pragma Import (CPP, ADD_AH);

      procedure exec (this : access ADD_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:161
      pragma Import (CPP, exec, "_ZN6ADD_AH4execEP9Processor");

      function toStr (this : access ADD_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:161
      pragma Import (CPP, toStr, "_ZN6ADD_AH5toStrEv");

      function opCode (this : access ADD_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:161
      pragma Import (CPP, opCode, "_ZN6ADD_AH6opCodeEv");

      function nbCycles (this : access ADD_AH) return int;  -- instruction.hpp:161
      pragma Import (CPP, nbCycles, "_ZN6ADD_AH8nbCyclesEv");

      function hasArg (this : access ADD_AH) return Extensions.bool;  -- instruction.hpp:161
      pragma Import (CPP, hasArg, "_ZN6ADD_AH6hasArgEv");

      procedure setArg (this : access ADD_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:161
      pragma Import (CPP, setArg, "_ZN6ADD_AH6setArgER3ARG");

      function argSize (this : access ADD_AH) return int;  -- instruction.hpp:161
      pragma Import (CPP, argSize, "_ZN6ADD_AH7argSizeEv");
   end;
   use Class_ADD_AH;
   package Class_ADD_AL is
      type ADD_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:162
      end record;
      pragma Import (CPP, ADD_AL);

      procedure exec (this : access ADD_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:162
      pragma Import (CPP, exec, "_ZN6ADD_AL4execEP9Processor");

      function toStr (this : access ADD_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:162
      pragma Import (CPP, toStr, "_ZN6ADD_AL5toStrEv");

      function opCode (this : access ADD_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:162
      pragma Import (CPP, opCode, "_ZN6ADD_AL6opCodeEv");

      function nbCycles (this : access ADD_AL) return int;  -- instruction.hpp:162
      pragma Import (CPP, nbCycles, "_ZN6ADD_AL8nbCyclesEv");

      function hasArg (this : access ADD_AL) return Extensions.bool;  -- instruction.hpp:162
      pragma Import (CPP, hasArg, "_ZN6ADD_AL6hasArgEv");

      procedure setArg (this : access ADD_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:162
      pragma Import (CPP, setArg, "_ZN6ADD_AL6setArgER3ARG");

      function argSize (this : access ADD_AL) return int;  -- instruction.hpp:162
      pragma Import (CPP, argSize, "_ZN6ADD_AL7argSizeEv");
   end;
   use Class_ADD_AL;
   package Class_ADD_AHL is
      type ADD_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:163
      end record;
      pragma Import (CPP, ADD_AHL);

      procedure exec (this : access ADD_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:163
      pragma Import (CPP, exec, "_ZN7ADD_AHL4execEP9Processor");

      function toStr (this : access ADD_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:163
      pragma Import (CPP, toStr, "_ZN7ADD_AHL5toStrEv");

      function opCode (this : access ADD_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:163
      pragma Import (CPP, opCode, "_ZN7ADD_AHL6opCodeEv");

      function nbCycles (this : access ADD_AHL) return int;  -- instruction.hpp:163
      pragma Import (CPP, nbCycles, "_ZN7ADD_AHL8nbCyclesEv");

      function hasArg (this : access ADD_AHL) return Extensions.bool;  -- instruction.hpp:163
      pragma Import (CPP, hasArg, "_ZN7ADD_AHL6hasArgEv");

      procedure setArg (this : access ADD_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:163
      pragma Import (CPP, setArg, "_ZN7ADD_AHL6setArgER3ARG");

      function argSize (this : access ADD_AHL) return int;  -- instruction.hpp:163
      pragma Import (CPP, argSize, "_ZN7ADD_AHL7argSizeEv");
   end;
   use Class_ADD_AHL;
   package Class_ADD_AX is
      type ADD_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:164
      end record;
      pragma Import (CPP, ADD_AX);

      procedure exec (this : access ADD_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:164
      pragma Import (CPP, exec, "_ZN6ADD_AX4execEP9Processor");

      function toStr (this : access ADD_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:164
      pragma Import (CPP, toStr, "_ZN6ADD_AX5toStrEv");

      function opCode (this : access ADD_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:164
      pragma Import (CPP, opCode, "_ZN6ADD_AX6opCodeEv");

      function nbCycles (this : access ADD_AX) return int;  -- instruction.hpp:164
      pragma Import (CPP, nbCycles, "_ZN6ADD_AX8nbCyclesEv");

      function hasArg (this : access ADD_AX) return Extensions.bool;  -- instruction.hpp:164
      pragma Import (CPP, hasArg, "_ZN6ADD_AX6hasArgEv");

      procedure setArg (this : access ADD_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:164
      pragma Import (CPP, setArg, "_ZN6ADD_AX6setArgER3ARG");

      function argSize (this : access ADD_AX) return int;  -- instruction.hpp:164
      pragma Import (CPP, argSize, "_ZN6ADD_AX7argSizeEv");
   end;
   use Class_ADD_AX;
   package Class_ADD_HLBC is
      type ADD_HLBC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:166
      end record;
      pragma Import (CPP, ADD_HLBC);

      procedure exec (this : access ADD_HLBC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:166
      pragma Import (CPP, exec, "_ZN8ADD_HLBC4execEP9Processor");

      function toStr (this : access ADD_HLBC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:166
      pragma Import (CPP, toStr, "_ZN8ADD_HLBC5toStrEv");

      function opCode (this : access ADD_HLBC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:166
      pragma Import (CPP, opCode, "_ZN8ADD_HLBC6opCodeEv");

      function nbCycles (this : access ADD_HLBC) return int;  -- instruction.hpp:166
      pragma Import (CPP, nbCycles, "_ZN8ADD_HLBC8nbCyclesEv");

      function hasArg (this : access ADD_HLBC) return Extensions.bool;  -- instruction.hpp:166
      pragma Import (CPP, hasArg, "_ZN8ADD_HLBC6hasArgEv");

      procedure setArg (this : access ADD_HLBC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:166
      pragma Import (CPP, setArg, "_ZN8ADD_HLBC6setArgER3ARG");

      function argSize (this : access ADD_HLBC) return int;  -- instruction.hpp:166
      pragma Import (CPP, argSize, "_ZN8ADD_HLBC7argSizeEv");
   end;
   use Class_ADD_HLBC;
   package Class_ADD_HLDE is
      type ADD_HLDE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:167
      end record;
      pragma Import (CPP, ADD_HLDE);

      procedure exec (this : access ADD_HLDE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:167
      pragma Import (CPP, exec, "_ZN8ADD_HLDE4execEP9Processor");

      function toStr (this : access ADD_HLDE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:167
      pragma Import (CPP, toStr, "_ZN8ADD_HLDE5toStrEv");

      function opCode (this : access ADD_HLDE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:167
      pragma Import (CPP, opCode, "_ZN8ADD_HLDE6opCodeEv");

      function nbCycles (this : access ADD_HLDE) return int;  -- instruction.hpp:167
      pragma Import (CPP, nbCycles, "_ZN8ADD_HLDE8nbCyclesEv");

      function hasArg (this : access ADD_HLDE) return Extensions.bool;  -- instruction.hpp:167
      pragma Import (CPP, hasArg, "_ZN8ADD_HLDE6hasArgEv");

      procedure setArg (this : access ADD_HLDE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:167
      pragma Import (CPP, setArg, "_ZN8ADD_HLDE6setArgER3ARG");

      function argSize (this : access ADD_HLDE) return int;  -- instruction.hpp:167
      pragma Import (CPP, argSize, "_ZN8ADD_HLDE7argSizeEv");
   end;
   use Class_ADD_HLDE;
   package Class_ADD_HLHL is
      type ADD_HLHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:168
      end record;
      pragma Import (CPP, ADD_HLHL);

      procedure exec (this : access ADD_HLHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:168
      pragma Import (CPP, exec, "_ZN8ADD_HLHL4execEP9Processor");

      function toStr (this : access ADD_HLHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:168
      pragma Import (CPP, toStr, "_ZN8ADD_HLHL5toStrEv");

      function opCode (this : access ADD_HLHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:168
      pragma Import (CPP, opCode, "_ZN8ADD_HLHL6opCodeEv");

      function nbCycles (this : access ADD_HLHL) return int;  -- instruction.hpp:168
      pragma Import (CPP, nbCycles, "_ZN8ADD_HLHL8nbCyclesEv");

      function hasArg (this : access ADD_HLHL) return Extensions.bool;  -- instruction.hpp:168
      pragma Import (CPP, hasArg, "_ZN8ADD_HLHL6hasArgEv");

      procedure setArg (this : access ADD_HLHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:168
      pragma Import (CPP, setArg, "_ZN8ADD_HLHL6setArgER3ARG");

      function argSize (this : access ADD_HLHL) return int;  -- instruction.hpp:168
      pragma Import (CPP, argSize, "_ZN8ADD_HLHL7argSizeEv");
   end;
   use Class_ADD_HLHL;
   package Class_ADD_HLSP is
      type ADD_HLSP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:169
      end record;
      pragma Import (CPP, ADD_HLSP);

      procedure exec (this : access ADD_HLSP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:169
      pragma Import (CPP, exec, "_ZN8ADD_HLSP4execEP9Processor");

      function toStr (this : access ADD_HLSP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:169
      pragma Import (CPP, toStr, "_ZN8ADD_HLSP5toStrEv");

      function opCode (this : access ADD_HLSP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:169
      pragma Import (CPP, opCode, "_ZN8ADD_HLSP6opCodeEv");

      function nbCycles (this : access ADD_HLSP) return int;  -- instruction.hpp:169
      pragma Import (CPP, nbCycles, "_ZN8ADD_HLSP8nbCyclesEv");

      function hasArg (this : access ADD_HLSP) return Extensions.bool;  -- instruction.hpp:169
      pragma Import (CPP, hasArg, "_ZN8ADD_HLSP6hasArgEv");

      procedure setArg (this : access ADD_HLSP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:169
      pragma Import (CPP, setArg, "_ZN8ADD_HLSP6setArgER3ARG");

      function argSize (this : access ADD_HLSP) return int;  -- instruction.hpp:169
      pragma Import (CPP, argSize, "_ZN8ADD_HLSP7argSizeEv");
   end;
   use Class_ADD_HLSP;
   package Class_ADD_SPX is
      type ADD_SPX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:171
      end record;
      pragma Import (CPP, ADD_SPX);

      procedure exec (this : access ADD_SPX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:171
      pragma Import (CPP, exec, "_ZN7ADD_SPX4execEP9Processor");

      function toStr (this : access ADD_SPX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:171
      pragma Import (CPP, toStr, "_ZN7ADD_SPX5toStrEv");

      function opCode (this : access ADD_SPX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:171
      pragma Import (CPP, opCode, "_ZN7ADD_SPX6opCodeEv");

      function nbCycles (this : access ADD_SPX) return int;  -- instruction.hpp:171
      pragma Import (CPP, nbCycles, "_ZN7ADD_SPX8nbCyclesEv");

      function hasArg (this : access ADD_SPX) return Extensions.bool;  -- instruction.hpp:171
      pragma Import (CPP, hasArg, "_ZN7ADD_SPX6hasArgEv");

      procedure setArg (this : access ADD_SPX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:171
      pragma Import (CPP, setArg, "_ZN7ADD_SPX6setArgER3ARG");

      function argSize (this : access ADD_SPX) return int;  -- instruction.hpp:171
      pragma Import (CPP, argSize, "_ZN7ADD_SPX7argSizeEv");
   end;
   use Class_ADD_SPX;
  -- ADC Instructions
   package Class_ADC_AA is
      type ADC_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:175
      end record;
      pragma Import (CPP, ADC_AA);

      procedure exec (this : access ADC_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:175
      pragma Import (CPP, exec, "_ZN6ADC_AA4execEP9Processor");

      function toStr (this : access ADC_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:175
      pragma Import (CPP, toStr, "_ZN6ADC_AA5toStrEv");

      function opCode (this : access ADC_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:175
      pragma Import (CPP, opCode, "_ZN6ADC_AA6opCodeEv");

      function nbCycles (this : access ADC_AA) return int;  -- instruction.hpp:175
      pragma Import (CPP, nbCycles, "_ZN6ADC_AA8nbCyclesEv");

      function hasArg (this : access ADC_AA) return Extensions.bool;  -- instruction.hpp:175
      pragma Import (CPP, hasArg, "_ZN6ADC_AA6hasArgEv");

      procedure setArg (this : access ADC_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:175
      pragma Import (CPP, setArg, "_ZN6ADC_AA6setArgER3ARG");

      function argSize (this : access ADC_AA) return int;  -- instruction.hpp:175
      pragma Import (CPP, argSize, "_ZN6ADC_AA7argSizeEv");
   end;
   use Class_ADC_AA;
   package Class_ADC_AB is
      type ADC_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:176
      end record;
      pragma Import (CPP, ADC_AB);

      procedure exec (this : access ADC_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:176
      pragma Import (CPP, exec, "_ZN6ADC_AB4execEP9Processor");

      function toStr (this : access ADC_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:176
      pragma Import (CPP, toStr, "_ZN6ADC_AB5toStrEv");

      function opCode (this : access ADC_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:176
      pragma Import (CPP, opCode, "_ZN6ADC_AB6opCodeEv");

      function nbCycles (this : access ADC_AB) return int;  -- instruction.hpp:176
      pragma Import (CPP, nbCycles, "_ZN6ADC_AB8nbCyclesEv");

      function hasArg (this : access ADC_AB) return Extensions.bool;  -- instruction.hpp:176
      pragma Import (CPP, hasArg, "_ZN6ADC_AB6hasArgEv");

      procedure setArg (this : access ADC_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:176
      pragma Import (CPP, setArg, "_ZN6ADC_AB6setArgER3ARG");

      function argSize (this : access ADC_AB) return int;  -- instruction.hpp:176
      pragma Import (CPP, argSize, "_ZN6ADC_AB7argSizeEv");
   end;
   use Class_ADC_AB;
   package Class_ADC_AC is
      type ADC_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:177
      end record;
      pragma Import (CPP, ADC_AC);

      procedure exec (this : access ADC_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:177
      pragma Import (CPP, exec, "_ZN6ADC_AC4execEP9Processor");

      function toStr (this : access ADC_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:177
      pragma Import (CPP, toStr, "_ZN6ADC_AC5toStrEv");

      function opCode (this : access ADC_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:177
      pragma Import (CPP, opCode, "_ZN6ADC_AC6opCodeEv");

      function nbCycles (this : access ADC_AC) return int;  -- instruction.hpp:177
      pragma Import (CPP, nbCycles, "_ZN6ADC_AC8nbCyclesEv");

      function hasArg (this : access ADC_AC) return Extensions.bool;  -- instruction.hpp:177
      pragma Import (CPP, hasArg, "_ZN6ADC_AC6hasArgEv");

      procedure setArg (this : access ADC_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:177
      pragma Import (CPP, setArg, "_ZN6ADC_AC6setArgER3ARG");

      function argSize (this : access ADC_AC) return int;  -- instruction.hpp:177
      pragma Import (CPP, argSize, "_ZN6ADC_AC7argSizeEv");
   end;
   use Class_ADC_AC;
   package Class_ADC_AD is
      type ADC_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:178
      end record;
      pragma Import (CPP, ADC_AD);

      procedure exec (this : access ADC_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:178
      pragma Import (CPP, exec, "_ZN6ADC_AD4execEP9Processor");

      function toStr (this : access ADC_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:178
      pragma Import (CPP, toStr, "_ZN6ADC_AD5toStrEv");

      function opCode (this : access ADC_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:178
      pragma Import (CPP, opCode, "_ZN6ADC_AD6opCodeEv");

      function nbCycles (this : access ADC_AD) return int;  -- instruction.hpp:178
      pragma Import (CPP, nbCycles, "_ZN6ADC_AD8nbCyclesEv");

      function hasArg (this : access ADC_AD) return Extensions.bool;  -- instruction.hpp:178
      pragma Import (CPP, hasArg, "_ZN6ADC_AD6hasArgEv");

      procedure setArg (this : access ADC_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:178
      pragma Import (CPP, setArg, "_ZN6ADC_AD6setArgER3ARG");

      function argSize (this : access ADC_AD) return int;  -- instruction.hpp:178
      pragma Import (CPP, argSize, "_ZN6ADC_AD7argSizeEv");
   end;
   use Class_ADC_AD;
   package Class_ADC_AE is
      type ADC_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:179
      end record;
      pragma Import (CPP, ADC_AE);

      procedure exec (this : access ADC_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:179
      pragma Import (CPP, exec, "_ZN6ADC_AE4execEP9Processor");

      function toStr (this : access ADC_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:179
      pragma Import (CPP, toStr, "_ZN6ADC_AE5toStrEv");

      function opCode (this : access ADC_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:179
      pragma Import (CPP, opCode, "_ZN6ADC_AE6opCodeEv");

      function nbCycles (this : access ADC_AE) return int;  -- instruction.hpp:179
      pragma Import (CPP, nbCycles, "_ZN6ADC_AE8nbCyclesEv");

      function hasArg (this : access ADC_AE) return Extensions.bool;  -- instruction.hpp:179
      pragma Import (CPP, hasArg, "_ZN6ADC_AE6hasArgEv");

      procedure setArg (this : access ADC_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:179
      pragma Import (CPP, setArg, "_ZN6ADC_AE6setArgER3ARG");

      function argSize (this : access ADC_AE) return int;  -- instruction.hpp:179
      pragma Import (CPP, argSize, "_ZN6ADC_AE7argSizeEv");
   end;
   use Class_ADC_AE;
   package Class_ADC_AH is
      type ADC_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:180
      end record;
      pragma Import (CPP, ADC_AH);

      procedure exec (this : access ADC_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:180
      pragma Import (CPP, exec, "_ZN6ADC_AH4execEP9Processor");

      function toStr (this : access ADC_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:180
      pragma Import (CPP, toStr, "_ZN6ADC_AH5toStrEv");

      function opCode (this : access ADC_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:180
      pragma Import (CPP, opCode, "_ZN6ADC_AH6opCodeEv");

      function nbCycles (this : access ADC_AH) return int;  -- instruction.hpp:180
      pragma Import (CPP, nbCycles, "_ZN6ADC_AH8nbCyclesEv");

      function hasArg (this : access ADC_AH) return Extensions.bool;  -- instruction.hpp:180
      pragma Import (CPP, hasArg, "_ZN6ADC_AH6hasArgEv");

      procedure setArg (this : access ADC_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:180
      pragma Import (CPP, setArg, "_ZN6ADC_AH6setArgER3ARG");

      function argSize (this : access ADC_AH) return int;  -- instruction.hpp:180
      pragma Import (CPP, argSize, "_ZN6ADC_AH7argSizeEv");
   end;
   use Class_ADC_AH;
   package Class_ADC_AL is
      type ADC_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:181
      end record;
      pragma Import (CPP, ADC_AL);

      procedure exec (this : access ADC_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:181
      pragma Import (CPP, exec, "_ZN6ADC_AL4execEP9Processor");

      function toStr (this : access ADC_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:181
      pragma Import (CPP, toStr, "_ZN6ADC_AL5toStrEv");

      function opCode (this : access ADC_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:181
      pragma Import (CPP, opCode, "_ZN6ADC_AL6opCodeEv");

      function nbCycles (this : access ADC_AL) return int;  -- instruction.hpp:181
      pragma Import (CPP, nbCycles, "_ZN6ADC_AL8nbCyclesEv");

      function hasArg (this : access ADC_AL) return Extensions.bool;  -- instruction.hpp:181
      pragma Import (CPP, hasArg, "_ZN6ADC_AL6hasArgEv");

      procedure setArg (this : access ADC_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:181
      pragma Import (CPP, setArg, "_ZN6ADC_AL6setArgER3ARG");

      function argSize (this : access ADC_AL) return int;  -- instruction.hpp:181
      pragma Import (CPP, argSize, "_ZN6ADC_AL7argSizeEv");
   end;
   use Class_ADC_AL;
   package Class_ADC_AHL is
      type ADC_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:182
      end record;
      pragma Import (CPP, ADC_AHL);

      procedure exec (this : access ADC_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:182
      pragma Import (CPP, exec, "_ZN7ADC_AHL4execEP9Processor");

      function toStr (this : access ADC_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:182
      pragma Import (CPP, toStr, "_ZN7ADC_AHL5toStrEv");

      function opCode (this : access ADC_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:182
      pragma Import (CPP, opCode, "_ZN7ADC_AHL6opCodeEv");

      function nbCycles (this : access ADC_AHL) return int;  -- instruction.hpp:182
      pragma Import (CPP, nbCycles, "_ZN7ADC_AHL8nbCyclesEv");

      function hasArg (this : access ADC_AHL) return Extensions.bool;  -- instruction.hpp:182
      pragma Import (CPP, hasArg, "_ZN7ADC_AHL6hasArgEv");

      procedure setArg (this : access ADC_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:182
      pragma Import (CPP, setArg, "_ZN7ADC_AHL6setArgER3ARG");

      function argSize (this : access ADC_AHL) return int;  -- instruction.hpp:182
      pragma Import (CPP, argSize, "_ZN7ADC_AHL7argSizeEv");
   end;
   use Class_ADC_AHL;
   package Class_ADC_AX is
      type ADC_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:183
      end record;
      pragma Import (CPP, ADC_AX);

      procedure exec (this : access ADC_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:183
      pragma Import (CPP, exec, "_ZN6ADC_AX4execEP9Processor");

      function toStr (this : access ADC_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:183
      pragma Import (CPP, toStr, "_ZN6ADC_AX5toStrEv");

      function opCode (this : access ADC_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:183
      pragma Import (CPP, opCode, "_ZN6ADC_AX6opCodeEv");

      function nbCycles (this : access ADC_AX) return int;  -- instruction.hpp:183
      pragma Import (CPP, nbCycles, "_ZN6ADC_AX8nbCyclesEv");

      function hasArg (this : access ADC_AX) return Extensions.bool;  -- instruction.hpp:183
      pragma Import (CPP, hasArg, "_ZN6ADC_AX6hasArgEv");

      procedure setArg (this : access ADC_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:183
      pragma Import (CPP, setArg, "_ZN6ADC_AX6setArgER3ARG");

      function argSize (this : access ADC_AX) return int;  -- instruction.hpp:183
      pragma Import (CPP, argSize, "_ZN6ADC_AX7argSizeEv");
   end;
   use Class_ADC_AX;
  -- SUB Instructions
   package Class_SUB_AA is
      type SUB_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:188
      end record;
      pragma Import (CPP, SUB_AA);

      procedure exec (this : access SUB_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:188
      pragma Import (CPP, exec, "_ZN6SUB_AA4execEP9Processor");

      function toStr (this : access SUB_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:188
      pragma Import (CPP, toStr, "_ZN6SUB_AA5toStrEv");

      function opCode (this : access SUB_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:188
      pragma Import (CPP, opCode, "_ZN6SUB_AA6opCodeEv");

      function nbCycles (this : access SUB_AA) return int;  -- instruction.hpp:188
      pragma Import (CPP, nbCycles, "_ZN6SUB_AA8nbCyclesEv");

      function hasArg (this : access SUB_AA) return Extensions.bool;  -- instruction.hpp:188
      pragma Import (CPP, hasArg, "_ZN6SUB_AA6hasArgEv");

      procedure setArg (this : access SUB_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:188
      pragma Import (CPP, setArg, "_ZN6SUB_AA6setArgER3ARG");

      function argSize (this : access SUB_AA) return int;  -- instruction.hpp:188
      pragma Import (CPP, argSize, "_ZN6SUB_AA7argSizeEv");
   end;
   use Class_SUB_AA;
   package Class_SUB_AB is
      type SUB_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:189
      end record;
      pragma Import (CPP, SUB_AB);

      procedure exec (this : access SUB_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:189
      pragma Import (CPP, exec, "_ZN6SUB_AB4execEP9Processor");

      function toStr (this : access SUB_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:189
      pragma Import (CPP, toStr, "_ZN6SUB_AB5toStrEv");

      function opCode (this : access SUB_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:189
      pragma Import (CPP, opCode, "_ZN6SUB_AB6opCodeEv");

      function nbCycles (this : access SUB_AB) return int;  -- instruction.hpp:189
      pragma Import (CPP, nbCycles, "_ZN6SUB_AB8nbCyclesEv");

      function hasArg (this : access SUB_AB) return Extensions.bool;  -- instruction.hpp:189
      pragma Import (CPP, hasArg, "_ZN6SUB_AB6hasArgEv");

      procedure setArg (this : access SUB_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:189
      pragma Import (CPP, setArg, "_ZN6SUB_AB6setArgER3ARG");

      function argSize (this : access SUB_AB) return int;  -- instruction.hpp:189
      pragma Import (CPP, argSize, "_ZN6SUB_AB7argSizeEv");
   end;
   use Class_SUB_AB;
   package Class_SUB_AC is
      type SUB_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:190
      end record;
      pragma Import (CPP, SUB_AC);

      procedure exec (this : access SUB_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:190
      pragma Import (CPP, exec, "_ZN6SUB_AC4execEP9Processor");

      function toStr (this : access SUB_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:190
      pragma Import (CPP, toStr, "_ZN6SUB_AC5toStrEv");

      function opCode (this : access SUB_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:190
      pragma Import (CPP, opCode, "_ZN6SUB_AC6opCodeEv");

      function nbCycles (this : access SUB_AC) return int;  -- instruction.hpp:190
      pragma Import (CPP, nbCycles, "_ZN6SUB_AC8nbCyclesEv");

      function hasArg (this : access SUB_AC) return Extensions.bool;  -- instruction.hpp:190
      pragma Import (CPP, hasArg, "_ZN6SUB_AC6hasArgEv");

      procedure setArg (this : access SUB_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:190
      pragma Import (CPP, setArg, "_ZN6SUB_AC6setArgER3ARG");

      function argSize (this : access SUB_AC) return int;  -- instruction.hpp:190
      pragma Import (CPP, argSize, "_ZN6SUB_AC7argSizeEv");
   end;
   use Class_SUB_AC;
   package Class_SUB_AD is
      type SUB_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:191
      end record;
      pragma Import (CPP, SUB_AD);

      procedure exec (this : access SUB_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:191
      pragma Import (CPP, exec, "_ZN6SUB_AD4execEP9Processor");

      function toStr (this : access SUB_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:191
      pragma Import (CPP, toStr, "_ZN6SUB_AD5toStrEv");

      function opCode (this : access SUB_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:191
      pragma Import (CPP, opCode, "_ZN6SUB_AD6opCodeEv");

      function nbCycles (this : access SUB_AD) return int;  -- instruction.hpp:191
      pragma Import (CPP, nbCycles, "_ZN6SUB_AD8nbCyclesEv");

      function hasArg (this : access SUB_AD) return Extensions.bool;  -- instruction.hpp:191
      pragma Import (CPP, hasArg, "_ZN6SUB_AD6hasArgEv");

      procedure setArg (this : access SUB_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:191
      pragma Import (CPP, setArg, "_ZN6SUB_AD6setArgER3ARG");

      function argSize (this : access SUB_AD) return int;  -- instruction.hpp:191
      pragma Import (CPP, argSize, "_ZN6SUB_AD7argSizeEv");
   end;
   use Class_SUB_AD;
   package Class_SUB_AE is
      type SUB_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:192
      end record;
      pragma Import (CPP, SUB_AE);

      procedure exec (this : access SUB_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:192
      pragma Import (CPP, exec, "_ZN6SUB_AE4execEP9Processor");

      function toStr (this : access SUB_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:192
      pragma Import (CPP, toStr, "_ZN6SUB_AE5toStrEv");

      function opCode (this : access SUB_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:192
      pragma Import (CPP, opCode, "_ZN6SUB_AE6opCodeEv");

      function nbCycles (this : access SUB_AE) return int;  -- instruction.hpp:192
      pragma Import (CPP, nbCycles, "_ZN6SUB_AE8nbCyclesEv");

      function hasArg (this : access SUB_AE) return Extensions.bool;  -- instruction.hpp:192
      pragma Import (CPP, hasArg, "_ZN6SUB_AE6hasArgEv");

      procedure setArg (this : access SUB_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:192
      pragma Import (CPP, setArg, "_ZN6SUB_AE6setArgER3ARG");

      function argSize (this : access SUB_AE) return int;  -- instruction.hpp:192
      pragma Import (CPP, argSize, "_ZN6SUB_AE7argSizeEv");
   end;
   use Class_SUB_AE;
   package Class_SUB_AH is
      type SUB_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:193
      end record;
      pragma Import (CPP, SUB_AH);

      procedure exec (this : access SUB_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:193
      pragma Import (CPP, exec, "_ZN6SUB_AH4execEP9Processor");

      function toStr (this : access SUB_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:193
      pragma Import (CPP, toStr, "_ZN6SUB_AH5toStrEv");

      function opCode (this : access SUB_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:193
      pragma Import (CPP, opCode, "_ZN6SUB_AH6opCodeEv");

      function nbCycles (this : access SUB_AH) return int;  -- instruction.hpp:193
      pragma Import (CPP, nbCycles, "_ZN6SUB_AH8nbCyclesEv");

      function hasArg (this : access SUB_AH) return Extensions.bool;  -- instruction.hpp:193
      pragma Import (CPP, hasArg, "_ZN6SUB_AH6hasArgEv");

      procedure setArg (this : access SUB_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:193
      pragma Import (CPP, setArg, "_ZN6SUB_AH6setArgER3ARG");

      function argSize (this : access SUB_AH) return int;  -- instruction.hpp:193
      pragma Import (CPP, argSize, "_ZN6SUB_AH7argSizeEv");
   end;
   use Class_SUB_AH;
   package Class_SUB_AL is
      type SUB_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:194
      end record;
      pragma Import (CPP, SUB_AL);

      procedure exec (this : access SUB_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:194
      pragma Import (CPP, exec, "_ZN6SUB_AL4execEP9Processor");

      function toStr (this : access SUB_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:194
      pragma Import (CPP, toStr, "_ZN6SUB_AL5toStrEv");

      function opCode (this : access SUB_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:194
      pragma Import (CPP, opCode, "_ZN6SUB_AL6opCodeEv");

      function nbCycles (this : access SUB_AL) return int;  -- instruction.hpp:194
      pragma Import (CPP, nbCycles, "_ZN6SUB_AL8nbCyclesEv");

      function hasArg (this : access SUB_AL) return Extensions.bool;  -- instruction.hpp:194
      pragma Import (CPP, hasArg, "_ZN6SUB_AL6hasArgEv");

      procedure setArg (this : access SUB_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:194
      pragma Import (CPP, setArg, "_ZN6SUB_AL6setArgER3ARG");

      function argSize (this : access SUB_AL) return int;  -- instruction.hpp:194
      pragma Import (CPP, argSize, "_ZN6SUB_AL7argSizeEv");
   end;
   use Class_SUB_AL;
   package Class_SUB_AHL is
      type SUB_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:195
      end record;
      pragma Import (CPP, SUB_AHL);

      procedure exec (this : access SUB_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:195
      pragma Import (CPP, exec, "_ZN7SUB_AHL4execEP9Processor");

      function toStr (this : access SUB_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:195
      pragma Import (CPP, toStr, "_ZN7SUB_AHL5toStrEv");

      function opCode (this : access SUB_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:195
      pragma Import (CPP, opCode, "_ZN7SUB_AHL6opCodeEv");

      function nbCycles (this : access SUB_AHL) return int;  -- instruction.hpp:195
      pragma Import (CPP, nbCycles, "_ZN7SUB_AHL8nbCyclesEv");

      function hasArg (this : access SUB_AHL) return Extensions.bool;  -- instruction.hpp:195
      pragma Import (CPP, hasArg, "_ZN7SUB_AHL6hasArgEv");

      procedure setArg (this : access SUB_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:195
      pragma Import (CPP, setArg, "_ZN7SUB_AHL6setArgER3ARG");

      function argSize (this : access SUB_AHL) return int;  -- instruction.hpp:195
      pragma Import (CPP, argSize, "_ZN7SUB_AHL7argSizeEv");
   end;
   use Class_SUB_AHL;
   package Class_SUB_AX is
      type SUB_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:196
      end record;
      pragma Import (CPP, SUB_AX);

      procedure exec (this : access SUB_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:196
      pragma Import (CPP, exec, "_ZN6SUB_AX4execEP9Processor");

      function toStr (this : access SUB_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:196
      pragma Import (CPP, toStr, "_ZN6SUB_AX5toStrEv");

      function opCode (this : access SUB_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:196
      pragma Import (CPP, opCode, "_ZN6SUB_AX6opCodeEv");

      function nbCycles (this : access SUB_AX) return int;  -- instruction.hpp:196
      pragma Import (CPP, nbCycles, "_ZN6SUB_AX8nbCyclesEv");

      function hasArg (this : access SUB_AX) return Extensions.bool;  -- instruction.hpp:196
      pragma Import (CPP, hasArg, "_ZN6SUB_AX6hasArgEv");

      procedure setArg (this : access SUB_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:196
      pragma Import (CPP, setArg, "_ZN6SUB_AX6setArgER3ARG");

      function argSize (this : access SUB_AX) return int;  -- instruction.hpp:196
      pragma Import (CPP, argSize, "_ZN6SUB_AX7argSizeEv");
   end;
   use Class_SUB_AX;
  -- SBC Instructions
   package Class_SBC_AA is
      type SBC_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:200
      end record;
      pragma Import (CPP, SBC_AA);

      procedure exec (this : access SBC_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:200
      pragma Import (CPP, exec, "_ZN6SBC_AA4execEP9Processor");

      function toStr (this : access SBC_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:200
      pragma Import (CPP, toStr, "_ZN6SBC_AA5toStrEv");

      function opCode (this : access SBC_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:200
      pragma Import (CPP, opCode, "_ZN6SBC_AA6opCodeEv");

      function nbCycles (this : access SBC_AA) return int;  -- instruction.hpp:200
      pragma Import (CPP, nbCycles, "_ZN6SBC_AA8nbCyclesEv");

      function hasArg (this : access SBC_AA) return Extensions.bool;  -- instruction.hpp:200
      pragma Import (CPP, hasArg, "_ZN6SBC_AA6hasArgEv");

      procedure setArg (this : access SBC_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:200
      pragma Import (CPP, setArg, "_ZN6SBC_AA6setArgER3ARG");

      function argSize (this : access SBC_AA) return int;  -- instruction.hpp:200
      pragma Import (CPP, argSize, "_ZN6SBC_AA7argSizeEv");
   end;
   use Class_SBC_AA;
   package Class_SBC_AB is
      type SBC_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:201
      end record;
      pragma Import (CPP, SBC_AB);

      procedure exec (this : access SBC_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:201
      pragma Import (CPP, exec, "_ZN6SBC_AB4execEP9Processor");

      function toStr (this : access SBC_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:201
      pragma Import (CPP, toStr, "_ZN6SBC_AB5toStrEv");

      function opCode (this : access SBC_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:201
      pragma Import (CPP, opCode, "_ZN6SBC_AB6opCodeEv");

      function nbCycles (this : access SBC_AB) return int;  -- instruction.hpp:201
      pragma Import (CPP, nbCycles, "_ZN6SBC_AB8nbCyclesEv");

      function hasArg (this : access SBC_AB) return Extensions.bool;  -- instruction.hpp:201
      pragma Import (CPP, hasArg, "_ZN6SBC_AB6hasArgEv");

      procedure setArg (this : access SBC_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:201
      pragma Import (CPP, setArg, "_ZN6SBC_AB6setArgER3ARG");

      function argSize (this : access SBC_AB) return int;  -- instruction.hpp:201
      pragma Import (CPP, argSize, "_ZN6SBC_AB7argSizeEv");
   end;
   use Class_SBC_AB;
   package Class_SBC_AC is
      type SBC_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:202
      end record;
      pragma Import (CPP, SBC_AC);

      procedure exec (this : access SBC_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:202
      pragma Import (CPP, exec, "_ZN6SBC_AC4execEP9Processor");

      function toStr (this : access SBC_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:202
      pragma Import (CPP, toStr, "_ZN6SBC_AC5toStrEv");

      function opCode (this : access SBC_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:202
      pragma Import (CPP, opCode, "_ZN6SBC_AC6opCodeEv");

      function nbCycles (this : access SBC_AC) return int;  -- instruction.hpp:202
      pragma Import (CPP, nbCycles, "_ZN6SBC_AC8nbCyclesEv");

      function hasArg (this : access SBC_AC) return Extensions.bool;  -- instruction.hpp:202
      pragma Import (CPP, hasArg, "_ZN6SBC_AC6hasArgEv");

      procedure setArg (this : access SBC_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:202
      pragma Import (CPP, setArg, "_ZN6SBC_AC6setArgER3ARG");

      function argSize (this : access SBC_AC) return int;  -- instruction.hpp:202
      pragma Import (CPP, argSize, "_ZN6SBC_AC7argSizeEv");
   end;
   use Class_SBC_AC;
   package Class_SBC_AD is
      type SBC_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:203
      end record;
      pragma Import (CPP, SBC_AD);

      procedure exec (this : access SBC_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:203
      pragma Import (CPP, exec, "_ZN6SBC_AD4execEP9Processor");

      function toStr (this : access SBC_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:203
      pragma Import (CPP, toStr, "_ZN6SBC_AD5toStrEv");

      function opCode (this : access SBC_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:203
      pragma Import (CPP, opCode, "_ZN6SBC_AD6opCodeEv");

      function nbCycles (this : access SBC_AD) return int;  -- instruction.hpp:203
      pragma Import (CPP, nbCycles, "_ZN6SBC_AD8nbCyclesEv");

      function hasArg (this : access SBC_AD) return Extensions.bool;  -- instruction.hpp:203
      pragma Import (CPP, hasArg, "_ZN6SBC_AD6hasArgEv");

      procedure setArg (this : access SBC_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:203
      pragma Import (CPP, setArg, "_ZN6SBC_AD6setArgER3ARG");

      function argSize (this : access SBC_AD) return int;  -- instruction.hpp:203
      pragma Import (CPP, argSize, "_ZN6SBC_AD7argSizeEv");
   end;
   use Class_SBC_AD;
   package Class_SBC_AE is
      type SBC_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:204
      end record;
      pragma Import (CPP, SBC_AE);

      procedure exec (this : access SBC_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:204
      pragma Import (CPP, exec, "_ZN6SBC_AE4execEP9Processor");

      function toStr (this : access SBC_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:204
      pragma Import (CPP, toStr, "_ZN6SBC_AE5toStrEv");

      function opCode (this : access SBC_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:204
      pragma Import (CPP, opCode, "_ZN6SBC_AE6opCodeEv");

      function nbCycles (this : access SBC_AE) return int;  -- instruction.hpp:204
      pragma Import (CPP, nbCycles, "_ZN6SBC_AE8nbCyclesEv");

      function hasArg (this : access SBC_AE) return Extensions.bool;  -- instruction.hpp:204
      pragma Import (CPP, hasArg, "_ZN6SBC_AE6hasArgEv");

      procedure setArg (this : access SBC_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:204
      pragma Import (CPP, setArg, "_ZN6SBC_AE6setArgER3ARG");

      function argSize (this : access SBC_AE) return int;  -- instruction.hpp:204
      pragma Import (CPP, argSize, "_ZN6SBC_AE7argSizeEv");
   end;
   use Class_SBC_AE;
   package Class_SBC_AH is
      type SBC_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:205
      end record;
      pragma Import (CPP, SBC_AH);

      procedure exec (this : access SBC_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:205
      pragma Import (CPP, exec, "_ZN6SBC_AH4execEP9Processor");

      function toStr (this : access SBC_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:205
      pragma Import (CPP, toStr, "_ZN6SBC_AH5toStrEv");

      function opCode (this : access SBC_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:205
      pragma Import (CPP, opCode, "_ZN6SBC_AH6opCodeEv");

      function nbCycles (this : access SBC_AH) return int;  -- instruction.hpp:205
      pragma Import (CPP, nbCycles, "_ZN6SBC_AH8nbCyclesEv");

      function hasArg (this : access SBC_AH) return Extensions.bool;  -- instruction.hpp:205
      pragma Import (CPP, hasArg, "_ZN6SBC_AH6hasArgEv");

      procedure setArg (this : access SBC_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:205
      pragma Import (CPP, setArg, "_ZN6SBC_AH6setArgER3ARG");

      function argSize (this : access SBC_AH) return int;  -- instruction.hpp:205
      pragma Import (CPP, argSize, "_ZN6SBC_AH7argSizeEv");
   end;
   use Class_SBC_AH;
   package Class_SBC_AL is
      type SBC_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:206
      end record;
      pragma Import (CPP, SBC_AL);

      procedure exec (this : access SBC_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:206
      pragma Import (CPP, exec, "_ZN6SBC_AL4execEP9Processor");

      function toStr (this : access SBC_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:206
      pragma Import (CPP, toStr, "_ZN6SBC_AL5toStrEv");

      function opCode (this : access SBC_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:206
      pragma Import (CPP, opCode, "_ZN6SBC_AL6opCodeEv");

      function nbCycles (this : access SBC_AL) return int;  -- instruction.hpp:206
      pragma Import (CPP, nbCycles, "_ZN6SBC_AL8nbCyclesEv");

      function hasArg (this : access SBC_AL) return Extensions.bool;  -- instruction.hpp:206
      pragma Import (CPP, hasArg, "_ZN6SBC_AL6hasArgEv");

      procedure setArg (this : access SBC_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:206
      pragma Import (CPP, setArg, "_ZN6SBC_AL6setArgER3ARG");

      function argSize (this : access SBC_AL) return int;  -- instruction.hpp:206
      pragma Import (CPP, argSize, "_ZN6SBC_AL7argSizeEv");
   end;
   use Class_SBC_AL;
   package Class_SBC_AHL is
      type SBC_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:207
      end record;
      pragma Import (CPP, SBC_AHL);

      procedure exec (this : access SBC_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:207
      pragma Import (CPP, exec, "_ZN7SBC_AHL4execEP9Processor");

      function toStr (this : access SBC_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:207
      pragma Import (CPP, toStr, "_ZN7SBC_AHL5toStrEv");

      function opCode (this : access SBC_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:207
      pragma Import (CPP, opCode, "_ZN7SBC_AHL6opCodeEv");

      function nbCycles (this : access SBC_AHL) return int;  -- instruction.hpp:207
      pragma Import (CPP, nbCycles, "_ZN7SBC_AHL8nbCyclesEv");

      function hasArg (this : access SBC_AHL) return Extensions.bool;  -- instruction.hpp:207
      pragma Import (CPP, hasArg, "_ZN7SBC_AHL6hasArgEv");

      procedure setArg (this : access SBC_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:207
      pragma Import (CPP, setArg, "_ZN7SBC_AHL6setArgER3ARG");

      function argSize (this : access SBC_AHL) return int;  -- instruction.hpp:207
      pragma Import (CPP, argSize, "_ZN7SBC_AHL7argSizeEv");
   end;
   use Class_SBC_AHL;
  -- no opcode in manual
   package Class_SBC_AX is
      type SBC_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:208
      end record;
      pragma Import (CPP, SBC_AX);

      procedure exec (this : access SBC_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:208
      pragma Import (CPP, exec, "_ZN6SBC_AX4execEP9Processor");

      function toStr (this : access SBC_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:208
      pragma Import (CPP, toStr, "_ZN6SBC_AX5toStrEv");

      function opCode (this : access SBC_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:208
      pragma Import (CPP, opCode, "_ZN6SBC_AX6opCodeEv");

      function nbCycles (this : access SBC_AX) return int;  -- instruction.hpp:208
      pragma Import (CPP, nbCycles, "_ZN6SBC_AX8nbCyclesEv");

      function hasArg (this : access SBC_AX) return Extensions.bool;  -- instruction.hpp:208
      pragma Import (CPP, hasArg, "_ZN6SBC_AX6hasArgEv");

      procedure setArg (this : access SBC_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:208
      pragma Import (CPP, setArg, "_ZN6SBC_AX6setArgER3ARG");

      function argSize (this : access SBC_AX) return int;  -- instruction.hpp:208
      pragma Import (CPP, argSize, "_ZN6SBC_AX7argSizeEv");
   end;
   use Class_SBC_AX;
  -- AND Instructions
   package Class_AND_AA is
      type AND_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:212
      end record;
      pragma Import (CPP, AND_AA);

      procedure exec (this : access AND_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:212
      pragma Import (CPP, exec, "_ZN6AND_AA4execEP9Processor");

      function toStr (this : access AND_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:212
      pragma Import (CPP, toStr, "_ZN6AND_AA5toStrEv");

      function opCode (this : access AND_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:212
      pragma Import (CPP, opCode, "_ZN6AND_AA6opCodeEv");

      function nbCycles (this : access AND_AA) return int;  -- instruction.hpp:212
      pragma Import (CPP, nbCycles, "_ZN6AND_AA8nbCyclesEv");

      function hasArg (this : access AND_AA) return Extensions.bool;  -- instruction.hpp:212
      pragma Import (CPP, hasArg, "_ZN6AND_AA6hasArgEv");

      procedure setArg (this : access AND_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:212
      pragma Import (CPP, setArg, "_ZN6AND_AA6setArgER3ARG");

      function argSize (this : access AND_AA) return int;  -- instruction.hpp:212
      pragma Import (CPP, argSize, "_ZN6AND_AA7argSizeEv");
   end;
   use Class_AND_AA;
   package Class_AND_AB is
      type AND_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:213
      end record;
      pragma Import (CPP, AND_AB);

      procedure exec (this : access AND_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:213
      pragma Import (CPP, exec, "_ZN6AND_AB4execEP9Processor");

      function toStr (this : access AND_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:213
      pragma Import (CPP, toStr, "_ZN6AND_AB5toStrEv");

      function opCode (this : access AND_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:213
      pragma Import (CPP, opCode, "_ZN6AND_AB6opCodeEv");

      function nbCycles (this : access AND_AB) return int;  -- instruction.hpp:213
      pragma Import (CPP, nbCycles, "_ZN6AND_AB8nbCyclesEv");

      function hasArg (this : access AND_AB) return Extensions.bool;  -- instruction.hpp:213
      pragma Import (CPP, hasArg, "_ZN6AND_AB6hasArgEv");

      procedure setArg (this : access AND_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:213
      pragma Import (CPP, setArg, "_ZN6AND_AB6setArgER3ARG");

      function argSize (this : access AND_AB) return int;  -- instruction.hpp:213
      pragma Import (CPP, argSize, "_ZN6AND_AB7argSizeEv");
   end;
   use Class_AND_AB;
   package Class_AND_AC is
      type AND_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:214
      end record;
      pragma Import (CPP, AND_AC);

      procedure exec (this : access AND_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:214
      pragma Import (CPP, exec, "_ZN6AND_AC4execEP9Processor");

      function toStr (this : access AND_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:214
      pragma Import (CPP, toStr, "_ZN6AND_AC5toStrEv");

      function opCode (this : access AND_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:214
      pragma Import (CPP, opCode, "_ZN6AND_AC6opCodeEv");

      function nbCycles (this : access AND_AC) return int;  -- instruction.hpp:214
      pragma Import (CPP, nbCycles, "_ZN6AND_AC8nbCyclesEv");

      function hasArg (this : access AND_AC) return Extensions.bool;  -- instruction.hpp:214
      pragma Import (CPP, hasArg, "_ZN6AND_AC6hasArgEv");

      procedure setArg (this : access AND_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:214
      pragma Import (CPP, setArg, "_ZN6AND_AC6setArgER3ARG");

      function argSize (this : access AND_AC) return int;  -- instruction.hpp:214
      pragma Import (CPP, argSize, "_ZN6AND_AC7argSizeEv");
   end;
   use Class_AND_AC;
   package Class_AND_AD is
      type AND_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:215
      end record;
      pragma Import (CPP, AND_AD);

      procedure exec (this : access AND_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:215
      pragma Import (CPP, exec, "_ZN6AND_AD4execEP9Processor");

      function toStr (this : access AND_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:215
      pragma Import (CPP, toStr, "_ZN6AND_AD5toStrEv");

      function opCode (this : access AND_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:215
      pragma Import (CPP, opCode, "_ZN6AND_AD6opCodeEv");

      function nbCycles (this : access AND_AD) return int;  -- instruction.hpp:215
      pragma Import (CPP, nbCycles, "_ZN6AND_AD8nbCyclesEv");

      function hasArg (this : access AND_AD) return Extensions.bool;  -- instruction.hpp:215
      pragma Import (CPP, hasArg, "_ZN6AND_AD6hasArgEv");

      procedure setArg (this : access AND_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:215
      pragma Import (CPP, setArg, "_ZN6AND_AD6setArgER3ARG");

      function argSize (this : access AND_AD) return int;  -- instruction.hpp:215
      pragma Import (CPP, argSize, "_ZN6AND_AD7argSizeEv");
   end;
   use Class_AND_AD;
   package Class_AND_AE is
      type AND_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:216
      end record;
      pragma Import (CPP, AND_AE);

      procedure exec (this : access AND_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:216
      pragma Import (CPP, exec, "_ZN6AND_AE4execEP9Processor");

      function toStr (this : access AND_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:216
      pragma Import (CPP, toStr, "_ZN6AND_AE5toStrEv");

      function opCode (this : access AND_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:216
      pragma Import (CPP, opCode, "_ZN6AND_AE6opCodeEv");

      function nbCycles (this : access AND_AE) return int;  -- instruction.hpp:216
      pragma Import (CPP, nbCycles, "_ZN6AND_AE8nbCyclesEv");

      function hasArg (this : access AND_AE) return Extensions.bool;  -- instruction.hpp:216
      pragma Import (CPP, hasArg, "_ZN6AND_AE6hasArgEv");

      procedure setArg (this : access AND_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:216
      pragma Import (CPP, setArg, "_ZN6AND_AE6setArgER3ARG");

      function argSize (this : access AND_AE) return int;  -- instruction.hpp:216
      pragma Import (CPP, argSize, "_ZN6AND_AE7argSizeEv");
   end;
   use Class_AND_AE;
   package Class_AND_AH is
      type AND_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:217
      end record;
      pragma Import (CPP, AND_AH);

      procedure exec (this : access AND_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:217
      pragma Import (CPP, exec, "_ZN6AND_AH4execEP9Processor");

      function toStr (this : access AND_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:217
      pragma Import (CPP, toStr, "_ZN6AND_AH5toStrEv");

      function opCode (this : access AND_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:217
      pragma Import (CPP, opCode, "_ZN6AND_AH6opCodeEv");

      function nbCycles (this : access AND_AH) return int;  -- instruction.hpp:217
      pragma Import (CPP, nbCycles, "_ZN6AND_AH8nbCyclesEv");

      function hasArg (this : access AND_AH) return Extensions.bool;  -- instruction.hpp:217
      pragma Import (CPP, hasArg, "_ZN6AND_AH6hasArgEv");

      procedure setArg (this : access AND_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:217
      pragma Import (CPP, setArg, "_ZN6AND_AH6setArgER3ARG");

      function argSize (this : access AND_AH) return int;  -- instruction.hpp:217
      pragma Import (CPP, argSize, "_ZN6AND_AH7argSizeEv");
   end;
   use Class_AND_AH;
   package Class_AND_AL is
      type AND_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:218
      end record;
      pragma Import (CPP, AND_AL);

      procedure exec (this : access AND_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:218
      pragma Import (CPP, exec, "_ZN6AND_AL4execEP9Processor");

      function toStr (this : access AND_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:218
      pragma Import (CPP, toStr, "_ZN6AND_AL5toStrEv");

      function opCode (this : access AND_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:218
      pragma Import (CPP, opCode, "_ZN6AND_AL6opCodeEv");

      function nbCycles (this : access AND_AL) return int;  -- instruction.hpp:218
      pragma Import (CPP, nbCycles, "_ZN6AND_AL8nbCyclesEv");

      function hasArg (this : access AND_AL) return Extensions.bool;  -- instruction.hpp:218
      pragma Import (CPP, hasArg, "_ZN6AND_AL6hasArgEv");

      procedure setArg (this : access AND_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:218
      pragma Import (CPP, setArg, "_ZN6AND_AL6setArgER3ARG");

      function argSize (this : access AND_AL) return int;  -- instruction.hpp:218
      pragma Import (CPP, argSize, "_ZN6AND_AL7argSizeEv");
   end;
   use Class_AND_AL;
   package Class_AND_AHL is
      type AND_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:219
      end record;
      pragma Import (CPP, AND_AHL);

      procedure exec (this : access AND_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:219
      pragma Import (CPP, exec, "_ZN7AND_AHL4execEP9Processor");

      function toStr (this : access AND_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:219
      pragma Import (CPP, toStr, "_ZN7AND_AHL5toStrEv");

      function opCode (this : access AND_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:219
      pragma Import (CPP, opCode, "_ZN7AND_AHL6opCodeEv");

      function nbCycles (this : access AND_AHL) return int;  -- instruction.hpp:219
      pragma Import (CPP, nbCycles, "_ZN7AND_AHL8nbCyclesEv");

      function hasArg (this : access AND_AHL) return Extensions.bool;  -- instruction.hpp:219
      pragma Import (CPP, hasArg, "_ZN7AND_AHL6hasArgEv");

      procedure setArg (this : access AND_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:219
      pragma Import (CPP, setArg, "_ZN7AND_AHL6setArgER3ARG");

      function argSize (this : access AND_AHL) return int;  -- instruction.hpp:219
      pragma Import (CPP, argSize, "_ZN7AND_AHL7argSizeEv");
   end;
   use Class_AND_AHL;
   package Class_AND_AX is
      type AND_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:220
      end record;
      pragma Import (CPP, AND_AX);

      procedure exec (this : access AND_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:220
      pragma Import (CPP, exec, "_ZN6AND_AX4execEP9Processor");

      function toStr (this : access AND_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:220
      pragma Import (CPP, toStr, "_ZN6AND_AX5toStrEv");

      function opCode (this : access AND_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:220
      pragma Import (CPP, opCode, "_ZN6AND_AX6opCodeEv");

      function nbCycles (this : access AND_AX) return int;  -- instruction.hpp:220
      pragma Import (CPP, nbCycles, "_ZN6AND_AX8nbCyclesEv");

      function hasArg (this : access AND_AX) return Extensions.bool;  -- instruction.hpp:220
      pragma Import (CPP, hasArg, "_ZN6AND_AX6hasArgEv");

      procedure setArg (this : access AND_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:220
      pragma Import (CPP, setArg, "_ZN6AND_AX6setArgER3ARG");

      function argSize (this : access AND_AX) return int;  -- instruction.hpp:220
      pragma Import (CPP, argSize, "_ZN6AND_AX7argSizeEv");
   end;
   use Class_AND_AX;
  -- OR Instructions
   package Class_OR_AA is
      type OR_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:224
      end record;
      pragma Import (CPP, OR_AA);

      procedure exec (this : access OR_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:224
      pragma Import (CPP, exec, "_ZN5OR_AA4execEP9Processor");

      function toStr (this : access OR_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:224
      pragma Import (CPP, toStr, "_ZN5OR_AA5toStrEv");

      function opCode (this : access OR_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:224
      pragma Import (CPP, opCode, "_ZN5OR_AA6opCodeEv");

      function nbCycles (this : access OR_AA) return int;  -- instruction.hpp:224
      pragma Import (CPP, nbCycles, "_ZN5OR_AA8nbCyclesEv");

      function hasArg (this : access OR_AA) return Extensions.bool;  -- instruction.hpp:224
      pragma Import (CPP, hasArg, "_ZN5OR_AA6hasArgEv");

      procedure setArg (this : access OR_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:224
      pragma Import (CPP, setArg, "_ZN5OR_AA6setArgER3ARG");

      function argSize (this : access OR_AA) return int;  -- instruction.hpp:224
      pragma Import (CPP, argSize, "_ZN5OR_AA7argSizeEv");
   end;
   use Class_OR_AA;
   package Class_OR_AB is
      type OR_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:225
      end record;
      pragma Import (CPP, OR_AB);

      procedure exec (this : access OR_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:225
      pragma Import (CPP, exec, "_ZN5OR_AB4execEP9Processor");

      function toStr (this : access OR_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:225
      pragma Import (CPP, toStr, "_ZN5OR_AB5toStrEv");

      function opCode (this : access OR_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:225
      pragma Import (CPP, opCode, "_ZN5OR_AB6opCodeEv");

      function nbCycles (this : access OR_AB) return int;  -- instruction.hpp:225
      pragma Import (CPP, nbCycles, "_ZN5OR_AB8nbCyclesEv");

      function hasArg (this : access OR_AB) return Extensions.bool;  -- instruction.hpp:225
      pragma Import (CPP, hasArg, "_ZN5OR_AB6hasArgEv");

      procedure setArg (this : access OR_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:225
      pragma Import (CPP, setArg, "_ZN5OR_AB6setArgER3ARG");

      function argSize (this : access OR_AB) return int;  -- instruction.hpp:225
      pragma Import (CPP, argSize, "_ZN5OR_AB7argSizeEv");
   end;
   use Class_OR_AB;
   package Class_OR_AC is
      type OR_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:226
      end record;
      pragma Import (CPP, OR_AC);

      procedure exec (this : access OR_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:226
      pragma Import (CPP, exec, "_ZN5OR_AC4execEP9Processor");

      function toStr (this : access OR_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:226
      pragma Import (CPP, toStr, "_ZN5OR_AC5toStrEv");

      function opCode (this : access OR_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:226
      pragma Import (CPP, opCode, "_ZN5OR_AC6opCodeEv");

      function nbCycles (this : access OR_AC) return int;  -- instruction.hpp:226
      pragma Import (CPP, nbCycles, "_ZN5OR_AC8nbCyclesEv");

      function hasArg (this : access OR_AC) return Extensions.bool;  -- instruction.hpp:226
      pragma Import (CPP, hasArg, "_ZN5OR_AC6hasArgEv");

      procedure setArg (this : access OR_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:226
      pragma Import (CPP, setArg, "_ZN5OR_AC6setArgER3ARG");

      function argSize (this : access OR_AC) return int;  -- instruction.hpp:226
      pragma Import (CPP, argSize, "_ZN5OR_AC7argSizeEv");
   end;
   use Class_OR_AC;
   package Class_OR_AD is
      type OR_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:227
      end record;
      pragma Import (CPP, OR_AD);

      procedure exec (this : access OR_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:227
      pragma Import (CPP, exec, "_ZN5OR_AD4execEP9Processor");

      function toStr (this : access OR_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:227
      pragma Import (CPP, toStr, "_ZN5OR_AD5toStrEv");

      function opCode (this : access OR_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:227
      pragma Import (CPP, opCode, "_ZN5OR_AD6opCodeEv");

      function nbCycles (this : access OR_AD) return int;  -- instruction.hpp:227
      pragma Import (CPP, nbCycles, "_ZN5OR_AD8nbCyclesEv");

      function hasArg (this : access OR_AD) return Extensions.bool;  -- instruction.hpp:227
      pragma Import (CPP, hasArg, "_ZN5OR_AD6hasArgEv");

      procedure setArg (this : access OR_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:227
      pragma Import (CPP, setArg, "_ZN5OR_AD6setArgER3ARG");

      function argSize (this : access OR_AD) return int;  -- instruction.hpp:227
      pragma Import (CPP, argSize, "_ZN5OR_AD7argSizeEv");
   end;
   use Class_OR_AD;
   package Class_OR_AE is
      type OR_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:228
      end record;
      pragma Import (CPP, OR_AE);

      procedure exec (this : access OR_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:228
      pragma Import (CPP, exec, "_ZN5OR_AE4execEP9Processor");

      function toStr (this : access OR_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:228
      pragma Import (CPP, toStr, "_ZN5OR_AE5toStrEv");

      function opCode (this : access OR_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:228
      pragma Import (CPP, opCode, "_ZN5OR_AE6opCodeEv");

      function nbCycles (this : access OR_AE) return int;  -- instruction.hpp:228
      pragma Import (CPP, nbCycles, "_ZN5OR_AE8nbCyclesEv");

      function hasArg (this : access OR_AE) return Extensions.bool;  -- instruction.hpp:228
      pragma Import (CPP, hasArg, "_ZN5OR_AE6hasArgEv");

      procedure setArg (this : access OR_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:228
      pragma Import (CPP, setArg, "_ZN5OR_AE6setArgER3ARG");

      function argSize (this : access OR_AE) return int;  -- instruction.hpp:228
      pragma Import (CPP, argSize, "_ZN5OR_AE7argSizeEv");
   end;
   use Class_OR_AE;
   package Class_OR_AH is
      type OR_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:229
      end record;
      pragma Import (CPP, OR_AH);

      procedure exec (this : access OR_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:229
      pragma Import (CPP, exec, "_ZN5OR_AH4execEP9Processor");

      function toStr (this : access OR_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:229
      pragma Import (CPP, toStr, "_ZN5OR_AH5toStrEv");

      function opCode (this : access OR_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:229
      pragma Import (CPP, opCode, "_ZN5OR_AH6opCodeEv");

      function nbCycles (this : access OR_AH) return int;  -- instruction.hpp:229
      pragma Import (CPP, nbCycles, "_ZN5OR_AH8nbCyclesEv");

      function hasArg (this : access OR_AH) return Extensions.bool;  -- instruction.hpp:229
      pragma Import (CPP, hasArg, "_ZN5OR_AH6hasArgEv");

      procedure setArg (this : access OR_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:229
      pragma Import (CPP, setArg, "_ZN5OR_AH6setArgER3ARG");

      function argSize (this : access OR_AH) return int;  -- instruction.hpp:229
      pragma Import (CPP, argSize, "_ZN5OR_AH7argSizeEv");
   end;
   use Class_OR_AH;
   package Class_OR_AL is
      type OR_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:230
      end record;
      pragma Import (CPP, OR_AL);

      procedure exec (this : access OR_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:230
      pragma Import (CPP, exec, "_ZN5OR_AL4execEP9Processor");

      function toStr (this : access OR_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:230
      pragma Import (CPP, toStr, "_ZN5OR_AL5toStrEv");

      function opCode (this : access OR_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:230
      pragma Import (CPP, opCode, "_ZN5OR_AL6opCodeEv");

      function nbCycles (this : access OR_AL) return int;  -- instruction.hpp:230
      pragma Import (CPP, nbCycles, "_ZN5OR_AL8nbCyclesEv");

      function hasArg (this : access OR_AL) return Extensions.bool;  -- instruction.hpp:230
      pragma Import (CPP, hasArg, "_ZN5OR_AL6hasArgEv");

      procedure setArg (this : access OR_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:230
      pragma Import (CPP, setArg, "_ZN5OR_AL6setArgER3ARG");

      function argSize (this : access OR_AL) return int;  -- instruction.hpp:230
      pragma Import (CPP, argSize, "_ZN5OR_AL7argSizeEv");
   end;
   use Class_OR_AL;
   package Class_OR_AHL is
      type OR_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:231
      end record;
      pragma Import (CPP, OR_AHL);

      procedure exec (this : access OR_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:231
      pragma Import (CPP, exec, "_ZN6OR_AHL4execEP9Processor");

      function toStr (this : access OR_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:231
      pragma Import (CPP, toStr, "_ZN6OR_AHL5toStrEv");

      function opCode (this : access OR_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:231
      pragma Import (CPP, opCode, "_ZN6OR_AHL6opCodeEv");

      function nbCycles (this : access OR_AHL) return int;  -- instruction.hpp:231
      pragma Import (CPP, nbCycles, "_ZN6OR_AHL8nbCyclesEv");

      function hasArg (this : access OR_AHL) return Extensions.bool;  -- instruction.hpp:231
      pragma Import (CPP, hasArg, "_ZN6OR_AHL6hasArgEv");

      procedure setArg (this : access OR_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:231
      pragma Import (CPP, setArg, "_ZN6OR_AHL6setArgER3ARG");

      function argSize (this : access OR_AHL) return int;  -- instruction.hpp:231
      pragma Import (CPP, argSize, "_ZN6OR_AHL7argSizeEv");
   end;
   use Class_OR_AHL;
   package Class_OR_AX is
      type OR_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:232
      end record;
      pragma Import (CPP, OR_AX);

      procedure exec (this : access OR_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:232
      pragma Import (CPP, exec, "_ZN5OR_AX4execEP9Processor");

      function toStr (this : access OR_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:232
      pragma Import (CPP, toStr, "_ZN5OR_AX5toStrEv");

      function opCode (this : access OR_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:232
      pragma Import (CPP, opCode, "_ZN5OR_AX6opCodeEv");

      function nbCycles (this : access OR_AX) return int;  -- instruction.hpp:232
      pragma Import (CPP, nbCycles, "_ZN5OR_AX8nbCyclesEv");

      function hasArg (this : access OR_AX) return Extensions.bool;  -- instruction.hpp:232
      pragma Import (CPP, hasArg, "_ZN5OR_AX6hasArgEv");

      procedure setArg (this : access OR_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:232
      pragma Import (CPP, setArg, "_ZN5OR_AX6setArgER3ARG");

      function argSize (this : access OR_AX) return int;  -- instruction.hpp:232
      pragma Import (CPP, argSize, "_ZN5OR_AX7argSizeEv");
   end;
   use Class_OR_AX;
  -- XOR Instructions
   package Class_XOR_AA is
      type XOR_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:236
      end record;
      pragma Import (CPP, XOR_AA);

      procedure exec (this : access XOR_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:236
      pragma Import (CPP, exec, "_ZN6XOR_AA4execEP9Processor");

      function toStr (this : access XOR_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:236
      pragma Import (CPP, toStr, "_ZN6XOR_AA5toStrEv");

      function opCode (this : access XOR_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:236
      pragma Import (CPP, opCode, "_ZN6XOR_AA6opCodeEv");

      function nbCycles (this : access XOR_AA) return int;  -- instruction.hpp:236
      pragma Import (CPP, nbCycles, "_ZN6XOR_AA8nbCyclesEv");

      function hasArg (this : access XOR_AA) return Extensions.bool;  -- instruction.hpp:236
      pragma Import (CPP, hasArg, "_ZN6XOR_AA6hasArgEv");

      procedure setArg (this : access XOR_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:236
      pragma Import (CPP, setArg, "_ZN6XOR_AA6setArgER3ARG");

      function argSize (this : access XOR_AA) return int;  -- instruction.hpp:236
      pragma Import (CPP, argSize, "_ZN6XOR_AA7argSizeEv");
   end;
   use Class_XOR_AA;
   package Class_XOR_AB is
      type XOR_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:237
      end record;
      pragma Import (CPP, XOR_AB);

      procedure exec (this : access XOR_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:237
      pragma Import (CPP, exec, "_ZN6XOR_AB4execEP9Processor");

      function toStr (this : access XOR_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:237
      pragma Import (CPP, toStr, "_ZN6XOR_AB5toStrEv");

      function opCode (this : access XOR_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:237
      pragma Import (CPP, opCode, "_ZN6XOR_AB6opCodeEv");

      function nbCycles (this : access XOR_AB) return int;  -- instruction.hpp:237
      pragma Import (CPP, nbCycles, "_ZN6XOR_AB8nbCyclesEv");

      function hasArg (this : access XOR_AB) return Extensions.bool;  -- instruction.hpp:237
      pragma Import (CPP, hasArg, "_ZN6XOR_AB6hasArgEv");

      procedure setArg (this : access XOR_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:237
      pragma Import (CPP, setArg, "_ZN6XOR_AB6setArgER3ARG");

      function argSize (this : access XOR_AB) return int;  -- instruction.hpp:237
      pragma Import (CPP, argSize, "_ZN6XOR_AB7argSizeEv");
   end;
   use Class_XOR_AB;
   package Class_XOR_AC is
      type XOR_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:238
      end record;
      pragma Import (CPP, XOR_AC);

      procedure exec (this : access XOR_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:238
      pragma Import (CPP, exec, "_ZN6XOR_AC4execEP9Processor");

      function toStr (this : access XOR_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:238
      pragma Import (CPP, toStr, "_ZN6XOR_AC5toStrEv");

      function opCode (this : access XOR_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:238
      pragma Import (CPP, opCode, "_ZN6XOR_AC6opCodeEv");

      function nbCycles (this : access XOR_AC) return int;  -- instruction.hpp:238
      pragma Import (CPP, nbCycles, "_ZN6XOR_AC8nbCyclesEv");

      function hasArg (this : access XOR_AC) return Extensions.bool;  -- instruction.hpp:238
      pragma Import (CPP, hasArg, "_ZN6XOR_AC6hasArgEv");

      procedure setArg (this : access XOR_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:238
      pragma Import (CPP, setArg, "_ZN6XOR_AC6setArgER3ARG");

      function argSize (this : access XOR_AC) return int;  -- instruction.hpp:238
      pragma Import (CPP, argSize, "_ZN6XOR_AC7argSizeEv");
   end;
   use Class_XOR_AC;
   package Class_XOR_AD is
      type XOR_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:239
      end record;
      pragma Import (CPP, XOR_AD);

      procedure exec (this : access XOR_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:239
      pragma Import (CPP, exec, "_ZN6XOR_AD4execEP9Processor");

      function toStr (this : access XOR_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:239
      pragma Import (CPP, toStr, "_ZN6XOR_AD5toStrEv");

      function opCode (this : access XOR_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:239
      pragma Import (CPP, opCode, "_ZN6XOR_AD6opCodeEv");

      function nbCycles (this : access XOR_AD) return int;  -- instruction.hpp:239
      pragma Import (CPP, nbCycles, "_ZN6XOR_AD8nbCyclesEv");

      function hasArg (this : access XOR_AD) return Extensions.bool;  -- instruction.hpp:239
      pragma Import (CPP, hasArg, "_ZN6XOR_AD6hasArgEv");

      procedure setArg (this : access XOR_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:239
      pragma Import (CPP, setArg, "_ZN6XOR_AD6setArgER3ARG");

      function argSize (this : access XOR_AD) return int;  -- instruction.hpp:239
      pragma Import (CPP, argSize, "_ZN6XOR_AD7argSizeEv");
   end;
   use Class_XOR_AD;
   package Class_XOR_AE is
      type XOR_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:240
      end record;
      pragma Import (CPP, XOR_AE);

      procedure exec (this : access XOR_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:240
      pragma Import (CPP, exec, "_ZN6XOR_AE4execEP9Processor");

      function toStr (this : access XOR_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:240
      pragma Import (CPP, toStr, "_ZN6XOR_AE5toStrEv");

      function opCode (this : access XOR_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:240
      pragma Import (CPP, opCode, "_ZN6XOR_AE6opCodeEv");

      function nbCycles (this : access XOR_AE) return int;  -- instruction.hpp:240
      pragma Import (CPP, nbCycles, "_ZN6XOR_AE8nbCyclesEv");

      function hasArg (this : access XOR_AE) return Extensions.bool;  -- instruction.hpp:240
      pragma Import (CPP, hasArg, "_ZN6XOR_AE6hasArgEv");

      procedure setArg (this : access XOR_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:240
      pragma Import (CPP, setArg, "_ZN6XOR_AE6setArgER3ARG");

      function argSize (this : access XOR_AE) return int;  -- instruction.hpp:240
      pragma Import (CPP, argSize, "_ZN6XOR_AE7argSizeEv");
   end;
   use Class_XOR_AE;
   package Class_XOR_AH is
      type XOR_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:241
      end record;
      pragma Import (CPP, XOR_AH);

      procedure exec (this : access XOR_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:241
      pragma Import (CPP, exec, "_ZN6XOR_AH4execEP9Processor");

      function toStr (this : access XOR_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:241
      pragma Import (CPP, toStr, "_ZN6XOR_AH5toStrEv");

      function opCode (this : access XOR_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:241
      pragma Import (CPP, opCode, "_ZN6XOR_AH6opCodeEv");

      function nbCycles (this : access XOR_AH) return int;  -- instruction.hpp:241
      pragma Import (CPP, nbCycles, "_ZN6XOR_AH8nbCyclesEv");

      function hasArg (this : access XOR_AH) return Extensions.bool;  -- instruction.hpp:241
      pragma Import (CPP, hasArg, "_ZN6XOR_AH6hasArgEv");

      procedure setArg (this : access XOR_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:241
      pragma Import (CPP, setArg, "_ZN6XOR_AH6setArgER3ARG");

      function argSize (this : access XOR_AH) return int;  -- instruction.hpp:241
      pragma Import (CPP, argSize, "_ZN6XOR_AH7argSizeEv");
   end;
   use Class_XOR_AH;
   package Class_XOR_AL is
      type XOR_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:242
      end record;
      pragma Import (CPP, XOR_AL);

      procedure exec (this : access XOR_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:242
      pragma Import (CPP, exec, "_ZN6XOR_AL4execEP9Processor");

      function toStr (this : access XOR_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:242
      pragma Import (CPP, toStr, "_ZN6XOR_AL5toStrEv");

      function opCode (this : access XOR_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:242
      pragma Import (CPP, opCode, "_ZN6XOR_AL6opCodeEv");

      function nbCycles (this : access XOR_AL) return int;  -- instruction.hpp:242
      pragma Import (CPP, nbCycles, "_ZN6XOR_AL8nbCyclesEv");

      function hasArg (this : access XOR_AL) return Extensions.bool;  -- instruction.hpp:242
      pragma Import (CPP, hasArg, "_ZN6XOR_AL6hasArgEv");

      procedure setArg (this : access XOR_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:242
      pragma Import (CPP, setArg, "_ZN6XOR_AL6setArgER3ARG");

      function argSize (this : access XOR_AL) return int;  -- instruction.hpp:242
      pragma Import (CPP, argSize, "_ZN6XOR_AL7argSizeEv");
   end;
   use Class_XOR_AL;
   package Class_XOR_AHL is
      type XOR_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:243
      end record;
      pragma Import (CPP, XOR_AHL);

      procedure exec (this : access XOR_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:243
      pragma Import (CPP, exec, "_ZN7XOR_AHL4execEP9Processor");

      function toStr (this : access XOR_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:243
      pragma Import (CPP, toStr, "_ZN7XOR_AHL5toStrEv");

      function opCode (this : access XOR_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:243
      pragma Import (CPP, opCode, "_ZN7XOR_AHL6opCodeEv");

      function nbCycles (this : access XOR_AHL) return int;  -- instruction.hpp:243
      pragma Import (CPP, nbCycles, "_ZN7XOR_AHL8nbCyclesEv");

      function hasArg (this : access XOR_AHL) return Extensions.bool;  -- instruction.hpp:243
      pragma Import (CPP, hasArg, "_ZN7XOR_AHL6hasArgEv");

      procedure setArg (this : access XOR_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:243
      pragma Import (CPP, setArg, "_ZN7XOR_AHL6setArgER3ARG");

      function argSize (this : access XOR_AHL) return int;  -- instruction.hpp:243
      pragma Import (CPP, argSize, "_ZN7XOR_AHL7argSizeEv");
   end;
   use Class_XOR_AHL;
   package Class_XOR_AX is
      type XOR_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:244
      end record;
      pragma Import (CPP, XOR_AX);

      procedure exec (this : access XOR_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:244
      pragma Import (CPP, exec, "_ZN6XOR_AX4execEP9Processor");

      function toStr (this : access XOR_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:244
      pragma Import (CPP, toStr, "_ZN6XOR_AX5toStrEv");

      function opCode (this : access XOR_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:244
      pragma Import (CPP, opCode, "_ZN6XOR_AX6opCodeEv");

      function nbCycles (this : access XOR_AX) return int;  -- instruction.hpp:244
      pragma Import (CPP, nbCycles, "_ZN6XOR_AX8nbCyclesEv");

      function hasArg (this : access XOR_AX) return Extensions.bool;  -- instruction.hpp:244
      pragma Import (CPP, hasArg, "_ZN6XOR_AX6hasArgEv");

      procedure setArg (this : access XOR_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:244
      pragma Import (CPP, setArg, "_ZN6XOR_AX6setArgER3ARG");

      function argSize (this : access XOR_AX) return int;  -- instruction.hpp:244
      pragma Import (CPP, argSize, "_ZN6XOR_AX7argSizeEv");
   end;
   use Class_XOR_AX;
  -- CP Instructions
   package Class_CP_AA is
      type CP_AA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:248
      end record;
      pragma Import (CPP, CP_AA);

      procedure exec (this : access CP_AA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:248
      pragma Import (CPP, exec, "_ZN5CP_AA4execEP9Processor");

      function toStr (this : access CP_AA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:248
      pragma Import (CPP, toStr, "_ZN5CP_AA5toStrEv");

      function opCode (this : access CP_AA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:248
      pragma Import (CPP, opCode, "_ZN5CP_AA6opCodeEv");

      function nbCycles (this : access CP_AA) return int;  -- instruction.hpp:248
      pragma Import (CPP, nbCycles, "_ZN5CP_AA8nbCyclesEv");

      function hasArg (this : access CP_AA) return Extensions.bool;  -- instruction.hpp:248
      pragma Import (CPP, hasArg, "_ZN5CP_AA6hasArgEv");

      procedure setArg (this : access CP_AA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:248
      pragma Import (CPP, setArg, "_ZN5CP_AA6setArgER3ARG");

      function argSize (this : access CP_AA) return int;  -- instruction.hpp:248
      pragma Import (CPP, argSize, "_ZN5CP_AA7argSizeEv");
   end;
   use Class_CP_AA;
   package Class_CP_AB is
      type CP_AB is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:249
      end record;
      pragma Import (CPP, CP_AB);

      procedure exec (this : access CP_AB; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:249
      pragma Import (CPP, exec, "_ZN5CP_AB4execEP9Processor");

      function toStr (this : access CP_AB) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:249
      pragma Import (CPP, toStr, "_ZN5CP_AB5toStrEv");

      function opCode (this : access CP_AB) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:249
      pragma Import (CPP, opCode, "_ZN5CP_AB6opCodeEv");

      function nbCycles (this : access CP_AB) return int;  -- instruction.hpp:249
      pragma Import (CPP, nbCycles, "_ZN5CP_AB8nbCyclesEv");

      function hasArg (this : access CP_AB) return Extensions.bool;  -- instruction.hpp:249
      pragma Import (CPP, hasArg, "_ZN5CP_AB6hasArgEv");

      procedure setArg (this : access CP_AB; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:249
      pragma Import (CPP, setArg, "_ZN5CP_AB6setArgER3ARG");

      function argSize (this : access CP_AB) return int;  -- instruction.hpp:249
      pragma Import (CPP, argSize, "_ZN5CP_AB7argSizeEv");
   end;
   use Class_CP_AB;
   package Class_CP_AC is
      type CP_AC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:250
      end record;
      pragma Import (CPP, CP_AC);

      procedure exec (this : access CP_AC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:250
      pragma Import (CPP, exec, "_ZN5CP_AC4execEP9Processor");

      function toStr (this : access CP_AC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:250
      pragma Import (CPP, toStr, "_ZN5CP_AC5toStrEv");

      function opCode (this : access CP_AC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:250
      pragma Import (CPP, opCode, "_ZN5CP_AC6opCodeEv");

      function nbCycles (this : access CP_AC) return int;  -- instruction.hpp:250
      pragma Import (CPP, nbCycles, "_ZN5CP_AC8nbCyclesEv");

      function hasArg (this : access CP_AC) return Extensions.bool;  -- instruction.hpp:250
      pragma Import (CPP, hasArg, "_ZN5CP_AC6hasArgEv");

      procedure setArg (this : access CP_AC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:250
      pragma Import (CPP, setArg, "_ZN5CP_AC6setArgER3ARG");

      function argSize (this : access CP_AC) return int;  -- instruction.hpp:250
      pragma Import (CPP, argSize, "_ZN5CP_AC7argSizeEv");
   end;
   use Class_CP_AC;
   package Class_CP_AD is
      type CP_AD is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:251
      end record;
      pragma Import (CPP, CP_AD);

      procedure exec (this : access CP_AD; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:251
      pragma Import (CPP, exec, "_ZN5CP_AD4execEP9Processor");

      function toStr (this : access CP_AD) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:251
      pragma Import (CPP, toStr, "_ZN5CP_AD5toStrEv");

      function opCode (this : access CP_AD) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:251
      pragma Import (CPP, opCode, "_ZN5CP_AD6opCodeEv");

      function nbCycles (this : access CP_AD) return int;  -- instruction.hpp:251
      pragma Import (CPP, nbCycles, "_ZN5CP_AD8nbCyclesEv");

      function hasArg (this : access CP_AD) return Extensions.bool;  -- instruction.hpp:251
      pragma Import (CPP, hasArg, "_ZN5CP_AD6hasArgEv");

      procedure setArg (this : access CP_AD; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:251
      pragma Import (CPP, setArg, "_ZN5CP_AD6setArgER3ARG");

      function argSize (this : access CP_AD) return int;  -- instruction.hpp:251
      pragma Import (CPP, argSize, "_ZN5CP_AD7argSizeEv");
   end;
   use Class_CP_AD;
   package Class_CP_AE is
      type CP_AE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:252
      end record;
      pragma Import (CPP, CP_AE);

      procedure exec (this : access CP_AE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:252
      pragma Import (CPP, exec, "_ZN5CP_AE4execEP9Processor");

      function toStr (this : access CP_AE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:252
      pragma Import (CPP, toStr, "_ZN5CP_AE5toStrEv");

      function opCode (this : access CP_AE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:252
      pragma Import (CPP, opCode, "_ZN5CP_AE6opCodeEv");

      function nbCycles (this : access CP_AE) return int;  -- instruction.hpp:252
      pragma Import (CPP, nbCycles, "_ZN5CP_AE8nbCyclesEv");

      function hasArg (this : access CP_AE) return Extensions.bool;  -- instruction.hpp:252
      pragma Import (CPP, hasArg, "_ZN5CP_AE6hasArgEv");

      procedure setArg (this : access CP_AE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:252
      pragma Import (CPP, setArg, "_ZN5CP_AE6setArgER3ARG");

      function argSize (this : access CP_AE) return int;  -- instruction.hpp:252
      pragma Import (CPP, argSize, "_ZN5CP_AE7argSizeEv");
   end;
   use Class_CP_AE;
   package Class_CP_AH is
      type CP_AH is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:253
      end record;
      pragma Import (CPP, CP_AH);

      procedure exec (this : access CP_AH; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:253
      pragma Import (CPP, exec, "_ZN5CP_AH4execEP9Processor");

      function toStr (this : access CP_AH) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:253
      pragma Import (CPP, toStr, "_ZN5CP_AH5toStrEv");

      function opCode (this : access CP_AH) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:253
      pragma Import (CPP, opCode, "_ZN5CP_AH6opCodeEv");

      function nbCycles (this : access CP_AH) return int;  -- instruction.hpp:253
      pragma Import (CPP, nbCycles, "_ZN5CP_AH8nbCyclesEv");

      function hasArg (this : access CP_AH) return Extensions.bool;  -- instruction.hpp:253
      pragma Import (CPP, hasArg, "_ZN5CP_AH6hasArgEv");

      procedure setArg (this : access CP_AH; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:253
      pragma Import (CPP, setArg, "_ZN5CP_AH6setArgER3ARG");

      function argSize (this : access CP_AH) return int;  -- instruction.hpp:253
      pragma Import (CPP, argSize, "_ZN5CP_AH7argSizeEv");
   end;
   use Class_CP_AH;
   package Class_CP_AL is
      type CP_AL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:254
      end record;
      pragma Import (CPP, CP_AL);

      procedure exec (this : access CP_AL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:254
      pragma Import (CPP, exec, "_ZN5CP_AL4execEP9Processor");

      function toStr (this : access CP_AL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:254
      pragma Import (CPP, toStr, "_ZN5CP_AL5toStrEv");

      function opCode (this : access CP_AL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:254
      pragma Import (CPP, opCode, "_ZN5CP_AL6opCodeEv");

      function nbCycles (this : access CP_AL) return int;  -- instruction.hpp:254
      pragma Import (CPP, nbCycles, "_ZN5CP_AL8nbCyclesEv");

      function hasArg (this : access CP_AL) return Extensions.bool;  -- instruction.hpp:254
      pragma Import (CPP, hasArg, "_ZN5CP_AL6hasArgEv");

      procedure setArg (this : access CP_AL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:254
      pragma Import (CPP, setArg, "_ZN5CP_AL6setArgER3ARG");

      function argSize (this : access CP_AL) return int;  -- instruction.hpp:254
      pragma Import (CPP, argSize, "_ZN5CP_AL7argSizeEv");
   end;
   use Class_CP_AL;
   package Class_CP_AHL is
      type CP_AHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:255
      end record;
      pragma Import (CPP, CP_AHL);

      procedure exec (this : access CP_AHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:255
      pragma Import (CPP, exec, "_ZN6CP_AHL4execEP9Processor");

      function toStr (this : access CP_AHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:255
      pragma Import (CPP, toStr, "_ZN6CP_AHL5toStrEv");

      function opCode (this : access CP_AHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:255
      pragma Import (CPP, opCode, "_ZN6CP_AHL6opCodeEv");

      function nbCycles (this : access CP_AHL) return int;  -- instruction.hpp:255
      pragma Import (CPP, nbCycles, "_ZN6CP_AHL8nbCyclesEv");

      function hasArg (this : access CP_AHL) return Extensions.bool;  -- instruction.hpp:255
      pragma Import (CPP, hasArg, "_ZN6CP_AHL6hasArgEv");

      procedure setArg (this : access CP_AHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:255
      pragma Import (CPP, setArg, "_ZN6CP_AHL6setArgER3ARG");

      function argSize (this : access CP_AHL) return int;  -- instruction.hpp:255
      pragma Import (CPP, argSize, "_ZN6CP_AHL7argSizeEv");
   end;
   use Class_CP_AHL;
   package Class_CP_AX is
      type CP_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:256
      end record;
      pragma Import (CPP, CP_AX);

      procedure exec (this : access CP_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:256
      pragma Import (CPP, exec, "_ZN5CP_AX4execEP9Processor");

      function toStr (this : access CP_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:256
      pragma Import (CPP, toStr, "_ZN5CP_AX5toStrEv");

      function opCode (this : access CP_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:256
      pragma Import (CPP, opCode, "_ZN5CP_AX6opCodeEv");

      function nbCycles (this : access CP_AX) return int;  -- instruction.hpp:256
      pragma Import (CPP, nbCycles, "_ZN5CP_AX8nbCyclesEv");

      function hasArg (this : access CP_AX) return Extensions.bool;  -- instruction.hpp:256
      pragma Import (CPP, hasArg, "_ZN5CP_AX6hasArgEv");

      procedure setArg (this : access CP_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:256
      pragma Import (CPP, setArg, "_ZN5CP_AX6setArgER3ARG");

      function argSize (this : access CP_AX) return int;  -- instruction.hpp:256
      pragma Import (CPP, argSize, "_ZN5CP_AX7argSizeEv");
   end;
   use Class_CP_AX;
  -- INC Instructions
   package Class_INC_A is
      type INC_A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:261
      end record;
      pragma Import (CPP, INC_A);

      procedure exec (this : access INC_A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:261
      pragma Import (CPP, exec, "_ZN5INC_A4execEP9Processor");

      function toStr (this : access INC_A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:261
      pragma Import (CPP, toStr, "_ZN5INC_A5toStrEv");

      function opCode (this : access INC_A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:261
      pragma Import (CPP, opCode, "_ZN5INC_A6opCodeEv");

      function nbCycles (this : access INC_A) return int;  -- instruction.hpp:261
      pragma Import (CPP, nbCycles, "_ZN5INC_A8nbCyclesEv");

      function hasArg (this : access INC_A) return Extensions.bool;  -- instruction.hpp:261
      pragma Import (CPP, hasArg, "_ZN5INC_A6hasArgEv");

      procedure setArg (this : access INC_A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:261
      pragma Import (CPP, setArg, "_ZN5INC_A6setArgER3ARG");

      function argSize (this : access INC_A) return int;  -- instruction.hpp:261
      pragma Import (CPP, argSize, "_ZN5INC_A7argSizeEv");
   end;
   use Class_INC_A;
   package Class_INC_B is
      type INC_B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:262
      end record;
      pragma Import (CPP, INC_B);

      procedure exec (this : access INC_B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:262
      pragma Import (CPP, exec, "_ZN5INC_B4execEP9Processor");

      function toStr (this : access INC_B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:262
      pragma Import (CPP, toStr, "_ZN5INC_B5toStrEv");

      function opCode (this : access INC_B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:262
      pragma Import (CPP, opCode, "_ZN5INC_B6opCodeEv");

      function nbCycles (this : access INC_B) return int;  -- instruction.hpp:262
      pragma Import (CPP, nbCycles, "_ZN5INC_B8nbCyclesEv");

      function hasArg (this : access INC_B) return Extensions.bool;  -- instruction.hpp:262
      pragma Import (CPP, hasArg, "_ZN5INC_B6hasArgEv");

      procedure setArg (this : access INC_B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:262
      pragma Import (CPP, setArg, "_ZN5INC_B6setArgER3ARG");

      function argSize (this : access INC_B) return int;  -- instruction.hpp:262
      pragma Import (CPP, argSize, "_ZN5INC_B7argSizeEv");
   end;
   use Class_INC_B;
   package Class_INC_C is
      type INC_C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:263
      end record;
      pragma Import (CPP, INC_C);

      procedure exec (this : access INC_C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:263
      pragma Import (CPP, exec, "_ZN5INC_C4execEP9Processor");

      function toStr (this : access INC_C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:263
      pragma Import (CPP, toStr, "_ZN5INC_C5toStrEv");

      function opCode (this : access INC_C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:263
      pragma Import (CPP, opCode, "_ZN5INC_C6opCodeEv");

      function nbCycles (this : access INC_C) return int;  -- instruction.hpp:263
      pragma Import (CPP, nbCycles, "_ZN5INC_C8nbCyclesEv");

      function hasArg (this : access INC_C) return Extensions.bool;  -- instruction.hpp:263
      pragma Import (CPP, hasArg, "_ZN5INC_C6hasArgEv");

      procedure setArg (this : access INC_C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:263
      pragma Import (CPP, setArg, "_ZN5INC_C6setArgER3ARG");

      function argSize (this : access INC_C) return int;  -- instruction.hpp:263
      pragma Import (CPP, argSize, "_ZN5INC_C7argSizeEv");
   end;
   use Class_INC_C;
   package Class_INC_D is
      type INC_D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:264
      end record;
      pragma Import (CPP, INC_D);

      procedure exec (this : access INC_D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:264
      pragma Import (CPP, exec, "_ZN5INC_D4execEP9Processor");

      function toStr (this : access INC_D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:264
      pragma Import (CPP, toStr, "_ZN5INC_D5toStrEv");

      function opCode (this : access INC_D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:264
      pragma Import (CPP, opCode, "_ZN5INC_D6opCodeEv");

      function nbCycles (this : access INC_D) return int;  -- instruction.hpp:264
      pragma Import (CPP, nbCycles, "_ZN5INC_D8nbCyclesEv");

      function hasArg (this : access INC_D) return Extensions.bool;  -- instruction.hpp:264
      pragma Import (CPP, hasArg, "_ZN5INC_D6hasArgEv");

      procedure setArg (this : access INC_D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:264
      pragma Import (CPP, setArg, "_ZN5INC_D6setArgER3ARG");

      function argSize (this : access INC_D) return int;  -- instruction.hpp:264
      pragma Import (CPP, argSize, "_ZN5INC_D7argSizeEv");
   end;
   use Class_INC_D;
   package Class_INC_E is
      type INC_E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:265
      end record;
      pragma Import (CPP, INC_E);

      procedure exec (this : access INC_E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:265
      pragma Import (CPP, exec, "_ZN5INC_E4execEP9Processor");

      function toStr (this : access INC_E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:265
      pragma Import (CPP, toStr, "_ZN5INC_E5toStrEv");

      function opCode (this : access INC_E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:265
      pragma Import (CPP, opCode, "_ZN5INC_E6opCodeEv");

      function nbCycles (this : access INC_E) return int;  -- instruction.hpp:265
      pragma Import (CPP, nbCycles, "_ZN5INC_E8nbCyclesEv");

      function hasArg (this : access INC_E) return Extensions.bool;  -- instruction.hpp:265
      pragma Import (CPP, hasArg, "_ZN5INC_E6hasArgEv");

      procedure setArg (this : access INC_E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:265
      pragma Import (CPP, setArg, "_ZN5INC_E6setArgER3ARG");

      function argSize (this : access INC_E) return int;  -- instruction.hpp:265
      pragma Import (CPP, argSize, "_ZN5INC_E7argSizeEv");
   end;
   use Class_INC_E;
   package Class_INC_H is
      type INC_H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:266
      end record;
      pragma Import (CPP, INC_H);

      procedure exec (this : access INC_H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:266
      pragma Import (CPP, exec, "_ZN5INC_H4execEP9Processor");

      function toStr (this : access INC_H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:266
      pragma Import (CPP, toStr, "_ZN5INC_H5toStrEv");

      function opCode (this : access INC_H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:266
      pragma Import (CPP, opCode, "_ZN5INC_H6opCodeEv");

      function nbCycles (this : access INC_H) return int;  -- instruction.hpp:266
      pragma Import (CPP, nbCycles, "_ZN5INC_H8nbCyclesEv");

      function hasArg (this : access INC_H) return Extensions.bool;  -- instruction.hpp:266
      pragma Import (CPP, hasArg, "_ZN5INC_H6hasArgEv");

      procedure setArg (this : access INC_H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:266
      pragma Import (CPP, setArg, "_ZN5INC_H6setArgER3ARG");

      function argSize (this : access INC_H) return int;  -- instruction.hpp:266
      pragma Import (CPP, argSize, "_ZN5INC_H7argSizeEv");
   end;
   use Class_INC_H;
   package Class_INC_L is
      type INC_L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:267
      end record;
      pragma Import (CPP, INC_L);

      procedure exec (this : access INC_L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:267
      pragma Import (CPP, exec, "_ZN5INC_L4execEP9Processor");

      function toStr (this : access INC_L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:267
      pragma Import (CPP, toStr, "_ZN5INC_L5toStrEv");

      function opCode (this : access INC_L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:267
      pragma Import (CPP, opCode, "_ZN5INC_L6opCodeEv");

      function nbCycles (this : access INC_L) return int;  -- instruction.hpp:267
      pragma Import (CPP, nbCycles, "_ZN5INC_L8nbCyclesEv");

      function hasArg (this : access INC_L) return Extensions.bool;  -- instruction.hpp:267
      pragma Import (CPP, hasArg, "_ZN5INC_L6hasArgEv");

      procedure setArg (this : access INC_L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:267
      pragma Import (CPP, setArg, "_ZN5INC_L6setArgER3ARG");

      function argSize (this : access INC_L) return int;  -- instruction.hpp:267
      pragma Import (CPP, argSize, "_ZN5INC_L7argSizeEv");
   end;
   use Class_INC_L;
   package Class_INC_HLdereference is
      type INC_HLdereference is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:269
      end record;
      pragma Import (CPP, INC_HLdereference);

      procedure exec (this : access INC_HLdereference; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:269
      pragma Import (CPP, exec, "_ZN17INC_HLdereference4execEP9Processor");

      function toStr (this : access INC_HLdereference) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:269
      pragma Import (CPP, toStr, "_ZN17INC_HLdereference5toStrEv");

      function opCode (this : access INC_HLdereference) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:269
      pragma Import (CPP, opCode, "_ZN17INC_HLdereference6opCodeEv");

      function nbCycles (this : access INC_HLdereference) return int;  -- instruction.hpp:269
      pragma Import (CPP, nbCycles, "_ZN17INC_HLdereference8nbCyclesEv");

      function hasArg (this : access INC_HLdereference) return Extensions.bool;  -- instruction.hpp:269
      pragma Import (CPP, hasArg, "_ZN17INC_HLdereference6hasArgEv");

      procedure setArg (this : access INC_HLdereference; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:269
      pragma Import (CPP, setArg, "_ZN17INC_HLdereference6setArgER3ARG");

      function argSize (this : access INC_HLdereference) return int;  -- instruction.hpp:269
      pragma Import (CPP, argSize, "_ZN17INC_HLdereference7argSizeEv");
   end;
   use Class_INC_HLdereference;
  -- INC on double registers
   package Class_INC_BC is
      type INC_BC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:273
      end record;
      pragma Import (CPP, INC_BC);

      procedure exec (this : access INC_BC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:273
      pragma Import (CPP, exec, "_ZN6INC_BC4execEP9Processor");

      function toStr (this : access INC_BC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:273
      pragma Import (CPP, toStr, "_ZN6INC_BC5toStrEv");

      function opCode (this : access INC_BC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:273
      pragma Import (CPP, opCode, "_ZN6INC_BC6opCodeEv");

      function nbCycles (this : access INC_BC) return int;  -- instruction.hpp:273
      pragma Import (CPP, nbCycles, "_ZN6INC_BC8nbCyclesEv");

      function hasArg (this : access INC_BC) return Extensions.bool;  -- instruction.hpp:273
      pragma Import (CPP, hasArg, "_ZN6INC_BC6hasArgEv");

      procedure setArg (this : access INC_BC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:273
      pragma Import (CPP, setArg, "_ZN6INC_BC6setArgER3ARG");

      function argSize (this : access INC_BC) return int;  -- instruction.hpp:273
      pragma Import (CPP, argSize, "_ZN6INC_BC7argSizeEv");
   end;
   use Class_INC_BC;
   package Class_INC_DE is
      type INC_DE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:274
      end record;
      pragma Import (CPP, INC_DE);

      procedure exec (this : access INC_DE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:274
      pragma Import (CPP, exec, "_ZN6INC_DE4execEP9Processor");

      function toStr (this : access INC_DE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:274
      pragma Import (CPP, toStr, "_ZN6INC_DE5toStrEv");

      function opCode (this : access INC_DE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:274
      pragma Import (CPP, opCode, "_ZN6INC_DE6opCodeEv");

      function nbCycles (this : access INC_DE) return int;  -- instruction.hpp:274
      pragma Import (CPP, nbCycles, "_ZN6INC_DE8nbCyclesEv");

      function hasArg (this : access INC_DE) return Extensions.bool;  -- instruction.hpp:274
      pragma Import (CPP, hasArg, "_ZN6INC_DE6hasArgEv");

      procedure setArg (this : access INC_DE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:274
      pragma Import (CPP, setArg, "_ZN6INC_DE6setArgER3ARG");

      function argSize (this : access INC_DE) return int;  -- instruction.hpp:274
      pragma Import (CPP, argSize, "_ZN6INC_DE7argSizeEv");
   end;
   use Class_INC_DE;
   package Class_INC_HL is
      type INC_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:275
      end record;
      pragma Import (CPP, INC_HL);

      procedure exec (this : access INC_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:275
      pragma Import (CPP, exec, "_ZN6INC_HL4execEP9Processor");

      function toStr (this : access INC_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:275
      pragma Import (CPP, toStr, "_ZN6INC_HL5toStrEv");

      function opCode (this : access INC_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:275
      pragma Import (CPP, opCode, "_ZN6INC_HL6opCodeEv");

      function nbCycles (this : access INC_HL) return int;  -- instruction.hpp:275
      pragma Import (CPP, nbCycles, "_ZN6INC_HL8nbCyclesEv");

      function hasArg (this : access INC_HL) return Extensions.bool;  -- instruction.hpp:275
      pragma Import (CPP, hasArg, "_ZN6INC_HL6hasArgEv");

      procedure setArg (this : access INC_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:275
      pragma Import (CPP, setArg, "_ZN6INC_HL6setArgER3ARG");

      function argSize (this : access INC_HL) return int;  -- instruction.hpp:275
      pragma Import (CPP, argSize, "_ZN6INC_HL7argSizeEv");
   end;
   use Class_INC_HL;
   package Class_INC_SP is
      type INC_SP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:276
      end record;
      pragma Import (CPP, INC_SP);

      procedure exec (this : access INC_SP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:276
      pragma Import (CPP, exec, "_ZN6INC_SP4execEP9Processor");

      function toStr (this : access INC_SP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:276
      pragma Import (CPP, toStr, "_ZN6INC_SP5toStrEv");

      function opCode (this : access INC_SP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:276
      pragma Import (CPP, opCode, "_ZN6INC_SP6opCodeEv");

      function nbCycles (this : access INC_SP) return int;  -- instruction.hpp:276
      pragma Import (CPP, nbCycles, "_ZN6INC_SP8nbCyclesEv");

      function hasArg (this : access INC_SP) return Extensions.bool;  -- instruction.hpp:276
      pragma Import (CPP, hasArg, "_ZN6INC_SP6hasArgEv");

      procedure setArg (this : access INC_SP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:276
      pragma Import (CPP, setArg, "_ZN6INC_SP6setArgER3ARG");

      function argSize (this : access INC_SP) return int;  -- instruction.hpp:276
      pragma Import (CPP, argSize, "_ZN6INC_SP7argSizeEv");
   end;
   use Class_INC_SP;
  -- DEC Instructions
   package Class_DEC_A is
      type DEC_A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:280
      end record;
      pragma Import (CPP, DEC_A);

      procedure exec (this : access DEC_A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:280
      pragma Import (CPP, exec, "_ZN5DEC_A4execEP9Processor");

      function toStr (this : access DEC_A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:280
      pragma Import (CPP, toStr, "_ZN5DEC_A5toStrEv");

      function opCode (this : access DEC_A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:280
      pragma Import (CPP, opCode, "_ZN5DEC_A6opCodeEv");

      function nbCycles (this : access DEC_A) return int;  -- instruction.hpp:280
      pragma Import (CPP, nbCycles, "_ZN5DEC_A8nbCyclesEv");

      function hasArg (this : access DEC_A) return Extensions.bool;  -- instruction.hpp:280
      pragma Import (CPP, hasArg, "_ZN5DEC_A6hasArgEv");

      procedure setArg (this : access DEC_A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:280
      pragma Import (CPP, setArg, "_ZN5DEC_A6setArgER3ARG");

      function argSize (this : access DEC_A) return int;  -- instruction.hpp:280
      pragma Import (CPP, argSize, "_ZN5DEC_A7argSizeEv");
   end;
   use Class_DEC_A;
   package Class_DEC_B is
      type DEC_B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:281
      end record;
      pragma Import (CPP, DEC_B);

      procedure exec (this : access DEC_B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:281
      pragma Import (CPP, exec, "_ZN5DEC_B4execEP9Processor");

      function toStr (this : access DEC_B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:281
      pragma Import (CPP, toStr, "_ZN5DEC_B5toStrEv");

      function opCode (this : access DEC_B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:281
      pragma Import (CPP, opCode, "_ZN5DEC_B6opCodeEv");

      function nbCycles (this : access DEC_B) return int;  -- instruction.hpp:281
      pragma Import (CPP, nbCycles, "_ZN5DEC_B8nbCyclesEv");

      function hasArg (this : access DEC_B) return Extensions.bool;  -- instruction.hpp:281
      pragma Import (CPP, hasArg, "_ZN5DEC_B6hasArgEv");

      procedure setArg (this : access DEC_B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:281
      pragma Import (CPP, setArg, "_ZN5DEC_B6setArgER3ARG");

      function argSize (this : access DEC_B) return int;  -- instruction.hpp:281
      pragma Import (CPP, argSize, "_ZN5DEC_B7argSizeEv");
   end;
   use Class_DEC_B;
   package Class_DEC_C is
      type DEC_C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:282
      end record;
      pragma Import (CPP, DEC_C);

      procedure exec (this : access DEC_C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:282
      pragma Import (CPP, exec, "_ZN5DEC_C4execEP9Processor");

      function toStr (this : access DEC_C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:282
      pragma Import (CPP, toStr, "_ZN5DEC_C5toStrEv");

      function opCode (this : access DEC_C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:282
      pragma Import (CPP, opCode, "_ZN5DEC_C6opCodeEv");

      function nbCycles (this : access DEC_C) return int;  -- instruction.hpp:282
      pragma Import (CPP, nbCycles, "_ZN5DEC_C8nbCyclesEv");

      function hasArg (this : access DEC_C) return Extensions.bool;  -- instruction.hpp:282
      pragma Import (CPP, hasArg, "_ZN5DEC_C6hasArgEv");

      procedure setArg (this : access DEC_C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:282
      pragma Import (CPP, setArg, "_ZN5DEC_C6setArgER3ARG");

      function argSize (this : access DEC_C) return int;  -- instruction.hpp:282
      pragma Import (CPP, argSize, "_ZN5DEC_C7argSizeEv");
   end;
   use Class_DEC_C;
   package Class_DEC_D is
      type DEC_D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:283
      end record;
      pragma Import (CPP, DEC_D);

      procedure exec (this : access DEC_D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:283
      pragma Import (CPP, exec, "_ZN5DEC_D4execEP9Processor");

      function toStr (this : access DEC_D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:283
      pragma Import (CPP, toStr, "_ZN5DEC_D5toStrEv");

      function opCode (this : access DEC_D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:283
      pragma Import (CPP, opCode, "_ZN5DEC_D6opCodeEv");

      function nbCycles (this : access DEC_D) return int;  -- instruction.hpp:283
      pragma Import (CPP, nbCycles, "_ZN5DEC_D8nbCyclesEv");

      function hasArg (this : access DEC_D) return Extensions.bool;  -- instruction.hpp:283
      pragma Import (CPP, hasArg, "_ZN5DEC_D6hasArgEv");

      procedure setArg (this : access DEC_D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:283
      pragma Import (CPP, setArg, "_ZN5DEC_D6setArgER3ARG");

      function argSize (this : access DEC_D) return int;  -- instruction.hpp:283
      pragma Import (CPP, argSize, "_ZN5DEC_D7argSizeEv");
   end;
   use Class_DEC_D;
   package Class_DEC_E is
      type DEC_E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:284
      end record;
      pragma Import (CPP, DEC_E);

      procedure exec (this : access DEC_E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:284
      pragma Import (CPP, exec, "_ZN5DEC_E4execEP9Processor");

      function toStr (this : access DEC_E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:284
      pragma Import (CPP, toStr, "_ZN5DEC_E5toStrEv");

      function opCode (this : access DEC_E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:284
      pragma Import (CPP, opCode, "_ZN5DEC_E6opCodeEv");

      function nbCycles (this : access DEC_E) return int;  -- instruction.hpp:284
      pragma Import (CPP, nbCycles, "_ZN5DEC_E8nbCyclesEv");

      function hasArg (this : access DEC_E) return Extensions.bool;  -- instruction.hpp:284
      pragma Import (CPP, hasArg, "_ZN5DEC_E6hasArgEv");

      procedure setArg (this : access DEC_E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:284
      pragma Import (CPP, setArg, "_ZN5DEC_E6setArgER3ARG");

      function argSize (this : access DEC_E) return int;  -- instruction.hpp:284
      pragma Import (CPP, argSize, "_ZN5DEC_E7argSizeEv");
   end;
   use Class_DEC_E;
   package Class_DEC_H is
      type DEC_H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:285
      end record;
      pragma Import (CPP, DEC_H);

      procedure exec (this : access DEC_H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:285
      pragma Import (CPP, exec, "_ZN5DEC_H4execEP9Processor");

      function toStr (this : access DEC_H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:285
      pragma Import (CPP, toStr, "_ZN5DEC_H5toStrEv");

      function opCode (this : access DEC_H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:285
      pragma Import (CPP, opCode, "_ZN5DEC_H6opCodeEv");

      function nbCycles (this : access DEC_H) return int;  -- instruction.hpp:285
      pragma Import (CPP, nbCycles, "_ZN5DEC_H8nbCyclesEv");

      function hasArg (this : access DEC_H) return Extensions.bool;  -- instruction.hpp:285
      pragma Import (CPP, hasArg, "_ZN5DEC_H6hasArgEv");

      procedure setArg (this : access DEC_H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:285
      pragma Import (CPP, setArg, "_ZN5DEC_H6setArgER3ARG");

      function argSize (this : access DEC_H) return int;  -- instruction.hpp:285
      pragma Import (CPP, argSize, "_ZN5DEC_H7argSizeEv");
   end;
   use Class_DEC_H;
   package Class_DEC_L is
      type DEC_L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:286
      end record;
      pragma Import (CPP, DEC_L);

      procedure exec (this : access DEC_L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:286
      pragma Import (CPP, exec, "_ZN5DEC_L4execEP9Processor");

      function toStr (this : access DEC_L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:286
      pragma Import (CPP, toStr, "_ZN5DEC_L5toStrEv");

      function opCode (this : access DEC_L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:286
      pragma Import (CPP, opCode, "_ZN5DEC_L6opCodeEv");

      function nbCycles (this : access DEC_L) return int;  -- instruction.hpp:286
      pragma Import (CPP, nbCycles, "_ZN5DEC_L8nbCyclesEv");

      function hasArg (this : access DEC_L) return Extensions.bool;  -- instruction.hpp:286
      pragma Import (CPP, hasArg, "_ZN5DEC_L6hasArgEv");

      procedure setArg (this : access DEC_L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:286
      pragma Import (CPP, setArg, "_ZN5DEC_L6setArgER3ARG");

      function argSize (this : access DEC_L) return int;  -- instruction.hpp:286
      pragma Import (CPP, argSize, "_ZN5DEC_L7argSizeEv");
   end;
   use Class_DEC_L;
   package Class_DEC_HLdereference is
      type DEC_HLdereference is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:288
      end record;
      pragma Import (CPP, DEC_HLdereference);

      procedure exec (this : access DEC_HLdereference; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:288
      pragma Import (CPP, exec, "_ZN17DEC_HLdereference4execEP9Processor");

      function toStr (this : access DEC_HLdereference) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:288
      pragma Import (CPP, toStr, "_ZN17DEC_HLdereference5toStrEv");

      function opCode (this : access DEC_HLdereference) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:288
      pragma Import (CPP, opCode, "_ZN17DEC_HLdereference6opCodeEv");

      function nbCycles (this : access DEC_HLdereference) return int;  -- instruction.hpp:288
      pragma Import (CPP, nbCycles, "_ZN17DEC_HLdereference8nbCyclesEv");

      function hasArg (this : access DEC_HLdereference) return Extensions.bool;  -- instruction.hpp:288
      pragma Import (CPP, hasArg, "_ZN17DEC_HLdereference6hasArgEv");

      procedure setArg (this : access DEC_HLdereference; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:288
      pragma Import (CPP, setArg, "_ZN17DEC_HLdereference6setArgER3ARG");

      function argSize (this : access DEC_HLdereference) return int;  -- instruction.hpp:288
      pragma Import (CPP, argSize, "_ZN17DEC_HLdereference7argSizeEv");
   end;
   use Class_DEC_HLdereference;
  -- DEC on double registers
   package Class_DEC_BC is
      type DEC_BC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:290
      end record;
      pragma Import (CPP, DEC_BC);

      procedure exec (this : access DEC_BC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:290
      pragma Import (CPP, exec, "_ZN6DEC_BC4execEP9Processor");

      function toStr (this : access DEC_BC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:290
      pragma Import (CPP, toStr, "_ZN6DEC_BC5toStrEv");

      function opCode (this : access DEC_BC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:290
      pragma Import (CPP, opCode, "_ZN6DEC_BC6opCodeEv");

      function nbCycles (this : access DEC_BC) return int;  -- instruction.hpp:290
      pragma Import (CPP, nbCycles, "_ZN6DEC_BC8nbCyclesEv");

      function hasArg (this : access DEC_BC) return Extensions.bool;  -- instruction.hpp:290
      pragma Import (CPP, hasArg, "_ZN6DEC_BC6hasArgEv");

      procedure setArg (this : access DEC_BC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:290
      pragma Import (CPP, setArg, "_ZN6DEC_BC6setArgER3ARG");

      function argSize (this : access DEC_BC) return int;  -- instruction.hpp:290
      pragma Import (CPP, argSize, "_ZN6DEC_BC7argSizeEv");
   end;
   use Class_DEC_BC;
   package Class_DEC_DE is
      type DEC_DE is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:291
      end record;
      pragma Import (CPP, DEC_DE);

      procedure exec (this : access DEC_DE; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:291
      pragma Import (CPP, exec, "_ZN6DEC_DE4execEP9Processor");

      function toStr (this : access DEC_DE) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:291
      pragma Import (CPP, toStr, "_ZN6DEC_DE5toStrEv");

      function opCode (this : access DEC_DE) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:291
      pragma Import (CPP, opCode, "_ZN6DEC_DE6opCodeEv");

      function nbCycles (this : access DEC_DE) return int;  -- instruction.hpp:291
      pragma Import (CPP, nbCycles, "_ZN6DEC_DE8nbCyclesEv");

      function hasArg (this : access DEC_DE) return Extensions.bool;  -- instruction.hpp:291
      pragma Import (CPP, hasArg, "_ZN6DEC_DE6hasArgEv");

      procedure setArg (this : access DEC_DE; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:291
      pragma Import (CPP, setArg, "_ZN6DEC_DE6setArgER3ARG");

      function argSize (this : access DEC_DE) return int;  -- instruction.hpp:291
      pragma Import (CPP, argSize, "_ZN6DEC_DE7argSizeEv");
   end;
   use Class_DEC_DE;
   package Class_DEC_HL is
      type DEC_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:292
      end record;
      pragma Import (CPP, DEC_HL);

      procedure exec (this : access DEC_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:292
      pragma Import (CPP, exec, "_ZN6DEC_HL4execEP9Processor");

      function toStr (this : access DEC_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:292
      pragma Import (CPP, toStr, "_ZN6DEC_HL5toStrEv");

      function opCode (this : access DEC_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:292
      pragma Import (CPP, opCode, "_ZN6DEC_HL6opCodeEv");

      function nbCycles (this : access DEC_HL) return int;  -- instruction.hpp:292
      pragma Import (CPP, nbCycles, "_ZN6DEC_HL8nbCyclesEv");

      function hasArg (this : access DEC_HL) return Extensions.bool;  -- instruction.hpp:292
      pragma Import (CPP, hasArg, "_ZN6DEC_HL6hasArgEv");

      procedure setArg (this : access DEC_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:292
      pragma Import (CPP, setArg, "_ZN6DEC_HL6setArgER3ARG");

      function argSize (this : access DEC_HL) return int;  -- instruction.hpp:292
      pragma Import (CPP, argSize, "_ZN6DEC_HL7argSizeEv");
   end;
   use Class_DEC_HL;
   package Class_DEC_SP is
      type DEC_SP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:293
      end record;
      pragma Import (CPP, DEC_SP);

      procedure exec (this : access DEC_SP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:293
      pragma Import (CPP, exec, "_ZN6DEC_SP4execEP9Processor");

      function toStr (this : access DEC_SP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:293
      pragma Import (CPP, toStr, "_ZN6DEC_SP5toStrEv");

      function opCode (this : access DEC_SP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:293
      pragma Import (CPP, opCode, "_ZN6DEC_SP6opCodeEv");

      function nbCycles (this : access DEC_SP) return int;  -- instruction.hpp:293
      pragma Import (CPP, nbCycles, "_ZN6DEC_SP8nbCyclesEv");

      function hasArg (this : access DEC_SP) return Extensions.bool;  -- instruction.hpp:293
      pragma Import (CPP, hasArg, "_ZN6DEC_SP6hasArgEv");

      procedure setArg (this : access DEC_SP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:293
      pragma Import (CPP, setArg, "_ZN6DEC_SP6setArgER3ARG");

      function argSize (this : access DEC_SP) return int;  -- instruction.hpp:293
      pragma Import (CPP, argSize, "_ZN6DEC_SP7argSizeEv");
   end;
   use Class_DEC_SP;
  -- SWAP Instructions
   package Class_SWAP_A is
      type SWAP_A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:298
      end record;
      pragma Import (CPP, SWAP_A);

      procedure exec (this : access SWAP_A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:298
      pragma Import (CPP, exec, "_ZN6SWAP_A4execEP9Processor");

      function toStr (this : access SWAP_A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:298
      pragma Import (CPP, toStr, "_ZN6SWAP_A5toStrEv");

      function opCode (this : access SWAP_A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:298
      pragma Import (CPP, opCode, "_ZN6SWAP_A6opCodeEv");

      function nbCycles (this : access SWAP_A) return int;  -- instruction.hpp:298
      pragma Import (CPP, nbCycles, "_ZN6SWAP_A8nbCyclesEv");

      function hasArg (this : access SWAP_A) return Extensions.bool;  -- instruction.hpp:298
      pragma Import (CPP, hasArg, "_ZN6SWAP_A6hasArgEv");

      procedure setArg (this : access SWAP_A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:298
      pragma Import (CPP, setArg, "_ZN6SWAP_A6setArgER3ARG");

      function argSize (this : access SWAP_A) return int;  -- instruction.hpp:298
      pragma Import (CPP, argSize, "_ZN6SWAP_A7argSizeEv");
   end;
   use Class_SWAP_A;
   package Class_SWAP_B is
      type SWAP_B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:299
      end record;
      pragma Import (CPP, SWAP_B);

      procedure exec (this : access SWAP_B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:299
      pragma Import (CPP, exec, "_ZN6SWAP_B4execEP9Processor");

      function toStr (this : access SWAP_B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:299
      pragma Import (CPP, toStr, "_ZN6SWAP_B5toStrEv");

      function opCode (this : access SWAP_B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:299
      pragma Import (CPP, opCode, "_ZN6SWAP_B6opCodeEv");

      function nbCycles (this : access SWAP_B) return int;  -- instruction.hpp:299
      pragma Import (CPP, nbCycles, "_ZN6SWAP_B8nbCyclesEv");

      function hasArg (this : access SWAP_B) return Extensions.bool;  -- instruction.hpp:299
      pragma Import (CPP, hasArg, "_ZN6SWAP_B6hasArgEv");

      procedure setArg (this : access SWAP_B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:299
      pragma Import (CPP, setArg, "_ZN6SWAP_B6setArgER3ARG");

      function argSize (this : access SWAP_B) return int;  -- instruction.hpp:299
      pragma Import (CPP, argSize, "_ZN6SWAP_B7argSizeEv");
   end;
   use Class_SWAP_B;
   package Class_SWAP_C is
      type SWAP_C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:300
      end record;
      pragma Import (CPP, SWAP_C);

      procedure exec (this : access SWAP_C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:300
      pragma Import (CPP, exec, "_ZN6SWAP_C4execEP9Processor");

      function toStr (this : access SWAP_C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:300
      pragma Import (CPP, toStr, "_ZN6SWAP_C5toStrEv");

      function opCode (this : access SWAP_C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:300
      pragma Import (CPP, opCode, "_ZN6SWAP_C6opCodeEv");

      function nbCycles (this : access SWAP_C) return int;  -- instruction.hpp:300
      pragma Import (CPP, nbCycles, "_ZN6SWAP_C8nbCyclesEv");

      function hasArg (this : access SWAP_C) return Extensions.bool;  -- instruction.hpp:300
      pragma Import (CPP, hasArg, "_ZN6SWAP_C6hasArgEv");

      procedure setArg (this : access SWAP_C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:300
      pragma Import (CPP, setArg, "_ZN6SWAP_C6setArgER3ARG");

      function argSize (this : access SWAP_C) return int;  -- instruction.hpp:300
      pragma Import (CPP, argSize, "_ZN6SWAP_C7argSizeEv");
   end;
   use Class_SWAP_C;
   package Class_SWAP_D is
      type SWAP_D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:301
      end record;
      pragma Import (CPP, SWAP_D);

      procedure exec (this : access SWAP_D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:301
      pragma Import (CPP, exec, "_ZN6SWAP_D4execEP9Processor");

      function toStr (this : access SWAP_D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:301
      pragma Import (CPP, toStr, "_ZN6SWAP_D5toStrEv");

      function opCode (this : access SWAP_D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:301
      pragma Import (CPP, opCode, "_ZN6SWAP_D6opCodeEv");

      function nbCycles (this : access SWAP_D) return int;  -- instruction.hpp:301
      pragma Import (CPP, nbCycles, "_ZN6SWAP_D8nbCyclesEv");

      function hasArg (this : access SWAP_D) return Extensions.bool;  -- instruction.hpp:301
      pragma Import (CPP, hasArg, "_ZN6SWAP_D6hasArgEv");

      procedure setArg (this : access SWAP_D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:301
      pragma Import (CPP, setArg, "_ZN6SWAP_D6setArgER3ARG");

      function argSize (this : access SWAP_D) return int;  -- instruction.hpp:301
      pragma Import (CPP, argSize, "_ZN6SWAP_D7argSizeEv");
   end;
   use Class_SWAP_D;
   package Class_SWAP_E is
      type SWAP_E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:302
      end record;
      pragma Import (CPP, SWAP_E);

      procedure exec (this : access SWAP_E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:302
      pragma Import (CPP, exec, "_ZN6SWAP_E4execEP9Processor");

      function toStr (this : access SWAP_E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:302
      pragma Import (CPP, toStr, "_ZN6SWAP_E5toStrEv");

      function opCode (this : access SWAP_E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:302
      pragma Import (CPP, opCode, "_ZN6SWAP_E6opCodeEv");

      function nbCycles (this : access SWAP_E) return int;  -- instruction.hpp:302
      pragma Import (CPP, nbCycles, "_ZN6SWAP_E8nbCyclesEv");

      function hasArg (this : access SWAP_E) return Extensions.bool;  -- instruction.hpp:302
      pragma Import (CPP, hasArg, "_ZN6SWAP_E6hasArgEv");

      procedure setArg (this : access SWAP_E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:302
      pragma Import (CPP, setArg, "_ZN6SWAP_E6setArgER3ARG");

      function argSize (this : access SWAP_E) return int;  -- instruction.hpp:302
      pragma Import (CPP, argSize, "_ZN6SWAP_E7argSizeEv");
   end;
   use Class_SWAP_E;
   package Class_SWAP_H is
      type SWAP_H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:303
      end record;
      pragma Import (CPP, SWAP_H);

      procedure exec (this : access SWAP_H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:303
      pragma Import (CPP, exec, "_ZN6SWAP_H4execEP9Processor");

      function toStr (this : access SWAP_H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:303
      pragma Import (CPP, toStr, "_ZN6SWAP_H5toStrEv");

      function opCode (this : access SWAP_H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:303
      pragma Import (CPP, opCode, "_ZN6SWAP_H6opCodeEv");

      function nbCycles (this : access SWAP_H) return int;  -- instruction.hpp:303
      pragma Import (CPP, nbCycles, "_ZN6SWAP_H8nbCyclesEv");

      function hasArg (this : access SWAP_H) return Extensions.bool;  -- instruction.hpp:303
      pragma Import (CPP, hasArg, "_ZN6SWAP_H6hasArgEv");

      procedure setArg (this : access SWAP_H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:303
      pragma Import (CPP, setArg, "_ZN6SWAP_H6setArgER3ARG");

      function argSize (this : access SWAP_H) return int;  -- instruction.hpp:303
      pragma Import (CPP, argSize, "_ZN6SWAP_H7argSizeEv");
   end;
   use Class_SWAP_H;
   package Class_SWAP_L is
      type SWAP_L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:304
      end record;
      pragma Import (CPP, SWAP_L);

      procedure exec (this : access SWAP_L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:304
      pragma Import (CPP, exec, "_ZN6SWAP_L4execEP9Processor");

      function toStr (this : access SWAP_L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:304
      pragma Import (CPP, toStr, "_ZN6SWAP_L5toStrEv");

      function opCode (this : access SWAP_L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:304
      pragma Import (CPP, opCode, "_ZN6SWAP_L6opCodeEv");

      function nbCycles (this : access SWAP_L) return int;  -- instruction.hpp:304
      pragma Import (CPP, nbCycles, "_ZN6SWAP_L8nbCyclesEv");

      function hasArg (this : access SWAP_L) return Extensions.bool;  -- instruction.hpp:304
      pragma Import (CPP, hasArg, "_ZN6SWAP_L6hasArgEv");

      procedure setArg (this : access SWAP_L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:304
      pragma Import (CPP, setArg, "_ZN6SWAP_L6setArgER3ARG");

      function argSize (this : access SWAP_L) return int;  -- instruction.hpp:304
      pragma Import (CPP, argSize, "_ZN6SWAP_L7argSizeEv");
   end;
   use Class_SWAP_L;
   package Class_SWAP_HL is
      type SWAP_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:305
      end record;
      pragma Import (CPP, SWAP_HL);

      procedure exec (this : access SWAP_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:305
      pragma Import (CPP, exec, "_ZN7SWAP_HL4execEP9Processor");

      function toStr (this : access SWAP_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:305
      pragma Import (CPP, toStr, "_ZN7SWAP_HL5toStrEv");

      function opCode (this : access SWAP_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:305
      pragma Import (CPP, opCode, "_ZN7SWAP_HL6opCodeEv");

      function nbCycles (this : access SWAP_HL) return int;  -- instruction.hpp:305
      pragma Import (CPP, nbCycles, "_ZN7SWAP_HL8nbCyclesEv");

      function hasArg (this : access SWAP_HL) return Extensions.bool;  -- instruction.hpp:305
      pragma Import (CPP, hasArg, "_ZN7SWAP_HL6hasArgEv");

      procedure setArg (this : access SWAP_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:305
      pragma Import (CPP, setArg, "_ZN7SWAP_HL6setArgER3ARG");

      function argSize (this : access SWAP_HL) return int;  -- instruction.hpp:305
      pragma Import (CPP, argSize, "_ZN7SWAP_HL7argSizeEv");
   end;
   use Class_SWAP_HL;
   package Class_DAA is
      type DAA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:307
      end record;
      pragma Import (CPP, DAA);

      procedure exec (this : access DAA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:307
      pragma Import (CPP, exec, "_ZN3DAA4execEP9Processor");

      function toStr (this : access DAA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:307
      pragma Import (CPP, toStr, "_ZN3DAA5toStrEv");

      function opCode (this : access DAA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:307
      pragma Import (CPP, opCode, "_ZN3DAA6opCodeEv");

      function nbCycles (this : access DAA) return int;  -- instruction.hpp:307
      pragma Import (CPP, nbCycles, "_ZN3DAA8nbCyclesEv");

      function hasArg (this : access DAA) return Extensions.bool;  -- instruction.hpp:307
      pragma Import (CPP, hasArg, "_ZN3DAA6hasArgEv");

      procedure setArg (this : access DAA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:307
      pragma Import (CPP, setArg, "_ZN3DAA6setArgER3ARG");

      function argSize (this : access DAA) return int;  -- instruction.hpp:307
      pragma Import (CPP, argSize, "_ZN3DAA7argSizeEv");
   end;
   use Class_DAA;
   package Class_CPL is
      type CPL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:308
      end record;
      pragma Import (CPP, CPL);

      procedure exec (this : access CPL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:308
      pragma Import (CPP, exec, "_ZN3CPL4execEP9Processor");

      function toStr (this : access CPL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:308
      pragma Import (CPP, toStr, "_ZN3CPL5toStrEv");

      function opCode (this : access CPL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:308
      pragma Import (CPP, opCode, "_ZN3CPL6opCodeEv");

      function nbCycles (this : access CPL) return int;  -- instruction.hpp:308
      pragma Import (CPP, nbCycles, "_ZN3CPL8nbCyclesEv");

      function hasArg (this : access CPL) return Extensions.bool;  -- instruction.hpp:308
      pragma Import (CPP, hasArg, "_ZN3CPL6hasArgEv");

      procedure setArg (this : access CPL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:308
      pragma Import (CPP, setArg, "_ZN3CPL6setArgER3ARG");

      function argSize (this : access CPL) return int;  -- instruction.hpp:308
      pragma Import (CPP, argSize, "_ZN3CPL7argSizeEv");
   end;
   use Class_CPL;
   package Class_CCF is
      type CCF is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:309
      end record;
      pragma Import (CPP, CCF);

      procedure exec (this : access CCF; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:309
      pragma Import (CPP, exec, "_ZN3CCF4execEP9Processor");

      function toStr (this : access CCF) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:309
      pragma Import (CPP, toStr, "_ZN3CCF5toStrEv");

      function opCode (this : access CCF) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:309
      pragma Import (CPP, opCode, "_ZN3CCF6opCodeEv");

      function nbCycles (this : access CCF) return int;  -- instruction.hpp:309
      pragma Import (CPP, nbCycles, "_ZN3CCF8nbCyclesEv");

      function hasArg (this : access CCF) return Extensions.bool;  -- instruction.hpp:309
      pragma Import (CPP, hasArg, "_ZN3CCF6hasArgEv");

      procedure setArg (this : access CCF; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:309
      pragma Import (CPP, setArg, "_ZN3CCF6setArgER3ARG");

      function argSize (this : access CCF) return int;  -- instruction.hpp:309
      pragma Import (CPP, argSize, "_ZN3CCF7argSizeEv");
   end;
   use Class_CCF;
   package Class_SCF is
      type SCF is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:310
      end record;
      pragma Import (CPP, SCF);

      procedure exec (this : access SCF; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:310
      pragma Import (CPP, exec, "_ZN3SCF4execEP9Processor");

      function toStr (this : access SCF) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:310
      pragma Import (CPP, toStr, "_ZN3SCF5toStrEv");

      function opCode (this : access SCF) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:310
      pragma Import (CPP, opCode, "_ZN3SCF6opCodeEv");

      function nbCycles (this : access SCF) return int;  -- instruction.hpp:310
      pragma Import (CPP, nbCycles, "_ZN3SCF8nbCyclesEv");

      function hasArg (this : access SCF) return Extensions.bool;  -- instruction.hpp:310
      pragma Import (CPP, hasArg, "_ZN3SCF6hasArgEv");

      procedure setArg (this : access SCF; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:310
      pragma Import (CPP, setArg, "_ZN3SCF6setArgER3ARG");

      function argSize (this : access SCF) return int;  -- instruction.hpp:310
      pragma Import (CPP, argSize, "_ZN3SCF7argSizeEv");
   end;
   use Class_SCF;
  -- BIT Instructions
   package Class_BIT_0A is
      type BIT_0A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:315
      end record;
      pragma Import (CPP, BIT_0A);

      procedure exec (this : access BIT_0A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:315
      pragma Import (CPP, exec, "_ZN6BIT_0A4execEP9Processor");

      function toStr (this : access BIT_0A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:315
      pragma Import (CPP, toStr, "_ZN6BIT_0A5toStrEv");

      function opCode (this : access BIT_0A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:315
      pragma Import (CPP, opCode, "_ZN6BIT_0A6opCodeEv");

      function nbCycles (this : access BIT_0A) return int;  -- instruction.hpp:315
      pragma Import (CPP, nbCycles, "_ZN6BIT_0A8nbCyclesEv");

      function hasArg (this : access BIT_0A) return Extensions.bool;  -- instruction.hpp:315
      pragma Import (CPP, hasArg, "_ZN6BIT_0A6hasArgEv");

      procedure setArg (this : access BIT_0A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:315
      pragma Import (CPP, setArg, "_ZN6BIT_0A6setArgER3ARG");

      function argSize (this : access BIT_0A) return int;  -- instruction.hpp:315
      pragma Import (CPP, argSize, "_ZN6BIT_0A7argSizeEv");
   end;
   use Class_BIT_0A;
   package Class_BIT_1A is
      type BIT_1A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:316
      end record;
      pragma Import (CPP, BIT_1A);

      procedure exec (this : access BIT_1A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:316
      pragma Import (CPP, exec, "_ZN6BIT_1A4execEP9Processor");

      function toStr (this : access BIT_1A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:316
      pragma Import (CPP, toStr, "_ZN6BIT_1A5toStrEv");

      function opCode (this : access BIT_1A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:316
      pragma Import (CPP, opCode, "_ZN6BIT_1A6opCodeEv");

      function nbCycles (this : access BIT_1A) return int;  -- instruction.hpp:316
      pragma Import (CPP, nbCycles, "_ZN6BIT_1A8nbCyclesEv");

      function hasArg (this : access BIT_1A) return Extensions.bool;  -- instruction.hpp:316
      pragma Import (CPP, hasArg, "_ZN6BIT_1A6hasArgEv");

      procedure setArg (this : access BIT_1A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:316
      pragma Import (CPP, setArg, "_ZN6BIT_1A6setArgER3ARG");

      function argSize (this : access BIT_1A) return int;  -- instruction.hpp:316
      pragma Import (CPP, argSize, "_ZN6BIT_1A7argSizeEv");
   end;
   use Class_BIT_1A;
   package Class_BIT_2A is
      type BIT_2A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:317
      end record;
      pragma Import (CPP, BIT_2A);

      procedure exec (this : access BIT_2A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:317
      pragma Import (CPP, exec, "_ZN6BIT_2A4execEP9Processor");

      function toStr (this : access BIT_2A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:317
      pragma Import (CPP, toStr, "_ZN6BIT_2A5toStrEv");

      function opCode (this : access BIT_2A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:317
      pragma Import (CPP, opCode, "_ZN6BIT_2A6opCodeEv");

      function nbCycles (this : access BIT_2A) return int;  -- instruction.hpp:317
      pragma Import (CPP, nbCycles, "_ZN6BIT_2A8nbCyclesEv");

      function hasArg (this : access BIT_2A) return Extensions.bool;  -- instruction.hpp:317
      pragma Import (CPP, hasArg, "_ZN6BIT_2A6hasArgEv");

      procedure setArg (this : access BIT_2A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:317
      pragma Import (CPP, setArg, "_ZN6BIT_2A6setArgER3ARG");

      function argSize (this : access BIT_2A) return int;  -- instruction.hpp:317
      pragma Import (CPP, argSize, "_ZN6BIT_2A7argSizeEv");
   end;
   use Class_BIT_2A;
   package Class_BIT_3A is
      type BIT_3A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:318
      end record;
      pragma Import (CPP, BIT_3A);

      procedure exec (this : access BIT_3A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:318
      pragma Import (CPP, exec, "_ZN6BIT_3A4execEP9Processor");

      function toStr (this : access BIT_3A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:318
      pragma Import (CPP, toStr, "_ZN6BIT_3A5toStrEv");

      function opCode (this : access BIT_3A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:318
      pragma Import (CPP, opCode, "_ZN6BIT_3A6opCodeEv");

      function nbCycles (this : access BIT_3A) return int;  -- instruction.hpp:318
      pragma Import (CPP, nbCycles, "_ZN6BIT_3A8nbCyclesEv");

      function hasArg (this : access BIT_3A) return Extensions.bool;  -- instruction.hpp:318
      pragma Import (CPP, hasArg, "_ZN6BIT_3A6hasArgEv");

      procedure setArg (this : access BIT_3A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:318
      pragma Import (CPP, setArg, "_ZN6BIT_3A6setArgER3ARG");

      function argSize (this : access BIT_3A) return int;  -- instruction.hpp:318
      pragma Import (CPP, argSize, "_ZN6BIT_3A7argSizeEv");
   end;
   use Class_BIT_3A;
   package Class_BIT_4A is
      type BIT_4A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:319
      end record;
      pragma Import (CPP, BIT_4A);

      procedure exec (this : access BIT_4A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:319
      pragma Import (CPP, exec, "_ZN6BIT_4A4execEP9Processor");

      function toStr (this : access BIT_4A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:319
      pragma Import (CPP, toStr, "_ZN6BIT_4A5toStrEv");

      function opCode (this : access BIT_4A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:319
      pragma Import (CPP, opCode, "_ZN6BIT_4A6opCodeEv");

      function nbCycles (this : access BIT_4A) return int;  -- instruction.hpp:319
      pragma Import (CPP, nbCycles, "_ZN6BIT_4A8nbCyclesEv");

      function hasArg (this : access BIT_4A) return Extensions.bool;  -- instruction.hpp:319
      pragma Import (CPP, hasArg, "_ZN6BIT_4A6hasArgEv");

      procedure setArg (this : access BIT_4A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:319
      pragma Import (CPP, setArg, "_ZN6BIT_4A6setArgER3ARG");

      function argSize (this : access BIT_4A) return int;  -- instruction.hpp:319
      pragma Import (CPP, argSize, "_ZN6BIT_4A7argSizeEv");
   end;
   use Class_BIT_4A;
   package Class_BIT_5A is
      type BIT_5A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:320
      end record;
      pragma Import (CPP, BIT_5A);

      procedure exec (this : access BIT_5A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:320
      pragma Import (CPP, exec, "_ZN6BIT_5A4execEP9Processor");

      function toStr (this : access BIT_5A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:320
      pragma Import (CPP, toStr, "_ZN6BIT_5A5toStrEv");

      function opCode (this : access BIT_5A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:320
      pragma Import (CPP, opCode, "_ZN6BIT_5A6opCodeEv");

      function nbCycles (this : access BIT_5A) return int;  -- instruction.hpp:320
      pragma Import (CPP, nbCycles, "_ZN6BIT_5A8nbCyclesEv");

      function hasArg (this : access BIT_5A) return Extensions.bool;  -- instruction.hpp:320
      pragma Import (CPP, hasArg, "_ZN6BIT_5A6hasArgEv");

      procedure setArg (this : access BIT_5A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:320
      pragma Import (CPP, setArg, "_ZN6BIT_5A6setArgER3ARG");

      function argSize (this : access BIT_5A) return int;  -- instruction.hpp:320
      pragma Import (CPP, argSize, "_ZN6BIT_5A7argSizeEv");
   end;
   use Class_BIT_5A;
   package Class_BIT_6A is
      type BIT_6A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:321
      end record;
      pragma Import (CPP, BIT_6A);

      procedure exec (this : access BIT_6A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:321
      pragma Import (CPP, exec, "_ZN6BIT_6A4execEP9Processor");

      function toStr (this : access BIT_6A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:321
      pragma Import (CPP, toStr, "_ZN6BIT_6A5toStrEv");

      function opCode (this : access BIT_6A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:321
      pragma Import (CPP, opCode, "_ZN6BIT_6A6opCodeEv");

      function nbCycles (this : access BIT_6A) return int;  -- instruction.hpp:321
      pragma Import (CPP, nbCycles, "_ZN6BIT_6A8nbCyclesEv");

      function hasArg (this : access BIT_6A) return Extensions.bool;  -- instruction.hpp:321
      pragma Import (CPP, hasArg, "_ZN6BIT_6A6hasArgEv");

      procedure setArg (this : access BIT_6A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:321
      pragma Import (CPP, setArg, "_ZN6BIT_6A6setArgER3ARG");

      function argSize (this : access BIT_6A) return int;  -- instruction.hpp:321
      pragma Import (CPP, argSize, "_ZN6BIT_6A7argSizeEv");
   end;
   use Class_BIT_6A;
   package Class_BIT_7A is
      type BIT_7A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:322
      end record;
      pragma Import (CPP, BIT_7A);

      procedure exec (this : access BIT_7A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:322
      pragma Import (CPP, exec, "_ZN6BIT_7A4execEP9Processor");

      function toStr (this : access BIT_7A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:322
      pragma Import (CPP, toStr, "_ZN6BIT_7A5toStrEv");

      function opCode (this : access BIT_7A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:322
      pragma Import (CPP, opCode, "_ZN6BIT_7A6opCodeEv");

      function nbCycles (this : access BIT_7A) return int;  -- instruction.hpp:322
      pragma Import (CPP, nbCycles, "_ZN6BIT_7A8nbCyclesEv");

      function hasArg (this : access BIT_7A) return Extensions.bool;  -- instruction.hpp:322
      pragma Import (CPP, hasArg, "_ZN6BIT_7A6hasArgEv");

      procedure setArg (this : access BIT_7A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:322
      pragma Import (CPP, setArg, "_ZN6BIT_7A6setArgER3ARG");

      function argSize (this : access BIT_7A) return int;  -- instruction.hpp:322
      pragma Import (CPP, argSize, "_ZN6BIT_7A7argSizeEv");
   end;
   use Class_BIT_7A;
   package Class_BIT_0B is
      type BIT_0B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:324
      end record;
      pragma Import (CPP, BIT_0B);

      procedure exec (this : access BIT_0B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:324
      pragma Import (CPP, exec, "_ZN6BIT_0B4execEP9Processor");

      function toStr (this : access BIT_0B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:324
      pragma Import (CPP, toStr, "_ZN6BIT_0B5toStrEv");

      function opCode (this : access BIT_0B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:324
      pragma Import (CPP, opCode, "_ZN6BIT_0B6opCodeEv");

      function nbCycles (this : access BIT_0B) return int;  -- instruction.hpp:324
      pragma Import (CPP, nbCycles, "_ZN6BIT_0B8nbCyclesEv");

      function hasArg (this : access BIT_0B) return Extensions.bool;  -- instruction.hpp:324
      pragma Import (CPP, hasArg, "_ZN6BIT_0B6hasArgEv");

      procedure setArg (this : access BIT_0B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:324
      pragma Import (CPP, setArg, "_ZN6BIT_0B6setArgER3ARG");

      function argSize (this : access BIT_0B) return int;  -- instruction.hpp:324
      pragma Import (CPP, argSize, "_ZN6BIT_0B7argSizeEv");
   end;
   use Class_BIT_0B;
   package Class_BIT_1B is
      type BIT_1B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:325
      end record;
      pragma Import (CPP, BIT_1B);

      procedure exec (this : access BIT_1B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:325
      pragma Import (CPP, exec, "_ZN6BIT_1B4execEP9Processor");

      function toStr (this : access BIT_1B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:325
      pragma Import (CPP, toStr, "_ZN6BIT_1B5toStrEv");

      function opCode (this : access BIT_1B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:325
      pragma Import (CPP, opCode, "_ZN6BIT_1B6opCodeEv");

      function nbCycles (this : access BIT_1B) return int;  -- instruction.hpp:325
      pragma Import (CPP, nbCycles, "_ZN6BIT_1B8nbCyclesEv");

      function hasArg (this : access BIT_1B) return Extensions.bool;  -- instruction.hpp:325
      pragma Import (CPP, hasArg, "_ZN6BIT_1B6hasArgEv");

      procedure setArg (this : access BIT_1B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:325
      pragma Import (CPP, setArg, "_ZN6BIT_1B6setArgER3ARG");

      function argSize (this : access BIT_1B) return int;  -- instruction.hpp:325
      pragma Import (CPP, argSize, "_ZN6BIT_1B7argSizeEv");
   end;
   use Class_BIT_1B;
   package Class_BIT_2B is
      type BIT_2B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:326
      end record;
      pragma Import (CPP, BIT_2B);

      procedure exec (this : access BIT_2B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:326
      pragma Import (CPP, exec, "_ZN6BIT_2B4execEP9Processor");

      function toStr (this : access BIT_2B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:326
      pragma Import (CPP, toStr, "_ZN6BIT_2B5toStrEv");

      function opCode (this : access BIT_2B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:326
      pragma Import (CPP, opCode, "_ZN6BIT_2B6opCodeEv");

      function nbCycles (this : access BIT_2B) return int;  -- instruction.hpp:326
      pragma Import (CPP, nbCycles, "_ZN6BIT_2B8nbCyclesEv");

      function hasArg (this : access BIT_2B) return Extensions.bool;  -- instruction.hpp:326
      pragma Import (CPP, hasArg, "_ZN6BIT_2B6hasArgEv");

      procedure setArg (this : access BIT_2B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:326
      pragma Import (CPP, setArg, "_ZN6BIT_2B6setArgER3ARG");

      function argSize (this : access BIT_2B) return int;  -- instruction.hpp:326
      pragma Import (CPP, argSize, "_ZN6BIT_2B7argSizeEv");
   end;
   use Class_BIT_2B;
   package Class_BIT_3B is
      type BIT_3B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:327
      end record;
      pragma Import (CPP, BIT_3B);

      procedure exec (this : access BIT_3B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:327
      pragma Import (CPP, exec, "_ZN6BIT_3B4execEP9Processor");

      function toStr (this : access BIT_3B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:327
      pragma Import (CPP, toStr, "_ZN6BIT_3B5toStrEv");

      function opCode (this : access BIT_3B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:327
      pragma Import (CPP, opCode, "_ZN6BIT_3B6opCodeEv");

      function nbCycles (this : access BIT_3B) return int;  -- instruction.hpp:327
      pragma Import (CPP, nbCycles, "_ZN6BIT_3B8nbCyclesEv");

      function hasArg (this : access BIT_3B) return Extensions.bool;  -- instruction.hpp:327
      pragma Import (CPP, hasArg, "_ZN6BIT_3B6hasArgEv");

      procedure setArg (this : access BIT_3B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:327
      pragma Import (CPP, setArg, "_ZN6BIT_3B6setArgER3ARG");

      function argSize (this : access BIT_3B) return int;  -- instruction.hpp:327
      pragma Import (CPP, argSize, "_ZN6BIT_3B7argSizeEv");
   end;
   use Class_BIT_3B;
   package Class_BIT_4B is
      type BIT_4B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:328
      end record;
      pragma Import (CPP, BIT_4B);

      procedure exec (this : access BIT_4B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:328
      pragma Import (CPP, exec, "_ZN6BIT_4B4execEP9Processor");

      function toStr (this : access BIT_4B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:328
      pragma Import (CPP, toStr, "_ZN6BIT_4B5toStrEv");

      function opCode (this : access BIT_4B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:328
      pragma Import (CPP, opCode, "_ZN6BIT_4B6opCodeEv");

      function nbCycles (this : access BIT_4B) return int;  -- instruction.hpp:328
      pragma Import (CPP, nbCycles, "_ZN6BIT_4B8nbCyclesEv");

      function hasArg (this : access BIT_4B) return Extensions.bool;  -- instruction.hpp:328
      pragma Import (CPP, hasArg, "_ZN6BIT_4B6hasArgEv");

      procedure setArg (this : access BIT_4B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:328
      pragma Import (CPP, setArg, "_ZN6BIT_4B6setArgER3ARG");

      function argSize (this : access BIT_4B) return int;  -- instruction.hpp:328
      pragma Import (CPP, argSize, "_ZN6BIT_4B7argSizeEv");
   end;
   use Class_BIT_4B;
   package Class_BIT_5B is
      type BIT_5B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:329
      end record;
      pragma Import (CPP, BIT_5B);

      procedure exec (this : access BIT_5B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:329
      pragma Import (CPP, exec, "_ZN6BIT_5B4execEP9Processor");

      function toStr (this : access BIT_5B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:329
      pragma Import (CPP, toStr, "_ZN6BIT_5B5toStrEv");

      function opCode (this : access BIT_5B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:329
      pragma Import (CPP, opCode, "_ZN6BIT_5B6opCodeEv");

      function nbCycles (this : access BIT_5B) return int;  -- instruction.hpp:329
      pragma Import (CPP, nbCycles, "_ZN6BIT_5B8nbCyclesEv");

      function hasArg (this : access BIT_5B) return Extensions.bool;  -- instruction.hpp:329
      pragma Import (CPP, hasArg, "_ZN6BIT_5B6hasArgEv");

      procedure setArg (this : access BIT_5B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:329
      pragma Import (CPP, setArg, "_ZN6BIT_5B6setArgER3ARG");

      function argSize (this : access BIT_5B) return int;  -- instruction.hpp:329
      pragma Import (CPP, argSize, "_ZN6BIT_5B7argSizeEv");
   end;
   use Class_BIT_5B;
   package Class_BIT_6B is
      type BIT_6B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:330
      end record;
      pragma Import (CPP, BIT_6B);

      procedure exec (this : access BIT_6B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:330
      pragma Import (CPP, exec, "_ZN6BIT_6B4execEP9Processor");

      function toStr (this : access BIT_6B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:330
      pragma Import (CPP, toStr, "_ZN6BIT_6B5toStrEv");

      function opCode (this : access BIT_6B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:330
      pragma Import (CPP, opCode, "_ZN6BIT_6B6opCodeEv");

      function nbCycles (this : access BIT_6B) return int;  -- instruction.hpp:330
      pragma Import (CPP, nbCycles, "_ZN6BIT_6B8nbCyclesEv");

      function hasArg (this : access BIT_6B) return Extensions.bool;  -- instruction.hpp:330
      pragma Import (CPP, hasArg, "_ZN6BIT_6B6hasArgEv");

      procedure setArg (this : access BIT_6B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:330
      pragma Import (CPP, setArg, "_ZN6BIT_6B6setArgER3ARG");

      function argSize (this : access BIT_6B) return int;  -- instruction.hpp:330
      pragma Import (CPP, argSize, "_ZN6BIT_6B7argSizeEv");
   end;
   use Class_BIT_6B;
   package Class_BIT_7B is
      type BIT_7B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:331
      end record;
      pragma Import (CPP, BIT_7B);

      procedure exec (this : access BIT_7B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:331
      pragma Import (CPP, exec, "_ZN6BIT_7B4execEP9Processor");

      function toStr (this : access BIT_7B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:331
      pragma Import (CPP, toStr, "_ZN6BIT_7B5toStrEv");

      function opCode (this : access BIT_7B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:331
      pragma Import (CPP, opCode, "_ZN6BIT_7B6opCodeEv");

      function nbCycles (this : access BIT_7B) return int;  -- instruction.hpp:331
      pragma Import (CPP, nbCycles, "_ZN6BIT_7B8nbCyclesEv");

      function hasArg (this : access BIT_7B) return Extensions.bool;  -- instruction.hpp:331
      pragma Import (CPP, hasArg, "_ZN6BIT_7B6hasArgEv");

      procedure setArg (this : access BIT_7B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:331
      pragma Import (CPP, setArg, "_ZN6BIT_7B6setArgER3ARG");

      function argSize (this : access BIT_7B) return int;  -- instruction.hpp:331
      pragma Import (CPP, argSize, "_ZN6BIT_7B7argSizeEv");
   end;
   use Class_BIT_7B;
   package Class_BIT_0C is
      type BIT_0C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:333
      end record;
      pragma Import (CPP, BIT_0C);

      procedure exec (this : access BIT_0C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:333
      pragma Import (CPP, exec, "_ZN6BIT_0C4execEP9Processor");

      function toStr (this : access BIT_0C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:333
      pragma Import (CPP, toStr, "_ZN6BIT_0C5toStrEv");

      function opCode (this : access BIT_0C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:333
      pragma Import (CPP, opCode, "_ZN6BIT_0C6opCodeEv");

      function nbCycles (this : access BIT_0C) return int;  -- instruction.hpp:333
      pragma Import (CPP, nbCycles, "_ZN6BIT_0C8nbCyclesEv");

      function hasArg (this : access BIT_0C) return Extensions.bool;  -- instruction.hpp:333
      pragma Import (CPP, hasArg, "_ZN6BIT_0C6hasArgEv");

      procedure setArg (this : access BIT_0C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:333
      pragma Import (CPP, setArg, "_ZN6BIT_0C6setArgER3ARG");

      function argSize (this : access BIT_0C) return int;  -- instruction.hpp:333
      pragma Import (CPP, argSize, "_ZN6BIT_0C7argSizeEv");
   end;
   use Class_BIT_0C;
   package Class_BIT_1C is
      type BIT_1C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:334
      end record;
      pragma Import (CPP, BIT_1C);

      procedure exec (this : access BIT_1C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:334
      pragma Import (CPP, exec, "_ZN6BIT_1C4execEP9Processor");

      function toStr (this : access BIT_1C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:334
      pragma Import (CPP, toStr, "_ZN6BIT_1C5toStrEv");

      function opCode (this : access BIT_1C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:334
      pragma Import (CPP, opCode, "_ZN6BIT_1C6opCodeEv");

      function nbCycles (this : access BIT_1C) return int;  -- instruction.hpp:334
      pragma Import (CPP, nbCycles, "_ZN6BIT_1C8nbCyclesEv");

      function hasArg (this : access BIT_1C) return Extensions.bool;  -- instruction.hpp:334
      pragma Import (CPP, hasArg, "_ZN6BIT_1C6hasArgEv");

      procedure setArg (this : access BIT_1C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:334
      pragma Import (CPP, setArg, "_ZN6BIT_1C6setArgER3ARG");

      function argSize (this : access BIT_1C) return int;  -- instruction.hpp:334
      pragma Import (CPP, argSize, "_ZN6BIT_1C7argSizeEv");
   end;
   use Class_BIT_1C;
   package Class_BIT_2C is
      type BIT_2C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:335
      end record;
      pragma Import (CPP, BIT_2C);

      procedure exec (this : access BIT_2C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:335
      pragma Import (CPP, exec, "_ZN6BIT_2C4execEP9Processor");

      function toStr (this : access BIT_2C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:335
      pragma Import (CPP, toStr, "_ZN6BIT_2C5toStrEv");

      function opCode (this : access BIT_2C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:335
      pragma Import (CPP, opCode, "_ZN6BIT_2C6opCodeEv");

      function nbCycles (this : access BIT_2C) return int;  -- instruction.hpp:335
      pragma Import (CPP, nbCycles, "_ZN6BIT_2C8nbCyclesEv");

      function hasArg (this : access BIT_2C) return Extensions.bool;  -- instruction.hpp:335
      pragma Import (CPP, hasArg, "_ZN6BIT_2C6hasArgEv");

      procedure setArg (this : access BIT_2C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:335
      pragma Import (CPP, setArg, "_ZN6BIT_2C6setArgER3ARG");

      function argSize (this : access BIT_2C) return int;  -- instruction.hpp:335
      pragma Import (CPP, argSize, "_ZN6BIT_2C7argSizeEv");
   end;
   use Class_BIT_2C;
   package Class_BIT_3C is
      type BIT_3C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:336
      end record;
      pragma Import (CPP, BIT_3C);

      procedure exec (this : access BIT_3C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:336
      pragma Import (CPP, exec, "_ZN6BIT_3C4execEP9Processor");

      function toStr (this : access BIT_3C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:336
      pragma Import (CPP, toStr, "_ZN6BIT_3C5toStrEv");

      function opCode (this : access BIT_3C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:336
      pragma Import (CPP, opCode, "_ZN6BIT_3C6opCodeEv");

      function nbCycles (this : access BIT_3C) return int;  -- instruction.hpp:336
      pragma Import (CPP, nbCycles, "_ZN6BIT_3C8nbCyclesEv");

      function hasArg (this : access BIT_3C) return Extensions.bool;  -- instruction.hpp:336
      pragma Import (CPP, hasArg, "_ZN6BIT_3C6hasArgEv");

      procedure setArg (this : access BIT_3C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:336
      pragma Import (CPP, setArg, "_ZN6BIT_3C6setArgER3ARG");

      function argSize (this : access BIT_3C) return int;  -- instruction.hpp:336
      pragma Import (CPP, argSize, "_ZN6BIT_3C7argSizeEv");
   end;
   use Class_BIT_3C;
   package Class_BIT_4C is
      type BIT_4C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:337
      end record;
      pragma Import (CPP, BIT_4C);

      procedure exec (this : access BIT_4C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:337
      pragma Import (CPP, exec, "_ZN6BIT_4C4execEP9Processor");

      function toStr (this : access BIT_4C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:337
      pragma Import (CPP, toStr, "_ZN6BIT_4C5toStrEv");

      function opCode (this : access BIT_4C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:337
      pragma Import (CPP, opCode, "_ZN6BIT_4C6opCodeEv");

      function nbCycles (this : access BIT_4C) return int;  -- instruction.hpp:337
      pragma Import (CPP, nbCycles, "_ZN6BIT_4C8nbCyclesEv");

      function hasArg (this : access BIT_4C) return Extensions.bool;  -- instruction.hpp:337
      pragma Import (CPP, hasArg, "_ZN6BIT_4C6hasArgEv");

      procedure setArg (this : access BIT_4C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:337
      pragma Import (CPP, setArg, "_ZN6BIT_4C6setArgER3ARG");

      function argSize (this : access BIT_4C) return int;  -- instruction.hpp:337
      pragma Import (CPP, argSize, "_ZN6BIT_4C7argSizeEv");
   end;
   use Class_BIT_4C;
   package Class_BIT_5C is
      type BIT_5C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:338
      end record;
      pragma Import (CPP, BIT_5C);

      procedure exec (this : access BIT_5C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:338
      pragma Import (CPP, exec, "_ZN6BIT_5C4execEP9Processor");

      function toStr (this : access BIT_5C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:338
      pragma Import (CPP, toStr, "_ZN6BIT_5C5toStrEv");

      function opCode (this : access BIT_5C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:338
      pragma Import (CPP, opCode, "_ZN6BIT_5C6opCodeEv");

      function nbCycles (this : access BIT_5C) return int;  -- instruction.hpp:338
      pragma Import (CPP, nbCycles, "_ZN6BIT_5C8nbCyclesEv");

      function hasArg (this : access BIT_5C) return Extensions.bool;  -- instruction.hpp:338
      pragma Import (CPP, hasArg, "_ZN6BIT_5C6hasArgEv");

      procedure setArg (this : access BIT_5C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:338
      pragma Import (CPP, setArg, "_ZN6BIT_5C6setArgER3ARG");

      function argSize (this : access BIT_5C) return int;  -- instruction.hpp:338
      pragma Import (CPP, argSize, "_ZN6BIT_5C7argSizeEv");
   end;
   use Class_BIT_5C;
   package Class_BIT_6C is
      type BIT_6C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:339
      end record;
      pragma Import (CPP, BIT_6C);

      procedure exec (this : access BIT_6C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:339
      pragma Import (CPP, exec, "_ZN6BIT_6C4execEP9Processor");

      function toStr (this : access BIT_6C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:339
      pragma Import (CPP, toStr, "_ZN6BIT_6C5toStrEv");

      function opCode (this : access BIT_6C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:339
      pragma Import (CPP, opCode, "_ZN6BIT_6C6opCodeEv");

      function nbCycles (this : access BIT_6C) return int;  -- instruction.hpp:339
      pragma Import (CPP, nbCycles, "_ZN6BIT_6C8nbCyclesEv");

      function hasArg (this : access BIT_6C) return Extensions.bool;  -- instruction.hpp:339
      pragma Import (CPP, hasArg, "_ZN6BIT_6C6hasArgEv");

      procedure setArg (this : access BIT_6C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:339
      pragma Import (CPP, setArg, "_ZN6BIT_6C6setArgER3ARG");

      function argSize (this : access BIT_6C) return int;  -- instruction.hpp:339
      pragma Import (CPP, argSize, "_ZN6BIT_6C7argSizeEv");
   end;
   use Class_BIT_6C;
   package Class_BIT_7C is
      type BIT_7C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:340
      end record;
      pragma Import (CPP, BIT_7C);

      procedure exec (this : access BIT_7C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:340
      pragma Import (CPP, exec, "_ZN6BIT_7C4execEP9Processor");

      function toStr (this : access BIT_7C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:340
      pragma Import (CPP, toStr, "_ZN6BIT_7C5toStrEv");

      function opCode (this : access BIT_7C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:340
      pragma Import (CPP, opCode, "_ZN6BIT_7C6opCodeEv");

      function nbCycles (this : access BIT_7C) return int;  -- instruction.hpp:340
      pragma Import (CPP, nbCycles, "_ZN6BIT_7C8nbCyclesEv");

      function hasArg (this : access BIT_7C) return Extensions.bool;  -- instruction.hpp:340
      pragma Import (CPP, hasArg, "_ZN6BIT_7C6hasArgEv");

      procedure setArg (this : access BIT_7C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:340
      pragma Import (CPP, setArg, "_ZN6BIT_7C6setArgER3ARG");

      function argSize (this : access BIT_7C) return int;  -- instruction.hpp:340
      pragma Import (CPP, argSize, "_ZN6BIT_7C7argSizeEv");
   end;
   use Class_BIT_7C;
   package Class_BIT_0D is
      type BIT_0D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:342
      end record;
      pragma Import (CPP, BIT_0D);

      procedure exec (this : access BIT_0D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:342
      pragma Import (CPP, exec, "_ZN6BIT_0D4execEP9Processor");

      function toStr (this : access BIT_0D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:342
      pragma Import (CPP, toStr, "_ZN6BIT_0D5toStrEv");

      function opCode (this : access BIT_0D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:342
      pragma Import (CPP, opCode, "_ZN6BIT_0D6opCodeEv");

      function nbCycles (this : access BIT_0D) return int;  -- instruction.hpp:342
      pragma Import (CPP, nbCycles, "_ZN6BIT_0D8nbCyclesEv");

      function hasArg (this : access BIT_0D) return Extensions.bool;  -- instruction.hpp:342
      pragma Import (CPP, hasArg, "_ZN6BIT_0D6hasArgEv");

      procedure setArg (this : access BIT_0D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:342
      pragma Import (CPP, setArg, "_ZN6BIT_0D6setArgER3ARG");

      function argSize (this : access BIT_0D) return int;  -- instruction.hpp:342
      pragma Import (CPP, argSize, "_ZN6BIT_0D7argSizeEv");
   end;
   use Class_BIT_0D;
   package Class_BIT_1D is
      type BIT_1D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:343
      end record;
      pragma Import (CPP, BIT_1D);

      procedure exec (this : access BIT_1D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:343
      pragma Import (CPP, exec, "_ZN6BIT_1D4execEP9Processor");

      function toStr (this : access BIT_1D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:343
      pragma Import (CPP, toStr, "_ZN6BIT_1D5toStrEv");

      function opCode (this : access BIT_1D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:343
      pragma Import (CPP, opCode, "_ZN6BIT_1D6opCodeEv");

      function nbCycles (this : access BIT_1D) return int;  -- instruction.hpp:343
      pragma Import (CPP, nbCycles, "_ZN6BIT_1D8nbCyclesEv");

      function hasArg (this : access BIT_1D) return Extensions.bool;  -- instruction.hpp:343
      pragma Import (CPP, hasArg, "_ZN6BIT_1D6hasArgEv");

      procedure setArg (this : access BIT_1D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:343
      pragma Import (CPP, setArg, "_ZN6BIT_1D6setArgER3ARG");

      function argSize (this : access BIT_1D) return int;  -- instruction.hpp:343
      pragma Import (CPP, argSize, "_ZN6BIT_1D7argSizeEv");
   end;
   use Class_BIT_1D;
   package Class_BIT_2D is
      type BIT_2D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:344
      end record;
      pragma Import (CPP, BIT_2D);

      procedure exec (this : access BIT_2D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:344
      pragma Import (CPP, exec, "_ZN6BIT_2D4execEP9Processor");

      function toStr (this : access BIT_2D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:344
      pragma Import (CPP, toStr, "_ZN6BIT_2D5toStrEv");

      function opCode (this : access BIT_2D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:344
      pragma Import (CPP, opCode, "_ZN6BIT_2D6opCodeEv");

      function nbCycles (this : access BIT_2D) return int;  -- instruction.hpp:344
      pragma Import (CPP, nbCycles, "_ZN6BIT_2D8nbCyclesEv");

      function hasArg (this : access BIT_2D) return Extensions.bool;  -- instruction.hpp:344
      pragma Import (CPP, hasArg, "_ZN6BIT_2D6hasArgEv");

      procedure setArg (this : access BIT_2D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:344
      pragma Import (CPP, setArg, "_ZN6BIT_2D6setArgER3ARG");

      function argSize (this : access BIT_2D) return int;  -- instruction.hpp:344
      pragma Import (CPP, argSize, "_ZN6BIT_2D7argSizeEv");
   end;
   use Class_BIT_2D;
   package Class_BIT_3D is
      type BIT_3D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:345
      end record;
      pragma Import (CPP, BIT_3D);

      procedure exec (this : access BIT_3D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:345
      pragma Import (CPP, exec, "_ZN6BIT_3D4execEP9Processor");

      function toStr (this : access BIT_3D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:345
      pragma Import (CPP, toStr, "_ZN6BIT_3D5toStrEv");

      function opCode (this : access BIT_3D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:345
      pragma Import (CPP, opCode, "_ZN6BIT_3D6opCodeEv");

      function nbCycles (this : access BIT_3D) return int;  -- instruction.hpp:345
      pragma Import (CPP, nbCycles, "_ZN6BIT_3D8nbCyclesEv");

      function hasArg (this : access BIT_3D) return Extensions.bool;  -- instruction.hpp:345
      pragma Import (CPP, hasArg, "_ZN6BIT_3D6hasArgEv");

      procedure setArg (this : access BIT_3D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:345
      pragma Import (CPP, setArg, "_ZN6BIT_3D6setArgER3ARG");

      function argSize (this : access BIT_3D) return int;  -- instruction.hpp:345
      pragma Import (CPP, argSize, "_ZN6BIT_3D7argSizeEv");
   end;
   use Class_BIT_3D;
   package Class_BIT_4D is
      type BIT_4D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:346
      end record;
      pragma Import (CPP, BIT_4D);

      procedure exec (this : access BIT_4D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:346
      pragma Import (CPP, exec, "_ZN6BIT_4D4execEP9Processor");

      function toStr (this : access BIT_4D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:346
      pragma Import (CPP, toStr, "_ZN6BIT_4D5toStrEv");

      function opCode (this : access BIT_4D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:346
      pragma Import (CPP, opCode, "_ZN6BIT_4D6opCodeEv");

      function nbCycles (this : access BIT_4D) return int;  -- instruction.hpp:346
      pragma Import (CPP, nbCycles, "_ZN6BIT_4D8nbCyclesEv");

      function hasArg (this : access BIT_4D) return Extensions.bool;  -- instruction.hpp:346
      pragma Import (CPP, hasArg, "_ZN6BIT_4D6hasArgEv");

      procedure setArg (this : access BIT_4D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:346
      pragma Import (CPP, setArg, "_ZN6BIT_4D6setArgER3ARG");

      function argSize (this : access BIT_4D) return int;  -- instruction.hpp:346
      pragma Import (CPP, argSize, "_ZN6BIT_4D7argSizeEv");
   end;
   use Class_BIT_4D;
   package Class_BIT_5D is
      type BIT_5D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:347
      end record;
      pragma Import (CPP, BIT_5D);

      procedure exec (this : access BIT_5D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:347
      pragma Import (CPP, exec, "_ZN6BIT_5D4execEP9Processor");

      function toStr (this : access BIT_5D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:347
      pragma Import (CPP, toStr, "_ZN6BIT_5D5toStrEv");

      function opCode (this : access BIT_5D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:347
      pragma Import (CPP, opCode, "_ZN6BIT_5D6opCodeEv");

      function nbCycles (this : access BIT_5D) return int;  -- instruction.hpp:347
      pragma Import (CPP, nbCycles, "_ZN6BIT_5D8nbCyclesEv");

      function hasArg (this : access BIT_5D) return Extensions.bool;  -- instruction.hpp:347
      pragma Import (CPP, hasArg, "_ZN6BIT_5D6hasArgEv");

      procedure setArg (this : access BIT_5D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:347
      pragma Import (CPP, setArg, "_ZN6BIT_5D6setArgER3ARG");

      function argSize (this : access BIT_5D) return int;  -- instruction.hpp:347
      pragma Import (CPP, argSize, "_ZN6BIT_5D7argSizeEv");
   end;
   use Class_BIT_5D;
   package Class_BIT_6D is
      type BIT_6D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:348
      end record;
      pragma Import (CPP, BIT_6D);

      procedure exec (this : access BIT_6D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:348
      pragma Import (CPP, exec, "_ZN6BIT_6D4execEP9Processor");

      function toStr (this : access BIT_6D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:348
      pragma Import (CPP, toStr, "_ZN6BIT_6D5toStrEv");

      function opCode (this : access BIT_6D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:348
      pragma Import (CPP, opCode, "_ZN6BIT_6D6opCodeEv");

      function nbCycles (this : access BIT_6D) return int;  -- instruction.hpp:348
      pragma Import (CPP, nbCycles, "_ZN6BIT_6D8nbCyclesEv");

      function hasArg (this : access BIT_6D) return Extensions.bool;  -- instruction.hpp:348
      pragma Import (CPP, hasArg, "_ZN6BIT_6D6hasArgEv");

      procedure setArg (this : access BIT_6D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:348
      pragma Import (CPP, setArg, "_ZN6BIT_6D6setArgER3ARG");

      function argSize (this : access BIT_6D) return int;  -- instruction.hpp:348
      pragma Import (CPP, argSize, "_ZN6BIT_6D7argSizeEv");
   end;
   use Class_BIT_6D;
   package Class_BIT_7D is
      type BIT_7D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:349
      end record;
      pragma Import (CPP, BIT_7D);

      procedure exec (this : access BIT_7D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:349
      pragma Import (CPP, exec, "_ZN6BIT_7D4execEP9Processor");

      function toStr (this : access BIT_7D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:349
      pragma Import (CPP, toStr, "_ZN6BIT_7D5toStrEv");

      function opCode (this : access BIT_7D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:349
      pragma Import (CPP, opCode, "_ZN6BIT_7D6opCodeEv");

      function nbCycles (this : access BIT_7D) return int;  -- instruction.hpp:349
      pragma Import (CPP, nbCycles, "_ZN6BIT_7D8nbCyclesEv");

      function hasArg (this : access BIT_7D) return Extensions.bool;  -- instruction.hpp:349
      pragma Import (CPP, hasArg, "_ZN6BIT_7D6hasArgEv");

      procedure setArg (this : access BIT_7D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:349
      pragma Import (CPP, setArg, "_ZN6BIT_7D6setArgER3ARG");

      function argSize (this : access BIT_7D) return int;  -- instruction.hpp:349
      pragma Import (CPP, argSize, "_ZN6BIT_7D7argSizeEv");
   end;
   use Class_BIT_7D;
   package Class_BIT_0E is
      type BIT_0E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:351
      end record;
      pragma Import (CPP, BIT_0E);

      procedure exec (this : access BIT_0E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:351
      pragma Import (CPP, exec, "_ZN6BIT_0E4execEP9Processor");

      function toStr (this : access BIT_0E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:351
      pragma Import (CPP, toStr, "_ZN6BIT_0E5toStrEv");

      function opCode (this : access BIT_0E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:351
      pragma Import (CPP, opCode, "_ZN6BIT_0E6opCodeEv");

      function nbCycles (this : access BIT_0E) return int;  -- instruction.hpp:351
      pragma Import (CPP, nbCycles, "_ZN6BIT_0E8nbCyclesEv");

      function hasArg (this : access BIT_0E) return Extensions.bool;  -- instruction.hpp:351
      pragma Import (CPP, hasArg, "_ZN6BIT_0E6hasArgEv");

      procedure setArg (this : access BIT_0E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:351
      pragma Import (CPP, setArg, "_ZN6BIT_0E6setArgER3ARG");

      function argSize (this : access BIT_0E) return int;  -- instruction.hpp:351
      pragma Import (CPP, argSize, "_ZN6BIT_0E7argSizeEv");
   end;
   use Class_BIT_0E;
   package Class_BIT_1E is
      type BIT_1E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:352
      end record;
      pragma Import (CPP, BIT_1E);

      procedure exec (this : access BIT_1E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:352
      pragma Import (CPP, exec, "_ZN6BIT_1E4execEP9Processor");

      function toStr (this : access BIT_1E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:352
      pragma Import (CPP, toStr, "_ZN6BIT_1E5toStrEv");

      function opCode (this : access BIT_1E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:352
      pragma Import (CPP, opCode, "_ZN6BIT_1E6opCodeEv");

      function nbCycles (this : access BIT_1E) return int;  -- instruction.hpp:352
      pragma Import (CPP, nbCycles, "_ZN6BIT_1E8nbCyclesEv");

      function hasArg (this : access BIT_1E) return Extensions.bool;  -- instruction.hpp:352
      pragma Import (CPP, hasArg, "_ZN6BIT_1E6hasArgEv");

      procedure setArg (this : access BIT_1E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:352
      pragma Import (CPP, setArg, "_ZN6BIT_1E6setArgER3ARG");

      function argSize (this : access BIT_1E) return int;  -- instruction.hpp:352
      pragma Import (CPP, argSize, "_ZN6BIT_1E7argSizeEv");
   end;
   use Class_BIT_1E;
   package Class_BIT_2E is
      type BIT_2E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:353
      end record;
      pragma Import (CPP, BIT_2E);

      procedure exec (this : access BIT_2E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:353
      pragma Import (CPP, exec, "_ZN6BIT_2E4execEP9Processor");

      function toStr (this : access BIT_2E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:353
      pragma Import (CPP, toStr, "_ZN6BIT_2E5toStrEv");

      function opCode (this : access BIT_2E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:353
      pragma Import (CPP, opCode, "_ZN6BIT_2E6opCodeEv");

      function nbCycles (this : access BIT_2E) return int;  -- instruction.hpp:353
      pragma Import (CPP, nbCycles, "_ZN6BIT_2E8nbCyclesEv");

      function hasArg (this : access BIT_2E) return Extensions.bool;  -- instruction.hpp:353
      pragma Import (CPP, hasArg, "_ZN6BIT_2E6hasArgEv");

      procedure setArg (this : access BIT_2E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:353
      pragma Import (CPP, setArg, "_ZN6BIT_2E6setArgER3ARG");

      function argSize (this : access BIT_2E) return int;  -- instruction.hpp:353
      pragma Import (CPP, argSize, "_ZN6BIT_2E7argSizeEv");
   end;
   use Class_BIT_2E;
   package Class_BIT_3E is
      type BIT_3E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:354
      end record;
      pragma Import (CPP, BIT_3E);

      procedure exec (this : access BIT_3E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:354
      pragma Import (CPP, exec, "_ZN6BIT_3E4execEP9Processor");

      function toStr (this : access BIT_3E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:354
      pragma Import (CPP, toStr, "_ZN6BIT_3E5toStrEv");

      function opCode (this : access BIT_3E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:354
      pragma Import (CPP, opCode, "_ZN6BIT_3E6opCodeEv");

      function nbCycles (this : access BIT_3E) return int;  -- instruction.hpp:354
      pragma Import (CPP, nbCycles, "_ZN6BIT_3E8nbCyclesEv");

      function hasArg (this : access BIT_3E) return Extensions.bool;  -- instruction.hpp:354
      pragma Import (CPP, hasArg, "_ZN6BIT_3E6hasArgEv");

      procedure setArg (this : access BIT_3E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:354
      pragma Import (CPP, setArg, "_ZN6BIT_3E6setArgER3ARG");

      function argSize (this : access BIT_3E) return int;  -- instruction.hpp:354
      pragma Import (CPP, argSize, "_ZN6BIT_3E7argSizeEv");
   end;
   use Class_BIT_3E;
   package Class_BIT_4E is
      type BIT_4E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:355
      end record;
      pragma Import (CPP, BIT_4E);

      procedure exec (this : access BIT_4E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:355
      pragma Import (CPP, exec, "_ZN6BIT_4E4execEP9Processor");

      function toStr (this : access BIT_4E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:355
      pragma Import (CPP, toStr, "_ZN6BIT_4E5toStrEv");

      function opCode (this : access BIT_4E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:355
      pragma Import (CPP, opCode, "_ZN6BIT_4E6opCodeEv");

      function nbCycles (this : access BIT_4E) return int;  -- instruction.hpp:355
      pragma Import (CPP, nbCycles, "_ZN6BIT_4E8nbCyclesEv");

      function hasArg (this : access BIT_4E) return Extensions.bool;  -- instruction.hpp:355
      pragma Import (CPP, hasArg, "_ZN6BIT_4E6hasArgEv");

      procedure setArg (this : access BIT_4E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:355
      pragma Import (CPP, setArg, "_ZN6BIT_4E6setArgER3ARG");

      function argSize (this : access BIT_4E) return int;  -- instruction.hpp:355
      pragma Import (CPP, argSize, "_ZN6BIT_4E7argSizeEv");
   end;
   use Class_BIT_4E;
   package Class_BIT_5E is
      type BIT_5E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:356
      end record;
      pragma Import (CPP, BIT_5E);

      procedure exec (this : access BIT_5E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:356
      pragma Import (CPP, exec, "_ZN6BIT_5E4execEP9Processor");

      function toStr (this : access BIT_5E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:356
      pragma Import (CPP, toStr, "_ZN6BIT_5E5toStrEv");

      function opCode (this : access BIT_5E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:356
      pragma Import (CPP, opCode, "_ZN6BIT_5E6opCodeEv");

      function nbCycles (this : access BIT_5E) return int;  -- instruction.hpp:356
      pragma Import (CPP, nbCycles, "_ZN6BIT_5E8nbCyclesEv");

      function hasArg (this : access BIT_5E) return Extensions.bool;  -- instruction.hpp:356
      pragma Import (CPP, hasArg, "_ZN6BIT_5E6hasArgEv");

      procedure setArg (this : access BIT_5E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:356
      pragma Import (CPP, setArg, "_ZN6BIT_5E6setArgER3ARG");

      function argSize (this : access BIT_5E) return int;  -- instruction.hpp:356
      pragma Import (CPP, argSize, "_ZN6BIT_5E7argSizeEv");
   end;
   use Class_BIT_5E;
   package Class_BIT_6E is
      type BIT_6E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:357
      end record;
      pragma Import (CPP, BIT_6E);

      procedure exec (this : access BIT_6E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:357
      pragma Import (CPP, exec, "_ZN6BIT_6E4execEP9Processor");

      function toStr (this : access BIT_6E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:357
      pragma Import (CPP, toStr, "_ZN6BIT_6E5toStrEv");

      function opCode (this : access BIT_6E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:357
      pragma Import (CPP, opCode, "_ZN6BIT_6E6opCodeEv");

      function nbCycles (this : access BIT_6E) return int;  -- instruction.hpp:357
      pragma Import (CPP, nbCycles, "_ZN6BIT_6E8nbCyclesEv");

      function hasArg (this : access BIT_6E) return Extensions.bool;  -- instruction.hpp:357
      pragma Import (CPP, hasArg, "_ZN6BIT_6E6hasArgEv");

      procedure setArg (this : access BIT_6E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:357
      pragma Import (CPP, setArg, "_ZN6BIT_6E6setArgER3ARG");

      function argSize (this : access BIT_6E) return int;  -- instruction.hpp:357
      pragma Import (CPP, argSize, "_ZN6BIT_6E7argSizeEv");
   end;
   use Class_BIT_6E;
   package Class_BIT_7E is
      type BIT_7E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:358
      end record;
      pragma Import (CPP, BIT_7E);

      procedure exec (this : access BIT_7E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:358
      pragma Import (CPP, exec, "_ZN6BIT_7E4execEP9Processor");

      function toStr (this : access BIT_7E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:358
      pragma Import (CPP, toStr, "_ZN6BIT_7E5toStrEv");

      function opCode (this : access BIT_7E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:358
      pragma Import (CPP, opCode, "_ZN6BIT_7E6opCodeEv");

      function nbCycles (this : access BIT_7E) return int;  -- instruction.hpp:358
      pragma Import (CPP, nbCycles, "_ZN6BIT_7E8nbCyclesEv");

      function hasArg (this : access BIT_7E) return Extensions.bool;  -- instruction.hpp:358
      pragma Import (CPP, hasArg, "_ZN6BIT_7E6hasArgEv");

      procedure setArg (this : access BIT_7E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:358
      pragma Import (CPP, setArg, "_ZN6BIT_7E6setArgER3ARG");

      function argSize (this : access BIT_7E) return int;  -- instruction.hpp:358
      pragma Import (CPP, argSize, "_ZN6BIT_7E7argSizeEv");
   end;
   use Class_BIT_7E;
   package Class_BIT_0H is
      type BIT_0H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:360
      end record;
      pragma Import (CPP, BIT_0H);

      procedure exec (this : access BIT_0H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:360
      pragma Import (CPP, exec, "_ZN6BIT_0H4execEP9Processor");

      function toStr (this : access BIT_0H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:360
      pragma Import (CPP, toStr, "_ZN6BIT_0H5toStrEv");

      function opCode (this : access BIT_0H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:360
      pragma Import (CPP, opCode, "_ZN6BIT_0H6opCodeEv");

      function nbCycles (this : access BIT_0H) return int;  -- instruction.hpp:360
      pragma Import (CPP, nbCycles, "_ZN6BIT_0H8nbCyclesEv");

      function hasArg (this : access BIT_0H) return Extensions.bool;  -- instruction.hpp:360
      pragma Import (CPP, hasArg, "_ZN6BIT_0H6hasArgEv");

      procedure setArg (this : access BIT_0H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:360
      pragma Import (CPP, setArg, "_ZN6BIT_0H6setArgER3ARG");

      function argSize (this : access BIT_0H) return int;  -- instruction.hpp:360
      pragma Import (CPP, argSize, "_ZN6BIT_0H7argSizeEv");
   end;
   use Class_BIT_0H;
   package Class_BIT_1H is
      type BIT_1H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:361
      end record;
      pragma Import (CPP, BIT_1H);

      procedure exec (this : access BIT_1H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:361
      pragma Import (CPP, exec, "_ZN6BIT_1H4execEP9Processor");

      function toStr (this : access BIT_1H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:361
      pragma Import (CPP, toStr, "_ZN6BIT_1H5toStrEv");

      function opCode (this : access BIT_1H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:361
      pragma Import (CPP, opCode, "_ZN6BIT_1H6opCodeEv");

      function nbCycles (this : access BIT_1H) return int;  -- instruction.hpp:361
      pragma Import (CPP, nbCycles, "_ZN6BIT_1H8nbCyclesEv");

      function hasArg (this : access BIT_1H) return Extensions.bool;  -- instruction.hpp:361
      pragma Import (CPP, hasArg, "_ZN6BIT_1H6hasArgEv");

      procedure setArg (this : access BIT_1H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:361
      pragma Import (CPP, setArg, "_ZN6BIT_1H6setArgER3ARG");

      function argSize (this : access BIT_1H) return int;  -- instruction.hpp:361
      pragma Import (CPP, argSize, "_ZN6BIT_1H7argSizeEv");
   end;
   use Class_BIT_1H;
   package Class_BIT_2H is
      type BIT_2H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:362
      end record;
      pragma Import (CPP, BIT_2H);

      procedure exec (this : access BIT_2H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:362
      pragma Import (CPP, exec, "_ZN6BIT_2H4execEP9Processor");

      function toStr (this : access BIT_2H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:362
      pragma Import (CPP, toStr, "_ZN6BIT_2H5toStrEv");

      function opCode (this : access BIT_2H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:362
      pragma Import (CPP, opCode, "_ZN6BIT_2H6opCodeEv");

      function nbCycles (this : access BIT_2H) return int;  -- instruction.hpp:362
      pragma Import (CPP, nbCycles, "_ZN6BIT_2H8nbCyclesEv");

      function hasArg (this : access BIT_2H) return Extensions.bool;  -- instruction.hpp:362
      pragma Import (CPP, hasArg, "_ZN6BIT_2H6hasArgEv");

      procedure setArg (this : access BIT_2H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:362
      pragma Import (CPP, setArg, "_ZN6BIT_2H6setArgER3ARG");

      function argSize (this : access BIT_2H) return int;  -- instruction.hpp:362
      pragma Import (CPP, argSize, "_ZN6BIT_2H7argSizeEv");
   end;
   use Class_BIT_2H;
   package Class_BIT_3H is
      type BIT_3H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:363
      end record;
      pragma Import (CPP, BIT_3H);

      procedure exec (this : access BIT_3H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:363
      pragma Import (CPP, exec, "_ZN6BIT_3H4execEP9Processor");

      function toStr (this : access BIT_3H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:363
      pragma Import (CPP, toStr, "_ZN6BIT_3H5toStrEv");

      function opCode (this : access BIT_3H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:363
      pragma Import (CPP, opCode, "_ZN6BIT_3H6opCodeEv");

      function nbCycles (this : access BIT_3H) return int;  -- instruction.hpp:363
      pragma Import (CPP, nbCycles, "_ZN6BIT_3H8nbCyclesEv");

      function hasArg (this : access BIT_3H) return Extensions.bool;  -- instruction.hpp:363
      pragma Import (CPP, hasArg, "_ZN6BIT_3H6hasArgEv");

      procedure setArg (this : access BIT_3H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:363
      pragma Import (CPP, setArg, "_ZN6BIT_3H6setArgER3ARG");

      function argSize (this : access BIT_3H) return int;  -- instruction.hpp:363
      pragma Import (CPP, argSize, "_ZN6BIT_3H7argSizeEv");
   end;
   use Class_BIT_3H;
   package Class_BIT_4H is
      type BIT_4H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:364
      end record;
      pragma Import (CPP, BIT_4H);

      procedure exec (this : access BIT_4H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:364
      pragma Import (CPP, exec, "_ZN6BIT_4H4execEP9Processor");

      function toStr (this : access BIT_4H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:364
      pragma Import (CPP, toStr, "_ZN6BIT_4H5toStrEv");

      function opCode (this : access BIT_4H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:364
      pragma Import (CPP, opCode, "_ZN6BIT_4H6opCodeEv");

      function nbCycles (this : access BIT_4H) return int;  -- instruction.hpp:364
      pragma Import (CPP, nbCycles, "_ZN6BIT_4H8nbCyclesEv");

      function hasArg (this : access BIT_4H) return Extensions.bool;  -- instruction.hpp:364
      pragma Import (CPP, hasArg, "_ZN6BIT_4H6hasArgEv");

      procedure setArg (this : access BIT_4H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:364
      pragma Import (CPP, setArg, "_ZN6BIT_4H6setArgER3ARG");

      function argSize (this : access BIT_4H) return int;  -- instruction.hpp:364
      pragma Import (CPP, argSize, "_ZN6BIT_4H7argSizeEv");
   end;
   use Class_BIT_4H;
   package Class_BIT_5H is
      type BIT_5H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:365
      end record;
      pragma Import (CPP, BIT_5H);

      procedure exec (this : access BIT_5H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:365
      pragma Import (CPP, exec, "_ZN6BIT_5H4execEP9Processor");

      function toStr (this : access BIT_5H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:365
      pragma Import (CPP, toStr, "_ZN6BIT_5H5toStrEv");

      function opCode (this : access BIT_5H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:365
      pragma Import (CPP, opCode, "_ZN6BIT_5H6opCodeEv");

      function nbCycles (this : access BIT_5H) return int;  -- instruction.hpp:365
      pragma Import (CPP, nbCycles, "_ZN6BIT_5H8nbCyclesEv");

      function hasArg (this : access BIT_5H) return Extensions.bool;  -- instruction.hpp:365
      pragma Import (CPP, hasArg, "_ZN6BIT_5H6hasArgEv");

      procedure setArg (this : access BIT_5H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:365
      pragma Import (CPP, setArg, "_ZN6BIT_5H6setArgER3ARG");

      function argSize (this : access BIT_5H) return int;  -- instruction.hpp:365
      pragma Import (CPP, argSize, "_ZN6BIT_5H7argSizeEv");
   end;
   use Class_BIT_5H;
   package Class_BIT_6H is
      type BIT_6H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:366
      end record;
      pragma Import (CPP, BIT_6H);

      procedure exec (this : access BIT_6H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:366
      pragma Import (CPP, exec, "_ZN6BIT_6H4execEP9Processor");

      function toStr (this : access BIT_6H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:366
      pragma Import (CPP, toStr, "_ZN6BIT_6H5toStrEv");

      function opCode (this : access BIT_6H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:366
      pragma Import (CPP, opCode, "_ZN6BIT_6H6opCodeEv");

      function nbCycles (this : access BIT_6H) return int;  -- instruction.hpp:366
      pragma Import (CPP, nbCycles, "_ZN6BIT_6H8nbCyclesEv");

      function hasArg (this : access BIT_6H) return Extensions.bool;  -- instruction.hpp:366
      pragma Import (CPP, hasArg, "_ZN6BIT_6H6hasArgEv");

      procedure setArg (this : access BIT_6H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:366
      pragma Import (CPP, setArg, "_ZN6BIT_6H6setArgER3ARG");

      function argSize (this : access BIT_6H) return int;  -- instruction.hpp:366
      pragma Import (CPP, argSize, "_ZN6BIT_6H7argSizeEv");
   end;
   use Class_BIT_6H;
   package Class_BIT_7H is
      type BIT_7H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:367
      end record;
      pragma Import (CPP, BIT_7H);

      procedure exec (this : access BIT_7H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:367
      pragma Import (CPP, exec, "_ZN6BIT_7H4execEP9Processor");

      function toStr (this : access BIT_7H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:367
      pragma Import (CPP, toStr, "_ZN6BIT_7H5toStrEv");

      function opCode (this : access BIT_7H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:367
      pragma Import (CPP, opCode, "_ZN6BIT_7H6opCodeEv");

      function nbCycles (this : access BIT_7H) return int;  -- instruction.hpp:367
      pragma Import (CPP, nbCycles, "_ZN6BIT_7H8nbCyclesEv");

      function hasArg (this : access BIT_7H) return Extensions.bool;  -- instruction.hpp:367
      pragma Import (CPP, hasArg, "_ZN6BIT_7H6hasArgEv");

      procedure setArg (this : access BIT_7H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:367
      pragma Import (CPP, setArg, "_ZN6BIT_7H6setArgER3ARG");

      function argSize (this : access BIT_7H) return int;  -- instruction.hpp:367
      pragma Import (CPP, argSize, "_ZN6BIT_7H7argSizeEv");
   end;
   use Class_BIT_7H;
   package Class_BIT_0L is
      type BIT_0L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:369
      end record;
      pragma Import (CPP, BIT_0L);

      procedure exec (this : access BIT_0L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:369
      pragma Import (CPP, exec, "_ZN6BIT_0L4execEP9Processor");

      function toStr (this : access BIT_0L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:369
      pragma Import (CPP, toStr, "_ZN6BIT_0L5toStrEv");

      function opCode (this : access BIT_0L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:369
      pragma Import (CPP, opCode, "_ZN6BIT_0L6opCodeEv");

      function nbCycles (this : access BIT_0L) return int;  -- instruction.hpp:369
      pragma Import (CPP, nbCycles, "_ZN6BIT_0L8nbCyclesEv");

      function hasArg (this : access BIT_0L) return Extensions.bool;  -- instruction.hpp:369
      pragma Import (CPP, hasArg, "_ZN6BIT_0L6hasArgEv");

      procedure setArg (this : access BIT_0L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:369
      pragma Import (CPP, setArg, "_ZN6BIT_0L6setArgER3ARG");

      function argSize (this : access BIT_0L) return int;  -- instruction.hpp:369
      pragma Import (CPP, argSize, "_ZN6BIT_0L7argSizeEv");
   end;
   use Class_BIT_0L;
   package Class_BIT_1L is
      type BIT_1L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:370
      end record;
      pragma Import (CPP, BIT_1L);

      procedure exec (this : access BIT_1L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:370
      pragma Import (CPP, exec, "_ZN6BIT_1L4execEP9Processor");

      function toStr (this : access BIT_1L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:370
      pragma Import (CPP, toStr, "_ZN6BIT_1L5toStrEv");

      function opCode (this : access BIT_1L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:370
      pragma Import (CPP, opCode, "_ZN6BIT_1L6opCodeEv");

      function nbCycles (this : access BIT_1L) return int;  -- instruction.hpp:370
      pragma Import (CPP, nbCycles, "_ZN6BIT_1L8nbCyclesEv");

      function hasArg (this : access BIT_1L) return Extensions.bool;  -- instruction.hpp:370
      pragma Import (CPP, hasArg, "_ZN6BIT_1L6hasArgEv");

      procedure setArg (this : access BIT_1L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:370
      pragma Import (CPP, setArg, "_ZN6BIT_1L6setArgER3ARG");

      function argSize (this : access BIT_1L) return int;  -- instruction.hpp:370
      pragma Import (CPP, argSize, "_ZN6BIT_1L7argSizeEv");
   end;
   use Class_BIT_1L;
   package Class_BIT_2L is
      type BIT_2L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:371
      end record;
      pragma Import (CPP, BIT_2L);

      procedure exec (this : access BIT_2L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:371
      pragma Import (CPP, exec, "_ZN6BIT_2L4execEP9Processor");

      function toStr (this : access BIT_2L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:371
      pragma Import (CPP, toStr, "_ZN6BIT_2L5toStrEv");

      function opCode (this : access BIT_2L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:371
      pragma Import (CPP, opCode, "_ZN6BIT_2L6opCodeEv");

      function nbCycles (this : access BIT_2L) return int;  -- instruction.hpp:371
      pragma Import (CPP, nbCycles, "_ZN6BIT_2L8nbCyclesEv");

      function hasArg (this : access BIT_2L) return Extensions.bool;  -- instruction.hpp:371
      pragma Import (CPP, hasArg, "_ZN6BIT_2L6hasArgEv");

      procedure setArg (this : access BIT_2L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:371
      pragma Import (CPP, setArg, "_ZN6BIT_2L6setArgER3ARG");

      function argSize (this : access BIT_2L) return int;  -- instruction.hpp:371
      pragma Import (CPP, argSize, "_ZN6BIT_2L7argSizeEv");
   end;
   use Class_BIT_2L;
   package Class_BIT_3L is
      type BIT_3L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:372
      end record;
      pragma Import (CPP, BIT_3L);

      procedure exec (this : access BIT_3L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:372
      pragma Import (CPP, exec, "_ZN6BIT_3L4execEP9Processor");

      function toStr (this : access BIT_3L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:372
      pragma Import (CPP, toStr, "_ZN6BIT_3L5toStrEv");

      function opCode (this : access BIT_3L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:372
      pragma Import (CPP, opCode, "_ZN6BIT_3L6opCodeEv");

      function nbCycles (this : access BIT_3L) return int;  -- instruction.hpp:372
      pragma Import (CPP, nbCycles, "_ZN6BIT_3L8nbCyclesEv");

      function hasArg (this : access BIT_3L) return Extensions.bool;  -- instruction.hpp:372
      pragma Import (CPP, hasArg, "_ZN6BIT_3L6hasArgEv");

      procedure setArg (this : access BIT_3L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:372
      pragma Import (CPP, setArg, "_ZN6BIT_3L6setArgER3ARG");

      function argSize (this : access BIT_3L) return int;  -- instruction.hpp:372
      pragma Import (CPP, argSize, "_ZN6BIT_3L7argSizeEv");
   end;
   use Class_BIT_3L;
   package Class_BIT_4L is
      type BIT_4L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:373
      end record;
      pragma Import (CPP, BIT_4L);

      procedure exec (this : access BIT_4L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:373
      pragma Import (CPP, exec, "_ZN6BIT_4L4execEP9Processor");

      function toStr (this : access BIT_4L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:373
      pragma Import (CPP, toStr, "_ZN6BIT_4L5toStrEv");

      function opCode (this : access BIT_4L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:373
      pragma Import (CPP, opCode, "_ZN6BIT_4L6opCodeEv");

      function nbCycles (this : access BIT_4L) return int;  -- instruction.hpp:373
      pragma Import (CPP, nbCycles, "_ZN6BIT_4L8nbCyclesEv");

      function hasArg (this : access BIT_4L) return Extensions.bool;  -- instruction.hpp:373
      pragma Import (CPP, hasArg, "_ZN6BIT_4L6hasArgEv");

      procedure setArg (this : access BIT_4L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:373
      pragma Import (CPP, setArg, "_ZN6BIT_4L6setArgER3ARG");

      function argSize (this : access BIT_4L) return int;  -- instruction.hpp:373
      pragma Import (CPP, argSize, "_ZN6BIT_4L7argSizeEv");
   end;
   use Class_BIT_4L;
   package Class_BIT_5L is
      type BIT_5L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:374
      end record;
      pragma Import (CPP, BIT_5L);

      procedure exec (this : access BIT_5L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:374
      pragma Import (CPP, exec, "_ZN6BIT_5L4execEP9Processor");

      function toStr (this : access BIT_5L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:374
      pragma Import (CPP, toStr, "_ZN6BIT_5L5toStrEv");

      function opCode (this : access BIT_5L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:374
      pragma Import (CPP, opCode, "_ZN6BIT_5L6opCodeEv");

      function nbCycles (this : access BIT_5L) return int;  -- instruction.hpp:374
      pragma Import (CPP, nbCycles, "_ZN6BIT_5L8nbCyclesEv");

      function hasArg (this : access BIT_5L) return Extensions.bool;  -- instruction.hpp:374
      pragma Import (CPP, hasArg, "_ZN6BIT_5L6hasArgEv");

      procedure setArg (this : access BIT_5L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:374
      pragma Import (CPP, setArg, "_ZN6BIT_5L6setArgER3ARG");

      function argSize (this : access BIT_5L) return int;  -- instruction.hpp:374
      pragma Import (CPP, argSize, "_ZN6BIT_5L7argSizeEv");
   end;
   use Class_BIT_5L;
   package Class_BIT_6L is
      type BIT_6L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:375
      end record;
      pragma Import (CPP, BIT_6L);

      procedure exec (this : access BIT_6L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:375
      pragma Import (CPP, exec, "_ZN6BIT_6L4execEP9Processor");

      function toStr (this : access BIT_6L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:375
      pragma Import (CPP, toStr, "_ZN6BIT_6L5toStrEv");

      function opCode (this : access BIT_6L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:375
      pragma Import (CPP, opCode, "_ZN6BIT_6L6opCodeEv");

      function nbCycles (this : access BIT_6L) return int;  -- instruction.hpp:375
      pragma Import (CPP, nbCycles, "_ZN6BIT_6L8nbCyclesEv");

      function hasArg (this : access BIT_6L) return Extensions.bool;  -- instruction.hpp:375
      pragma Import (CPP, hasArg, "_ZN6BIT_6L6hasArgEv");

      procedure setArg (this : access BIT_6L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:375
      pragma Import (CPP, setArg, "_ZN6BIT_6L6setArgER3ARG");

      function argSize (this : access BIT_6L) return int;  -- instruction.hpp:375
      pragma Import (CPP, argSize, "_ZN6BIT_6L7argSizeEv");
   end;
   use Class_BIT_6L;
   package Class_BIT_7L is
      type BIT_7L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:376
      end record;
      pragma Import (CPP, BIT_7L);

      procedure exec (this : access BIT_7L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:376
      pragma Import (CPP, exec, "_ZN6BIT_7L4execEP9Processor");

      function toStr (this : access BIT_7L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:376
      pragma Import (CPP, toStr, "_ZN6BIT_7L5toStrEv");

      function opCode (this : access BIT_7L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:376
      pragma Import (CPP, opCode, "_ZN6BIT_7L6opCodeEv");

      function nbCycles (this : access BIT_7L) return int;  -- instruction.hpp:376
      pragma Import (CPP, nbCycles, "_ZN6BIT_7L8nbCyclesEv");

      function hasArg (this : access BIT_7L) return Extensions.bool;  -- instruction.hpp:376
      pragma Import (CPP, hasArg, "_ZN6BIT_7L6hasArgEv");

      procedure setArg (this : access BIT_7L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:376
      pragma Import (CPP, setArg, "_ZN6BIT_7L6setArgER3ARG");

      function argSize (this : access BIT_7L) return int;  -- instruction.hpp:376
      pragma Import (CPP, argSize, "_ZN6BIT_7L7argSizeEv");
   end;
   use Class_BIT_7L;
   package Class_BIT_0HL is
      type BIT_0HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:378
      end record;
      pragma Import (CPP, BIT_0HL);

      procedure exec (this : access BIT_0HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:378
      pragma Import (CPP, exec, "_ZN7BIT_0HL4execEP9Processor");

      function toStr (this : access BIT_0HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:378
      pragma Import (CPP, toStr, "_ZN7BIT_0HL5toStrEv");

      function opCode (this : access BIT_0HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:378
      pragma Import (CPP, opCode, "_ZN7BIT_0HL6opCodeEv");

      function nbCycles (this : access BIT_0HL) return int;  -- instruction.hpp:378
      pragma Import (CPP, nbCycles, "_ZN7BIT_0HL8nbCyclesEv");

      function hasArg (this : access BIT_0HL) return Extensions.bool;  -- instruction.hpp:378
      pragma Import (CPP, hasArg, "_ZN7BIT_0HL6hasArgEv");

      procedure setArg (this : access BIT_0HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:378
      pragma Import (CPP, setArg, "_ZN7BIT_0HL6setArgER3ARG");

      function argSize (this : access BIT_0HL) return int;  -- instruction.hpp:378
      pragma Import (CPP, argSize, "_ZN7BIT_0HL7argSizeEv");
   end;
   use Class_BIT_0HL;
   package Class_BIT_1HL is
      type BIT_1HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:379
      end record;
      pragma Import (CPP, BIT_1HL);

      procedure exec (this : access BIT_1HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:379
      pragma Import (CPP, exec, "_ZN7BIT_1HL4execEP9Processor");

      function toStr (this : access BIT_1HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:379
      pragma Import (CPP, toStr, "_ZN7BIT_1HL5toStrEv");

      function opCode (this : access BIT_1HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:379
      pragma Import (CPP, opCode, "_ZN7BIT_1HL6opCodeEv");

      function nbCycles (this : access BIT_1HL) return int;  -- instruction.hpp:379
      pragma Import (CPP, nbCycles, "_ZN7BIT_1HL8nbCyclesEv");

      function hasArg (this : access BIT_1HL) return Extensions.bool;  -- instruction.hpp:379
      pragma Import (CPP, hasArg, "_ZN7BIT_1HL6hasArgEv");

      procedure setArg (this : access BIT_1HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:379
      pragma Import (CPP, setArg, "_ZN7BIT_1HL6setArgER3ARG");

      function argSize (this : access BIT_1HL) return int;  -- instruction.hpp:379
      pragma Import (CPP, argSize, "_ZN7BIT_1HL7argSizeEv");
   end;
   use Class_BIT_1HL;
   package Class_BIT_2HL is
      type BIT_2HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:380
      end record;
      pragma Import (CPP, BIT_2HL);

      procedure exec (this : access BIT_2HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:380
      pragma Import (CPP, exec, "_ZN7BIT_2HL4execEP9Processor");

      function toStr (this : access BIT_2HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:380
      pragma Import (CPP, toStr, "_ZN7BIT_2HL5toStrEv");

      function opCode (this : access BIT_2HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:380
      pragma Import (CPP, opCode, "_ZN7BIT_2HL6opCodeEv");

      function nbCycles (this : access BIT_2HL) return int;  -- instruction.hpp:380
      pragma Import (CPP, nbCycles, "_ZN7BIT_2HL8nbCyclesEv");

      function hasArg (this : access BIT_2HL) return Extensions.bool;  -- instruction.hpp:380
      pragma Import (CPP, hasArg, "_ZN7BIT_2HL6hasArgEv");

      procedure setArg (this : access BIT_2HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:380
      pragma Import (CPP, setArg, "_ZN7BIT_2HL6setArgER3ARG");

      function argSize (this : access BIT_2HL) return int;  -- instruction.hpp:380
      pragma Import (CPP, argSize, "_ZN7BIT_2HL7argSizeEv");
   end;
   use Class_BIT_2HL;
   package Class_BIT_3HL is
      type BIT_3HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:381
      end record;
      pragma Import (CPP, BIT_3HL);

      procedure exec (this : access BIT_3HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:381
      pragma Import (CPP, exec, "_ZN7BIT_3HL4execEP9Processor");

      function toStr (this : access BIT_3HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:381
      pragma Import (CPP, toStr, "_ZN7BIT_3HL5toStrEv");

      function opCode (this : access BIT_3HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:381
      pragma Import (CPP, opCode, "_ZN7BIT_3HL6opCodeEv");

      function nbCycles (this : access BIT_3HL) return int;  -- instruction.hpp:381
      pragma Import (CPP, nbCycles, "_ZN7BIT_3HL8nbCyclesEv");

      function hasArg (this : access BIT_3HL) return Extensions.bool;  -- instruction.hpp:381
      pragma Import (CPP, hasArg, "_ZN7BIT_3HL6hasArgEv");

      procedure setArg (this : access BIT_3HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:381
      pragma Import (CPP, setArg, "_ZN7BIT_3HL6setArgER3ARG");

      function argSize (this : access BIT_3HL) return int;  -- instruction.hpp:381
      pragma Import (CPP, argSize, "_ZN7BIT_3HL7argSizeEv");
   end;
   use Class_BIT_3HL;
   package Class_BIT_4HL is
      type BIT_4HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:382
      end record;
      pragma Import (CPP, BIT_4HL);

      procedure exec (this : access BIT_4HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:382
      pragma Import (CPP, exec, "_ZN7BIT_4HL4execEP9Processor");

      function toStr (this : access BIT_4HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:382
      pragma Import (CPP, toStr, "_ZN7BIT_4HL5toStrEv");

      function opCode (this : access BIT_4HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:382
      pragma Import (CPP, opCode, "_ZN7BIT_4HL6opCodeEv");

      function nbCycles (this : access BIT_4HL) return int;  -- instruction.hpp:382
      pragma Import (CPP, nbCycles, "_ZN7BIT_4HL8nbCyclesEv");

      function hasArg (this : access BIT_4HL) return Extensions.bool;  -- instruction.hpp:382
      pragma Import (CPP, hasArg, "_ZN7BIT_4HL6hasArgEv");

      procedure setArg (this : access BIT_4HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:382
      pragma Import (CPP, setArg, "_ZN7BIT_4HL6setArgER3ARG");

      function argSize (this : access BIT_4HL) return int;  -- instruction.hpp:382
      pragma Import (CPP, argSize, "_ZN7BIT_4HL7argSizeEv");
   end;
   use Class_BIT_4HL;
   package Class_BIT_5HL is
      type BIT_5HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:383
      end record;
      pragma Import (CPP, BIT_5HL);

      procedure exec (this : access BIT_5HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:383
      pragma Import (CPP, exec, "_ZN7BIT_5HL4execEP9Processor");

      function toStr (this : access BIT_5HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:383
      pragma Import (CPP, toStr, "_ZN7BIT_5HL5toStrEv");

      function opCode (this : access BIT_5HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:383
      pragma Import (CPP, opCode, "_ZN7BIT_5HL6opCodeEv");

      function nbCycles (this : access BIT_5HL) return int;  -- instruction.hpp:383
      pragma Import (CPP, nbCycles, "_ZN7BIT_5HL8nbCyclesEv");

      function hasArg (this : access BIT_5HL) return Extensions.bool;  -- instruction.hpp:383
      pragma Import (CPP, hasArg, "_ZN7BIT_5HL6hasArgEv");

      procedure setArg (this : access BIT_5HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:383
      pragma Import (CPP, setArg, "_ZN7BIT_5HL6setArgER3ARG");

      function argSize (this : access BIT_5HL) return int;  -- instruction.hpp:383
      pragma Import (CPP, argSize, "_ZN7BIT_5HL7argSizeEv");
   end;
   use Class_BIT_5HL;
   package Class_BIT_6HL is
      type BIT_6HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:384
      end record;
      pragma Import (CPP, BIT_6HL);

      procedure exec (this : access BIT_6HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:384
      pragma Import (CPP, exec, "_ZN7BIT_6HL4execEP9Processor");

      function toStr (this : access BIT_6HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:384
      pragma Import (CPP, toStr, "_ZN7BIT_6HL5toStrEv");

      function opCode (this : access BIT_6HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:384
      pragma Import (CPP, opCode, "_ZN7BIT_6HL6opCodeEv");

      function nbCycles (this : access BIT_6HL) return int;  -- instruction.hpp:384
      pragma Import (CPP, nbCycles, "_ZN7BIT_6HL8nbCyclesEv");

      function hasArg (this : access BIT_6HL) return Extensions.bool;  -- instruction.hpp:384
      pragma Import (CPP, hasArg, "_ZN7BIT_6HL6hasArgEv");

      procedure setArg (this : access BIT_6HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:384
      pragma Import (CPP, setArg, "_ZN7BIT_6HL6setArgER3ARG");

      function argSize (this : access BIT_6HL) return int;  -- instruction.hpp:384
      pragma Import (CPP, argSize, "_ZN7BIT_6HL7argSizeEv");
   end;
   use Class_BIT_6HL;
   package Class_BIT_7HL is
      type BIT_7HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:385
      end record;
      pragma Import (CPP, BIT_7HL);

      procedure exec (this : access BIT_7HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:385
      pragma Import (CPP, exec, "_ZN7BIT_7HL4execEP9Processor");

      function toStr (this : access BIT_7HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:385
      pragma Import (CPP, toStr, "_ZN7BIT_7HL5toStrEv");

      function opCode (this : access BIT_7HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:385
      pragma Import (CPP, opCode, "_ZN7BIT_7HL6opCodeEv");

      function nbCycles (this : access BIT_7HL) return int;  -- instruction.hpp:385
      pragma Import (CPP, nbCycles, "_ZN7BIT_7HL8nbCyclesEv");

      function hasArg (this : access BIT_7HL) return Extensions.bool;  -- instruction.hpp:385
      pragma Import (CPP, hasArg, "_ZN7BIT_7HL6hasArgEv");

      procedure setArg (this : access BIT_7HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:385
      pragma Import (CPP, setArg, "_ZN7BIT_7HL6setArgER3ARG");

      function argSize (this : access BIT_7HL) return int;  -- instruction.hpp:385
      pragma Import (CPP, argSize, "_ZN7BIT_7HL7argSizeEv");
   end;
   use Class_BIT_7HL;
  --SET Instructions
   package Class_SET_0A is
      type SET_0A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:389
      end record;
      pragma Import (CPP, SET_0A);

      procedure exec (this : access SET_0A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:389
      pragma Import (CPP, exec, "_ZN6SET_0A4execEP9Processor");

      function toStr (this : access SET_0A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:389
      pragma Import (CPP, toStr, "_ZN6SET_0A5toStrEv");

      function opCode (this : access SET_0A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:389
      pragma Import (CPP, opCode, "_ZN6SET_0A6opCodeEv");

      function nbCycles (this : access SET_0A) return int;  -- instruction.hpp:389
      pragma Import (CPP, nbCycles, "_ZN6SET_0A8nbCyclesEv");

      function hasArg (this : access SET_0A) return Extensions.bool;  -- instruction.hpp:389
      pragma Import (CPP, hasArg, "_ZN6SET_0A6hasArgEv");

      procedure setArg (this : access SET_0A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:389
      pragma Import (CPP, setArg, "_ZN6SET_0A6setArgER3ARG");

      function argSize (this : access SET_0A) return int;  -- instruction.hpp:389
      pragma Import (CPP, argSize, "_ZN6SET_0A7argSizeEv");
   end;
   use Class_SET_0A;
   package Class_SET_1A is
      type SET_1A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:390
      end record;
      pragma Import (CPP, SET_1A);

      procedure exec (this : access SET_1A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:390
      pragma Import (CPP, exec, "_ZN6SET_1A4execEP9Processor");

      function toStr (this : access SET_1A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:390
      pragma Import (CPP, toStr, "_ZN6SET_1A5toStrEv");

      function opCode (this : access SET_1A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:390
      pragma Import (CPP, opCode, "_ZN6SET_1A6opCodeEv");

      function nbCycles (this : access SET_1A) return int;  -- instruction.hpp:390
      pragma Import (CPP, nbCycles, "_ZN6SET_1A8nbCyclesEv");

      function hasArg (this : access SET_1A) return Extensions.bool;  -- instruction.hpp:390
      pragma Import (CPP, hasArg, "_ZN6SET_1A6hasArgEv");

      procedure setArg (this : access SET_1A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:390
      pragma Import (CPP, setArg, "_ZN6SET_1A6setArgER3ARG");

      function argSize (this : access SET_1A) return int;  -- instruction.hpp:390
      pragma Import (CPP, argSize, "_ZN6SET_1A7argSizeEv");
   end;
   use Class_SET_1A;
   package Class_SET_2A is
      type SET_2A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:391
      end record;
      pragma Import (CPP, SET_2A);

      procedure exec (this : access SET_2A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:391
      pragma Import (CPP, exec, "_ZN6SET_2A4execEP9Processor");

      function toStr (this : access SET_2A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:391
      pragma Import (CPP, toStr, "_ZN6SET_2A5toStrEv");

      function opCode (this : access SET_2A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:391
      pragma Import (CPP, opCode, "_ZN6SET_2A6opCodeEv");

      function nbCycles (this : access SET_2A) return int;  -- instruction.hpp:391
      pragma Import (CPP, nbCycles, "_ZN6SET_2A8nbCyclesEv");

      function hasArg (this : access SET_2A) return Extensions.bool;  -- instruction.hpp:391
      pragma Import (CPP, hasArg, "_ZN6SET_2A6hasArgEv");

      procedure setArg (this : access SET_2A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:391
      pragma Import (CPP, setArg, "_ZN6SET_2A6setArgER3ARG");

      function argSize (this : access SET_2A) return int;  -- instruction.hpp:391
      pragma Import (CPP, argSize, "_ZN6SET_2A7argSizeEv");
   end;
   use Class_SET_2A;
   package Class_SET_3A is
      type SET_3A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:392
      end record;
      pragma Import (CPP, SET_3A);

      procedure exec (this : access SET_3A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:392
      pragma Import (CPP, exec, "_ZN6SET_3A4execEP9Processor");

      function toStr (this : access SET_3A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:392
      pragma Import (CPP, toStr, "_ZN6SET_3A5toStrEv");

      function opCode (this : access SET_3A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:392
      pragma Import (CPP, opCode, "_ZN6SET_3A6opCodeEv");

      function nbCycles (this : access SET_3A) return int;  -- instruction.hpp:392
      pragma Import (CPP, nbCycles, "_ZN6SET_3A8nbCyclesEv");

      function hasArg (this : access SET_3A) return Extensions.bool;  -- instruction.hpp:392
      pragma Import (CPP, hasArg, "_ZN6SET_3A6hasArgEv");

      procedure setArg (this : access SET_3A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:392
      pragma Import (CPP, setArg, "_ZN6SET_3A6setArgER3ARG");

      function argSize (this : access SET_3A) return int;  -- instruction.hpp:392
      pragma Import (CPP, argSize, "_ZN6SET_3A7argSizeEv");
   end;
   use Class_SET_3A;
   package Class_SET_4A is
      type SET_4A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:393
      end record;
      pragma Import (CPP, SET_4A);

      procedure exec (this : access SET_4A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:393
      pragma Import (CPP, exec, "_ZN6SET_4A4execEP9Processor");

      function toStr (this : access SET_4A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:393
      pragma Import (CPP, toStr, "_ZN6SET_4A5toStrEv");

      function opCode (this : access SET_4A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:393
      pragma Import (CPP, opCode, "_ZN6SET_4A6opCodeEv");

      function nbCycles (this : access SET_4A) return int;  -- instruction.hpp:393
      pragma Import (CPP, nbCycles, "_ZN6SET_4A8nbCyclesEv");

      function hasArg (this : access SET_4A) return Extensions.bool;  -- instruction.hpp:393
      pragma Import (CPP, hasArg, "_ZN6SET_4A6hasArgEv");

      procedure setArg (this : access SET_4A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:393
      pragma Import (CPP, setArg, "_ZN6SET_4A6setArgER3ARG");

      function argSize (this : access SET_4A) return int;  -- instruction.hpp:393
      pragma Import (CPP, argSize, "_ZN6SET_4A7argSizeEv");
   end;
   use Class_SET_4A;
   package Class_SET_5A is
      type SET_5A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:394
      end record;
      pragma Import (CPP, SET_5A);

      procedure exec (this : access SET_5A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:394
      pragma Import (CPP, exec, "_ZN6SET_5A4execEP9Processor");

      function toStr (this : access SET_5A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:394
      pragma Import (CPP, toStr, "_ZN6SET_5A5toStrEv");

      function opCode (this : access SET_5A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:394
      pragma Import (CPP, opCode, "_ZN6SET_5A6opCodeEv");

      function nbCycles (this : access SET_5A) return int;  -- instruction.hpp:394
      pragma Import (CPP, nbCycles, "_ZN6SET_5A8nbCyclesEv");

      function hasArg (this : access SET_5A) return Extensions.bool;  -- instruction.hpp:394
      pragma Import (CPP, hasArg, "_ZN6SET_5A6hasArgEv");

      procedure setArg (this : access SET_5A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:394
      pragma Import (CPP, setArg, "_ZN6SET_5A6setArgER3ARG");

      function argSize (this : access SET_5A) return int;  -- instruction.hpp:394
      pragma Import (CPP, argSize, "_ZN6SET_5A7argSizeEv");
   end;
   use Class_SET_5A;
   package Class_SET_6A is
      type SET_6A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:395
      end record;
      pragma Import (CPP, SET_6A);

      procedure exec (this : access SET_6A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:395
      pragma Import (CPP, exec, "_ZN6SET_6A4execEP9Processor");

      function toStr (this : access SET_6A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:395
      pragma Import (CPP, toStr, "_ZN6SET_6A5toStrEv");

      function opCode (this : access SET_6A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:395
      pragma Import (CPP, opCode, "_ZN6SET_6A6opCodeEv");

      function nbCycles (this : access SET_6A) return int;  -- instruction.hpp:395
      pragma Import (CPP, nbCycles, "_ZN6SET_6A8nbCyclesEv");

      function hasArg (this : access SET_6A) return Extensions.bool;  -- instruction.hpp:395
      pragma Import (CPP, hasArg, "_ZN6SET_6A6hasArgEv");

      procedure setArg (this : access SET_6A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:395
      pragma Import (CPP, setArg, "_ZN6SET_6A6setArgER3ARG");

      function argSize (this : access SET_6A) return int;  -- instruction.hpp:395
      pragma Import (CPP, argSize, "_ZN6SET_6A7argSizeEv");
   end;
   use Class_SET_6A;
   package Class_SET_7A is
      type SET_7A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:396
      end record;
      pragma Import (CPP, SET_7A);

      procedure exec (this : access SET_7A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:396
      pragma Import (CPP, exec, "_ZN6SET_7A4execEP9Processor");

      function toStr (this : access SET_7A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:396
      pragma Import (CPP, toStr, "_ZN6SET_7A5toStrEv");

      function opCode (this : access SET_7A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:396
      pragma Import (CPP, opCode, "_ZN6SET_7A6opCodeEv");

      function nbCycles (this : access SET_7A) return int;  -- instruction.hpp:396
      pragma Import (CPP, nbCycles, "_ZN6SET_7A8nbCyclesEv");

      function hasArg (this : access SET_7A) return Extensions.bool;  -- instruction.hpp:396
      pragma Import (CPP, hasArg, "_ZN6SET_7A6hasArgEv");

      procedure setArg (this : access SET_7A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:396
      pragma Import (CPP, setArg, "_ZN6SET_7A6setArgER3ARG");

      function argSize (this : access SET_7A) return int;  -- instruction.hpp:396
      pragma Import (CPP, argSize, "_ZN6SET_7A7argSizeEv");
   end;
   use Class_SET_7A;
   package Class_SET_0B is
      type SET_0B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:398
      end record;
      pragma Import (CPP, SET_0B);

      procedure exec (this : access SET_0B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:398
      pragma Import (CPP, exec, "_ZN6SET_0B4execEP9Processor");

      function toStr (this : access SET_0B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:398
      pragma Import (CPP, toStr, "_ZN6SET_0B5toStrEv");

      function opCode (this : access SET_0B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:398
      pragma Import (CPP, opCode, "_ZN6SET_0B6opCodeEv");

      function nbCycles (this : access SET_0B) return int;  -- instruction.hpp:398
      pragma Import (CPP, nbCycles, "_ZN6SET_0B8nbCyclesEv");

      function hasArg (this : access SET_0B) return Extensions.bool;  -- instruction.hpp:398
      pragma Import (CPP, hasArg, "_ZN6SET_0B6hasArgEv");

      procedure setArg (this : access SET_0B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:398
      pragma Import (CPP, setArg, "_ZN6SET_0B6setArgER3ARG");

      function argSize (this : access SET_0B) return int;  -- instruction.hpp:398
      pragma Import (CPP, argSize, "_ZN6SET_0B7argSizeEv");
   end;
   use Class_SET_0B;
   package Class_SET_1B is
      type SET_1B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:399
      end record;
      pragma Import (CPP, SET_1B);

      procedure exec (this : access SET_1B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:399
      pragma Import (CPP, exec, "_ZN6SET_1B4execEP9Processor");

      function toStr (this : access SET_1B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:399
      pragma Import (CPP, toStr, "_ZN6SET_1B5toStrEv");

      function opCode (this : access SET_1B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:399
      pragma Import (CPP, opCode, "_ZN6SET_1B6opCodeEv");

      function nbCycles (this : access SET_1B) return int;  -- instruction.hpp:399
      pragma Import (CPP, nbCycles, "_ZN6SET_1B8nbCyclesEv");

      function hasArg (this : access SET_1B) return Extensions.bool;  -- instruction.hpp:399
      pragma Import (CPP, hasArg, "_ZN6SET_1B6hasArgEv");

      procedure setArg (this : access SET_1B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:399
      pragma Import (CPP, setArg, "_ZN6SET_1B6setArgER3ARG");

      function argSize (this : access SET_1B) return int;  -- instruction.hpp:399
      pragma Import (CPP, argSize, "_ZN6SET_1B7argSizeEv");
   end;
   use Class_SET_1B;
   package Class_SET_2B is
      type SET_2B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:400
      end record;
      pragma Import (CPP, SET_2B);

      procedure exec (this : access SET_2B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:400
      pragma Import (CPP, exec, "_ZN6SET_2B4execEP9Processor");

      function toStr (this : access SET_2B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:400
      pragma Import (CPP, toStr, "_ZN6SET_2B5toStrEv");

      function opCode (this : access SET_2B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:400
      pragma Import (CPP, opCode, "_ZN6SET_2B6opCodeEv");

      function nbCycles (this : access SET_2B) return int;  -- instruction.hpp:400
      pragma Import (CPP, nbCycles, "_ZN6SET_2B8nbCyclesEv");

      function hasArg (this : access SET_2B) return Extensions.bool;  -- instruction.hpp:400
      pragma Import (CPP, hasArg, "_ZN6SET_2B6hasArgEv");

      procedure setArg (this : access SET_2B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:400
      pragma Import (CPP, setArg, "_ZN6SET_2B6setArgER3ARG");

      function argSize (this : access SET_2B) return int;  -- instruction.hpp:400
      pragma Import (CPP, argSize, "_ZN6SET_2B7argSizeEv");
   end;
   use Class_SET_2B;
   package Class_SET_3B is
      type SET_3B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:401
      end record;
      pragma Import (CPP, SET_3B);

      procedure exec (this : access SET_3B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:401
      pragma Import (CPP, exec, "_ZN6SET_3B4execEP9Processor");

      function toStr (this : access SET_3B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:401
      pragma Import (CPP, toStr, "_ZN6SET_3B5toStrEv");

      function opCode (this : access SET_3B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:401
      pragma Import (CPP, opCode, "_ZN6SET_3B6opCodeEv");

      function nbCycles (this : access SET_3B) return int;  -- instruction.hpp:401
      pragma Import (CPP, nbCycles, "_ZN6SET_3B8nbCyclesEv");

      function hasArg (this : access SET_3B) return Extensions.bool;  -- instruction.hpp:401
      pragma Import (CPP, hasArg, "_ZN6SET_3B6hasArgEv");

      procedure setArg (this : access SET_3B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:401
      pragma Import (CPP, setArg, "_ZN6SET_3B6setArgER3ARG");

      function argSize (this : access SET_3B) return int;  -- instruction.hpp:401
      pragma Import (CPP, argSize, "_ZN6SET_3B7argSizeEv");
   end;
   use Class_SET_3B;
   package Class_SET_4B is
      type SET_4B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:402
      end record;
      pragma Import (CPP, SET_4B);

      procedure exec (this : access SET_4B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:402
      pragma Import (CPP, exec, "_ZN6SET_4B4execEP9Processor");

      function toStr (this : access SET_4B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:402
      pragma Import (CPP, toStr, "_ZN6SET_4B5toStrEv");

      function opCode (this : access SET_4B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:402
      pragma Import (CPP, opCode, "_ZN6SET_4B6opCodeEv");

      function nbCycles (this : access SET_4B) return int;  -- instruction.hpp:402
      pragma Import (CPP, nbCycles, "_ZN6SET_4B8nbCyclesEv");

      function hasArg (this : access SET_4B) return Extensions.bool;  -- instruction.hpp:402
      pragma Import (CPP, hasArg, "_ZN6SET_4B6hasArgEv");

      procedure setArg (this : access SET_4B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:402
      pragma Import (CPP, setArg, "_ZN6SET_4B6setArgER3ARG");

      function argSize (this : access SET_4B) return int;  -- instruction.hpp:402
      pragma Import (CPP, argSize, "_ZN6SET_4B7argSizeEv");
   end;
   use Class_SET_4B;
   package Class_SET_5B is
      type SET_5B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:403
      end record;
      pragma Import (CPP, SET_5B);

      procedure exec (this : access SET_5B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:403
      pragma Import (CPP, exec, "_ZN6SET_5B4execEP9Processor");

      function toStr (this : access SET_5B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:403
      pragma Import (CPP, toStr, "_ZN6SET_5B5toStrEv");

      function opCode (this : access SET_5B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:403
      pragma Import (CPP, opCode, "_ZN6SET_5B6opCodeEv");

      function nbCycles (this : access SET_5B) return int;  -- instruction.hpp:403
      pragma Import (CPP, nbCycles, "_ZN6SET_5B8nbCyclesEv");

      function hasArg (this : access SET_5B) return Extensions.bool;  -- instruction.hpp:403
      pragma Import (CPP, hasArg, "_ZN6SET_5B6hasArgEv");

      procedure setArg (this : access SET_5B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:403
      pragma Import (CPP, setArg, "_ZN6SET_5B6setArgER3ARG");

      function argSize (this : access SET_5B) return int;  -- instruction.hpp:403
      pragma Import (CPP, argSize, "_ZN6SET_5B7argSizeEv");
   end;
   use Class_SET_5B;
   package Class_SET_6B is
      type SET_6B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:404
      end record;
      pragma Import (CPP, SET_6B);

      procedure exec (this : access SET_6B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:404
      pragma Import (CPP, exec, "_ZN6SET_6B4execEP9Processor");

      function toStr (this : access SET_6B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:404
      pragma Import (CPP, toStr, "_ZN6SET_6B5toStrEv");

      function opCode (this : access SET_6B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:404
      pragma Import (CPP, opCode, "_ZN6SET_6B6opCodeEv");

      function nbCycles (this : access SET_6B) return int;  -- instruction.hpp:404
      pragma Import (CPP, nbCycles, "_ZN6SET_6B8nbCyclesEv");

      function hasArg (this : access SET_6B) return Extensions.bool;  -- instruction.hpp:404
      pragma Import (CPP, hasArg, "_ZN6SET_6B6hasArgEv");

      procedure setArg (this : access SET_6B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:404
      pragma Import (CPP, setArg, "_ZN6SET_6B6setArgER3ARG");

      function argSize (this : access SET_6B) return int;  -- instruction.hpp:404
      pragma Import (CPP, argSize, "_ZN6SET_6B7argSizeEv");
   end;
   use Class_SET_6B;
   package Class_SET_7B is
      type SET_7B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:405
      end record;
      pragma Import (CPP, SET_7B);

      procedure exec (this : access SET_7B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:405
      pragma Import (CPP, exec, "_ZN6SET_7B4execEP9Processor");

      function toStr (this : access SET_7B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:405
      pragma Import (CPP, toStr, "_ZN6SET_7B5toStrEv");

      function opCode (this : access SET_7B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:405
      pragma Import (CPP, opCode, "_ZN6SET_7B6opCodeEv");

      function nbCycles (this : access SET_7B) return int;  -- instruction.hpp:405
      pragma Import (CPP, nbCycles, "_ZN6SET_7B8nbCyclesEv");

      function hasArg (this : access SET_7B) return Extensions.bool;  -- instruction.hpp:405
      pragma Import (CPP, hasArg, "_ZN6SET_7B6hasArgEv");

      procedure setArg (this : access SET_7B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:405
      pragma Import (CPP, setArg, "_ZN6SET_7B6setArgER3ARG");

      function argSize (this : access SET_7B) return int;  -- instruction.hpp:405
      pragma Import (CPP, argSize, "_ZN6SET_7B7argSizeEv");
   end;
   use Class_SET_7B;
   package Class_SET_0C is
      type SET_0C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:407
      end record;
      pragma Import (CPP, SET_0C);

      procedure exec (this : access SET_0C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:407
      pragma Import (CPP, exec, "_ZN6SET_0C4execEP9Processor");

      function toStr (this : access SET_0C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:407
      pragma Import (CPP, toStr, "_ZN6SET_0C5toStrEv");

      function opCode (this : access SET_0C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:407
      pragma Import (CPP, opCode, "_ZN6SET_0C6opCodeEv");

      function nbCycles (this : access SET_0C) return int;  -- instruction.hpp:407
      pragma Import (CPP, nbCycles, "_ZN6SET_0C8nbCyclesEv");

      function hasArg (this : access SET_0C) return Extensions.bool;  -- instruction.hpp:407
      pragma Import (CPP, hasArg, "_ZN6SET_0C6hasArgEv");

      procedure setArg (this : access SET_0C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:407
      pragma Import (CPP, setArg, "_ZN6SET_0C6setArgER3ARG");

      function argSize (this : access SET_0C) return int;  -- instruction.hpp:407
      pragma Import (CPP, argSize, "_ZN6SET_0C7argSizeEv");
   end;
   use Class_SET_0C;
   package Class_SET_1C is
      type SET_1C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:408
      end record;
      pragma Import (CPP, SET_1C);

      procedure exec (this : access SET_1C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:408
      pragma Import (CPP, exec, "_ZN6SET_1C4execEP9Processor");

      function toStr (this : access SET_1C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:408
      pragma Import (CPP, toStr, "_ZN6SET_1C5toStrEv");

      function opCode (this : access SET_1C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:408
      pragma Import (CPP, opCode, "_ZN6SET_1C6opCodeEv");

      function nbCycles (this : access SET_1C) return int;  -- instruction.hpp:408
      pragma Import (CPP, nbCycles, "_ZN6SET_1C8nbCyclesEv");

      function hasArg (this : access SET_1C) return Extensions.bool;  -- instruction.hpp:408
      pragma Import (CPP, hasArg, "_ZN6SET_1C6hasArgEv");

      procedure setArg (this : access SET_1C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:408
      pragma Import (CPP, setArg, "_ZN6SET_1C6setArgER3ARG");

      function argSize (this : access SET_1C) return int;  -- instruction.hpp:408
      pragma Import (CPP, argSize, "_ZN6SET_1C7argSizeEv");
   end;
   use Class_SET_1C;
   package Class_SET_2C is
      type SET_2C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:409
      end record;
      pragma Import (CPP, SET_2C);

      procedure exec (this : access SET_2C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:409
      pragma Import (CPP, exec, "_ZN6SET_2C4execEP9Processor");

      function toStr (this : access SET_2C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:409
      pragma Import (CPP, toStr, "_ZN6SET_2C5toStrEv");

      function opCode (this : access SET_2C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:409
      pragma Import (CPP, opCode, "_ZN6SET_2C6opCodeEv");

      function nbCycles (this : access SET_2C) return int;  -- instruction.hpp:409
      pragma Import (CPP, nbCycles, "_ZN6SET_2C8nbCyclesEv");

      function hasArg (this : access SET_2C) return Extensions.bool;  -- instruction.hpp:409
      pragma Import (CPP, hasArg, "_ZN6SET_2C6hasArgEv");

      procedure setArg (this : access SET_2C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:409
      pragma Import (CPP, setArg, "_ZN6SET_2C6setArgER3ARG");

      function argSize (this : access SET_2C) return int;  -- instruction.hpp:409
      pragma Import (CPP, argSize, "_ZN6SET_2C7argSizeEv");
   end;
   use Class_SET_2C;
   package Class_SET_3C is
      type SET_3C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:410
      end record;
      pragma Import (CPP, SET_3C);

      procedure exec (this : access SET_3C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:410
      pragma Import (CPP, exec, "_ZN6SET_3C4execEP9Processor");

      function toStr (this : access SET_3C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:410
      pragma Import (CPP, toStr, "_ZN6SET_3C5toStrEv");

      function opCode (this : access SET_3C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:410
      pragma Import (CPP, opCode, "_ZN6SET_3C6opCodeEv");

      function nbCycles (this : access SET_3C) return int;  -- instruction.hpp:410
      pragma Import (CPP, nbCycles, "_ZN6SET_3C8nbCyclesEv");

      function hasArg (this : access SET_3C) return Extensions.bool;  -- instruction.hpp:410
      pragma Import (CPP, hasArg, "_ZN6SET_3C6hasArgEv");

      procedure setArg (this : access SET_3C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:410
      pragma Import (CPP, setArg, "_ZN6SET_3C6setArgER3ARG");

      function argSize (this : access SET_3C) return int;  -- instruction.hpp:410
      pragma Import (CPP, argSize, "_ZN6SET_3C7argSizeEv");
   end;
   use Class_SET_3C;
   package Class_SET_4C is
      type SET_4C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:411
      end record;
      pragma Import (CPP, SET_4C);

      procedure exec (this : access SET_4C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:411
      pragma Import (CPP, exec, "_ZN6SET_4C4execEP9Processor");

      function toStr (this : access SET_4C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:411
      pragma Import (CPP, toStr, "_ZN6SET_4C5toStrEv");

      function opCode (this : access SET_4C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:411
      pragma Import (CPP, opCode, "_ZN6SET_4C6opCodeEv");

      function nbCycles (this : access SET_4C) return int;  -- instruction.hpp:411
      pragma Import (CPP, nbCycles, "_ZN6SET_4C8nbCyclesEv");

      function hasArg (this : access SET_4C) return Extensions.bool;  -- instruction.hpp:411
      pragma Import (CPP, hasArg, "_ZN6SET_4C6hasArgEv");

      procedure setArg (this : access SET_4C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:411
      pragma Import (CPP, setArg, "_ZN6SET_4C6setArgER3ARG");

      function argSize (this : access SET_4C) return int;  -- instruction.hpp:411
      pragma Import (CPP, argSize, "_ZN6SET_4C7argSizeEv");
   end;
   use Class_SET_4C;
   package Class_SET_5C is
      type SET_5C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:412
      end record;
      pragma Import (CPP, SET_5C);

      procedure exec (this : access SET_5C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:412
      pragma Import (CPP, exec, "_ZN6SET_5C4execEP9Processor");

      function toStr (this : access SET_5C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:412
      pragma Import (CPP, toStr, "_ZN6SET_5C5toStrEv");

      function opCode (this : access SET_5C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:412
      pragma Import (CPP, opCode, "_ZN6SET_5C6opCodeEv");

      function nbCycles (this : access SET_5C) return int;  -- instruction.hpp:412
      pragma Import (CPP, nbCycles, "_ZN6SET_5C8nbCyclesEv");

      function hasArg (this : access SET_5C) return Extensions.bool;  -- instruction.hpp:412
      pragma Import (CPP, hasArg, "_ZN6SET_5C6hasArgEv");

      procedure setArg (this : access SET_5C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:412
      pragma Import (CPP, setArg, "_ZN6SET_5C6setArgER3ARG");

      function argSize (this : access SET_5C) return int;  -- instruction.hpp:412
      pragma Import (CPP, argSize, "_ZN6SET_5C7argSizeEv");
   end;
   use Class_SET_5C;
   package Class_SET_6C is
      type SET_6C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:413
      end record;
      pragma Import (CPP, SET_6C);

      procedure exec (this : access SET_6C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:413
      pragma Import (CPP, exec, "_ZN6SET_6C4execEP9Processor");

      function toStr (this : access SET_6C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:413
      pragma Import (CPP, toStr, "_ZN6SET_6C5toStrEv");

      function opCode (this : access SET_6C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:413
      pragma Import (CPP, opCode, "_ZN6SET_6C6opCodeEv");

      function nbCycles (this : access SET_6C) return int;  -- instruction.hpp:413
      pragma Import (CPP, nbCycles, "_ZN6SET_6C8nbCyclesEv");

      function hasArg (this : access SET_6C) return Extensions.bool;  -- instruction.hpp:413
      pragma Import (CPP, hasArg, "_ZN6SET_6C6hasArgEv");

      procedure setArg (this : access SET_6C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:413
      pragma Import (CPP, setArg, "_ZN6SET_6C6setArgER3ARG");

      function argSize (this : access SET_6C) return int;  -- instruction.hpp:413
      pragma Import (CPP, argSize, "_ZN6SET_6C7argSizeEv");
   end;
   use Class_SET_6C;
   package Class_SET_7C is
      type SET_7C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:414
      end record;
      pragma Import (CPP, SET_7C);

      procedure exec (this : access SET_7C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:414
      pragma Import (CPP, exec, "_ZN6SET_7C4execEP9Processor");

      function toStr (this : access SET_7C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:414
      pragma Import (CPP, toStr, "_ZN6SET_7C5toStrEv");

      function opCode (this : access SET_7C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:414
      pragma Import (CPP, opCode, "_ZN6SET_7C6opCodeEv");

      function nbCycles (this : access SET_7C) return int;  -- instruction.hpp:414
      pragma Import (CPP, nbCycles, "_ZN6SET_7C8nbCyclesEv");

      function hasArg (this : access SET_7C) return Extensions.bool;  -- instruction.hpp:414
      pragma Import (CPP, hasArg, "_ZN6SET_7C6hasArgEv");

      procedure setArg (this : access SET_7C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:414
      pragma Import (CPP, setArg, "_ZN6SET_7C6setArgER3ARG");

      function argSize (this : access SET_7C) return int;  -- instruction.hpp:414
      pragma Import (CPP, argSize, "_ZN6SET_7C7argSizeEv");
   end;
   use Class_SET_7C;
   package Class_SET_0D is
      type SET_0D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:416
      end record;
      pragma Import (CPP, SET_0D);

      procedure exec (this : access SET_0D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:416
      pragma Import (CPP, exec, "_ZN6SET_0D4execEP9Processor");

      function toStr (this : access SET_0D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:416
      pragma Import (CPP, toStr, "_ZN6SET_0D5toStrEv");

      function opCode (this : access SET_0D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:416
      pragma Import (CPP, opCode, "_ZN6SET_0D6opCodeEv");

      function nbCycles (this : access SET_0D) return int;  -- instruction.hpp:416
      pragma Import (CPP, nbCycles, "_ZN6SET_0D8nbCyclesEv");

      function hasArg (this : access SET_0D) return Extensions.bool;  -- instruction.hpp:416
      pragma Import (CPP, hasArg, "_ZN6SET_0D6hasArgEv");

      procedure setArg (this : access SET_0D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:416
      pragma Import (CPP, setArg, "_ZN6SET_0D6setArgER3ARG");

      function argSize (this : access SET_0D) return int;  -- instruction.hpp:416
      pragma Import (CPP, argSize, "_ZN6SET_0D7argSizeEv");
   end;
   use Class_SET_0D;
   package Class_SET_1D is
      type SET_1D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:417
      end record;
      pragma Import (CPP, SET_1D);

      procedure exec (this : access SET_1D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:417
      pragma Import (CPP, exec, "_ZN6SET_1D4execEP9Processor");

      function toStr (this : access SET_1D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:417
      pragma Import (CPP, toStr, "_ZN6SET_1D5toStrEv");

      function opCode (this : access SET_1D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:417
      pragma Import (CPP, opCode, "_ZN6SET_1D6opCodeEv");

      function nbCycles (this : access SET_1D) return int;  -- instruction.hpp:417
      pragma Import (CPP, nbCycles, "_ZN6SET_1D8nbCyclesEv");

      function hasArg (this : access SET_1D) return Extensions.bool;  -- instruction.hpp:417
      pragma Import (CPP, hasArg, "_ZN6SET_1D6hasArgEv");

      procedure setArg (this : access SET_1D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:417
      pragma Import (CPP, setArg, "_ZN6SET_1D6setArgER3ARG");

      function argSize (this : access SET_1D) return int;  -- instruction.hpp:417
      pragma Import (CPP, argSize, "_ZN6SET_1D7argSizeEv");
   end;
   use Class_SET_1D;
   package Class_SET_2D is
      type SET_2D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:418
      end record;
      pragma Import (CPP, SET_2D);

      procedure exec (this : access SET_2D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:418
      pragma Import (CPP, exec, "_ZN6SET_2D4execEP9Processor");

      function toStr (this : access SET_2D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:418
      pragma Import (CPP, toStr, "_ZN6SET_2D5toStrEv");

      function opCode (this : access SET_2D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:418
      pragma Import (CPP, opCode, "_ZN6SET_2D6opCodeEv");

      function nbCycles (this : access SET_2D) return int;  -- instruction.hpp:418
      pragma Import (CPP, nbCycles, "_ZN6SET_2D8nbCyclesEv");

      function hasArg (this : access SET_2D) return Extensions.bool;  -- instruction.hpp:418
      pragma Import (CPP, hasArg, "_ZN6SET_2D6hasArgEv");

      procedure setArg (this : access SET_2D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:418
      pragma Import (CPP, setArg, "_ZN6SET_2D6setArgER3ARG");

      function argSize (this : access SET_2D) return int;  -- instruction.hpp:418
      pragma Import (CPP, argSize, "_ZN6SET_2D7argSizeEv");
   end;
   use Class_SET_2D;
   package Class_SET_3D is
      type SET_3D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:419
      end record;
      pragma Import (CPP, SET_3D);

      procedure exec (this : access SET_3D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:419
      pragma Import (CPP, exec, "_ZN6SET_3D4execEP9Processor");

      function toStr (this : access SET_3D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:419
      pragma Import (CPP, toStr, "_ZN6SET_3D5toStrEv");

      function opCode (this : access SET_3D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:419
      pragma Import (CPP, opCode, "_ZN6SET_3D6opCodeEv");

      function nbCycles (this : access SET_3D) return int;  -- instruction.hpp:419
      pragma Import (CPP, nbCycles, "_ZN6SET_3D8nbCyclesEv");

      function hasArg (this : access SET_3D) return Extensions.bool;  -- instruction.hpp:419
      pragma Import (CPP, hasArg, "_ZN6SET_3D6hasArgEv");

      procedure setArg (this : access SET_3D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:419
      pragma Import (CPP, setArg, "_ZN6SET_3D6setArgER3ARG");

      function argSize (this : access SET_3D) return int;  -- instruction.hpp:419
      pragma Import (CPP, argSize, "_ZN6SET_3D7argSizeEv");
   end;
   use Class_SET_3D;
   package Class_SET_4D is
      type SET_4D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:420
      end record;
      pragma Import (CPP, SET_4D);

      procedure exec (this : access SET_4D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:420
      pragma Import (CPP, exec, "_ZN6SET_4D4execEP9Processor");

      function toStr (this : access SET_4D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:420
      pragma Import (CPP, toStr, "_ZN6SET_4D5toStrEv");

      function opCode (this : access SET_4D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:420
      pragma Import (CPP, opCode, "_ZN6SET_4D6opCodeEv");

      function nbCycles (this : access SET_4D) return int;  -- instruction.hpp:420
      pragma Import (CPP, nbCycles, "_ZN6SET_4D8nbCyclesEv");

      function hasArg (this : access SET_4D) return Extensions.bool;  -- instruction.hpp:420
      pragma Import (CPP, hasArg, "_ZN6SET_4D6hasArgEv");

      procedure setArg (this : access SET_4D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:420
      pragma Import (CPP, setArg, "_ZN6SET_4D6setArgER3ARG");

      function argSize (this : access SET_4D) return int;  -- instruction.hpp:420
      pragma Import (CPP, argSize, "_ZN6SET_4D7argSizeEv");
   end;
   use Class_SET_4D;
   package Class_SET_5D is
      type SET_5D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:421
      end record;
      pragma Import (CPP, SET_5D);

      procedure exec (this : access SET_5D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:421
      pragma Import (CPP, exec, "_ZN6SET_5D4execEP9Processor");

      function toStr (this : access SET_5D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:421
      pragma Import (CPP, toStr, "_ZN6SET_5D5toStrEv");

      function opCode (this : access SET_5D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:421
      pragma Import (CPP, opCode, "_ZN6SET_5D6opCodeEv");

      function nbCycles (this : access SET_5D) return int;  -- instruction.hpp:421
      pragma Import (CPP, nbCycles, "_ZN6SET_5D8nbCyclesEv");

      function hasArg (this : access SET_5D) return Extensions.bool;  -- instruction.hpp:421
      pragma Import (CPP, hasArg, "_ZN6SET_5D6hasArgEv");

      procedure setArg (this : access SET_5D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:421
      pragma Import (CPP, setArg, "_ZN6SET_5D6setArgER3ARG");

      function argSize (this : access SET_5D) return int;  -- instruction.hpp:421
      pragma Import (CPP, argSize, "_ZN6SET_5D7argSizeEv");
   end;
   use Class_SET_5D;
   package Class_SET_6D is
      type SET_6D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:422
      end record;
      pragma Import (CPP, SET_6D);

      procedure exec (this : access SET_6D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:422
      pragma Import (CPP, exec, "_ZN6SET_6D4execEP9Processor");

      function toStr (this : access SET_6D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:422
      pragma Import (CPP, toStr, "_ZN6SET_6D5toStrEv");

      function opCode (this : access SET_6D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:422
      pragma Import (CPP, opCode, "_ZN6SET_6D6opCodeEv");

      function nbCycles (this : access SET_6D) return int;  -- instruction.hpp:422
      pragma Import (CPP, nbCycles, "_ZN6SET_6D8nbCyclesEv");

      function hasArg (this : access SET_6D) return Extensions.bool;  -- instruction.hpp:422
      pragma Import (CPP, hasArg, "_ZN6SET_6D6hasArgEv");

      procedure setArg (this : access SET_6D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:422
      pragma Import (CPP, setArg, "_ZN6SET_6D6setArgER3ARG");

      function argSize (this : access SET_6D) return int;  -- instruction.hpp:422
      pragma Import (CPP, argSize, "_ZN6SET_6D7argSizeEv");
   end;
   use Class_SET_6D;
   package Class_SET_7D is
      type SET_7D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:423
      end record;
      pragma Import (CPP, SET_7D);

      procedure exec (this : access SET_7D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:423
      pragma Import (CPP, exec, "_ZN6SET_7D4execEP9Processor");

      function toStr (this : access SET_7D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:423
      pragma Import (CPP, toStr, "_ZN6SET_7D5toStrEv");

      function opCode (this : access SET_7D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:423
      pragma Import (CPP, opCode, "_ZN6SET_7D6opCodeEv");

      function nbCycles (this : access SET_7D) return int;  -- instruction.hpp:423
      pragma Import (CPP, nbCycles, "_ZN6SET_7D8nbCyclesEv");

      function hasArg (this : access SET_7D) return Extensions.bool;  -- instruction.hpp:423
      pragma Import (CPP, hasArg, "_ZN6SET_7D6hasArgEv");

      procedure setArg (this : access SET_7D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:423
      pragma Import (CPP, setArg, "_ZN6SET_7D6setArgER3ARG");

      function argSize (this : access SET_7D) return int;  -- instruction.hpp:423
      pragma Import (CPP, argSize, "_ZN6SET_7D7argSizeEv");
   end;
   use Class_SET_7D;
   package Class_SET_0E is
      type SET_0E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:425
      end record;
      pragma Import (CPP, SET_0E);

      procedure exec (this : access SET_0E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:425
      pragma Import (CPP, exec, "_ZN6SET_0E4execEP9Processor");

      function toStr (this : access SET_0E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:425
      pragma Import (CPP, toStr, "_ZN6SET_0E5toStrEv");

      function opCode (this : access SET_0E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:425
      pragma Import (CPP, opCode, "_ZN6SET_0E6opCodeEv");

      function nbCycles (this : access SET_0E) return int;  -- instruction.hpp:425
      pragma Import (CPP, nbCycles, "_ZN6SET_0E8nbCyclesEv");

      function hasArg (this : access SET_0E) return Extensions.bool;  -- instruction.hpp:425
      pragma Import (CPP, hasArg, "_ZN6SET_0E6hasArgEv");

      procedure setArg (this : access SET_0E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:425
      pragma Import (CPP, setArg, "_ZN6SET_0E6setArgER3ARG");

      function argSize (this : access SET_0E) return int;  -- instruction.hpp:425
      pragma Import (CPP, argSize, "_ZN6SET_0E7argSizeEv");
   end;
   use Class_SET_0E;
   package Class_SET_1E is
      type SET_1E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:426
      end record;
      pragma Import (CPP, SET_1E);

      procedure exec (this : access SET_1E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:426
      pragma Import (CPP, exec, "_ZN6SET_1E4execEP9Processor");

      function toStr (this : access SET_1E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:426
      pragma Import (CPP, toStr, "_ZN6SET_1E5toStrEv");

      function opCode (this : access SET_1E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:426
      pragma Import (CPP, opCode, "_ZN6SET_1E6opCodeEv");

      function nbCycles (this : access SET_1E) return int;  -- instruction.hpp:426
      pragma Import (CPP, nbCycles, "_ZN6SET_1E8nbCyclesEv");

      function hasArg (this : access SET_1E) return Extensions.bool;  -- instruction.hpp:426
      pragma Import (CPP, hasArg, "_ZN6SET_1E6hasArgEv");

      procedure setArg (this : access SET_1E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:426
      pragma Import (CPP, setArg, "_ZN6SET_1E6setArgER3ARG");

      function argSize (this : access SET_1E) return int;  -- instruction.hpp:426
      pragma Import (CPP, argSize, "_ZN6SET_1E7argSizeEv");
   end;
   use Class_SET_1E;
   package Class_SET_2E is
      type SET_2E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:427
      end record;
      pragma Import (CPP, SET_2E);

      procedure exec (this : access SET_2E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:427
      pragma Import (CPP, exec, "_ZN6SET_2E4execEP9Processor");

      function toStr (this : access SET_2E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:427
      pragma Import (CPP, toStr, "_ZN6SET_2E5toStrEv");

      function opCode (this : access SET_2E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:427
      pragma Import (CPP, opCode, "_ZN6SET_2E6opCodeEv");

      function nbCycles (this : access SET_2E) return int;  -- instruction.hpp:427
      pragma Import (CPP, nbCycles, "_ZN6SET_2E8nbCyclesEv");

      function hasArg (this : access SET_2E) return Extensions.bool;  -- instruction.hpp:427
      pragma Import (CPP, hasArg, "_ZN6SET_2E6hasArgEv");

      procedure setArg (this : access SET_2E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:427
      pragma Import (CPP, setArg, "_ZN6SET_2E6setArgER3ARG");

      function argSize (this : access SET_2E) return int;  -- instruction.hpp:427
      pragma Import (CPP, argSize, "_ZN6SET_2E7argSizeEv");
   end;
   use Class_SET_2E;
   package Class_SET_3E is
      type SET_3E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:428
      end record;
      pragma Import (CPP, SET_3E);

      procedure exec (this : access SET_3E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:428
      pragma Import (CPP, exec, "_ZN6SET_3E4execEP9Processor");

      function toStr (this : access SET_3E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:428
      pragma Import (CPP, toStr, "_ZN6SET_3E5toStrEv");

      function opCode (this : access SET_3E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:428
      pragma Import (CPP, opCode, "_ZN6SET_3E6opCodeEv");

      function nbCycles (this : access SET_3E) return int;  -- instruction.hpp:428
      pragma Import (CPP, nbCycles, "_ZN6SET_3E8nbCyclesEv");

      function hasArg (this : access SET_3E) return Extensions.bool;  -- instruction.hpp:428
      pragma Import (CPP, hasArg, "_ZN6SET_3E6hasArgEv");

      procedure setArg (this : access SET_3E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:428
      pragma Import (CPP, setArg, "_ZN6SET_3E6setArgER3ARG");

      function argSize (this : access SET_3E) return int;  -- instruction.hpp:428
      pragma Import (CPP, argSize, "_ZN6SET_3E7argSizeEv");
   end;
   use Class_SET_3E;
   package Class_SET_4E is
      type SET_4E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:429
      end record;
      pragma Import (CPP, SET_4E);

      procedure exec (this : access SET_4E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:429
      pragma Import (CPP, exec, "_ZN6SET_4E4execEP9Processor");

      function toStr (this : access SET_4E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:429
      pragma Import (CPP, toStr, "_ZN6SET_4E5toStrEv");

      function opCode (this : access SET_4E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:429
      pragma Import (CPP, opCode, "_ZN6SET_4E6opCodeEv");

      function nbCycles (this : access SET_4E) return int;  -- instruction.hpp:429
      pragma Import (CPP, nbCycles, "_ZN6SET_4E8nbCyclesEv");

      function hasArg (this : access SET_4E) return Extensions.bool;  -- instruction.hpp:429
      pragma Import (CPP, hasArg, "_ZN6SET_4E6hasArgEv");

      procedure setArg (this : access SET_4E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:429
      pragma Import (CPP, setArg, "_ZN6SET_4E6setArgER3ARG");

      function argSize (this : access SET_4E) return int;  -- instruction.hpp:429
      pragma Import (CPP, argSize, "_ZN6SET_4E7argSizeEv");
   end;
   use Class_SET_4E;
   package Class_SET_5E is
      type SET_5E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:430
      end record;
      pragma Import (CPP, SET_5E);

      procedure exec (this : access SET_5E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:430
      pragma Import (CPP, exec, "_ZN6SET_5E4execEP9Processor");

      function toStr (this : access SET_5E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:430
      pragma Import (CPP, toStr, "_ZN6SET_5E5toStrEv");

      function opCode (this : access SET_5E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:430
      pragma Import (CPP, opCode, "_ZN6SET_5E6opCodeEv");

      function nbCycles (this : access SET_5E) return int;  -- instruction.hpp:430
      pragma Import (CPP, nbCycles, "_ZN6SET_5E8nbCyclesEv");

      function hasArg (this : access SET_5E) return Extensions.bool;  -- instruction.hpp:430
      pragma Import (CPP, hasArg, "_ZN6SET_5E6hasArgEv");

      procedure setArg (this : access SET_5E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:430
      pragma Import (CPP, setArg, "_ZN6SET_5E6setArgER3ARG");

      function argSize (this : access SET_5E) return int;  -- instruction.hpp:430
      pragma Import (CPP, argSize, "_ZN6SET_5E7argSizeEv");
   end;
   use Class_SET_5E;
   package Class_SET_6E is
      type SET_6E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:431
      end record;
      pragma Import (CPP, SET_6E);

      procedure exec (this : access SET_6E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:431
      pragma Import (CPP, exec, "_ZN6SET_6E4execEP9Processor");

      function toStr (this : access SET_6E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:431
      pragma Import (CPP, toStr, "_ZN6SET_6E5toStrEv");

      function opCode (this : access SET_6E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:431
      pragma Import (CPP, opCode, "_ZN6SET_6E6opCodeEv");

      function nbCycles (this : access SET_6E) return int;  -- instruction.hpp:431
      pragma Import (CPP, nbCycles, "_ZN6SET_6E8nbCyclesEv");

      function hasArg (this : access SET_6E) return Extensions.bool;  -- instruction.hpp:431
      pragma Import (CPP, hasArg, "_ZN6SET_6E6hasArgEv");

      procedure setArg (this : access SET_6E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:431
      pragma Import (CPP, setArg, "_ZN6SET_6E6setArgER3ARG");

      function argSize (this : access SET_6E) return int;  -- instruction.hpp:431
      pragma Import (CPP, argSize, "_ZN6SET_6E7argSizeEv");
   end;
   use Class_SET_6E;
   package Class_SET_7E is
      type SET_7E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:432
      end record;
      pragma Import (CPP, SET_7E);

      procedure exec (this : access SET_7E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:432
      pragma Import (CPP, exec, "_ZN6SET_7E4execEP9Processor");

      function toStr (this : access SET_7E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:432
      pragma Import (CPP, toStr, "_ZN6SET_7E5toStrEv");

      function opCode (this : access SET_7E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:432
      pragma Import (CPP, opCode, "_ZN6SET_7E6opCodeEv");

      function nbCycles (this : access SET_7E) return int;  -- instruction.hpp:432
      pragma Import (CPP, nbCycles, "_ZN6SET_7E8nbCyclesEv");

      function hasArg (this : access SET_7E) return Extensions.bool;  -- instruction.hpp:432
      pragma Import (CPP, hasArg, "_ZN6SET_7E6hasArgEv");

      procedure setArg (this : access SET_7E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:432
      pragma Import (CPP, setArg, "_ZN6SET_7E6setArgER3ARG");

      function argSize (this : access SET_7E) return int;  -- instruction.hpp:432
      pragma Import (CPP, argSize, "_ZN6SET_7E7argSizeEv");
   end;
   use Class_SET_7E;
   package Class_SET_0H is
      type SET_0H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:434
      end record;
      pragma Import (CPP, SET_0H);

      procedure exec (this : access SET_0H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:434
      pragma Import (CPP, exec, "_ZN6SET_0H4execEP9Processor");

      function toStr (this : access SET_0H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:434
      pragma Import (CPP, toStr, "_ZN6SET_0H5toStrEv");

      function opCode (this : access SET_0H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:434
      pragma Import (CPP, opCode, "_ZN6SET_0H6opCodeEv");

      function nbCycles (this : access SET_0H) return int;  -- instruction.hpp:434
      pragma Import (CPP, nbCycles, "_ZN6SET_0H8nbCyclesEv");

      function hasArg (this : access SET_0H) return Extensions.bool;  -- instruction.hpp:434
      pragma Import (CPP, hasArg, "_ZN6SET_0H6hasArgEv");

      procedure setArg (this : access SET_0H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:434
      pragma Import (CPP, setArg, "_ZN6SET_0H6setArgER3ARG");

      function argSize (this : access SET_0H) return int;  -- instruction.hpp:434
      pragma Import (CPP, argSize, "_ZN6SET_0H7argSizeEv");
   end;
   use Class_SET_0H;
   package Class_SET_1H is
      type SET_1H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:435
      end record;
      pragma Import (CPP, SET_1H);

      procedure exec (this : access SET_1H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:435
      pragma Import (CPP, exec, "_ZN6SET_1H4execEP9Processor");

      function toStr (this : access SET_1H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:435
      pragma Import (CPP, toStr, "_ZN6SET_1H5toStrEv");

      function opCode (this : access SET_1H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:435
      pragma Import (CPP, opCode, "_ZN6SET_1H6opCodeEv");

      function nbCycles (this : access SET_1H) return int;  -- instruction.hpp:435
      pragma Import (CPP, nbCycles, "_ZN6SET_1H8nbCyclesEv");

      function hasArg (this : access SET_1H) return Extensions.bool;  -- instruction.hpp:435
      pragma Import (CPP, hasArg, "_ZN6SET_1H6hasArgEv");

      procedure setArg (this : access SET_1H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:435
      pragma Import (CPP, setArg, "_ZN6SET_1H6setArgER3ARG");

      function argSize (this : access SET_1H) return int;  -- instruction.hpp:435
      pragma Import (CPP, argSize, "_ZN6SET_1H7argSizeEv");
   end;
   use Class_SET_1H;
   package Class_SET_2H is
      type SET_2H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:436
      end record;
      pragma Import (CPP, SET_2H);

      procedure exec (this : access SET_2H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:436
      pragma Import (CPP, exec, "_ZN6SET_2H4execEP9Processor");

      function toStr (this : access SET_2H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:436
      pragma Import (CPP, toStr, "_ZN6SET_2H5toStrEv");

      function opCode (this : access SET_2H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:436
      pragma Import (CPP, opCode, "_ZN6SET_2H6opCodeEv");

      function nbCycles (this : access SET_2H) return int;  -- instruction.hpp:436
      pragma Import (CPP, nbCycles, "_ZN6SET_2H8nbCyclesEv");

      function hasArg (this : access SET_2H) return Extensions.bool;  -- instruction.hpp:436
      pragma Import (CPP, hasArg, "_ZN6SET_2H6hasArgEv");

      procedure setArg (this : access SET_2H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:436
      pragma Import (CPP, setArg, "_ZN6SET_2H6setArgER3ARG");

      function argSize (this : access SET_2H) return int;  -- instruction.hpp:436
      pragma Import (CPP, argSize, "_ZN6SET_2H7argSizeEv");
   end;
   use Class_SET_2H;
   package Class_SET_3H is
      type SET_3H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:437
      end record;
      pragma Import (CPP, SET_3H);

      procedure exec (this : access SET_3H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:437
      pragma Import (CPP, exec, "_ZN6SET_3H4execEP9Processor");

      function toStr (this : access SET_3H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:437
      pragma Import (CPP, toStr, "_ZN6SET_3H5toStrEv");

      function opCode (this : access SET_3H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:437
      pragma Import (CPP, opCode, "_ZN6SET_3H6opCodeEv");

      function nbCycles (this : access SET_3H) return int;  -- instruction.hpp:437
      pragma Import (CPP, nbCycles, "_ZN6SET_3H8nbCyclesEv");

      function hasArg (this : access SET_3H) return Extensions.bool;  -- instruction.hpp:437
      pragma Import (CPP, hasArg, "_ZN6SET_3H6hasArgEv");

      procedure setArg (this : access SET_3H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:437
      pragma Import (CPP, setArg, "_ZN6SET_3H6setArgER3ARG");

      function argSize (this : access SET_3H) return int;  -- instruction.hpp:437
      pragma Import (CPP, argSize, "_ZN6SET_3H7argSizeEv");
   end;
   use Class_SET_3H;
   package Class_SET_4H is
      type SET_4H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:438
      end record;
      pragma Import (CPP, SET_4H);

      procedure exec (this : access SET_4H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:438
      pragma Import (CPP, exec, "_ZN6SET_4H4execEP9Processor");

      function toStr (this : access SET_4H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:438
      pragma Import (CPP, toStr, "_ZN6SET_4H5toStrEv");

      function opCode (this : access SET_4H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:438
      pragma Import (CPP, opCode, "_ZN6SET_4H6opCodeEv");

      function nbCycles (this : access SET_4H) return int;  -- instruction.hpp:438
      pragma Import (CPP, nbCycles, "_ZN6SET_4H8nbCyclesEv");

      function hasArg (this : access SET_4H) return Extensions.bool;  -- instruction.hpp:438
      pragma Import (CPP, hasArg, "_ZN6SET_4H6hasArgEv");

      procedure setArg (this : access SET_4H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:438
      pragma Import (CPP, setArg, "_ZN6SET_4H6setArgER3ARG");

      function argSize (this : access SET_4H) return int;  -- instruction.hpp:438
      pragma Import (CPP, argSize, "_ZN6SET_4H7argSizeEv");
   end;
   use Class_SET_4H;
   package Class_SET_5H is
      type SET_5H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:439
      end record;
      pragma Import (CPP, SET_5H);

      procedure exec (this : access SET_5H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:439
      pragma Import (CPP, exec, "_ZN6SET_5H4execEP9Processor");

      function toStr (this : access SET_5H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:439
      pragma Import (CPP, toStr, "_ZN6SET_5H5toStrEv");

      function opCode (this : access SET_5H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:439
      pragma Import (CPP, opCode, "_ZN6SET_5H6opCodeEv");

      function nbCycles (this : access SET_5H) return int;  -- instruction.hpp:439
      pragma Import (CPP, nbCycles, "_ZN6SET_5H8nbCyclesEv");

      function hasArg (this : access SET_5H) return Extensions.bool;  -- instruction.hpp:439
      pragma Import (CPP, hasArg, "_ZN6SET_5H6hasArgEv");

      procedure setArg (this : access SET_5H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:439
      pragma Import (CPP, setArg, "_ZN6SET_5H6setArgER3ARG");

      function argSize (this : access SET_5H) return int;  -- instruction.hpp:439
      pragma Import (CPP, argSize, "_ZN6SET_5H7argSizeEv");
   end;
   use Class_SET_5H;
   package Class_SET_6H is
      type SET_6H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:440
      end record;
      pragma Import (CPP, SET_6H);

      procedure exec (this : access SET_6H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:440
      pragma Import (CPP, exec, "_ZN6SET_6H4execEP9Processor");

      function toStr (this : access SET_6H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:440
      pragma Import (CPP, toStr, "_ZN6SET_6H5toStrEv");

      function opCode (this : access SET_6H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:440
      pragma Import (CPP, opCode, "_ZN6SET_6H6opCodeEv");

      function nbCycles (this : access SET_6H) return int;  -- instruction.hpp:440
      pragma Import (CPP, nbCycles, "_ZN6SET_6H8nbCyclesEv");

      function hasArg (this : access SET_6H) return Extensions.bool;  -- instruction.hpp:440
      pragma Import (CPP, hasArg, "_ZN6SET_6H6hasArgEv");

      procedure setArg (this : access SET_6H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:440
      pragma Import (CPP, setArg, "_ZN6SET_6H6setArgER3ARG");

      function argSize (this : access SET_6H) return int;  -- instruction.hpp:440
      pragma Import (CPP, argSize, "_ZN6SET_6H7argSizeEv");
   end;
   use Class_SET_6H;
   package Class_SET_7H is
      type SET_7H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:441
      end record;
      pragma Import (CPP, SET_7H);

      procedure exec (this : access SET_7H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:441
      pragma Import (CPP, exec, "_ZN6SET_7H4execEP9Processor");

      function toStr (this : access SET_7H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:441
      pragma Import (CPP, toStr, "_ZN6SET_7H5toStrEv");

      function opCode (this : access SET_7H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:441
      pragma Import (CPP, opCode, "_ZN6SET_7H6opCodeEv");

      function nbCycles (this : access SET_7H) return int;  -- instruction.hpp:441
      pragma Import (CPP, nbCycles, "_ZN6SET_7H8nbCyclesEv");

      function hasArg (this : access SET_7H) return Extensions.bool;  -- instruction.hpp:441
      pragma Import (CPP, hasArg, "_ZN6SET_7H6hasArgEv");

      procedure setArg (this : access SET_7H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:441
      pragma Import (CPP, setArg, "_ZN6SET_7H6setArgER3ARG");

      function argSize (this : access SET_7H) return int;  -- instruction.hpp:441
      pragma Import (CPP, argSize, "_ZN6SET_7H7argSizeEv");
   end;
   use Class_SET_7H;
   package Class_SET_0L is
      type SET_0L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:443
      end record;
      pragma Import (CPP, SET_0L);

      procedure exec (this : access SET_0L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:443
      pragma Import (CPP, exec, "_ZN6SET_0L4execEP9Processor");

      function toStr (this : access SET_0L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:443
      pragma Import (CPP, toStr, "_ZN6SET_0L5toStrEv");

      function opCode (this : access SET_0L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:443
      pragma Import (CPP, opCode, "_ZN6SET_0L6opCodeEv");

      function nbCycles (this : access SET_0L) return int;  -- instruction.hpp:443
      pragma Import (CPP, nbCycles, "_ZN6SET_0L8nbCyclesEv");

      function hasArg (this : access SET_0L) return Extensions.bool;  -- instruction.hpp:443
      pragma Import (CPP, hasArg, "_ZN6SET_0L6hasArgEv");

      procedure setArg (this : access SET_0L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:443
      pragma Import (CPP, setArg, "_ZN6SET_0L6setArgER3ARG");

      function argSize (this : access SET_0L) return int;  -- instruction.hpp:443
      pragma Import (CPP, argSize, "_ZN6SET_0L7argSizeEv");
   end;
   use Class_SET_0L;
   package Class_SET_1L is
      type SET_1L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:444
      end record;
      pragma Import (CPP, SET_1L);

      procedure exec (this : access SET_1L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:444
      pragma Import (CPP, exec, "_ZN6SET_1L4execEP9Processor");

      function toStr (this : access SET_1L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:444
      pragma Import (CPP, toStr, "_ZN6SET_1L5toStrEv");

      function opCode (this : access SET_1L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:444
      pragma Import (CPP, opCode, "_ZN6SET_1L6opCodeEv");

      function nbCycles (this : access SET_1L) return int;  -- instruction.hpp:444
      pragma Import (CPP, nbCycles, "_ZN6SET_1L8nbCyclesEv");

      function hasArg (this : access SET_1L) return Extensions.bool;  -- instruction.hpp:444
      pragma Import (CPP, hasArg, "_ZN6SET_1L6hasArgEv");

      procedure setArg (this : access SET_1L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:444
      pragma Import (CPP, setArg, "_ZN6SET_1L6setArgER3ARG");

      function argSize (this : access SET_1L) return int;  -- instruction.hpp:444
      pragma Import (CPP, argSize, "_ZN6SET_1L7argSizeEv");
   end;
   use Class_SET_1L;
   package Class_SET_2L is
      type SET_2L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:445
      end record;
      pragma Import (CPP, SET_2L);

      procedure exec (this : access SET_2L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:445
      pragma Import (CPP, exec, "_ZN6SET_2L4execEP9Processor");

      function toStr (this : access SET_2L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:445
      pragma Import (CPP, toStr, "_ZN6SET_2L5toStrEv");

      function opCode (this : access SET_2L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:445
      pragma Import (CPP, opCode, "_ZN6SET_2L6opCodeEv");

      function nbCycles (this : access SET_2L) return int;  -- instruction.hpp:445
      pragma Import (CPP, nbCycles, "_ZN6SET_2L8nbCyclesEv");

      function hasArg (this : access SET_2L) return Extensions.bool;  -- instruction.hpp:445
      pragma Import (CPP, hasArg, "_ZN6SET_2L6hasArgEv");

      procedure setArg (this : access SET_2L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:445
      pragma Import (CPP, setArg, "_ZN6SET_2L6setArgER3ARG");

      function argSize (this : access SET_2L) return int;  -- instruction.hpp:445
      pragma Import (CPP, argSize, "_ZN6SET_2L7argSizeEv");
   end;
   use Class_SET_2L;
   package Class_SET_3L is
      type SET_3L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:446
      end record;
      pragma Import (CPP, SET_3L);

      procedure exec (this : access SET_3L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:446
      pragma Import (CPP, exec, "_ZN6SET_3L4execEP9Processor");

      function toStr (this : access SET_3L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:446
      pragma Import (CPP, toStr, "_ZN6SET_3L5toStrEv");

      function opCode (this : access SET_3L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:446
      pragma Import (CPP, opCode, "_ZN6SET_3L6opCodeEv");

      function nbCycles (this : access SET_3L) return int;  -- instruction.hpp:446
      pragma Import (CPP, nbCycles, "_ZN6SET_3L8nbCyclesEv");

      function hasArg (this : access SET_3L) return Extensions.bool;  -- instruction.hpp:446
      pragma Import (CPP, hasArg, "_ZN6SET_3L6hasArgEv");

      procedure setArg (this : access SET_3L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:446
      pragma Import (CPP, setArg, "_ZN6SET_3L6setArgER3ARG");

      function argSize (this : access SET_3L) return int;  -- instruction.hpp:446
      pragma Import (CPP, argSize, "_ZN6SET_3L7argSizeEv");
   end;
   use Class_SET_3L;
   package Class_SET_4L is
      type SET_4L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:447
      end record;
      pragma Import (CPP, SET_4L);

      procedure exec (this : access SET_4L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:447
      pragma Import (CPP, exec, "_ZN6SET_4L4execEP9Processor");

      function toStr (this : access SET_4L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:447
      pragma Import (CPP, toStr, "_ZN6SET_4L5toStrEv");

      function opCode (this : access SET_4L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:447
      pragma Import (CPP, opCode, "_ZN6SET_4L6opCodeEv");

      function nbCycles (this : access SET_4L) return int;  -- instruction.hpp:447
      pragma Import (CPP, nbCycles, "_ZN6SET_4L8nbCyclesEv");

      function hasArg (this : access SET_4L) return Extensions.bool;  -- instruction.hpp:447
      pragma Import (CPP, hasArg, "_ZN6SET_4L6hasArgEv");

      procedure setArg (this : access SET_4L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:447
      pragma Import (CPP, setArg, "_ZN6SET_4L6setArgER3ARG");

      function argSize (this : access SET_4L) return int;  -- instruction.hpp:447
      pragma Import (CPP, argSize, "_ZN6SET_4L7argSizeEv");
   end;
   use Class_SET_4L;
   package Class_SET_5L is
      type SET_5L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:448
      end record;
      pragma Import (CPP, SET_5L);

      procedure exec (this : access SET_5L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:448
      pragma Import (CPP, exec, "_ZN6SET_5L4execEP9Processor");

      function toStr (this : access SET_5L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:448
      pragma Import (CPP, toStr, "_ZN6SET_5L5toStrEv");

      function opCode (this : access SET_5L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:448
      pragma Import (CPP, opCode, "_ZN6SET_5L6opCodeEv");

      function nbCycles (this : access SET_5L) return int;  -- instruction.hpp:448
      pragma Import (CPP, nbCycles, "_ZN6SET_5L8nbCyclesEv");

      function hasArg (this : access SET_5L) return Extensions.bool;  -- instruction.hpp:448
      pragma Import (CPP, hasArg, "_ZN6SET_5L6hasArgEv");

      procedure setArg (this : access SET_5L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:448
      pragma Import (CPP, setArg, "_ZN6SET_5L6setArgER3ARG");

      function argSize (this : access SET_5L) return int;  -- instruction.hpp:448
      pragma Import (CPP, argSize, "_ZN6SET_5L7argSizeEv");
   end;
   use Class_SET_5L;
   package Class_SET_6L is
      type SET_6L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:449
      end record;
      pragma Import (CPP, SET_6L);

      procedure exec (this : access SET_6L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:449
      pragma Import (CPP, exec, "_ZN6SET_6L4execEP9Processor");

      function toStr (this : access SET_6L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:449
      pragma Import (CPP, toStr, "_ZN6SET_6L5toStrEv");

      function opCode (this : access SET_6L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:449
      pragma Import (CPP, opCode, "_ZN6SET_6L6opCodeEv");

      function nbCycles (this : access SET_6L) return int;  -- instruction.hpp:449
      pragma Import (CPP, nbCycles, "_ZN6SET_6L8nbCyclesEv");

      function hasArg (this : access SET_6L) return Extensions.bool;  -- instruction.hpp:449
      pragma Import (CPP, hasArg, "_ZN6SET_6L6hasArgEv");

      procedure setArg (this : access SET_6L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:449
      pragma Import (CPP, setArg, "_ZN6SET_6L6setArgER3ARG");

      function argSize (this : access SET_6L) return int;  -- instruction.hpp:449
      pragma Import (CPP, argSize, "_ZN6SET_6L7argSizeEv");
   end;
   use Class_SET_6L;
   package Class_SET_7L is
      type SET_7L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:450
      end record;
      pragma Import (CPP, SET_7L);

      procedure exec (this : access SET_7L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:450
      pragma Import (CPP, exec, "_ZN6SET_7L4execEP9Processor");

      function toStr (this : access SET_7L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:450
      pragma Import (CPP, toStr, "_ZN6SET_7L5toStrEv");

      function opCode (this : access SET_7L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:450
      pragma Import (CPP, opCode, "_ZN6SET_7L6opCodeEv");

      function nbCycles (this : access SET_7L) return int;  -- instruction.hpp:450
      pragma Import (CPP, nbCycles, "_ZN6SET_7L8nbCyclesEv");

      function hasArg (this : access SET_7L) return Extensions.bool;  -- instruction.hpp:450
      pragma Import (CPP, hasArg, "_ZN6SET_7L6hasArgEv");

      procedure setArg (this : access SET_7L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:450
      pragma Import (CPP, setArg, "_ZN6SET_7L6setArgER3ARG");

      function argSize (this : access SET_7L) return int;  -- instruction.hpp:450
      pragma Import (CPP, argSize, "_ZN6SET_7L7argSizeEv");
   end;
   use Class_SET_7L;
   package Class_SET_0HL is
      type SET_0HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:452
      end record;
      pragma Import (CPP, SET_0HL);

      procedure exec (this : access SET_0HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:452
      pragma Import (CPP, exec, "_ZN7SET_0HL4execEP9Processor");

      function toStr (this : access SET_0HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:452
      pragma Import (CPP, toStr, "_ZN7SET_0HL5toStrEv");

      function opCode (this : access SET_0HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:452
      pragma Import (CPP, opCode, "_ZN7SET_0HL6opCodeEv");

      function nbCycles (this : access SET_0HL) return int;  -- instruction.hpp:452
      pragma Import (CPP, nbCycles, "_ZN7SET_0HL8nbCyclesEv");

      function hasArg (this : access SET_0HL) return Extensions.bool;  -- instruction.hpp:452
      pragma Import (CPP, hasArg, "_ZN7SET_0HL6hasArgEv");

      procedure setArg (this : access SET_0HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:452
      pragma Import (CPP, setArg, "_ZN7SET_0HL6setArgER3ARG");

      function argSize (this : access SET_0HL) return int;  -- instruction.hpp:452
      pragma Import (CPP, argSize, "_ZN7SET_0HL7argSizeEv");
   end;
   use Class_SET_0HL;
   package Class_SET_1HL is
      type SET_1HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:453
      end record;
      pragma Import (CPP, SET_1HL);

      procedure exec (this : access SET_1HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:453
      pragma Import (CPP, exec, "_ZN7SET_1HL4execEP9Processor");

      function toStr (this : access SET_1HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:453
      pragma Import (CPP, toStr, "_ZN7SET_1HL5toStrEv");

      function opCode (this : access SET_1HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:453
      pragma Import (CPP, opCode, "_ZN7SET_1HL6opCodeEv");

      function nbCycles (this : access SET_1HL) return int;  -- instruction.hpp:453
      pragma Import (CPP, nbCycles, "_ZN7SET_1HL8nbCyclesEv");

      function hasArg (this : access SET_1HL) return Extensions.bool;  -- instruction.hpp:453
      pragma Import (CPP, hasArg, "_ZN7SET_1HL6hasArgEv");

      procedure setArg (this : access SET_1HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:453
      pragma Import (CPP, setArg, "_ZN7SET_1HL6setArgER3ARG");

      function argSize (this : access SET_1HL) return int;  -- instruction.hpp:453
      pragma Import (CPP, argSize, "_ZN7SET_1HL7argSizeEv");
   end;
   use Class_SET_1HL;
   package Class_SET_2HL is
      type SET_2HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:454
      end record;
      pragma Import (CPP, SET_2HL);

      procedure exec (this : access SET_2HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:454
      pragma Import (CPP, exec, "_ZN7SET_2HL4execEP9Processor");

      function toStr (this : access SET_2HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:454
      pragma Import (CPP, toStr, "_ZN7SET_2HL5toStrEv");

      function opCode (this : access SET_2HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:454
      pragma Import (CPP, opCode, "_ZN7SET_2HL6opCodeEv");

      function nbCycles (this : access SET_2HL) return int;  -- instruction.hpp:454
      pragma Import (CPP, nbCycles, "_ZN7SET_2HL8nbCyclesEv");

      function hasArg (this : access SET_2HL) return Extensions.bool;  -- instruction.hpp:454
      pragma Import (CPP, hasArg, "_ZN7SET_2HL6hasArgEv");

      procedure setArg (this : access SET_2HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:454
      pragma Import (CPP, setArg, "_ZN7SET_2HL6setArgER3ARG");

      function argSize (this : access SET_2HL) return int;  -- instruction.hpp:454
      pragma Import (CPP, argSize, "_ZN7SET_2HL7argSizeEv");
   end;
   use Class_SET_2HL;
   package Class_SET_3HL is
      type SET_3HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:455
      end record;
      pragma Import (CPP, SET_3HL);

      procedure exec (this : access SET_3HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:455
      pragma Import (CPP, exec, "_ZN7SET_3HL4execEP9Processor");

      function toStr (this : access SET_3HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:455
      pragma Import (CPP, toStr, "_ZN7SET_3HL5toStrEv");

      function opCode (this : access SET_3HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:455
      pragma Import (CPP, opCode, "_ZN7SET_3HL6opCodeEv");

      function nbCycles (this : access SET_3HL) return int;  -- instruction.hpp:455
      pragma Import (CPP, nbCycles, "_ZN7SET_3HL8nbCyclesEv");

      function hasArg (this : access SET_3HL) return Extensions.bool;  -- instruction.hpp:455
      pragma Import (CPP, hasArg, "_ZN7SET_3HL6hasArgEv");

      procedure setArg (this : access SET_3HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:455
      pragma Import (CPP, setArg, "_ZN7SET_3HL6setArgER3ARG");

      function argSize (this : access SET_3HL) return int;  -- instruction.hpp:455
      pragma Import (CPP, argSize, "_ZN7SET_3HL7argSizeEv");
   end;
   use Class_SET_3HL;
   package Class_SET_4HL is
      type SET_4HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:456
      end record;
      pragma Import (CPP, SET_4HL);

      procedure exec (this : access SET_4HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:456
      pragma Import (CPP, exec, "_ZN7SET_4HL4execEP9Processor");

      function toStr (this : access SET_4HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:456
      pragma Import (CPP, toStr, "_ZN7SET_4HL5toStrEv");

      function opCode (this : access SET_4HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:456
      pragma Import (CPP, opCode, "_ZN7SET_4HL6opCodeEv");

      function nbCycles (this : access SET_4HL) return int;  -- instruction.hpp:456
      pragma Import (CPP, nbCycles, "_ZN7SET_4HL8nbCyclesEv");

      function hasArg (this : access SET_4HL) return Extensions.bool;  -- instruction.hpp:456
      pragma Import (CPP, hasArg, "_ZN7SET_4HL6hasArgEv");

      procedure setArg (this : access SET_4HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:456
      pragma Import (CPP, setArg, "_ZN7SET_4HL6setArgER3ARG");

      function argSize (this : access SET_4HL) return int;  -- instruction.hpp:456
      pragma Import (CPP, argSize, "_ZN7SET_4HL7argSizeEv");
   end;
   use Class_SET_4HL;
   package Class_SET_5HL is
      type SET_5HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:457
      end record;
      pragma Import (CPP, SET_5HL);

      procedure exec (this : access SET_5HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:457
      pragma Import (CPP, exec, "_ZN7SET_5HL4execEP9Processor");

      function toStr (this : access SET_5HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:457
      pragma Import (CPP, toStr, "_ZN7SET_5HL5toStrEv");

      function opCode (this : access SET_5HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:457
      pragma Import (CPP, opCode, "_ZN7SET_5HL6opCodeEv");

      function nbCycles (this : access SET_5HL) return int;  -- instruction.hpp:457
      pragma Import (CPP, nbCycles, "_ZN7SET_5HL8nbCyclesEv");

      function hasArg (this : access SET_5HL) return Extensions.bool;  -- instruction.hpp:457
      pragma Import (CPP, hasArg, "_ZN7SET_5HL6hasArgEv");

      procedure setArg (this : access SET_5HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:457
      pragma Import (CPP, setArg, "_ZN7SET_5HL6setArgER3ARG");

      function argSize (this : access SET_5HL) return int;  -- instruction.hpp:457
      pragma Import (CPP, argSize, "_ZN7SET_5HL7argSizeEv");
   end;
   use Class_SET_5HL;
   package Class_SET_6HL is
      type SET_6HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:458
      end record;
      pragma Import (CPP, SET_6HL);

      procedure exec (this : access SET_6HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:458
      pragma Import (CPP, exec, "_ZN7SET_6HL4execEP9Processor");

      function toStr (this : access SET_6HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:458
      pragma Import (CPP, toStr, "_ZN7SET_6HL5toStrEv");

      function opCode (this : access SET_6HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:458
      pragma Import (CPP, opCode, "_ZN7SET_6HL6opCodeEv");

      function nbCycles (this : access SET_6HL) return int;  -- instruction.hpp:458
      pragma Import (CPP, nbCycles, "_ZN7SET_6HL8nbCyclesEv");

      function hasArg (this : access SET_6HL) return Extensions.bool;  -- instruction.hpp:458
      pragma Import (CPP, hasArg, "_ZN7SET_6HL6hasArgEv");

      procedure setArg (this : access SET_6HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:458
      pragma Import (CPP, setArg, "_ZN7SET_6HL6setArgER3ARG");

      function argSize (this : access SET_6HL) return int;  -- instruction.hpp:458
      pragma Import (CPP, argSize, "_ZN7SET_6HL7argSizeEv");
   end;
   use Class_SET_6HL;
   package Class_SET_7HL is
      type SET_7HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:459
      end record;
      pragma Import (CPP, SET_7HL);

      procedure exec (this : access SET_7HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:459
      pragma Import (CPP, exec, "_ZN7SET_7HL4execEP9Processor");

      function toStr (this : access SET_7HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:459
      pragma Import (CPP, toStr, "_ZN7SET_7HL5toStrEv");

      function opCode (this : access SET_7HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:459
      pragma Import (CPP, opCode, "_ZN7SET_7HL6opCodeEv");

      function nbCycles (this : access SET_7HL) return int;  -- instruction.hpp:459
      pragma Import (CPP, nbCycles, "_ZN7SET_7HL8nbCyclesEv");

      function hasArg (this : access SET_7HL) return Extensions.bool;  -- instruction.hpp:459
      pragma Import (CPP, hasArg, "_ZN7SET_7HL6hasArgEv");

      procedure setArg (this : access SET_7HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:459
      pragma Import (CPP, setArg, "_ZN7SET_7HL6setArgER3ARG");

      function argSize (this : access SET_7HL) return int;  -- instruction.hpp:459
      pragma Import (CPP, argSize, "_ZN7SET_7HL7argSizeEv");
   end;
   use Class_SET_7HL;
  -- RES Instructions
   package Class_RES_0A is
      type RES_0A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:464
      end record;
      pragma Import (CPP, RES_0A);

      procedure exec (this : access RES_0A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:464
      pragma Import (CPP, exec, "_ZN6RES_0A4execEP9Processor");

      function toStr (this : access RES_0A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:464
      pragma Import (CPP, toStr, "_ZN6RES_0A5toStrEv");

      function opCode (this : access RES_0A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:464
      pragma Import (CPP, opCode, "_ZN6RES_0A6opCodeEv");

      function nbCycles (this : access RES_0A) return int;  -- instruction.hpp:464
      pragma Import (CPP, nbCycles, "_ZN6RES_0A8nbCyclesEv");

      function hasArg (this : access RES_0A) return Extensions.bool;  -- instruction.hpp:464
      pragma Import (CPP, hasArg, "_ZN6RES_0A6hasArgEv");

      procedure setArg (this : access RES_0A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:464
      pragma Import (CPP, setArg, "_ZN6RES_0A6setArgER3ARG");

      function argSize (this : access RES_0A) return int;  -- instruction.hpp:464
      pragma Import (CPP, argSize, "_ZN6RES_0A7argSizeEv");
   end;
   use Class_RES_0A;
   package Class_RES_1A is
      type RES_1A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:465
      end record;
      pragma Import (CPP, RES_1A);

      procedure exec (this : access RES_1A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:465
      pragma Import (CPP, exec, "_ZN6RES_1A4execEP9Processor");

      function toStr (this : access RES_1A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:465
      pragma Import (CPP, toStr, "_ZN6RES_1A5toStrEv");

      function opCode (this : access RES_1A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:465
      pragma Import (CPP, opCode, "_ZN6RES_1A6opCodeEv");

      function nbCycles (this : access RES_1A) return int;  -- instruction.hpp:465
      pragma Import (CPP, nbCycles, "_ZN6RES_1A8nbCyclesEv");

      function hasArg (this : access RES_1A) return Extensions.bool;  -- instruction.hpp:465
      pragma Import (CPP, hasArg, "_ZN6RES_1A6hasArgEv");

      procedure setArg (this : access RES_1A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:465
      pragma Import (CPP, setArg, "_ZN6RES_1A6setArgER3ARG");

      function argSize (this : access RES_1A) return int;  -- instruction.hpp:465
      pragma Import (CPP, argSize, "_ZN6RES_1A7argSizeEv");
   end;
   use Class_RES_1A;
   package Class_RES_2A is
      type RES_2A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:466
      end record;
      pragma Import (CPP, RES_2A);

      procedure exec (this : access RES_2A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:466
      pragma Import (CPP, exec, "_ZN6RES_2A4execEP9Processor");

      function toStr (this : access RES_2A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:466
      pragma Import (CPP, toStr, "_ZN6RES_2A5toStrEv");

      function opCode (this : access RES_2A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:466
      pragma Import (CPP, opCode, "_ZN6RES_2A6opCodeEv");

      function nbCycles (this : access RES_2A) return int;  -- instruction.hpp:466
      pragma Import (CPP, nbCycles, "_ZN6RES_2A8nbCyclesEv");

      function hasArg (this : access RES_2A) return Extensions.bool;  -- instruction.hpp:466
      pragma Import (CPP, hasArg, "_ZN6RES_2A6hasArgEv");

      procedure setArg (this : access RES_2A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:466
      pragma Import (CPP, setArg, "_ZN6RES_2A6setArgER3ARG");

      function argSize (this : access RES_2A) return int;  -- instruction.hpp:466
      pragma Import (CPP, argSize, "_ZN6RES_2A7argSizeEv");
   end;
   use Class_RES_2A;
   package Class_RES_3A is
      type RES_3A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:467
      end record;
      pragma Import (CPP, RES_3A);

      procedure exec (this : access RES_3A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:467
      pragma Import (CPP, exec, "_ZN6RES_3A4execEP9Processor");

      function toStr (this : access RES_3A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:467
      pragma Import (CPP, toStr, "_ZN6RES_3A5toStrEv");

      function opCode (this : access RES_3A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:467
      pragma Import (CPP, opCode, "_ZN6RES_3A6opCodeEv");

      function nbCycles (this : access RES_3A) return int;  -- instruction.hpp:467
      pragma Import (CPP, nbCycles, "_ZN6RES_3A8nbCyclesEv");

      function hasArg (this : access RES_3A) return Extensions.bool;  -- instruction.hpp:467
      pragma Import (CPP, hasArg, "_ZN6RES_3A6hasArgEv");

      procedure setArg (this : access RES_3A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:467
      pragma Import (CPP, setArg, "_ZN6RES_3A6setArgER3ARG");

      function argSize (this : access RES_3A) return int;  -- instruction.hpp:467
      pragma Import (CPP, argSize, "_ZN6RES_3A7argSizeEv");
   end;
   use Class_RES_3A;
   package Class_RES_4A is
      type RES_4A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:468
      end record;
      pragma Import (CPP, RES_4A);

      procedure exec (this : access RES_4A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:468
      pragma Import (CPP, exec, "_ZN6RES_4A4execEP9Processor");

      function toStr (this : access RES_4A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:468
      pragma Import (CPP, toStr, "_ZN6RES_4A5toStrEv");

      function opCode (this : access RES_4A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:468
      pragma Import (CPP, opCode, "_ZN6RES_4A6opCodeEv");

      function nbCycles (this : access RES_4A) return int;  -- instruction.hpp:468
      pragma Import (CPP, nbCycles, "_ZN6RES_4A8nbCyclesEv");

      function hasArg (this : access RES_4A) return Extensions.bool;  -- instruction.hpp:468
      pragma Import (CPP, hasArg, "_ZN6RES_4A6hasArgEv");

      procedure setArg (this : access RES_4A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:468
      pragma Import (CPP, setArg, "_ZN6RES_4A6setArgER3ARG");

      function argSize (this : access RES_4A) return int;  -- instruction.hpp:468
      pragma Import (CPP, argSize, "_ZN6RES_4A7argSizeEv");
   end;
   use Class_RES_4A;
   package Class_RES_5A is
      type RES_5A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:469
      end record;
      pragma Import (CPP, RES_5A);

      procedure exec (this : access RES_5A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:469
      pragma Import (CPP, exec, "_ZN6RES_5A4execEP9Processor");

      function toStr (this : access RES_5A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:469
      pragma Import (CPP, toStr, "_ZN6RES_5A5toStrEv");

      function opCode (this : access RES_5A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:469
      pragma Import (CPP, opCode, "_ZN6RES_5A6opCodeEv");

      function nbCycles (this : access RES_5A) return int;  -- instruction.hpp:469
      pragma Import (CPP, nbCycles, "_ZN6RES_5A8nbCyclesEv");

      function hasArg (this : access RES_5A) return Extensions.bool;  -- instruction.hpp:469
      pragma Import (CPP, hasArg, "_ZN6RES_5A6hasArgEv");

      procedure setArg (this : access RES_5A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:469
      pragma Import (CPP, setArg, "_ZN6RES_5A6setArgER3ARG");

      function argSize (this : access RES_5A) return int;  -- instruction.hpp:469
      pragma Import (CPP, argSize, "_ZN6RES_5A7argSizeEv");
   end;
   use Class_RES_5A;
   package Class_RES_6A is
      type RES_6A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:470
      end record;
      pragma Import (CPP, RES_6A);

      procedure exec (this : access RES_6A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:470
      pragma Import (CPP, exec, "_ZN6RES_6A4execEP9Processor");

      function toStr (this : access RES_6A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:470
      pragma Import (CPP, toStr, "_ZN6RES_6A5toStrEv");

      function opCode (this : access RES_6A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:470
      pragma Import (CPP, opCode, "_ZN6RES_6A6opCodeEv");

      function nbCycles (this : access RES_6A) return int;  -- instruction.hpp:470
      pragma Import (CPP, nbCycles, "_ZN6RES_6A8nbCyclesEv");

      function hasArg (this : access RES_6A) return Extensions.bool;  -- instruction.hpp:470
      pragma Import (CPP, hasArg, "_ZN6RES_6A6hasArgEv");

      procedure setArg (this : access RES_6A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:470
      pragma Import (CPP, setArg, "_ZN6RES_6A6setArgER3ARG");

      function argSize (this : access RES_6A) return int;  -- instruction.hpp:470
      pragma Import (CPP, argSize, "_ZN6RES_6A7argSizeEv");
   end;
   use Class_RES_6A;
   package Class_RES_7A is
      type RES_7A is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:471
      end record;
      pragma Import (CPP, RES_7A);

      procedure exec (this : access RES_7A; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:471
      pragma Import (CPP, exec, "_ZN6RES_7A4execEP9Processor");

      function toStr (this : access RES_7A) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:471
      pragma Import (CPP, toStr, "_ZN6RES_7A5toStrEv");

      function opCode (this : access RES_7A) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:471
      pragma Import (CPP, opCode, "_ZN6RES_7A6opCodeEv");

      function nbCycles (this : access RES_7A) return int;  -- instruction.hpp:471
      pragma Import (CPP, nbCycles, "_ZN6RES_7A8nbCyclesEv");

      function hasArg (this : access RES_7A) return Extensions.bool;  -- instruction.hpp:471
      pragma Import (CPP, hasArg, "_ZN6RES_7A6hasArgEv");

      procedure setArg (this : access RES_7A; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:471
      pragma Import (CPP, setArg, "_ZN6RES_7A6setArgER3ARG");

      function argSize (this : access RES_7A) return int;  -- instruction.hpp:471
      pragma Import (CPP, argSize, "_ZN6RES_7A7argSizeEv");
   end;
   use Class_RES_7A;
   package Class_RES_0B is
      type RES_0B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:473
      end record;
      pragma Import (CPP, RES_0B);

      procedure exec (this : access RES_0B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:473
      pragma Import (CPP, exec, "_ZN6RES_0B4execEP9Processor");

      function toStr (this : access RES_0B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:473
      pragma Import (CPP, toStr, "_ZN6RES_0B5toStrEv");

      function opCode (this : access RES_0B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:473
      pragma Import (CPP, opCode, "_ZN6RES_0B6opCodeEv");

      function nbCycles (this : access RES_0B) return int;  -- instruction.hpp:473
      pragma Import (CPP, nbCycles, "_ZN6RES_0B8nbCyclesEv");

      function hasArg (this : access RES_0B) return Extensions.bool;  -- instruction.hpp:473
      pragma Import (CPP, hasArg, "_ZN6RES_0B6hasArgEv");

      procedure setArg (this : access RES_0B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:473
      pragma Import (CPP, setArg, "_ZN6RES_0B6setArgER3ARG");

      function argSize (this : access RES_0B) return int;  -- instruction.hpp:473
      pragma Import (CPP, argSize, "_ZN6RES_0B7argSizeEv");
   end;
   use Class_RES_0B;
   package Class_RES_1B is
      type RES_1B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:474
      end record;
      pragma Import (CPP, RES_1B);

      procedure exec (this : access RES_1B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:474
      pragma Import (CPP, exec, "_ZN6RES_1B4execEP9Processor");

      function toStr (this : access RES_1B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:474
      pragma Import (CPP, toStr, "_ZN6RES_1B5toStrEv");

      function opCode (this : access RES_1B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:474
      pragma Import (CPP, opCode, "_ZN6RES_1B6opCodeEv");

      function nbCycles (this : access RES_1B) return int;  -- instruction.hpp:474
      pragma Import (CPP, nbCycles, "_ZN6RES_1B8nbCyclesEv");

      function hasArg (this : access RES_1B) return Extensions.bool;  -- instruction.hpp:474
      pragma Import (CPP, hasArg, "_ZN6RES_1B6hasArgEv");

      procedure setArg (this : access RES_1B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:474
      pragma Import (CPP, setArg, "_ZN6RES_1B6setArgER3ARG");

      function argSize (this : access RES_1B) return int;  -- instruction.hpp:474
      pragma Import (CPP, argSize, "_ZN6RES_1B7argSizeEv");
   end;
   use Class_RES_1B;
   package Class_RES_2B is
      type RES_2B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:475
      end record;
      pragma Import (CPP, RES_2B);

      procedure exec (this : access RES_2B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:475
      pragma Import (CPP, exec, "_ZN6RES_2B4execEP9Processor");

      function toStr (this : access RES_2B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:475
      pragma Import (CPP, toStr, "_ZN6RES_2B5toStrEv");

      function opCode (this : access RES_2B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:475
      pragma Import (CPP, opCode, "_ZN6RES_2B6opCodeEv");

      function nbCycles (this : access RES_2B) return int;  -- instruction.hpp:475
      pragma Import (CPP, nbCycles, "_ZN6RES_2B8nbCyclesEv");

      function hasArg (this : access RES_2B) return Extensions.bool;  -- instruction.hpp:475
      pragma Import (CPP, hasArg, "_ZN6RES_2B6hasArgEv");

      procedure setArg (this : access RES_2B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:475
      pragma Import (CPP, setArg, "_ZN6RES_2B6setArgER3ARG");

      function argSize (this : access RES_2B) return int;  -- instruction.hpp:475
      pragma Import (CPP, argSize, "_ZN6RES_2B7argSizeEv");
   end;
   use Class_RES_2B;
   package Class_RES_3B is
      type RES_3B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:476
      end record;
      pragma Import (CPP, RES_3B);

      procedure exec (this : access RES_3B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:476
      pragma Import (CPP, exec, "_ZN6RES_3B4execEP9Processor");

      function toStr (this : access RES_3B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:476
      pragma Import (CPP, toStr, "_ZN6RES_3B5toStrEv");

      function opCode (this : access RES_3B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:476
      pragma Import (CPP, opCode, "_ZN6RES_3B6opCodeEv");

      function nbCycles (this : access RES_3B) return int;  -- instruction.hpp:476
      pragma Import (CPP, nbCycles, "_ZN6RES_3B8nbCyclesEv");

      function hasArg (this : access RES_3B) return Extensions.bool;  -- instruction.hpp:476
      pragma Import (CPP, hasArg, "_ZN6RES_3B6hasArgEv");

      procedure setArg (this : access RES_3B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:476
      pragma Import (CPP, setArg, "_ZN6RES_3B6setArgER3ARG");

      function argSize (this : access RES_3B) return int;  -- instruction.hpp:476
      pragma Import (CPP, argSize, "_ZN6RES_3B7argSizeEv");
   end;
   use Class_RES_3B;
   package Class_RES_4B is
      type RES_4B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:477
      end record;
      pragma Import (CPP, RES_4B);

      procedure exec (this : access RES_4B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:477
      pragma Import (CPP, exec, "_ZN6RES_4B4execEP9Processor");

      function toStr (this : access RES_4B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:477
      pragma Import (CPP, toStr, "_ZN6RES_4B5toStrEv");

      function opCode (this : access RES_4B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:477
      pragma Import (CPP, opCode, "_ZN6RES_4B6opCodeEv");

      function nbCycles (this : access RES_4B) return int;  -- instruction.hpp:477
      pragma Import (CPP, nbCycles, "_ZN6RES_4B8nbCyclesEv");

      function hasArg (this : access RES_4B) return Extensions.bool;  -- instruction.hpp:477
      pragma Import (CPP, hasArg, "_ZN6RES_4B6hasArgEv");

      procedure setArg (this : access RES_4B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:477
      pragma Import (CPP, setArg, "_ZN6RES_4B6setArgER3ARG");

      function argSize (this : access RES_4B) return int;  -- instruction.hpp:477
      pragma Import (CPP, argSize, "_ZN6RES_4B7argSizeEv");
   end;
   use Class_RES_4B;
   package Class_RES_5B is
      type RES_5B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:478
      end record;
      pragma Import (CPP, RES_5B);

      procedure exec (this : access RES_5B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:478
      pragma Import (CPP, exec, "_ZN6RES_5B4execEP9Processor");

      function toStr (this : access RES_5B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:478
      pragma Import (CPP, toStr, "_ZN6RES_5B5toStrEv");

      function opCode (this : access RES_5B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:478
      pragma Import (CPP, opCode, "_ZN6RES_5B6opCodeEv");

      function nbCycles (this : access RES_5B) return int;  -- instruction.hpp:478
      pragma Import (CPP, nbCycles, "_ZN6RES_5B8nbCyclesEv");

      function hasArg (this : access RES_5B) return Extensions.bool;  -- instruction.hpp:478
      pragma Import (CPP, hasArg, "_ZN6RES_5B6hasArgEv");

      procedure setArg (this : access RES_5B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:478
      pragma Import (CPP, setArg, "_ZN6RES_5B6setArgER3ARG");

      function argSize (this : access RES_5B) return int;  -- instruction.hpp:478
      pragma Import (CPP, argSize, "_ZN6RES_5B7argSizeEv");
   end;
   use Class_RES_5B;
   package Class_RES_6B is
      type RES_6B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:479
      end record;
      pragma Import (CPP, RES_6B);

      procedure exec (this : access RES_6B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:479
      pragma Import (CPP, exec, "_ZN6RES_6B4execEP9Processor");

      function toStr (this : access RES_6B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:479
      pragma Import (CPP, toStr, "_ZN6RES_6B5toStrEv");

      function opCode (this : access RES_6B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:479
      pragma Import (CPP, opCode, "_ZN6RES_6B6opCodeEv");

      function nbCycles (this : access RES_6B) return int;  -- instruction.hpp:479
      pragma Import (CPP, nbCycles, "_ZN6RES_6B8nbCyclesEv");

      function hasArg (this : access RES_6B) return Extensions.bool;  -- instruction.hpp:479
      pragma Import (CPP, hasArg, "_ZN6RES_6B6hasArgEv");

      procedure setArg (this : access RES_6B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:479
      pragma Import (CPP, setArg, "_ZN6RES_6B6setArgER3ARG");

      function argSize (this : access RES_6B) return int;  -- instruction.hpp:479
      pragma Import (CPP, argSize, "_ZN6RES_6B7argSizeEv");
   end;
   use Class_RES_6B;
   package Class_RES_7B is
      type RES_7B is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:480
      end record;
      pragma Import (CPP, RES_7B);

      procedure exec (this : access RES_7B; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:480
      pragma Import (CPP, exec, "_ZN6RES_7B4execEP9Processor");

      function toStr (this : access RES_7B) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:480
      pragma Import (CPP, toStr, "_ZN6RES_7B5toStrEv");

      function opCode (this : access RES_7B) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:480
      pragma Import (CPP, opCode, "_ZN6RES_7B6opCodeEv");

      function nbCycles (this : access RES_7B) return int;  -- instruction.hpp:480
      pragma Import (CPP, nbCycles, "_ZN6RES_7B8nbCyclesEv");

      function hasArg (this : access RES_7B) return Extensions.bool;  -- instruction.hpp:480
      pragma Import (CPP, hasArg, "_ZN6RES_7B6hasArgEv");

      procedure setArg (this : access RES_7B; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:480
      pragma Import (CPP, setArg, "_ZN6RES_7B6setArgER3ARG");

      function argSize (this : access RES_7B) return int;  -- instruction.hpp:480
      pragma Import (CPP, argSize, "_ZN6RES_7B7argSizeEv");
   end;
   use Class_RES_7B;
   package Class_RES_0C is
      type RES_0C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:482
      end record;
      pragma Import (CPP, RES_0C);

      procedure exec (this : access RES_0C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:482
      pragma Import (CPP, exec, "_ZN6RES_0C4execEP9Processor");

      function toStr (this : access RES_0C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:482
      pragma Import (CPP, toStr, "_ZN6RES_0C5toStrEv");

      function opCode (this : access RES_0C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:482
      pragma Import (CPP, opCode, "_ZN6RES_0C6opCodeEv");

      function nbCycles (this : access RES_0C) return int;  -- instruction.hpp:482
      pragma Import (CPP, nbCycles, "_ZN6RES_0C8nbCyclesEv");

      function hasArg (this : access RES_0C) return Extensions.bool;  -- instruction.hpp:482
      pragma Import (CPP, hasArg, "_ZN6RES_0C6hasArgEv");

      procedure setArg (this : access RES_0C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:482
      pragma Import (CPP, setArg, "_ZN6RES_0C6setArgER3ARG");

      function argSize (this : access RES_0C) return int;  -- instruction.hpp:482
      pragma Import (CPP, argSize, "_ZN6RES_0C7argSizeEv");
   end;
   use Class_RES_0C;
   package Class_RES_1C is
      type RES_1C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:483
      end record;
      pragma Import (CPP, RES_1C);

      procedure exec (this : access RES_1C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:483
      pragma Import (CPP, exec, "_ZN6RES_1C4execEP9Processor");

      function toStr (this : access RES_1C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:483
      pragma Import (CPP, toStr, "_ZN6RES_1C5toStrEv");

      function opCode (this : access RES_1C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:483
      pragma Import (CPP, opCode, "_ZN6RES_1C6opCodeEv");

      function nbCycles (this : access RES_1C) return int;  -- instruction.hpp:483
      pragma Import (CPP, nbCycles, "_ZN6RES_1C8nbCyclesEv");

      function hasArg (this : access RES_1C) return Extensions.bool;  -- instruction.hpp:483
      pragma Import (CPP, hasArg, "_ZN6RES_1C6hasArgEv");

      procedure setArg (this : access RES_1C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:483
      pragma Import (CPP, setArg, "_ZN6RES_1C6setArgER3ARG");

      function argSize (this : access RES_1C) return int;  -- instruction.hpp:483
      pragma Import (CPP, argSize, "_ZN6RES_1C7argSizeEv");
   end;
   use Class_RES_1C;
   package Class_RES_2C is
      type RES_2C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:484
      end record;
      pragma Import (CPP, RES_2C);

      procedure exec (this : access RES_2C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:484
      pragma Import (CPP, exec, "_ZN6RES_2C4execEP9Processor");

      function toStr (this : access RES_2C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:484
      pragma Import (CPP, toStr, "_ZN6RES_2C5toStrEv");

      function opCode (this : access RES_2C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:484
      pragma Import (CPP, opCode, "_ZN6RES_2C6opCodeEv");

      function nbCycles (this : access RES_2C) return int;  -- instruction.hpp:484
      pragma Import (CPP, nbCycles, "_ZN6RES_2C8nbCyclesEv");

      function hasArg (this : access RES_2C) return Extensions.bool;  -- instruction.hpp:484
      pragma Import (CPP, hasArg, "_ZN6RES_2C6hasArgEv");

      procedure setArg (this : access RES_2C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:484
      pragma Import (CPP, setArg, "_ZN6RES_2C6setArgER3ARG");

      function argSize (this : access RES_2C) return int;  -- instruction.hpp:484
      pragma Import (CPP, argSize, "_ZN6RES_2C7argSizeEv");
   end;
   use Class_RES_2C;
   package Class_RES_3C is
      type RES_3C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:485
      end record;
      pragma Import (CPP, RES_3C);

      procedure exec (this : access RES_3C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:485
      pragma Import (CPP, exec, "_ZN6RES_3C4execEP9Processor");

      function toStr (this : access RES_3C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:485
      pragma Import (CPP, toStr, "_ZN6RES_3C5toStrEv");

      function opCode (this : access RES_3C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:485
      pragma Import (CPP, opCode, "_ZN6RES_3C6opCodeEv");

      function nbCycles (this : access RES_3C) return int;  -- instruction.hpp:485
      pragma Import (CPP, nbCycles, "_ZN6RES_3C8nbCyclesEv");

      function hasArg (this : access RES_3C) return Extensions.bool;  -- instruction.hpp:485
      pragma Import (CPP, hasArg, "_ZN6RES_3C6hasArgEv");

      procedure setArg (this : access RES_3C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:485
      pragma Import (CPP, setArg, "_ZN6RES_3C6setArgER3ARG");

      function argSize (this : access RES_3C) return int;  -- instruction.hpp:485
      pragma Import (CPP, argSize, "_ZN6RES_3C7argSizeEv");
   end;
   use Class_RES_3C;
   package Class_RES_4C is
      type RES_4C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:486
      end record;
      pragma Import (CPP, RES_4C);

      procedure exec (this : access RES_4C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:486
      pragma Import (CPP, exec, "_ZN6RES_4C4execEP9Processor");

      function toStr (this : access RES_4C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:486
      pragma Import (CPP, toStr, "_ZN6RES_4C5toStrEv");

      function opCode (this : access RES_4C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:486
      pragma Import (CPP, opCode, "_ZN6RES_4C6opCodeEv");

      function nbCycles (this : access RES_4C) return int;  -- instruction.hpp:486
      pragma Import (CPP, nbCycles, "_ZN6RES_4C8nbCyclesEv");

      function hasArg (this : access RES_4C) return Extensions.bool;  -- instruction.hpp:486
      pragma Import (CPP, hasArg, "_ZN6RES_4C6hasArgEv");

      procedure setArg (this : access RES_4C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:486
      pragma Import (CPP, setArg, "_ZN6RES_4C6setArgER3ARG");

      function argSize (this : access RES_4C) return int;  -- instruction.hpp:486
      pragma Import (CPP, argSize, "_ZN6RES_4C7argSizeEv");
   end;
   use Class_RES_4C;
   package Class_RES_5C is
      type RES_5C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:487
      end record;
      pragma Import (CPP, RES_5C);

      procedure exec (this : access RES_5C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:487
      pragma Import (CPP, exec, "_ZN6RES_5C4execEP9Processor");

      function toStr (this : access RES_5C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:487
      pragma Import (CPP, toStr, "_ZN6RES_5C5toStrEv");

      function opCode (this : access RES_5C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:487
      pragma Import (CPP, opCode, "_ZN6RES_5C6opCodeEv");

      function nbCycles (this : access RES_5C) return int;  -- instruction.hpp:487
      pragma Import (CPP, nbCycles, "_ZN6RES_5C8nbCyclesEv");

      function hasArg (this : access RES_5C) return Extensions.bool;  -- instruction.hpp:487
      pragma Import (CPP, hasArg, "_ZN6RES_5C6hasArgEv");

      procedure setArg (this : access RES_5C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:487
      pragma Import (CPP, setArg, "_ZN6RES_5C6setArgER3ARG");

      function argSize (this : access RES_5C) return int;  -- instruction.hpp:487
      pragma Import (CPP, argSize, "_ZN6RES_5C7argSizeEv");
   end;
   use Class_RES_5C;
   package Class_RES_6C is
      type RES_6C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:488
      end record;
      pragma Import (CPP, RES_6C);

      procedure exec (this : access RES_6C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:488
      pragma Import (CPP, exec, "_ZN6RES_6C4execEP9Processor");

      function toStr (this : access RES_6C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:488
      pragma Import (CPP, toStr, "_ZN6RES_6C5toStrEv");

      function opCode (this : access RES_6C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:488
      pragma Import (CPP, opCode, "_ZN6RES_6C6opCodeEv");

      function nbCycles (this : access RES_6C) return int;  -- instruction.hpp:488
      pragma Import (CPP, nbCycles, "_ZN6RES_6C8nbCyclesEv");

      function hasArg (this : access RES_6C) return Extensions.bool;  -- instruction.hpp:488
      pragma Import (CPP, hasArg, "_ZN6RES_6C6hasArgEv");

      procedure setArg (this : access RES_6C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:488
      pragma Import (CPP, setArg, "_ZN6RES_6C6setArgER3ARG");

      function argSize (this : access RES_6C) return int;  -- instruction.hpp:488
      pragma Import (CPP, argSize, "_ZN6RES_6C7argSizeEv");
   end;
   use Class_RES_6C;
   package Class_RES_7C is
      type RES_7C is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:489
      end record;
      pragma Import (CPP, RES_7C);

      procedure exec (this : access RES_7C; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:489
      pragma Import (CPP, exec, "_ZN6RES_7C4execEP9Processor");

      function toStr (this : access RES_7C) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:489
      pragma Import (CPP, toStr, "_ZN6RES_7C5toStrEv");

      function opCode (this : access RES_7C) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:489
      pragma Import (CPP, opCode, "_ZN6RES_7C6opCodeEv");

      function nbCycles (this : access RES_7C) return int;  -- instruction.hpp:489
      pragma Import (CPP, nbCycles, "_ZN6RES_7C8nbCyclesEv");

      function hasArg (this : access RES_7C) return Extensions.bool;  -- instruction.hpp:489
      pragma Import (CPP, hasArg, "_ZN6RES_7C6hasArgEv");

      procedure setArg (this : access RES_7C; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:489
      pragma Import (CPP, setArg, "_ZN6RES_7C6setArgER3ARG");

      function argSize (this : access RES_7C) return int;  -- instruction.hpp:489
      pragma Import (CPP, argSize, "_ZN6RES_7C7argSizeEv");
   end;
   use Class_RES_7C;
   package Class_RES_0D is
      type RES_0D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:491
      end record;
      pragma Import (CPP, RES_0D);

      procedure exec (this : access RES_0D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:491
      pragma Import (CPP, exec, "_ZN6RES_0D4execEP9Processor");

      function toStr (this : access RES_0D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:491
      pragma Import (CPP, toStr, "_ZN6RES_0D5toStrEv");

      function opCode (this : access RES_0D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:491
      pragma Import (CPP, opCode, "_ZN6RES_0D6opCodeEv");

      function nbCycles (this : access RES_0D) return int;  -- instruction.hpp:491
      pragma Import (CPP, nbCycles, "_ZN6RES_0D8nbCyclesEv");

      function hasArg (this : access RES_0D) return Extensions.bool;  -- instruction.hpp:491
      pragma Import (CPP, hasArg, "_ZN6RES_0D6hasArgEv");

      procedure setArg (this : access RES_0D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:491
      pragma Import (CPP, setArg, "_ZN6RES_0D6setArgER3ARG");

      function argSize (this : access RES_0D) return int;  -- instruction.hpp:491
      pragma Import (CPP, argSize, "_ZN6RES_0D7argSizeEv");
   end;
   use Class_RES_0D;
   package Class_RES_1D is
      type RES_1D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:492
      end record;
      pragma Import (CPP, RES_1D);

      procedure exec (this : access RES_1D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:492
      pragma Import (CPP, exec, "_ZN6RES_1D4execEP9Processor");

      function toStr (this : access RES_1D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:492
      pragma Import (CPP, toStr, "_ZN6RES_1D5toStrEv");

      function opCode (this : access RES_1D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:492
      pragma Import (CPP, opCode, "_ZN6RES_1D6opCodeEv");

      function nbCycles (this : access RES_1D) return int;  -- instruction.hpp:492
      pragma Import (CPP, nbCycles, "_ZN6RES_1D8nbCyclesEv");

      function hasArg (this : access RES_1D) return Extensions.bool;  -- instruction.hpp:492
      pragma Import (CPP, hasArg, "_ZN6RES_1D6hasArgEv");

      procedure setArg (this : access RES_1D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:492
      pragma Import (CPP, setArg, "_ZN6RES_1D6setArgER3ARG");

      function argSize (this : access RES_1D) return int;  -- instruction.hpp:492
      pragma Import (CPP, argSize, "_ZN6RES_1D7argSizeEv");
   end;
   use Class_RES_1D;
   package Class_RES_2D is
      type RES_2D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:493
      end record;
      pragma Import (CPP, RES_2D);

      procedure exec (this : access RES_2D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:493
      pragma Import (CPP, exec, "_ZN6RES_2D4execEP9Processor");

      function toStr (this : access RES_2D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:493
      pragma Import (CPP, toStr, "_ZN6RES_2D5toStrEv");

      function opCode (this : access RES_2D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:493
      pragma Import (CPP, opCode, "_ZN6RES_2D6opCodeEv");

      function nbCycles (this : access RES_2D) return int;  -- instruction.hpp:493
      pragma Import (CPP, nbCycles, "_ZN6RES_2D8nbCyclesEv");

      function hasArg (this : access RES_2D) return Extensions.bool;  -- instruction.hpp:493
      pragma Import (CPP, hasArg, "_ZN6RES_2D6hasArgEv");

      procedure setArg (this : access RES_2D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:493
      pragma Import (CPP, setArg, "_ZN6RES_2D6setArgER3ARG");

      function argSize (this : access RES_2D) return int;  -- instruction.hpp:493
      pragma Import (CPP, argSize, "_ZN6RES_2D7argSizeEv");
   end;
   use Class_RES_2D;
   package Class_RES_3D is
      type RES_3D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:494
      end record;
      pragma Import (CPP, RES_3D);

      procedure exec (this : access RES_3D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:494
      pragma Import (CPP, exec, "_ZN6RES_3D4execEP9Processor");

      function toStr (this : access RES_3D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:494
      pragma Import (CPP, toStr, "_ZN6RES_3D5toStrEv");

      function opCode (this : access RES_3D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:494
      pragma Import (CPP, opCode, "_ZN6RES_3D6opCodeEv");

      function nbCycles (this : access RES_3D) return int;  -- instruction.hpp:494
      pragma Import (CPP, nbCycles, "_ZN6RES_3D8nbCyclesEv");

      function hasArg (this : access RES_3D) return Extensions.bool;  -- instruction.hpp:494
      pragma Import (CPP, hasArg, "_ZN6RES_3D6hasArgEv");

      procedure setArg (this : access RES_3D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:494
      pragma Import (CPP, setArg, "_ZN6RES_3D6setArgER3ARG");

      function argSize (this : access RES_3D) return int;  -- instruction.hpp:494
      pragma Import (CPP, argSize, "_ZN6RES_3D7argSizeEv");
   end;
   use Class_RES_3D;
   package Class_RES_4D is
      type RES_4D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:495
      end record;
      pragma Import (CPP, RES_4D);

      procedure exec (this : access RES_4D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:495
      pragma Import (CPP, exec, "_ZN6RES_4D4execEP9Processor");

      function toStr (this : access RES_4D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:495
      pragma Import (CPP, toStr, "_ZN6RES_4D5toStrEv");

      function opCode (this : access RES_4D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:495
      pragma Import (CPP, opCode, "_ZN6RES_4D6opCodeEv");

      function nbCycles (this : access RES_4D) return int;  -- instruction.hpp:495
      pragma Import (CPP, nbCycles, "_ZN6RES_4D8nbCyclesEv");

      function hasArg (this : access RES_4D) return Extensions.bool;  -- instruction.hpp:495
      pragma Import (CPP, hasArg, "_ZN6RES_4D6hasArgEv");

      procedure setArg (this : access RES_4D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:495
      pragma Import (CPP, setArg, "_ZN6RES_4D6setArgER3ARG");

      function argSize (this : access RES_4D) return int;  -- instruction.hpp:495
      pragma Import (CPP, argSize, "_ZN6RES_4D7argSizeEv");
   end;
   use Class_RES_4D;
   package Class_RES_5D is
      type RES_5D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:496
      end record;
      pragma Import (CPP, RES_5D);

      procedure exec (this : access RES_5D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:496
      pragma Import (CPP, exec, "_ZN6RES_5D4execEP9Processor");

      function toStr (this : access RES_5D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:496
      pragma Import (CPP, toStr, "_ZN6RES_5D5toStrEv");

      function opCode (this : access RES_5D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:496
      pragma Import (CPP, opCode, "_ZN6RES_5D6opCodeEv");

      function nbCycles (this : access RES_5D) return int;  -- instruction.hpp:496
      pragma Import (CPP, nbCycles, "_ZN6RES_5D8nbCyclesEv");

      function hasArg (this : access RES_5D) return Extensions.bool;  -- instruction.hpp:496
      pragma Import (CPP, hasArg, "_ZN6RES_5D6hasArgEv");

      procedure setArg (this : access RES_5D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:496
      pragma Import (CPP, setArg, "_ZN6RES_5D6setArgER3ARG");

      function argSize (this : access RES_5D) return int;  -- instruction.hpp:496
      pragma Import (CPP, argSize, "_ZN6RES_5D7argSizeEv");
   end;
   use Class_RES_5D;
   package Class_RES_6D is
      type RES_6D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:497
      end record;
      pragma Import (CPP, RES_6D);

      procedure exec (this : access RES_6D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:497
      pragma Import (CPP, exec, "_ZN6RES_6D4execEP9Processor");

      function toStr (this : access RES_6D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:497
      pragma Import (CPP, toStr, "_ZN6RES_6D5toStrEv");

      function opCode (this : access RES_6D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:497
      pragma Import (CPP, opCode, "_ZN6RES_6D6opCodeEv");

      function nbCycles (this : access RES_6D) return int;  -- instruction.hpp:497
      pragma Import (CPP, nbCycles, "_ZN6RES_6D8nbCyclesEv");

      function hasArg (this : access RES_6D) return Extensions.bool;  -- instruction.hpp:497
      pragma Import (CPP, hasArg, "_ZN6RES_6D6hasArgEv");

      procedure setArg (this : access RES_6D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:497
      pragma Import (CPP, setArg, "_ZN6RES_6D6setArgER3ARG");

      function argSize (this : access RES_6D) return int;  -- instruction.hpp:497
      pragma Import (CPP, argSize, "_ZN6RES_6D7argSizeEv");
   end;
   use Class_RES_6D;
   package Class_RES_7D is
      type RES_7D is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:498
      end record;
      pragma Import (CPP, RES_7D);

      procedure exec (this : access RES_7D; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:498
      pragma Import (CPP, exec, "_ZN6RES_7D4execEP9Processor");

      function toStr (this : access RES_7D) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:498
      pragma Import (CPP, toStr, "_ZN6RES_7D5toStrEv");

      function opCode (this : access RES_7D) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:498
      pragma Import (CPP, opCode, "_ZN6RES_7D6opCodeEv");

      function nbCycles (this : access RES_7D) return int;  -- instruction.hpp:498
      pragma Import (CPP, nbCycles, "_ZN6RES_7D8nbCyclesEv");

      function hasArg (this : access RES_7D) return Extensions.bool;  -- instruction.hpp:498
      pragma Import (CPP, hasArg, "_ZN6RES_7D6hasArgEv");

      procedure setArg (this : access RES_7D; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:498
      pragma Import (CPP, setArg, "_ZN6RES_7D6setArgER3ARG");

      function argSize (this : access RES_7D) return int;  -- instruction.hpp:498
      pragma Import (CPP, argSize, "_ZN6RES_7D7argSizeEv");
   end;
   use Class_RES_7D;
   package Class_RES_0E is
      type RES_0E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:500
      end record;
      pragma Import (CPP, RES_0E);

      procedure exec (this : access RES_0E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:500
      pragma Import (CPP, exec, "_ZN6RES_0E4execEP9Processor");

      function toStr (this : access RES_0E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:500
      pragma Import (CPP, toStr, "_ZN6RES_0E5toStrEv");

      function opCode (this : access RES_0E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:500
      pragma Import (CPP, opCode, "_ZN6RES_0E6opCodeEv");

      function nbCycles (this : access RES_0E) return int;  -- instruction.hpp:500
      pragma Import (CPP, nbCycles, "_ZN6RES_0E8nbCyclesEv");

      function hasArg (this : access RES_0E) return Extensions.bool;  -- instruction.hpp:500
      pragma Import (CPP, hasArg, "_ZN6RES_0E6hasArgEv");

      procedure setArg (this : access RES_0E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:500
      pragma Import (CPP, setArg, "_ZN6RES_0E6setArgER3ARG");

      function argSize (this : access RES_0E) return int;  -- instruction.hpp:500
      pragma Import (CPP, argSize, "_ZN6RES_0E7argSizeEv");
   end;
   use Class_RES_0E;
   package Class_RES_1E is
      type RES_1E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:501
      end record;
      pragma Import (CPP, RES_1E);

      procedure exec (this : access RES_1E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:501
      pragma Import (CPP, exec, "_ZN6RES_1E4execEP9Processor");

      function toStr (this : access RES_1E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:501
      pragma Import (CPP, toStr, "_ZN6RES_1E5toStrEv");

      function opCode (this : access RES_1E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:501
      pragma Import (CPP, opCode, "_ZN6RES_1E6opCodeEv");

      function nbCycles (this : access RES_1E) return int;  -- instruction.hpp:501
      pragma Import (CPP, nbCycles, "_ZN6RES_1E8nbCyclesEv");

      function hasArg (this : access RES_1E) return Extensions.bool;  -- instruction.hpp:501
      pragma Import (CPP, hasArg, "_ZN6RES_1E6hasArgEv");

      procedure setArg (this : access RES_1E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:501
      pragma Import (CPP, setArg, "_ZN6RES_1E6setArgER3ARG");

      function argSize (this : access RES_1E) return int;  -- instruction.hpp:501
      pragma Import (CPP, argSize, "_ZN6RES_1E7argSizeEv");
   end;
   use Class_RES_1E;
   package Class_RES_2E is
      type RES_2E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:502
      end record;
      pragma Import (CPP, RES_2E);

      procedure exec (this : access RES_2E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:502
      pragma Import (CPP, exec, "_ZN6RES_2E4execEP9Processor");

      function toStr (this : access RES_2E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:502
      pragma Import (CPP, toStr, "_ZN6RES_2E5toStrEv");

      function opCode (this : access RES_2E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:502
      pragma Import (CPP, opCode, "_ZN6RES_2E6opCodeEv");

      function nbCycles (this : access RES_2E) return int;  -- instruction.hpp:502
      pragma Import (CPP, nbCycles, "_ZN6RES_2E8nbCyclesEv");

      function hasArg (this : access RES_2E) return Extensions.bool;  -- instruction.hpp:502
      pragma Import (CPP, hasArg, "_ZN6RES_2E6hasArgEv");

      procedure setArg (this : access RES_2E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:502
      pragma Import (CPP, setArg, "_ZN6RES_2E6setArgER3ARG");

      function argSize (this : access RES_2E) return int;  -- instruction.hpp:502
      pragma Import (CPP, argSize, "_ZN6RES_2E7argSizeEv");
   end;
   use Class_RES_2E;
   package Class_RES_3E is
      type RES_3E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:503
      end record;
      pragma Import (CPP, RES_3E);

      procedure exec (this : access RES_3E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:503
      pragma Import (CPP, exec, "_ZN6RES_3E4execEP9Processor");

      function toStr (this : access RES_3E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:503
      pragma Import (CPP, toStr, "_ZN6RES_3E5toStrEv");

      function opCode (this : access RES_3E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:503
      pragma Import (CPP, opCode, "_ZN6RES_3E6opCodeEv");

      function nbCycles (this : access RES_3E) return int;  -- instruction.hpp:503
      pragma Import (CPP, nbCycles, "_ZN6RES_3E8nbCyclesEv");

      function hasArg (this : access RES_3E) return Extensions.bool;  -- instruction.hpp:503
      pragma Import (CPP, hasArg, "_ZN6RES_3E6hasArgEv");

      procedure setArg (this : access RES_3E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:503
      pragma Import (CPP, setArg, "_ZN6RES_3E6setArgER3ARG");

      function argSize (this : access RES_3E) return int;  -- instruction.hpp:503
      pragma Import (CPP, argSize, "_ZN6RES_3E7argSizeEv");
   end;
   use Class_RES_3E;
   package Class_RES_4E is
      type RES_4E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:504
      end record;
      pragma Import (CPP, RES_4E);

      procedure exec (this : access RES_4E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:504
      pragma Import (CPP, exec, "_ZN6RES_4E4execEP9Processor");

      function toStr (this : access RES_4E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:504
      pragma Import (CPP, toStr, "_ZN6RES_4E5toStrEv");

      function opCode (this : access RES_4E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:504
      pragma Import (CPP, opCode, "_ZN6RES_4E6opCodeEv");

      function nbCycles (this : access RES_4E) return int;  -- instruction.hpp:504
      pragma Import (CPP, nbCycles, "_ZN6RES_4E8nbCyclesEv");

      function hasArg (this : access RES_4E) return Extensions.bool;  -- instruction.hpp:504
      pragma Import (CPP, hasArg, "_ZN6RES_4E6hasArgEv");

      procedure setArg (this : access RES_4E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:504
      pragma Import (CPP, setArg, "_ZN6RES_4E6setArgER3ARG");

      function argSize (this : access RES_4E) return int;  -- instruction.hpp:504
      pragma Import (CPP, argSize, "_ZN6RES_4E7argSizeEv");
   end;
   use Class_RES_4E;
   package Class_RES_5E is
      type RES_5E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:505
      end record;
      pragma Import (CPP, RES_5E);

      procedure exec (this : access RES_5E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:505
      pragma Import (CPP, exec, "_ZN6RES_5E4execEP9Processor");

      function toStr (this : access RES_5E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:505
      pragma Import (CPP, toStr, "_ZN6RES_5E5toStrEv");

      function opCode (this : access RES_5E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:505
      pragma Import (CPP, opCode, "_ZN6RES_5E6opCodeEv");

      function nbCycles (this : access RES_5E) return int;  -- instruction.hpp:505
      pragma Import (CPP, nbCycles, "_ZN6RES_5E8nbCyclesEv");

      function hasArg (this : access RES_5E) return Extensions.bool;  -- instruction.hpp:505
      pragma Import (CPP, hasArg, "_ZN6RES_5E6hasArgEv");

      procedure setArg (this : access RES_5E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:505
      pragma Import (CPP, setArg, "_ZN6RES_5E6setArgER3ARG");

      function argSize (this : access RES_5E) return int;  -- instruction.hpp:505
      pragma Import (CPP, argSize, "_ZN6RES_5E7argSizeEv");
   end;
   use Class_RES_5E;
   package Class_RES_6E is
      type RES_6E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:506
      end record;
      pragma Import (CPP, RES_6E);

      procedure exec (this : access RES_6E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:506
      pragma Import (CPP, exec, "_ZN6RES_6E4execEP9Processor");

      function toStr (this : access RES_6E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:506
      pragma Import (CPP, toStr, "_ZN6RES_6E5toStrEv");

      function opCode (this : access RES_6E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:506
      pragma Import (CPP, opCode, "_ZN6RES_6E6opCodeEv");

      function nbCycles (this : access RES_6E) return int;  -- instruction.hpp:506
      pragma Import (CPP, nbCycles, "_ZN6RES_6E8nbCyclesEv");

      function hasArg (this : access RES_6E) return Extensions.bool;  -- instruction.hpp:506
      pragma Import (CPP, hasArg, "_ZN6RES_6E6hasArgEv");

      procedure setArg (this : access RES_6E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:506
      pragma Import (CPP, setArg, "_ZN6RES_6E6setArgER3ARG");

      function argSize (this : access RES_6E) return int;  -- instruction.hpp:506
      pragma Import (CPP, argSize, "_ZN6RES_6E7argSizeEv");
   end;
   use Class_RES_6E;
   package Class_RES_7E is
      type RES_7E is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:507
      end record;
      pragma Import (CPP, RES_7E);

      procedure exec (this : access RES_7E; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:507
      pragma Import (CPP, exec, "_ZN6RES_7E4execEP9Processor");

      function toStr (this : access RES_7E) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:507
      pragma Import (CPP, toStr, "_ZN6RES_7E5toStrEv");

      function opCode (this : access RES_7E) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:507
      pragma Import (CPP, opCode, "_ZN6RES_7E6opCodeEv");

      function nbCycles (this : access RES_7E) return int;  -- instruction.hpp:507
      pragma Import (CPP, nbCycles, "_ZN6RES_7E8nbCyclesEv");

      function hasArg (this : access RES_7E) return Extensions.bool;  -- instruction.hpp:507
      pragma Import (CPP, hasArg, "_ZN6RES_7E6hasArgEv");

      procedure setArg (this : access RES_7E; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:507
      pragma Import (CPP, setArg, "_ZN6RES_7E6setArgER3ARG");

      function argSize (this : access RES_7E) return int;  -- instruction.hpp:507
      pragma Import (CPP, argSize, "_ZN6RES_7E7argSizeEv");
   end;
   use Class_RES_7E;
   package Class_RES_0H is
      type RES_0H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:509
      end record;
      pragma Import (CPP, RES_0H);

      procedure exec (this : access RES_0H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:509
      pragma Import (CPP, exec, "_ZN6RES_0H4execEP9Processor");

      function toStr (this : access RES_0H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:509
      pragma Import (CPP, toStr, "_ZN6RES_0H5toStrEv");

      function opCode (this : access RES_0H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:509
      pragma Import (CPP, opCode, "_ZN6RES_0H6opCodeEv");

      function nbCycles (this : access RES_0H) return int;  -- instruction.hpp:509
      pragma Import (CPP, nbCycles, "_ZN6RES_0H8nbCyclesEv");

      function hasArg (this : access RES_0H) return Extensions.bool;  -- instruction.hpp:509
      pragma Import (CPP, hasArg, "_ZN6RES_0H6hasArgEv");

      procedure setArg (this : access RES_0H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:509
      pragma Import (CPP, setArg, "_ZN6RES_0H6setArgER3ARG");

      function argSize (this : access RES_0H) return int;  -- instruction.hpp:509
      pragma Import (CPP, argSize, "_ZN6RES_0H7argSizeEv");
   end;
   use Class_RES_0H;
   package Class_RES_1H is
      type RES_1H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:510
      end record;
      pragma Import (CPP, RES_1H);

      procedure exec (this : access RES_1H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:510
      pragma Import (CPP, exec, "_ZN6RES_1H4execEP9Processor");

      function toStr (this : access RES_1H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:510
      pragma Import (CPP, toStr, "_ZN6RES_1H5toStrEv");

      function opCode (this : access RES_1H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:510
      pragma Import (CPP, opCode, "_ZN6RES_1H6opCodeEv");

      function nbCycles (this : access RES_1H) return int;  -- instruction.hpp:510
      pragma Import (CPP, nbCycles, "_ZN6RES_1H8nbCyclesEv");

      function hasArg (this : access RES_1H) return Extensions.bool;  -- instruction.hpp:510
      pragma Import (CPP, hasArg, "_ZN6RES_1H6hasArgEv");

      procedure setArg (this : access RES_1H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:510
      pragma Import (CPP, setArg, "_ZN6RES_1H6setArgER3ARG");

      function argSize (this : access RES_1H) return int;  -- instruction.hpp:510
      pragma Import (CPP, argSize, "_ZN6RES_1H7argSizeEv");
   end;
   use Class_RES_1H;
   package Class_RES_2H is
      type RES_2H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:511
      end record;
      pragma Import (CPP, RES_2H);

      procedure exec (this : access RES_2H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:511
      pragma Import (CPP, exec, "_ZN6RES_2H4execEP9Processor");

      function toStr (this : access RES_2H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:511
      pragma Import (CPP, toStr, "_ZN6RES_2H5toStrEv");

      function opCode (this : access RES_2H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:511
      pragma Import (CPP, opCode, "_ZN6RES_2H6opCodeEv");

      function nbCycles (this : access RES_2H) return int;  -- instruction.hpp:511
      pragma Import (CPP, nbCycles, "_ZN6RES_2H8nbCyclesEv");

      function hasArg (this : access RES_2H) return Extensions.bool;  -- instruction.hpp:511
      pragma Import (CPP, hasArg, "_ZN6RES_2H6hasArgEv");

      procedure setArg (this : access RES_2H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:511
      pragma Import (CPP, setArg, "_ZN6RES_2H6setArgER3ARG");

      function argSize (this : access RES_2H) return int;  -- instruction.hpp:511
      pragma Import (CPP, argSize, "_ZN6RES_2H7argSizeEv");
   end;
   use Class_RES_2H;
   package Class_RES_3H is
      type RES_3H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:512
      end record;
      pragma Import (CPP, RES_3H);

      procedure exec (this : access RES_3H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:512
      pragma Import (CPP, exec, "_ZN6RES_3H4execEP9Processor");

      function toStr (this : access RES_3H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:512
      pragma Import (CPP, toStr, "_ZN6RES_3H5toStrEv");

      function opCode (this : access RES_3H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:512
      pragma Import (CPP, opCode, "_ZN6RES_3H6opCodeEv");

      function nbCycles (this : access RES_3H) return int;  -- instruction.hpp:512
      pragma Import (CPP, nbCycles, "_ZN6RES_3H8nbCyclesEv");

      function hasArg (this : access RES_3H) return Extensions.bool;  -- instruction.hpp:512
      pragma Import (CPP, hasArg, "_ZN6RES_3H6hasArgEv");

      procedure setArg (this : access RES_3H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:512
      pragma Import (CPP, setArg, "_ZN6RES_3H6setArgER3ARG");

      function argSize (this : access RES_3H) return int;  -- instruction.hpp:512
      pragma Import (CPP, argSize, "_ZN6RES_3H7argSizeEv");
   end;
   use Class_RES_3H;
   package Class_RES_4H is
      type RES_4H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:513
      end record;
      pragma Import (CPP, RES_4H);

      procedure exec (this : access RES_4H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:513
      pragma Import (CPP, exec, "_ZN6RES_4H4execEP9Processor");

      function toStr (this : access RES_4H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:513
      pragma Import (CPP, toStr, "_ZN6RES_4H5toStrEv");

      function opCode (this : access RES_4H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:513
      pragma Import (CPP, opCode, "_ZN6RES_4H6opCodeEv");

      function nbCycles (this : access RES_4H) return int;  -- instruction.hpp:513
      pragma Import (CPP, nbCycles, "_ZN6RES_4H8nbCyclesEv");

      function hasArg (this : access RES_4H) return Extensions.bool;  -- instruction.hpp:513
      pragma Import (CPP, hasArg, "_ZN6RES_4H6hasArgEv");

      procedure setArg (this : access RES_4H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:513
      pragma Import (CPP, setArg, "_ZN6RES_4H6setArgER3ARG");

      function argSize (this : access RES_4H) return int;  -- instruction.hpp:513
      pragma Import (CPP, argSize, "_ZN6RES_4H7argSizeEv");
   end;
   use Class_RES_4H;
   package Class_RES_5H is
      type RES_5H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:514
      end record;
      pragma Import (CPP, RES_5H);

      procedure exec (this : access RES_5H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:514
      pragma Import (CPP, exec, "_ZN6RES_5H4execEP9Processor");

      function toStr (this : access RES_5H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:514
      pragma Import (CPP, toStr, "_ZN6RES_5H5toStrEv");

      function opCode (this : access RES_5H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:514
      pragma Import (CPP, opCode, "_ZN6RES_5H6opCodeEv");

      function nbCycles (this : access RES_5H) return int;  -- instruction.hpp:514
      pragma Import (CPP, nbCycles, "_ZN6RES_5H8nbCyclesEv");

      function hasArg (this : access RES_5H) return Extensions.bool;  -- instruction.hpp:514
      pragma Import (CPP, hasArg, "_ZN6RES_5H6hasArgEv");

      procedure setArg (this : access RES_5H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:514
      pragma Import (CPP, setArg, "_ZN6RES_5H6setArgER3ARG");

      function argSize (this : access RES_5H) return int;  -- instruction.hpp:514
      pragma Import (CPP, argSize, "_ZN6RES_5H7argSizeEv");
   end;
   use Class_RES_5H;
   package Class_RES_6H is
      type RES_6H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:515
      end record;
      pragma Import (CPP, RES_6H);

      procedure exec (this : access RES_6H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:515
      pragma Import (CPP, exec, "_ZN6RES_6H4execEP9Processor");

      function toStr (this : access RES_6H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:515
      pragma Import (CPP, toStr, "_ZN6RES_6H5toStrEv");

      function opCode (this : access RES_6H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:515
      pragma Import (CPP, opCode, "_ZN6RES_6H6opCodeEv");

      function nbCycles (this : access RES_6H) return int;  -- instruction.hpp:515
      pragma Import (CPP, nbCycles, "_ZN6RES_6H8nbCyclesEv");

      function hasArg (this : access RES_6H) return Extensions.bool;  -- instruction.hpp:515
      pragma Import (CPP, hasArg, "_ZN6RES_6H6hasArgEv");

      procedure setArg (this : access RES_6H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:515
      pragma Import (CPP, setArg, "_ZN6RES_6H6setArgER3ARG");

      function argSize (this : access RES_6H) return int;  -- instruction.hpp:515
      pragma Import (CPP, argSize, "_ZN6RES_6H7argSizeEv");
   end;
   use Class_RES_6H;
   package Class_RES_7H is
      type RES_7H is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:516
      end record;
      pragma Import (CPP, RES_7H);

      procedure exec (this : access RES_7H; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:516
      pragma Import (CPP, exec, "_ZN6RES_7H4execEP9Processor");

      function toStr (this : access RES_7H) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:516
      pragma Import (CPP, toStr, "_ZN6RES_7H5toStrEv");

      function opCode (this : access RES_7H) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:516
      pragma Import (CPP, opCode, "_ZN6RES_7H6opCodeEv");

      function nbCycles (this : access RES_7H) return int;  -- instruction.hpp:516
      pragma Import (CPP, nbCycles, "_ZN6RES_7H8nbCyclesEv");

      function hasArg (this : access RES_7H) return Extensions.bool;  -- instruction.hpp:516
      pragma Import (CPP, hasArg, "_ZN6RES_7H6hasArgEv");

      procedure setArg (this : access RES_7H; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:516
      pragma Import (CPP, setArg, "_ZN6RES_7H6setArgER3ARG");

      function argSize (this : access RES_7H) return int;  -- instruction.hpp:516
      pragma Import (CPP, argSize, "_ZN6RES_7H7argSizeEv");
   end;
   use Class_RES_7H;
   package Class_RES_0L is
      type RES_0L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:518
      end record;
      pragma Import (CPP, RES_0L);

      procedure exec (this : access RES_0L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:518
      pragma Import (CPP, exec, "_ZN6RES_0L4execEP9Processor");

      function toStr (this : access RES_0L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:518
      pragma Import (CPP, toStr, "_ZN6RES_0L5toStrEv");

      function opCode (this : access RES_0L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:518
      pragma Import (CPP, opCode, "_ZN6RES_0L6opCodeEv");

      function nbCycles (this : access RES_0L) return int;  -- instruction.hpp:518
      pragma Import (CPP, nbCycles, "_ZN6RES_0L8nbCyclesEv");

      function hasArg (this : access RES_0L) return Extensions.bool;  -- instruction.hpp:518
      pragma Import (CPP, hasArg, "_ZN6RES_0L6hasArgEv");

      procedure setArg (this : access RES_0L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:518
      pragma Import (CPP, setArg, "_ZN6RES_0L6setArgER3ARG");

      function argSize (this : access RES_0L) return int;  -- instruction.hpp:518
      pragma Import (CPP, argSize, "_ZN6RES_0L7argSizeEv");
   end;
   use Class_RES_0L;
   package Class_RES_1L is
      type RES_1L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:519
      end record;
      pragma Import (CPP, RES_1L);

      procedure exec (this : access RES_1L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:519
      pragma Import (CPP, exec, "_ZN6RES_1L4execEP9Processor");

      function toStr (this : access RES_1L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:519
      pragma Import (CPP, toStr, "_ZN6RES_1L5toStrEv");

      function opCode (this : access RES_1L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:519
      pragma Import (CPP, opCode, "_ZN6RES_1L6opCodeEv");

      function nbCycles (this : access RES_1L) return int;  -- instruction.hpp:519
      pragma Import (CPP, nbCycles, "_ZN6RES_1L8nbCyclesEv");

      function hasArg (this : access RES_1L) return Extensions.bool;  -- instruction.hpp:519
      pragma Import (CPP, hasArg, "_ZN6RES_1L6hasArgEv");

      procedure setArg (this : access RES_1L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:519
      pragma Import (CPP, setArg, "_ZN6RES_1L6setArgER3ARG");

      function argSize (this : access RES_1L) return int;  -- instruction.hpp:519
      pragma Import (CPP, argSize, "_ZN6RES_1L7argSizeEv");
   end;
   use Class_RES_1L;
   package Class_RES_2L is
      type RES_2L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:520
      end record;
      pragma Import (CPP, RES_2L);

      procedure exec (this : access RES_2L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:520
      pragma Import (CPP, exec, "_ZN6RES_2L4execEP9Processor");

      function toStr (this : access RES_2L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:520
      pragma Import (CPP, toStr, "_ZN6RES_2L5toStrEv");

      function opCode (this : access RES_2L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:520
      pragma Import (CPP, opCode, "_ZN6RES_2L6opCodeEv");

      function nbCycles (this : access RES_2L) return int;  -- instruction.hpp:520
      pragma Import (CPP, nbCycles, "_ZN6RES_2L8nbCyclesEv");

      function hasArg (this : access RES_2L) return Extensions.bool;  -- instruction.hpp:520
      pragma Import (CPP, hasArg, "_ZN6RES_2L6hasArgEv");

      procedure setArg (this : access RES_2L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:520
      pragma Import (CPP, setArg, "_ZN6RES_2L6setArgER3ARG");

      function argSize (this : access RES_2L) return int;  -- instruction.hpp:520
      pragma Import (CPP, argSize, "_ZN6RES_2L7argSizeEv");
   end;
   use Class_RES_2L;
   package Class_RES_3L is
      type RES_3L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:521
      end record;
      pragma Import (CPP, RES_3L);

      procedure exec (this : access RES_3L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:521
      pragma Import (CPP, exec, "_ZN6RES_3L4execEP9Processor");

      function toStr (this : access RES_3L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:521
      pragma Import (CPP, toStr, "_ZN6RES_3L5toStrEv");

      function opCode (this : access RES_3L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:521
      pragma Import (CPP, opCode, "_ZN6RES_3L6opCodeEv");

      function nbCycles (this : access RES_3L) return int;  -- instruction.hpp:521
      pragma Import (CPP, nbCycles, "_ZN6RES_3L8nbCyclesEv");

      function hasArg (this : access RES_3L) return Extensions.bool;  -- instruction.hpp:521
      pragma Import (CPP, hasArg, "_ZN6RES_3L6hasArgEv");

      procedure setArg (this : access RES_3L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:521
      pragma Import (CPP, setArg, "_ZN6RES_3L6setArgER3ARG");

      function argSize (this : access RES_3L) return int;  -- instruction.hpp:521
      pragma Import (CPP, argSize, "_ZN6RES_3L7argSizeEv");
   end;
   use Class_RES_3L;
   package Class_RES_4L is
      type RES_4L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:522
      end record;
      pragma Import (CPP, RES_4L);

      procedure exec (this : access RES_4L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:522
      pragma Import (CPP, exec, "_ZN6RES_4L4execEP9Processor");

      function toStr (this : access RES_4L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:522
      pragma Import (CPP, toStr, "_ZN6RES_4L5toStrEv");

      function opCode (this : access RES_4L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:522
      pragma Import (CPP, opCode, "_ZN6RES_4L6opCodeEv");

      function nbCycles (this : access RES_4L) return int;  -- instruction.hpp:522
      pragma Import (CPP, nbCycles, "_ZN6RES_4L8nbCyclesEv");

      function hasArg (this : access RES_4L) return Extensions.bool;  -- instruction.hpp:522
      pragma Import (CPP, hasArg, "_ZN6RES_4L6hasArgEv");

      procedure setArg (this : access RES_4L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:522
      pragma Import (CPP, setArg, "_ZN6RES_4L6setArgER3ARG");

      function argSize (this : access RES_4L) return int;  -- instruction.hpp:522
      pragma Import (CPP, argSize, "_ZN6RES_4L7argSizeEv");
   end;
   use Class_RES_4L;
   package Class_RES_5L is
      type RES_5L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:523
      end record;
      pragma Import (CPP, RES_5L);

      procedure exec (this : access RES_5L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:523
      pragma Import (CPP, exec, "_ZN6RES_5L4execEP9Processor");

      function toStr (this : access RES_5L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:523
      pragma Import (CPP, toStr, "_ZN6RES_5L5toStrEv");

      function opCode (this : access RES_5L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:523
      pragma Import (CPP, opCode, "_ZN6RES_5L6opCodeEv");

      function nbCycles (this : access RES_5L) return int;  -- instruction.hpp:523
      pragma Import (CPP, nbCycles, "_ZN6RES_5L8nbCyclesEv");

      function hasArg (this : access RES_5L) return Extensions.bool;  -- instruction.hpp:523
      pragma Import (CPP, hasArg, "_ZN6RES_5L6hasArgEv");

      procedure setArg (this : access RES_5L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:523
      pragma Import (CPP, setArg, "_ZN6RES_5L6setArgER3ARG");

      function argSize (this : access RES_5L) return int;  -- instruction.hpp:523
      pragma Import (CPP, argSize, "_ZN6RES_5L7argSizeEv");
   end;
   use Class_RES_5L;
   package Class_RES_6L is
      type RES_6L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:524
      end record;
      pragma Import (CPP, RES_6L);

      procedure exec (this : access RES_6L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:524
      pragma Import (CPP, exec, "_ZN6RES_6L4execEP9Processor");

      function toStr (this : access RES_6L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:524
      pragma Import (CPP, toStr, "_ZN6RES_6L5toStrEv");

      function opCode (this : access RES_6L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:524
      pragma Import (CPP, opCode, "_ZN6RES_6L6opCodeEv");

      function nbCycles (this : access RES_6L) return int;  -- instruction.hpp:524
      pragma Import (CPP, nbCycles, "_ZN6RES_6L8nbCyclesEv");

      function hasArg (this : access RES_6L) return Extensions.bool;  -- instruction.hpp:524
      pragma Import (CPP, hasArg, "_ZN6RES_6L6hasArgEv");

      procedure setArg (this : access RES_6L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:524
      pragma Import (CPP, setArg, "_ZN6RES_6L6setArgER3ARG");

      function argSize (this : access RES_6L) return int;  -- instruction.hpp:524
      pragma Import (CPP, argSize, "_ZN6RES_6L7argSizeEv");
   end;
   use Class_RES_6L;
   package Class_RES_7L is
      type RES_7L is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:525
      end record;
      pragma Import (CPP, RES_7L);

      procedure exec (this : access RES_7L; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:525
      pragma Import (CPP, exec, "_ZN6RES_7L4execEP9Processor");

      function toStr (this : access RES_7L) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:525
      pragma Import (CPP, toStr, "_ZN6RES_7L5toStrEv");

      function opCode (this : access RES_7L) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:525
      pragma Import (CPP, opCode, "_ZN6RES_7L6opCodeEv");

      function nbCycles (this : access RES_7L) return int;  -- instruction.hpp:525
      pragma Import (CPP, nbCycles, "_ZN6RES_7L8nbCyclesEv");

      function hasArg (this : access RES_7L) return Extensions.bool;  -- instruction.hpp:525
      pragma Import (CPP, hasArg, "_ZN6RES_7L6hasArgEv");

      procedure setArg (this : access RES_7L; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:525
      pragma Import (CPP, setArg, "_ZN6RES_7L6setArgER3ARG");

      function argSize (this : access RES_7L) return int;  -- instruction.hpp:525
      pragma Import (CPP, argSize, "_ZN6RES_7L7argSizeEv");
   end;
   use Class_RES_7L;
   package Class_RES_0HL is
      type RES_0HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:527
      end record;
      pragma Import (CPP, RES_0HL);

      procedure exec (this : access RES_0HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:527
      pragma Import (CPP, exec, "_ZN7RES_0HL4execEP9Processor");

      function toStr (this : access RES_0HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:527
      pragma Import (CPP, toStr, "_ZN7RES_0HL5toStrEv");

      function opCode (this : access RES_0HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:527
      pragma Import (CPP, opCode, "_ZN7RES_0HL6opCodeEv");

      function nbCycles (this : access RES_0HL) return int;  -- instruction.hpp:527
      pragma Import (CPP, nbCycles, "_ZN7RES_0HL8nbCyclesEv");

      function hasArg (this : access RES_0HL) return Extensions.bool;  -- instruction.hpp:527
      pragma Import (CPP, hasArg, "_ZN7RES_0HL6hasArgEv");

      procedure setArg (this : access RES_0HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:527
      pragma Import (CPP, setArg, "_ZN7RES_0HL6setArgER3ARG");

      function argSize (this : access RES_0HL) return int;  -- instruction.hpp:527
      pragma Import (CPP, argSize, "_ZN7RES_0HL7argSizeEv");
   end;
   use Class_RES_0HL;
   package Class_RES_1HL is
      type RES_1HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:528
      end record;
      pragma Import (CPP, RES_1HL);

      procedure exec (this : access RES_1HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:528
      pragma Import (CPP, exec, "_ZN7RES_1HL4execEP9Processor");

      function toStr (this : access RES_1HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:528
      pragma Import (CPP, toStr, "_ZN7RES_1HL5toStrEv");

      function opCode (this : access RES_1HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:528
      pragma Import (CPP, opCode, "_ZN7RES_1HL6opCodeEv");

      function nbCycles (this : access RES_1HL) return int;  -- instruction.hpp:528
      pragma Import (CPP, nbCycles, "_ZN7RES_1HL8nbCyclesEv");

      function hasArg (this : access RES_1HL) return Extensions.bool;  -- instruction.hpp:528
      pragma Import (CPP, hasArg, "_ZN7RES_1HL6hasArgEv");

      procedure setArg (this : access RES_1HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:528
      pragma Import (CPP, setArg, "_ZN7RES_1HL6setArgER3ARG");

      function argSize (this : access RES_1HL) return int;  -- instruction.hpp:528
      pragma Import (CPP, argSize, "_ZN7RES_1HL7argSizeEv");
   end;
   use Class_RES_1HL;
   package Class_RES_2HL is
      type RES_2HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:529
      end record;
      pragma Import (CPP, RES_2HL);

      procedure exec (this : access RES_2HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:529
      pragma Import (CPP, exec, "_ZN7RES_2HL4execEP9Processor");

      function toStr (this : access RES_2HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:529
      pragma Import (CPP, toStr, "_ZN7RES_2HL5toStrEv");

      function opCode (this : access RES_2HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:529
      pragma Import (CPP, opCode, "_ZN7RES_2HL6opCodeEv");

      function nbCycles (this : access RES_2HL) return int;  -- instruction.hpp:529
      pragma Import (CPP, nbCycles, "_ZN7RES_2HL8nbCyclesEv");

      function hasArg (this : access RES_2HL) return Extensions.bool;  -- instruction.hpp:529
      pragma Import (CPP, hasArg, "_ZN7RES_2HL6hasArgEv");

      procedure setArg (this : access RES_2HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:529
      pragma Import (CPP, setArg, "_ZN7RES_2HL6setArgER3ARG");

      function argSize (this : access RES_2HL) return int;  -- instruction.hpp:529
      pragma Import (CPP, argSize, "_ZN7RES_2HL7argSizeEv");
   end;
   use Class_RES_2HL;
   package Class_RES_3HL is
      type RES_3HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:530
      end record;
      pragma Import (CPP, RES_3HL);

      procedure exec (this : access RES_3HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:530
      pragma Import (CPP, exec, "_ZN7RES_3HL4execEP9Processor");

      function toStr (this : access RES_3HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:530
      pragma Import (CPP, toStr, "_ZN7RES_3HL5toStrEv");

      function opCode (this : access RES_3HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:530
      pragma Import (CPP, opCode, "_ZN7RES_3HL6opCodeEv");

      function nbCycles (this : access RES_3HL) return int;  -- instruction.hpp:530
      pragma Import (CPP, nbCycles, "_ZN7RES_3HL8nbCyclesEv");

      function hasArg (this : access RES_3HL) return Extensions.bool;  -- instruction.hpp:530
      pragma Import (CPP, hasArg, "_ZN7RES_3HL6hasArgEv");

      procedure setArg (this : access RES_3HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:530
      pragma Import (CPP, setArg, "_ZN7RES_3HL6setArgER3ARG");

      function argSize (this : access RES_3HL) return int;  -- instruction.hpp:530
      pragma Import (CPP, argSize, "_ZN7RES_3HL7argSizeEv");
   end;
   use Class_RES_3HL;
   package Class_RES_4HL is
      type RES_4HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:531
      end record;
      pragma Import (CPP, RES_4HL);

      procedure exec (this : access RES_4HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:531
      pragma Import (CPP, exec, "_ZN7RES_4HL4execEP9Processor");

      function toStr (this : access RES_4HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:531
      pragma Import (CPP, toStr, "_ZN7RES_4HL5toStrEv");

      function opCode (this : access RES_4HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:531
      pragma Import (CPP, opCode, "_ZN7RES_4HL6opCodeEv");

      function nbCycles (this : access RES_4HL) return int;  -- instruction.hpp:531
      pragma Import (CPP, nbCycles, "_ZN7RES_4HL8nbCyclesEv");

      function hasArg (this : access RES_4HL) return Extensions.bool;  -- instruction.hpp:531
      pragma Import (CPP, hasArg, "_ZN7RES_4HL6hasArgEv");

      procedure setArg (this : access RES_4HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:531
      pragma Import (CPP, setArg, "_ZN7RES_4HL6setArgER3ARG");

      function argSize (this : access RES_4HL) return int;  -- instruction.hpp:531
      pragma Import (CPP, argSize, "_ZN7RES_4HL7argSizeEv");
   end;
   use Class_RES_4HL;
   package Class_RES_5HL is
      type RES_5HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:532
      end record;
      pragma Import (CPP, RES_5HL);

      procedure exec (this : access RES_5HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:532
      pragma Import (CPP, exec, "_ZN7RES_5HL4execEP9Processor");

      function toStr (this : access RES_5HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:532
      pragma Import (CPP, toStr, "_ZN7RES_5HL5toStrEv");

      function opCode (this : access RES_5HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:532
      pragma Import (CPP, opCode, "_ZN7RES_5HL6opCodeEv");

      function nbCycles (this : access RES_5HL) return int;  -- instruction.hpp:532
      pragma Import (CPP, nbCycles, "_ZN7RES_5HL8nbCyclesEv");

      function hasArg (this : access RES_5HL) return Extensions.bool;  -- instruction.hpp:532
      pragma Import (CPP, hasArg, "_ZN7RES_5HL6hasArgEv");

      procedure setArg (this : access RES_5HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:532
      pragma Import (CPP, setArg, "_ZN7RES_5HL6setArgER3ARG");

      function argSize (this : access RES_5HL) return int;  -- instruction.hpp:532
      pragma Import (CPP, argSize, "_ZN7RES_5HL7argSizeEv");
   end;
   use Class_RES_5HL;
   package Class_RES_6HL is
      type RES_6HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:533
      end record;
      pragma Import (CPP, RES_6HL);

      procedure exec (this : access RES_6HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:533
      pragma Import (CPP, exec, "_ZN7RES_6HL4execEP9Processor");

      function toStr (this : access RES_6HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:533
      pragma Import (CPP, toStr, "_ZN7RES_6HL5toStrEv");

      function opCode (this : access RES_6HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:533
      pragma Import (CPP, opCode, "_ZN7RES_6HL6opCodeEv");

      function nbCycles (this : access RES_6HL) return int;  -- instruction.hpp:533
      pragma Import (CPP, nbCycles, "_ZN7RES_6HL8nbCyclesEv");

      function hasArg (this : access RES_6HL) return Extensions.bool;  -- instruction.hpp:533
      pragma Import (CPP, hasArg, "_ZN7RES_6HL6hasArgEv");

      procedure setArg (this : access RES_6HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:533
      pragma Import (CPP, setArg, "_ZN7RES_6HL6setArgER3ARG");

      function argSize (this : access RES_6HL) return int;  -- instruction.hpp:533
      pragma Import (CPP, argSize, "_ZN7RES_6HL7argSizeEv");
   end;
   use Class_RES_6HL;
   package Class_RES_7HL is
      type RES_7HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:534
      end record;
      pragma Import (CPP, RES_7HL);

      procedure exec (this : access RES_7HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:534
      pragma Import (CPP, exec, "_ZN7RES_7HL4execEP9Processor");

      function toStr (this : access RES_7HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:534
      pragma Import (CPP, toStr, "_ZN7RES_7HL5toStrEv");

      function opCode (this : access RES_7HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:534
      pragma Import (CPP, opCode, "_ZN7RES_7HL6opCodeEv");

      function nbCycles (this : access RES_7HL) return int;  -- instruction.hpp:534
      pragma Import (CPP, nbCycles, "_ZN7RES_7HL8nbCyclesEv");

      function hasArg (this : access RES_7HL) return Extensions.bool;  -- instruction.hpp:534
      pragma Import (CPP, hasArg, "_ZN7RES_7HL6hasArgEv");

      procedure setArg (this : access RES_7HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:534
      pragma Import (CPP, setArg, "_ZN7RES_7HL6setArgER3ARG");

      function argSize (this : access RES_7HL) return int;  -- instruction.hpp:534
      pragma Import (CPP, argSize, "_ZN7RES_7HL7argSizeEv");
   end;
   use Class_RES_7HL;
  -- RRC Instructions
   package Class_RRCA is
      type RRCA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:538
      end record;
      pragma Import (CPP, RRCA);

      procedure exec (this : access RRCA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:538
      pragma Import (CPP, exec, "_ZN4RRCA4execEP9Processor");

      function toStr (this : access RRCA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:538
      pragma Import (CPP, toStr, "_ZN4RRCA5toStrEv");

      function opCode (this : access RRCA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:538
      pragma Import (CPP, opCode, "_ZN4RRCA6opCodeEv");

      function nbCycles (this : access RRCA) return int;  -- instruction.hpp:538
      pragma Import (CPP, nbCycles, "_ZN4RRCA8nbCyclesEv");

      function hasArg (this : access RRCA) return Extensions.bool;  -- instruction.hpp:538
      pragma Import (CPP, hasArg, "_ZN4RRCA6hasArgEv");

      procedure setArg (this : access RRCA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:538
      pragma Import (CPP, setArg, "_ZN4RRCA6setArgER3ARG");

      function argSize (this : access RRCA) return int;  -- instruction.hpp:538
      pragma Import (CPP, argSize, "_ZN4RRCA7argSizeEv");
   end;
   use Class_RRCA;
   package Class_RRC_AX is
      type RRC_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:540
      end record;
      pragma Import (CPP, RRC_AX);

      procedure exec (this : access RRC_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:540
      pragma Import (CPP, exec, "_ZN6RRC_AX4execEP9Processor");

      function toStr (this : access RRC_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:540
      pragma Import (CPP, toStr, "_ZN6RRC_AX5toStrEv");

      function opCode (this : access RRC_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:540
      pragma Import (CPP, opCode, "_ZN6RRC_AX6opCodeEv");

      function nbCycles (this : access RRC_AX) return int;  -- instruction.hpp:540
      pragma Import (CPP, nbCycles, "_ZN6RRC_AX8nbCyclesEv");

      function hasArg (this : access RRC_AX) return Extensions.bool;  -- instruction.hpp:540
      pragma Import (CPP, hasArg, "_ZN6RRC_AX6hasArgEv");

      procedure setArg (this : access RRC_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:540
      pragma Import (CPP, setArg, "_ZN6RRC_AX6setArgER3ARG");

      function argSize (this : access RRC_AX) return int;  -- instruction.hpp:540
      pragma Import (CPP, argSize, "_ZN6RRC_AX7argSizeEv");
   end;
   use Class_RRC_AX;
   package Class_RRC_BX is
      type RRC_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:541
      end record;
      pragma Import (CPP, RRC_BX);

      procedure exec (this : access RRC_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:541
      pragma Import (CPP, exec, "_ZN6RRC_BX4execEP9Processor");

      function toStr (this : access RRC_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:541
      pragma Import (CPP, toStr, "_ZN6RRC_BX5toStrEv");

      function opCode (this : access RRC_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:541
      pragma Import (CPP, opCode, "_ZN6RRC_BX6opCodeEv");

      function nbCycles (this : access RRC_BX) return int;  -- instruction.hpp:541
      pragma Import (CPP, nbCycles, "_ZN6RRC_BX8nbCyclesEv");

      function hasArg (this : access RRC_BX) return Extensions.bool;  -- instruction.hpp:541
      pragma Import (CPP, hasArg, "_ZN6RRC_BX6hasArgEv");

      procedure setArg (this : access RRC_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:541
      pragma Import (CPP, setArg, "_ZN6RRC_BX6setArgER3ARG");

      function argSize (this : access RRC_BX) return int;  -- instruction.hpp:541
      pragma Import (CPP, argSize, "_ZN6RRC_BX7argSizeEv");
   end;
   use Class_RRC_BX;
   package Class_RRC_CX is
      type RRC_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:542
      end record;
      pragma Import (CPP, RRC_CX);

      procedure exec (this : access RRC_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:542
      pragma Import (CPP, exec, "_ZN6RRC_CX4execEP9Processor");

      function toStr (this : access RRC_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:542
      pragma Import (CPP, toStr, "_ZN6RRC_CX5toStrEv");

      function opCode (this : access RRC_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:542
      pragma Import (CPP, opCode, "_ZN6RRC_CX6opCodeEv");

      function nbCycles (this : access RRC_CX) return int;  -- instruction.hpp:542
      pragma Import (CPP, nbCycles, "_ZN6RRC_CX8nbCyclesEv");

      function hasArg (this : access RRC_CX) return Extensions.bool;  -- instruction.hpp:542
      pragma Import (CPP, hasArg, "_ZN6RRC_CX6hasArgEv");

      procedure setArg (this : access RRC_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:542
      pragma Import (CPP, setArg, "_ZN6RRC_CX6setArgER3ARG");

      function argSize (this : access RRC_CX) return int;  -- instruction.hpp:542
      pragma Import (CPP, argSize, "_ZN6RRC_CX7argSizeEv");
   end;
   use Class_RRC_CX;
   package Class_RRC_DX is
      type RRC_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:543
      end record;
      pragma Import (CPP, RRC_DX);

      procedure exec (this : access RRC_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:543
      pragma Import (CPP, exec, "_ZN6RRC_DX4execEP9Processor");

      function toStr (this : access RRC_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:543
      pragma Import (CPP, toStr, "_ZN6RRC_DX5toStrEv");

      function opCode (this : access RRC_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:543
      pragma Import (CPP, opCode, "_ZN6RRC_DX6opCodeEv");

      function nbCycles (this : access RRC_DX) return int;  -- instruction.hpp:543
      pragma Import (CPP, nbCycles, "_ZN6RRC_DX8nbCyclesEv");

      function hasArg (this : access RRC_DX) return Extensions.bool;  -- instruction.hpp:543
      pragma Import (CPP, hasArg, "_ZN6RRC_DX6hasArgEv");

      procedure setArg (this : access RRC_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:543
      pragma Import (CPP, setArg, "_ZN6RRC_DX6setArgER3ARG");

      function argSize (this : access RRC_DX) return int;  -- instruction.hpp:543
      pragma Import (CPP, argSize, "_ZN6RRC_DX7argSizeEv");
   end;
   use Class_RRC_DX;
   package Class_RRC_EX is
      type RRC_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:544
      end record;
      pragma Import (CPP, RRC_EX);

      procedure exec (this : access RRC_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:544
      pragma Import (CPP, exec, "_ZN6RRC_EX4execEP9Processor");

      function toStr (this : access RRC_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:544
      pragma Import (CPP, toStr, "_ZN6RRC_EX5toStrEv");

      function opCode (this : access RRC_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:544
      pragma Import (CPP, opCode, "_ZN6RRC_EX6opCodeEv");

      function nbCycles (this : access RRC_EX) return int;  -- instruction.hpp:544
      pragma Import (CPP, nbCycles, "_ZN6RRC_EX8nbCyclesEv");

      function hasArg (this : access RRC_EX) return Extensions.bool;  -- instruction.hpp:544
      pragma Import (CPP, hasArg, "_ZN6RRC_EX6hasArgEv");

      procedure setArg (this : access RRC_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:544
      pragma Import (CPP, setArg, "_ZN6RRC_EX6setArgER3ARG");

      function argSize (this : access RRC_EX) return int;  -- instruction.hpp:544
      pragma Import (CPP, argSize, "_ZN6RRC_EX7argSizeEv");
   end;
   use Class_RRC_EX;
   package Class_RRC_HX is
      type RRC_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:545
      end record;
      pragma Import (CPP, RRC_HX);

      procedure exec (this : access RRC_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:545
      pragma Import (CPP, exec, "_ZN6RRC_HX4execEP9Processor");

      function toStr (this : access RRC_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:545
      pragma Import (CPP, toStr, "_ZN6RRC_HX5toStrEv");

      function opCode (this : access RRC_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:545
      pragma Import (CPP, opCode, "_ZN6RRC_HX6opCodeEv");

      function nbCycles (this : access RRC_HX) return int;  -- instruction.hpp:545
      pragma Import (CPP, nbCycles, "_ZN6RRC_HX8nbCyclesEv");

      function hasArg (this : access RRC_HX) return Extensions.bool;  -- instruction.hpp:545
      pragma Import (CPP, hasArg, "_ZN6RRC_HX6hasArgEv");

      procedure setArg (this : access RRC_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:545
      pragma Import (CPP, setArg, "_ZN6RRC_HX6setArgER3ARG");

      function argSize (this : access RRC_HX) return int;  -- instruction.hpp:545
      pragma Import (CPP, argSize, "_ZN6RRC_HX7argSizeEv");
   end;
   use Class_RRC_HX;
   package Class_RRC_LX is
      type RRC_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:546
      end record;
      pragma Import (CPP, RRC_LX);

      procedure exec (this : access RRC_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:546
      pragma Import (CPP, exec, "_ZN6RRC_LX4execEP9Processor");

      function toStr (this : access RRC_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:546
      pragma Import (CPP, toStr, "_ZN6RRC_LX5toStrEv");

      function opCode (this : access RRC_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:546
      pragma Import (CPP, opCode, "_ZN6RRC_LX6opCodeEv");

      function nbCycles (this : access RRC_LX) return int;  -- instruction.hpp:546
      pragma Import (CPP, nbCycles, "_ZN6RRC_LX8nbCyclesEv");

      function hasArg (this : access RRC_LX) return Extensions.bool;  -- instruction.hpp:546
      pragma Import (CPP, hasArg, "_ZN6RRC_LX6hasArgEv");

      procedure setArg (this : access RRC_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:546
      pragma Import (CPP, setArg, "_ZN6RRC_LX6setArgER3ARG");

      function argSize (this : access RRC_LX) return int;  -- instruction.hpp:546
      pragma Import (CPP, argSize, "_ZN6RRC_LX7argSizeEv");
   end;
   use Class_RRC_LX;
   package Class_RRC_HL is
      type RRC_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:547
      end record;
      pragma Import (CPP, RRC_HL);

      procedure exec (this : access RRC_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:547
      pragma Import (CPP, exec, "_ZN6RRC_HL4execEP9Processor");

      function toStr (this : access RRC_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:547
      pragma Import (CPP, toStr, "_ZN6RRC_HL5toStrEv");

      function opCode (this : access RRC_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:547
      pragma Import (CPP, opCode, "_ZN6RRC_HL6opCodeEv");

      function nbCycles (this : access RRC_HL) return int;  -- instruction.hpp:547
      pragma Import (CPP, nbCycles, "_ZN6RRC_HL8nbCyclesEv");

      function hasArg (this : access RRC_HL) return Extensions.bool;  -- instruction.hpp:547
      pragma Import (CPP, hasArg, "_ZN6RRC_HL6hasArgEv");

      procedure setArg (this : access RRC_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:547
      pragma Import (CPP, setArg, "_ZN6RRC_HL6setArgER3ARG");

      function argSize (this : access RRC_HL) return int;  -- instruction.hpp:547
      pragma Import (CPP, argSize, "_ZN6RRC_HL7argSizeEv");
   end;
   use Class_RRC_HL;
  -- RLC Instructions
   package Class_RLCA is
      type RLCA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:551
      end record;
      pragma Import (CPP, RLCA);

      procedure exec (this : access RLCA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:551
      pragma Import (CPP, exec, "_ZN4RLCA4execEP9Processor");

      function toStr (this : access RLCA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:551
      pragma Import (CPP, toStr, "_ZN4RLCA5toStrEv");

      function opCode (this : access RLCA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:551
      pragma Import (CPP, opCode, "_ZN4RLCA6opCodeEv");

      function nbCycles (this : access RLCA) return int;  -- instruction.hpp:551
      pragma Import (CPP, nbCycles, "_ZN4RLCA8nbCyclesEv");

      function hasArg (this : access RLCA) return Extensions.bool;  -- instruction.hpp:551
      pragma Import (CPP, hasArg, "_ZN4RLCA6hasArgEv");

      procedure setArg (this : access RLCA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:551
      pragma Import (CPP, setArg, "_ZN4RLCA6setArgER3ARG");

      function argSize (this : access RLCA) return int;  -- instruction.hpp:551
      pragma Import (CPP, argSize, "_ZN4RLCA7argSizeEv");
   end;
   use Class_RLCA;
   package Class_RLC_AX is
      type RLC_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:553
      end record;
      pragma Import (CPP, RLC_AX);

      procedure exec (this : access RLC_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:553
      pragma Import (CPP, exec, "_ZN6RLC_AX4execEP9Processor");

      function toStr (this : access RLC_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:553
      pragma Import (CPP, toStr, "_ZN6RLC_AX5toStrEv");

      function opCode (this : access RLC_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:553
      pragma Import (CPP, opCode, "_ZN6RLC_AX6opCodeEv");

      function nbCycles (this : access RLC_AX) return int;  -- instruction.hpp:553
      pragma Import (CPP, nbCycles, "_ZN6RLC_AX8nbCyclesEv");

      function hasArg (this : access RLC_AX) return Extensions.bool;  -- instruction.hpp:553
      pragma Import (CPP, hasArg, "_ZN6RLC_AX6hasArgEv");

      procedure setArg (this : access RLC_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:553
      pragma Import (CPP, setArg, "_ZN6RLC_AX6setArgER3ARG");

      function argSize (this : access RLC_AX) return int;  -- instruction.hpp:553
      pragma Import (CPP, argSize, "_ZN6RLC_AX7argSizeEv");
   end;
   use Class_RLC_AX;
   package Class_RLC_BX is
      type RLC_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:554
      end record;
      pragma Import (CPP, RLC_BX);

      procedure exec (this : access RLC_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:554
      pragma Import (CPP, exec, "_ZN6RLC_BX4execEP9Processor");

      function toStr (this : access RLC_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:554
      pragma Import (CPP, toStr, "_ZN6RLC_BX5toStrEv");

      function opCode (this : access RLC_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:554
      pragma Import (CPP, opCode, "_ZN6RLC_BX6opCodeEv");

      function nbCycles (this : access RLC_BX) return int;  -- instruction.hpp:554
      pragma Import (CPP, nbCycles, "_ZN6RLC_BX8nbCyclesEv");

      function hasArg (this : access RLC_BX) return Extensions.bool;  -- instruction.hpp:554
      pragma Import (CPP, hasArg, "_ZN6RLC_BX6hasArgEv");

      procedure setArg (this : access RLC_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:554
      pragma Import (CPP, setArg, "_ZN6RLC_BX6setArgER3ARG");

      function argSize (this : access RLC_BX) return int;  -- instruction.hpp:554
      pragma Import (CPP, argSize, "_ZN6RLC_BX7argSizeEv");
   end;
   use Class_RLC_BX;
   package Class_RLC_CX is
      type RLC_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:555
      end record;
      pragma Import (CPP, RLC_CX);

      procedure exec (this : access RLC_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:555
      pragma Import (CPP, exec, "_ZN6RLC_CX4execEP9Processor");

      function toStr (this : access RLC_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:555
      pragma Import (CPP, toStr, "_ZN6RLC_CX5toStrEv");

      function opCode (this : access RLC_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:555
      pragma Import (CPP, opCode, "_ZN6RLC_CX6opCodeEv");

      function nbCycles (this : access RLC_CX) return int;  -- instruction.hpp:555
      pragma Import (CPP, nbCycles, "_ZN6RLC_CX8nbCyclesEv");

      function hasArg (this : access RLC_CX) return Extensions.bool;  -- instruction.hpp:555
      pragma Import (CPP, hasArg, "_ZN6RLC_CX6hasArgEv");

      procedure setArg (this : access RLC_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:555
      pragma Import (CPP, setArg, "_ZN6RLC_CX6setArgER3ARG");

      function argSize (this : access RLC_CX) return int;  -- instruction.hpp:555
      pragma Import (CPP, argSize, "_ZN6RLC_CX7argSizeEv");
   end;
   use Class_RLC_CX;
   package Class_RLC_DX is
      type RLC_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:556
      end record;
      pragma Import (CPP, RLC_DX);

      procedure exec (this : access RLC_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:556
      pragma Import (CPP, exec, "_ZN6RLC_DX4execEP9Processor");

      function toStr (this : access RLC_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:556
      pragma Import (CPP, toStr, "_ZN6RLC_DX5toStrEv");

      function opCode (this : access RLC_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:556
      pragma Import (CPP, opCode, "_ZN6RLC_DX6opCodeEv");

      function nbCycles (this : access RLC_DX) return int;  -- instruction.hpp:556
      pragma Import (CPP, nbCycles, "_ZN6RLC_DX8nbCyclesEv");

      function hasArg (this : access RLC_DX) return Extensions.bool;  -- instruction.hpp:556
      pragma Import (CPP, hasArg, "_ZN6RLC_DX6hasArgEv");

      procedure setArg (this : access RLC_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:556
      pragma Import (CPP, setArg, "_ZN6RLC_DX6setArgER3ARG");

      function argSize (this : access RLC_DX) return int;  -- instruction.hpp:556
      pragma Import (CPP, argSize, "_ZN6RLC_DX7argSizeEv");
   end;
   use Class_RLC_DX;
   package Class_RLC_EX is
      type RLC_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:557
      end record;
      pragma Import (CPP, RLC_EX);

      procedure exec (this : access RLC_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:557
      pragma Import (CPP, exec, "_ZN6RLC_EX4execEP9Processor");

      function toStr (this : access RLC_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:557
      pragma Import (CPP, toStr, "_ZN6RLC_EX5toStrEv");

      function opCode (this : access RLC_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:557
      pragma Import (CPP, opCode, "_ZN6RLC_EX6opCodeEv");

      function nbCycles (this : access RLC_EX) return int;  -- instruction.hpp:557
      pragma Import (CPP, nbCycles, "_ZN6RLC_EX8nbCyclesEv");

      function hasArg (this : access RLC_EX) return Extensions.bool;  -- instruction.hpp:557
      pragma Import (CPP, hasArg, "_ZN6RLC_EX6hasArgEv");

      procedure setArg (this : access RLC_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:557
      pragma Import (CPP, setArg, "_ZN6RLC_EX6setArgER3ARG");

      function argSize (this : access RLC_EX) return int;  -- instruction.hpp:557
      pragma Import (CPP, argSize, "_ZN6RLC_EX7argSizeEv");
   end;
   use Class_RLC_EX;
   package Class_RLC_HX is
      type RLC_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:558
      end record;
      pragma Import (CPP, RLC_HX);

      procedure exec (this : access RLC_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:558
      pragma Import (CPP, exec, "_ZN6RLC_HX4execEP9Processor");

      function toStr (this : access RLC_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:558
      pragma Import (CPP, toStr, "_ZN6RLC_HX5toStrEv");

      function opCode (this : access RLC_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:558
      pragma Import (CPP, opCode, "_ZN6RLC_HX6opCodeEv");

      function nbCycles (this : access RLC_HX) return int;  -- instruction.hpp:558
      pragma Import (CPP, nbCycles, "_ZN6RLC_HX8nbCyclesEv");

      function hasArg (this : access RLC_HX) return Extensions.bool;  -- instruction.hpp:558
      pragma Import (CPP, hasArg, "_ZN6RLC_HX6hasArgEv");

      procedure setArg (this : access RLC_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:558
      pragma Import (CPP, setArg, "_ZN6RLC_HX6setArgER3ARG");

      function argSize (this : access RLC_HX) return int;  -- instruction.hpp:558
      pragma Import (CPP, argSize, "_ZN6RLC_HX7argSizeEv");
   end;
   use Class_RLC_HX;
   package Class_RLC_LX is
      type RLC_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:559
      end record;
      pragma Import (CPP, RLC_LX);

      procedure exec (this : access RLC_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:559
      pragma Import (CPP, exec, "_ZN6RLC_LX4execEP9Processor");

      function toStr (this : access RLC_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:559
      pragma Import (CPP, toStr, "_ZN6RLC_LX5toStrEv");

      function opCode (this : access RLC_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:559
      pragma Import (CPP, opCode, "_ZN6RLC_LX6opCodeEv");

      function nbCycles (this : access RLC_LX) return int;  -- instruction.hpp:559
      pragma Import (CPP, nbCycles, "_ZN6RLC_LX8nbCyclesEv");

      function hasArg (this : access RLC_LX) return Extensions.bool;  -- instruction.hpp:559
      pragma Import (CPP, hasArg, "_ZN6RLC_LX6hasArgEv");

      procedure setArg (this : access RLC_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:559
      pragma Import (CPP, setArg, "_ZN6RLC_LX6setArgER3ARG");

      function argSize (this : access RLC_LX) return int;  -- instruction.hpp:559
      pragma Import (CPP, argSize, "_ZN6RLC_LX7argSizeEv");
   end;
   use Class_RLC_LX;
   package Class_RLC_HL is
      type RLC_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:560
      end record;
      pragma Import (CPP, RLC_HL);

      procedure exec (this : access RLC_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:560
      pragma Import (CPP, exec, "_ZN6RLC_HL4execEP9Processor");

      function toStr (this : access RLC_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:560
      pragma Import (CPP, toStr, "_ZN6RLC_HL5toStrEv");

      function opCode (this : access RLC_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:560
      pragma Import (CPP, opCode, "_ZN6RLC_HL6opCodeEv");

      function nbCycles (this : access RLC_HL) return int;  -- instruction.hpp:560
      pragma Import (CPP, nbCycles, "_ZN6RLC_HL8nbCyclesEv");

      function hasArg (this : access RLC_HL) return Extensions.bool;  -- instruction.hpp:560
      pragma Import (CPP, hasArg, "_ZN6RLC_HL6hasArgEv");

      procedure setArg (this : access RLC_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:560
      pragma Import (CPP, setArg, "_ZN6RLC_HL6setArgER3ARG");

      function argSize (this : access RLC_HL) return int;  -- instruction.hpp:560
      pragma Import (CPP, argSize, "_ZN6RLC_HL7argSizeEv");
   end;
   use Class_RLC_HL;
  -- RL Instructions
   package Class_RLA is
      type RLA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:564
      end record;
      pragma Import (CPP, RLA);

      procedure exec (this : access RLA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:564
      pragma Import (CPP, exec, "_ZN3RLA4execEP9Processor");

      function toStr (this : access RLA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:564
      pragma Import (CPP, toStr, "_ZN3RLA5toStrEv");

      function opCode (this : access RLA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:564
      pragma Import (CPP, opCode, "_ZN3RLA6opCodeEv");

      function nbCycles (this : access RLA) return int;  -- instruction.hpp:564
      pragma Import (CPP, nbCycles, "_ZN3RLA8nbCyclesEv");

      function hasArg (this : access RLA) return Extensions.bool;  -- instruction.hpp:564
      pragma Import (CPP, hasArg, "_ZN3RLA6hasArgEv");

      procedure setArg (this : access RLA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:564
      pragma Import (CPP, setArg, "_ZN3RLA6setArgER3ARG");

      function argSize (this : access RLA) return int;  -- instruction.hpp:564
      pragma Import (CPP, argSize, "_ZN3RLA7argSizeEv");
   end;
   use Class_RLA;
   package Class_RL_AX is
      type RL_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:566
      end record;
      pragma Import (CPP, RL_AX);

      procedure exec (this : access RL_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:566
      pragma Import (CPP, exec, "_ZN5RL_AX4execEP9Processor");

      function toStr (this : access RL_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:566
      pragma Import (CPP, toStr, "_ZN5RL_AX5toStrEv");

      function opCode (this : access RL_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:566
      pragma Import (CPP, opCode, "_ZN5RL_AX6opCodeEv");

      function nbCycles (this : access RL_AX) return int;  -- instruction.hpp:566
      pragma Import (CPP, nbCycles, "_ZN5RL_AX8nbCyclesEv");

      function hasArg (this : access RL_AX) return Extensions.bool;  -- instruction.hpp:566
      pragma Import (CPP, hasArg, "_ZN5RL_AX6hasArgEv");

      procedure setArg (this : access RL_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:566
      pragma Import (CPP, setArg, "_ZN5RL_AX6setArgER3ARG");

      function argSize (this : access RL_AX) return int;  -- instruction.hpp:566
      pragma Import (CPP, argSize, "_ZN5RL_AX7argSizeEv");
   end;
   use Class_RL_AX;
   package Class_RL_BX is
      type RL_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:567
      end record;
      pragma Import (CPP, RL_BX);

      procedure exec (this : access RL_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:567
      pragma Import (CPP, exec, "_ZN5RL_BX4execEP9Processor");

      function toStr (this : access RL_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:567
      pragma Import (CPP, toStr, "_ZN5RL_BX5toStrEv");

      function opCode (this : access RL_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:567
      pragma Import (CPP, opCode, "_ZN5RL_BX6opCodeEv");

      function nbCycles (this : access RL_BX) return int;  -- instruction.hpp:567
      pragma Import (CPP, nbCycles, "_ZN5RL_BX8nbCyclesEv");

      function hasArg (this : access RL_BX) return Extensions.bool;  -- instruction.hpp:567
      pragma Import (CPP, hasArg, "_ZN5RL_BX6hasArgEv");

      procedure setArg (this : access RL_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:567
      pragma Import (CPP, setArg, "_ZN5RL_BX6setArgER3ARG");

      function argSize (this : access RL_BX) return int;  -- instruction.hpp:567
      pragma Import (CPP, argSize, "_ZN5RL_BX7argSizeEv");
   end;
   use Class_RL_BX;
   package Class_RL_CX is
      type RL_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:568
      end record;
      pragma Import (CPP, RL_CX);

      procedure exec (this : access RL_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:568
      pragma Import (CPP, exec, "_ZN5RL_CX4execEP9Processor");

      function toStr (this : access RL_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:568
      pragma Import (CPP, toStr, "_ZN5RL_CX5toStrEv");

      function opCode (this : access RL_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:568
      pragma Import (CPP, opCode, "_ZN5RL_CX6opCodeEv");

      function nbCycles (this : access RL_CX) return int;  -- instruction.hpp:568
      pragma Import (CPP, nbCycles, "_ZN5RL_CX8nbCyclesEv");

      function hasArg (this : access RL_CX) return Extensions.bool;  -- instruction.hpp:568
      pragma Import (CPP, hasArg, "_ZN5RL_CX6hasArgEv");

      procedure setArg (this : access RL_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:568
      pragma Import (CPP, setArg, "_ZN5RL_CX6setArgER3ARG");

      function argSize (this : access RL_CX) return int;  -- instruction.hpp:568
      pragma Import (CPP, argSize, "_ZN5RL_CX7argSizeEv");
   end;
   use Class_RL_CX;
   package Class_RL_DX is
      type RL_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:569
      end record;
      pragma Import (CPP, RL_DX);

      procedure exec (this : access RL_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:569
      pragma Import (CPP, exec, "_ZN5RL_DX4execEP9Processor");

      function toStr (this : access RL_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:569
      pragma Import (CPP, toStr, "_ZN5RL_DX5toStrEv");

      function opCode (this : access RL_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:569
      pragma Import (CPP, opCode, "_ZN5RL_DX6opCodeEv");

      function nbCycles (this : access RL_DX) return int;  -- instruction.hpp:569
      pragma Import (CPP, nbCycles, "_ZN5RL_DX8nbCyclesEv");

      function hasArg (this : access RL_DX) return Extensions.bool;  -- instruction.hpp:569
      pragma Import (CPP, hasArg, "_ZN5RL_DX6hasArgEv");

      procedure setArg (this : access RL_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:569
      pragma Import (CPP, setArg, "_ZN5RL_DX6setArgER3ARG");

      function argSize (this : access RL_DX) return int;  -- instruction.hpp:569
      pragma Import (CPP, argSize, "_ZN5RL_DX7argSizeEv");
   end;
   use Class_RL_DX;
   package Class_RL_EX is
      type RL_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:570
      end record;
      pragma Import (CPP, RL_EX);

      procedure exec (this : access RL_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:570
      pragma Import (CPP, exec, "_ZN5RL_EX4execEP9Processor");

      function toStr (this : access RL_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:570
      pragma Import (CPP, toStr, "_ZN5RL_EX5toStrEv");

      function opCode (this : access RL_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:570
      pragma Import (CPP, opCode, "_ZN5RL_EX6opCodeEv");

      function nbCycles (this : access RL_EX) return int;  -- instruction.hpp:570
      pragma Import (CPP, nbCycles, "_ZN5RL_EX8nbCyclesEv");

      function hasArg (this : access RL_EX) return Extensions.bool;  -- instruction.hpp:570
      pragma Import (CPP, hasArg, "_ZN5RL_EX6hasArgEv");

      procedure setArg (this : access RL_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:570
      pragma Import (CPP, setArg, "_ZN5RL_EX6setArgER3ARG");

      function argSize (this : access RL_EX) return int;  -- instruction.hpp:570
      pragma Import (CPP, argSize, "_ZN5RL_EX7argSizeEv");
   end;
   use Class_RL_EX;
   package Class_RL_HX is
      type RL_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:571
      end record;
      pragma Import (CPP, RL_HX);

      procedure exec (this : access RL_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:571
      pragma Import (CPP, exec, "_ZN5RL_HX4execEP9Processor");

      function toStr (this : access RL_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:571
      pragma Import (CPP, toStr, "_ZN5RL_HX5toStrEv");

      function opCode (this : access RL_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:571
      pragma Import (CPP, opCode, "_ZN5RL_HX6opCodeEv");

      function nbCycles (this : access RL_HX) return int;  -- instruction.hpp:571
      pragma Import (CPP, nbCycles, "_ZN5RL_HX8nbCyclesEv");

      function hasArg (this : access RL_HX) return Extensions.bool;  -- instruction.hpp:571
      pragma Import (CPP, hasArg, "_ZN5RL_HX6hasArgEv");

      procedure setArg (this : access RL_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:571
      pragma Import (CPP, setArg, "_ZN5RL_HX6setArgER3ARG");

      function argSize (this : access RL_HX) return int;  -- instruction.hpp:571
      pragma Import (CPP, argSize, "_ZN5RL_HX7argSizeEv");
   end;
   use Class_RL_HX;
   package Class_RL_LX is
      type RL_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:572
      end record;
      pragma Import (CPP, RL_LX);

      procedure exec (this : access RL_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:572
      pragma Import (CPP, exec, "_ZN5RL_LX4execEP9Processor");

      function toStr (this : access RL_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:572
      pragma Import (CPP, toStr, "_ZN5RL_LX5toStrEv");

      function opCode (this : access RL_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:572
      pragma Import (CPP, opCode, "_ZN5RL_LX6opCodeEv");

      function nbCycles (this : access RL_LX) return int;  -- instruction.hpp:572
      pragma Import (CPP, nbCycles, "_ZN5RL_LX8nbCyclesEv");

      function hasArg (this : access RL_LX) return Extensions.bool;  -- instruction.hpp:572
      pragma Import (CPP, hasArg, "_ZN5RL_LX6hasArgEv");

      procedure setArg (this : access RL_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:572
      pragma Import (CPP, setArg, "_ZN5RL_LX6setArgER3ARG");

      function argSize (this : access RL_LX) return int;  -- instruction.hpp:572
      pragma Import (CPP, argSize, "_ZN5RL_LX7argSizeEv");
   end;
   use Class_RL_LX;
   package Class_RL_HL is
      type RL_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:573
      end record;
      pragma Import (CPP, RL_HL);

      procedure exec (this : access RL_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:573
      pragma Import (CPP, exec, "_ZN5RL_HL4execEP9Processor");

      function toStr (this : access RL_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:573
      pragma Import (CPP, toStr, "_ZN5RL_HL5toStrEv");

      function opCode (this : access RL_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:573
      pragma Import (CPP, opCode, "_ZN5RL_HL6opCodeEv");

      function nbCycles (this : access RL_HL) return int;  -- instruction.hpp:573
      pragma Import (CPP, nbCycles, "_ZN5RL_HL8nbCyclesEv");

      function hasArg (this : access RL_HL) return Extensions.bool;  -- instruction.hpp:573
      pragma Import (CPP, hasArg, "_ZN5RL_HL6hasArgEv");

      procedure setArg (this : access RL_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:573
      pragma Import (CPP, setArg, "_ZN5RL_HL6setArgER3ARG");

      function argSize (this : access RL_HL) return int;  -- instruction.hpp:573
      pragma Import (CPP, argSize, "_ZN5RL_HL7argSizeEv");
   end;
   use Class_RL_HL;
  -- RR Instructions
   package Class_RRA is
      type RRA is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:577
      end record;
      pragma Import (CPP, RRA);

      procedure exec (this : access RRA; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:577
      pragma Import (CPP, exec, "_ZN3RRA4execEP9Processor");

      function toStr (this : access RRA) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:577
      pragma Import (CPP, toStr, "_ZN3RRA5toStrEv");

      function opCode (this : access RRA) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:577
      pragma Import (CPP, opCode, "_ZN3RRA6opCodeEv");

      function nbCycles (this : access RRA) return int;  -- instruction.hpp:577
      pragma Import (CPP, nbCycles, "_ZN3RRA8nbCyclesEv");

      function hasArg (this : access RRA) return Extensions.bool;  -- instruction.hpp:577
      pragma Import (CPP, hasArg, "_ZN3RRA6hasArgEv");

      procedure setArg (this : access RRA; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:577
      pragma Import (CPP, setArg, "_ZN3RRA6setArgER3ARG");

      function argSize (this : access RRA) return int;  -- instruction.hpp:577
      pragma Import (CPP, argSize, "_ZN3RRA7argSizeEv");
   end;
   use Class_RRA;
   package Class_RR_AX is
      type RR_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:579
      end record;
      pragma Import (CPP, RR_AX);

      procedure exec (this : access RR_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:579
      pragma Import (CPP, exec, "_ZN5RR_AX4execEP9Processor");

      function toStr (this : access RR_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:579
      pragma Import (CPP, toStr, "_ZN5RR_AX5toStrEv");

      function opCode (this : access RR_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:579
      pragma Import (CPP, opCode, "_ZN5RR_AX6opCodeEv");

      function nbCycles (this : access RR_AX) return int;  -- instruction.hpp:579
      pragma Import (CPP, nbCycles, "_ZN5RR_AX8nbCyclesEv");

      function hasArg (this : access RR_AX) return Extensions.bool;  -- instruction.hpp:579
      pragma Import (CPP, hasArg, "_ZN5RR_AX6hasArgEv");

      procedure setArg (this : access RR_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:579
      pragma Import (CPP, setArg, "_ZN5RR_AX6setArgER3ARG");

      function argSize (this : access RR_AX) return int;  -- instruction.hpp:579
      pragma Import (CPP, argSize, "_ZN5RR_AX7argSizeEv");
   end;
   use Class_RR_AX;
   package Class_RR_BX is
      type RR_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:580
      end record;
      pragma Import (CPP, RR_BX);

      procedure exec (this : access RR_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:580
      pragma Import (CPP, exec, "_ZN5RR_BX4execEP9Processor");

      function toStr (this : access RR_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:580
      pragma Import (CPP, toStr, "_ZN5RR_BX5toStrEv");

      function opCode (this : access RR_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:580
      pragma Import (CPP, opCode, "_ZN5RR_BX6opCodeEv");

      function nbCycles (this : access RR_BX) return int;  -- instruction.hpp:580
      pragma Import (CPP, nbCycles, "_ZN5RR_BX8nbCyclesEv");

      function hasArg (this : access RR_BX) return Extensions.bool;  -- instruction.hpp:580
      pragma Import (CPP, hasArg, "_ZN5RR_BX6hasArgEv");

      procedure setArg (this : access RR_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:580
      pragma Import (CPP, setArg, "_ZN5RR_BX6setArgER3ARG");

      function argSize (this : access RR_BX) return int;  -- instruction.hpp:580
      pragma Import (CPP, argSize, "_ZN5RR_BX7argSizeEv");
   end;
   use Class_RR_BX;
   package Class_RR_CX is
      type RR_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:581
      end record;
      pragma Import (CPP, RR_CX);

      procedure exec (this : access RR_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:581
      pragma Import (CPP, exec, "_ZN5RR_CX4execEP9Processor");

      function toStr (this : access RR_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:581
      pragma Import (CPP, toStr, "_ZN5RR_CX5toStrEv");

      function opCode (this : access RR_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:581
      pragma Import (CPP, opCode, "_ZN5RR_CX6opCodeEv");

      function nbCycles (this : access RR_CX) return int;  -- instruction.hpp:581
      pragma Import (CPP, nbCycles, "_ZN5RR_CX8nbCyclesEv");

      function hasArg (this : access RR_CX) return Extensions.bool;  -- instruction.hpp:581
      pragma Import (CPP, hasArg, "_ZN5RR_CX6hasArgEv");

      procedure setArg (this : access RR_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:581
      pragma Import (CPP, setArg, "_ZN5RR_CX6setArgER3ARG");

      function argSize (this : access RR_CX) return int;  -- instruction.hpp:581
      pragma Import (CPP, argSize, "_ZN5RR_CX7argSizeEv");
   end;
   use Class_RR_CX;
   package Class_RR_DX is
      type RR_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:582
      end record;
      pragma Import (CPP, RR_DX);

      procedure exec (this : access RR_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:582
      pragma Import (CPP, exec, "_ZN5RR_DX4execEP9Processor");

      function toStr (this : access RR_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:582
      pragma Import (CPP, toStr, "_ZN5RR_DX5toStrEv");

      function opCode (this : access RR_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:582
      pragma Import (CPP, opCode, "_ZN5RR_DX6opCodeEv");

      function nbCycles (this : access RR_DX) return int;  -- instruction.hpp:582
      pragma Import (CPP, nbCycles, "_ZN5RR_DX8nbCyclesEv");

      function hasArg (this : access RR_DX) return Extensions.bool;  -- instruction.hpp:582
      pragma Import (CPP, hasArg, "_ZN5RR_DX6hasArgEv");

      procedure setArg (this : access RR_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:582
      pragma Import (CPP, setArg, "_ZN5RR_DX6setArgER3ARG");

      function argSize (this : access RR_DX) return int;  -- instruction.hpp:582
      pragma Import (CPP, argSize, "_ZN5RR_DX7argSizeEv");
   end;
   use Class_RR_DX;
   package Class_RR_EX is
      type RR_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:583
      end record;
      pragma Import (CPP, RR_EX);

      procedure exec (this : access RR_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:583
      pragma Import (CPP, exec, "_ZN5RR_EX4execEP9Processor");

      function toStr (this : access RR_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:583
      pragma Import (CPP, toStr, "_ZN5RR_EX5toStrEv");

      function opCode (this : access RR_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:583
      pragma Import (CPP, opCode, "_ZN5RR_EX6opCodeEv");

      function nbCycles (this : access RR_EX) return int;  -- instruction.hpp:583
      pragma Import (CPP, nbCycles, "_ZN5RR_EX8nbCyclesEv");

      function hasArg (this : access RR_EX) return Extensions.bool;  -- instruction.hpp:583
      pragma Import (CPP, hasArg, "_ZN5RR_EX6hasArgEv");

      procedure setArg (this : access RR_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:583
      pragma Import (CPP, setArg, "_ZN5RR_EX6setArgER3ARG");

      function argSize (this : access RR_EX) return int;  -- instruction.hpp:583
      pragma Import (CPP, argSize, "_ZN5RR_EX7argSizeEv");
   end;
   use Class_RR_EX;
   package Class_RR_HX is
      type RR_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:584
      end record;
      pragma Import (CPP, RR_HX);

      procedure exec (this : access RR_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:584
      pragma Import (CPP, exec, "_ZN5RR_HX4execEP9Processor");

      function toStr (this : access RR_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:584
      pragma Import (CPP, toStr, "_ZN5RR_HX5toStrEv");

      function opCode (this : access RR_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:584
      pragma Import (CPP, opCode, "_ZN5RR_HX6opCodeEv");

      function nbCycles (this : access RR_HX) return int;  -- instruction.hpp:584
      pragma Import (CPP, nbCycles, "_ZN5RR_HX8nbCyclesEv");

      function hasArg (this : access RR_HX) return Extensions.bool;  -- instruction.hpp:584
      pragma Import (CPP, hasArg, "_ZN5RR_HX6hasArgEv");

      procedure setArg (this : access RR_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:584
      pragma Import (CPP, setArg, "_ZN5RR_HX6setArgER3ARG");

      function argSize (this : access RR_HX) return int;  -- instruction.hpp:584
      pragma Import (CPP, argSize, "_ZN5RR_HX7argSizeEv");
   end;
   use Class_RR_HX;
   package Class_RR_LX is
      type RR_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:585
      end record;
      pragma Import (CPP, RR_LX);

      procedure exec (this : access RR_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:585
      pragma Import (CPP, exec, "_ZN5RR_LX4execEP9Processor");

      function toStr (this : access RR_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:585
      pragma Import (CPP, toStr, "_ZN5RR_LX5toStrEv");

      function opCode (this : access RR_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:585
      pragma Import (CPP, opCode, "_ZN5RR_LX6opCodeEv");

      function nbCycles (this : access RR_LX) return int;  -- instruction.hpp:585
      pragma Import (CPP, nbCycles, "_ZN5RR_LX8nbCyclesEv");

      function hasArg (this : access RR_LX) return Extensions.bool;  -- instruction.hpp:585
      pragma Import (CPP, hasArg, "_ZN5RR_LX6hasArgEv");

      procedure setArg (this : access RR_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:585
      pragma Import (CPP, setArg, "_ZN5RR_LX6setArgER3ARG");

      function argSize (this : access RR_LX) return int;  -- instruction.hpp:585
      pragma Import (CPP, argSize, "_ZN5RR_LX7argSizeEv");
   end;
   use Class_RR_LX;
   package Class_RR_HL is
      type RR_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:586
      end record;
      pragma Import (CPP, RR_HL);

      procedure exec (this : access RR_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:586
      pragma Import (CPP, exec, "_ZN5RR_HL4execEP9Processor");

      function toStr (this : access RR_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:586
      pragma Import (CPP, toStr, "_ZN5RR_HL5toStrEv");

      function opCode (this : access RR_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:586
      pragma Import (CPP, opCode, "_ZN5RR_HL6opCodeEv");

      function nbCycles (this : access RR_HL) return int;  -- instruction.hpp:586
      pragma Import (CPP, nbCycles, "_ZN5RR_HL8nbCyclesEv");

      function hasArg (this : access RR_HL) return Extensions.bool;  -- instruction.hpp:586
      pragma Import (CPP, hasArg, "_ZN5RR_HL6hasArgEv");

      procedure setArg (this : access RR_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:586
      pragma Import (CPP, setArg, "_ZN5RR_HL6setArgER3ARG");

      function argSize (this : access RR_HL) return int;  -- instruction.hpp:586
      pragma Import (CPP, argSize, "_ZN5RR_HL7argSizeEv");
   end;
   use Class_RR_HL;
  -- SLA Instructions
   package Class_SLA_AX is
      type SLA_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:591
      end record;
      pragma Import (CPP, SLA_AX);

      procedure exec (this : access SLA_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:591
      pragma Import (CPP, exec, "_ZN6SLA_AX4execEP9Processor");

      function toStr (this : access SLA_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:591
      pragma Import (CPP, toStr, "_ZN6SLA_AX5toStrEv");

      function opCode (this : access SLA_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:591
      pragma Import (CPP, opCode, "_ZN6SLA_AX6opCodeEv");

      function nbCycles (this : access SLA_AX) return int;  -- instruction.hpp:591
      pragma Import (CPP, nbCycles, "_ZN6SLA_AX8nbCyclesEv");

      function hasArg (this : access SLA_AX) return Extensions.bool;  -- instruction.hpp:591
      pragma Import (CPP, hasArg, "_ZN6SLA_AX6hasArgEv");

      procedure setArg (this : access SLA_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:591
      pragma Import (CPP, setArg, "_ZN6SLA_AX6setArgER3ARG");

      function argSize (this : access SLA_AX) return int;  -- instruction.hpp:591
      pragma Import (CPP, argSize, "_ZN6SLA_AX7argSizeEv");
   end;
   use Class_SLA_AX;
   package Class_SLA_BX is
      type SLA_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:592
      end record;
      pragma Import (CPP, SLA_BX);

      procedure exec (this : access SLA_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:592
      pragma Import (CPP, exec, "_ZN6SLA_BX4execEP9Processor");

      function toStr (this : access SLA_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:592
      pragma Import (CPP, toStr, "_ZN6SLA_BX5toStrEv");

      function opCode (this : access SLA_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:592
      pragma Import (CPP, opCode, "_ZN6SLA_BX6opCodeEv");

      function nbCycles (this : access SLA_BX) return int;  -- instruction.hpp:592
      pragma Import (CPP, nbCycles, "_ZN6SLA_BX8nbCyclesEv");

      function hasArg (this : access SLA_BX) return Extensions.bool;  -- instruction.hpp:592
      pragma Import (CPP, hasArg, "_ZN6SLA_BX6hasArgEv");

      procedure setArg (this : access SLA_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:592
      pragma Import (CPP, setArg, "_ZN6SLA_BX6setArgER3ARG");

      function argSize (this : access SLA_BX) return int;  -- instruction.hpp:592
      pragma Import (CPP, argSize, "_ZN6SLA_BX7argSizeEv");
   end;
   use Class_SLA_BX;
   package Class_SLA_CX is
      type SLA_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:593
      end record;
      pragma Import (CPP, SLA_CX);

      procedure exec (this : access SLA_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:593
      pragma Import (CPP, exec, "_ZN6SLA_CX4execEP9Processor");

      function toStr (this : access SLA_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:593
      pragma Import (CPP, toStr, "_ZN6SLA_CX5toStrEv");

      function opCode (this : access SLA_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:593
      pragma Import (CPP, opCode, "_ZN6SLA_CX6opCodeEv");

      function nbCycles (this : access SLA_CX) return int;  -- instruction.hpp:593
      pragma Import (CPP, nbCycles, "_ZN6SLA_CX8nbCyclesEv");

      function hasArg (this : access SLA_CX) return Extensions.bool;  -- instruction.hpp:593
      pragma Import (CPP, hasArg, "_ZN6SLA_CX6hasArgEv");

      procedure setArg (this : access SLA_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:593
      pragma Import (CPP, setArg, "_ZN6SLA_CX6setArgER3ARG");

      function argSize (this : access SLA_CX) return int;  -- instruction.hpp:593
      pragma Import (CPP, argSize, "_ZN6SLA_CX7argSizeEv");
   end;
   use Class_SLA_CX;
   package Class_SLA_DX is
      type SLA_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:594
      end record;
      pragma Import (CPP, SLA_DX);

      procedure exec (this : access SLA_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:594
      pragma Import (CPP, exec, "_ZN6SLA_DX4execEP9Processor");

      function toStr (this : access SLA_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:594
      pragma Import (CPP, toStr, "_ZN6SLA_DX5toStrEv");

      function opCode (this : access SLA_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:594
      pragma Import (CPP, opCode, "_ZN6SLA_DX6opCodeEv");

      function nbCycles (this : access SLA_DX) return int;  -- instruction.hpp:594
      pragma Import (CPP, nbCycles, "_ZN6SLA_DX8nbCyclesEv");

      function hasArg (this : access SLA_DX) return Extensions.bool;  -- instruction.hpp:594
      pragma Import (CPP, hasArg, "_ZN6SLA_DX6hasArgEv");

      procedure setArg (this : access SLA_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:594
      pragma Import (CPP, setArg, "_ZN6SLA_DX6setArgER3ARG");

      function argSize (this : access SLA_DX) return int;  -- instruction.hpp:594
      pragma Import (CPP, argSize, "_ZN6SLA_DX7argSizeEv");
   end;
   use Class_SLA_DX;
   package Class_SLA_EX is
      type SLA_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:595
      end record;
      pragma Import (CPP, SLA_EX);

      procedure exec (this : access SLA_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:595
      pragma Import (CPP, exec, "_ZN6SLA_EX4execEP9Processor");

      function toStr (this : access SLA_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:595
      pragma Import (CPP, toStr, "_ZN6SLA_EX5toStrEv");

      function opCode (this : access SLA_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:595
      pragma Import (CPP, opCode, "_ZN6SLA_EX6opCodeEv");

      function nbCycles (this : access SLA_EX) return int;  -- instruction.hpp:595
      pragma Import (CPP, nbCycles, "_ZN6SLA_EX8nbCyclesEv");

      function hasArg (this : access SLA_EX) return Extensions.bool;  -- instruction.hpp:595
      pragma Import (CPP, hasArg, "_ZN6SLA_EX6hasArgEv");

      procedure setArg (this : access SLA_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:595
      pragma Import (CPP, setArg, "_ZN6SLA_EX6setArgER3ARG");

      function argSize (this : access SLA_EX) return int;  -- instruction.hpp:595
      pragma Import (CPP, argSize, "_ZN6SLA_EX7argSizeEv");
   end;
   use Class_SLA_EX;
   package Class_SLA_HX is
      type SLA_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:596
      end record;
      pragma Import (CPP, SLA_HX);

      procedure exec (this : access SLA_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:596
      pragma Import (CPP, exec, "_ZN6SLA_HX4execEP9Processor");

      function toStr (this : access SLA_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:596
      pragma Import (CPP, toStr, "_ZN6SLA_HX5toStrEv");

      function opCode (this : access SLA_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:596
      pragma Import (CPP, opCode, "_ZN6SLA_HX6opCodeEv");

      function nbCycles (this : access SLA_HX) return int;  -- instruction.hpp:596
      pragma Import (CPP, nbCycles, "_ZN6SLA_HX8nbCyclesEv");

      function hasArg (this : access SLA_HX) return Extensions.bool;  -- instruction.hpp:596
      pragma Import (CPP, hasArg, "_ZN6SLA_HX6hasArgEv");

      procedure setArg (this : access SLA_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:596
      pragma Import (CPP, setArg, "_ZN6SLA_HX6setArgER3ARG");

      function argSize (this : access SLA_HX) return int;  -- instruction.hpp:596
      pragma Import (CPP, argSize, "_ZN6SLA_HX7argSizeEv");
   end;
   use Class_SLA_HX;
   package Class_SLA_LX is
      type SLA_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:597
      end record;
      pragma Import (CPP, SLA_LX);

      procedure exec (this : access SLA_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:597
      pragma Import (CPP, exec, "_ZN6SLA_LX4execEP9Processor");

      function toStr (this : access SLA_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:597
      pragma Import (CPP, toStr, "_ZN6SLA_LX5toStrEv");

      function opCode (this : access SLA_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:597
      pragma Import (CPP, opCode, "_ZN6SLA_LX6opCodeEv");

      function nbCycles (this : access SLA_LX) return int;  -- instruction.hpp:597
      pragma Import (CPP, nbCycles, "_ZN6SLA_LX8nbCyclesEv");

      function hasArg (this : access SLA_LX) return Extensions.bool;  -- instruction.hpp:597
      pragma Import (CPP, hasArg, "_ZN6SLA_LX6hasArgEv");

      procedure setArg (this : access SLA_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:597
      pragma Import (CPP, setArg, "_ZN6SLA_LX6setArgER3ARG");

      function argSize (this : access SLA_LX) return int;  -- instruction.hpp:597
      pragma Import (CPP, argSize, "_ZN6SLA_LX7argSizeEv");
   end;
   use Class_SLA_LX;
   package Class_SLA_HL is
      type SLA_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:598
      end record;
      pragma Import (CPP, SLA_HL);

      procedure exec (this : access SLA_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:598
      pragma Import (CPP, exec, "_ZN6SLA_HL4execEP9Processor");

      function toStr (this : access SLA_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:598
      pragma Import (CPP, toStr, "_ZN6SLA_HL5toStrEv");

      function opCode (this : access SLA_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:598
      pragma Import (CPP, opCode, "_ZN6SLA_HL6opCodeEv");

      function nbCycles (this : access SLA_HL) return int;  -- instruction.hpp:598
      pragma Import (CPP, nbCycles, "_ZN6SLA_HL8nbCyclesEv");

      function hasArg (this : access SLA_HL) return Extensions.bool;  -- instruction.hpp:598
      pragma Import (CPP, hasArg, "_ZN6SLA_HL6hasArgEv");

      procedure setArg (this : access SLA_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:598
      pragma Import (CPP, setArg, "_ZN6SLA_HL6setArgER3ARG");

      function argSize (this : access SLA_HL) return int;  -- instruction.hpp:598
      pragma Import (CPP, argSize, "_ZN6SLA_HL7argSizeEv");
   end;
   use Class_SLA_HL;
  -- SRA Instructions
   package Class_SRA_AX is
      type SRA_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:602
      end record;
      pragma Import (CPP, SRA_AX);

      procedure exec (this : access SRA_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:602
      pragma Import (CPP, exec, "_ZN6SRA_AX4execEP9Processor");

      function toStr (this : access SRA_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:602
      pragma Import (CPP, toStr, "_ZN6SRA_AX5toStrEv");

      function opCode (this : access SRA_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:602
      pragma Import (CPP, opCode, "_ZN6SRA_AX6opCodeEv");

      function nbCycles (this : access SRA_AX) return int;  -- instruction.hpp:602
      pragma Import (CPP, nbCycles, "_ZN6SRA_AX8nbCyclesEv");

      function hasArg (this : access SRA_AX) return Extensions.bool;  -- instruction.hpp:602
      pragma Import (CPP, hasArg, "_ZN6SRA_AX6hasArgEv");

      procedure setArg (this : access SRA_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:602
      pragma Import (CPP, setArg, "_ZN6SRA_AX6setArgER3ARG");

      function argSize (this : access SRA_AX) return int;  -- instruction.hpp:602
      pragma Import (CPP, argSize, "_ZN6SRA_AX7argSizeEv");
   end;
   use Class_SRA_AX;
   package Class_SRA_BX is
      type SRA_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:603
      end record;
      pragma Import (CPP, SRA_BX);

      procedure exec (this : access SRA_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:603
      pragma Import (CPP, exec, "_ZN6SRA_BX4execEP9Processor");

      function toStr (this : access SRA_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:603
      pragma Import (CPP, toStr, "_ZN6SRA_BX5toStrEv");

      function opCode (this : access SRA_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:603
      pragma Import (CPP, opCode, "_ZN6SRA_BX6opCodeEv");

      function nbCycles (this : access SRA_BX) return int;  -- instruction.hpp:603
      pragma Import (CPP, nbCycles, "_ZN6SRA_BX8nbCyclesEv");

      function hasArg (this : access SRA_BX) return Extensions.bool;  -- instruction.hpp:603
      pragma Import (CPP, hasArg, "_ZN6SRA_BX6hasArgEv");

      procedure setArg (this : access SRA_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:603
      pragma Import (CPP, setArg, "_ZN6SRA_BX6setArgER3ARG");

      function argSize (this : access SRA_BX) return int;  -- instruction.hpp:603
      pragma Import (CPP, argSize, "_ZN6SRA_BX7argSizeEv");
   end;
   use Class_SRA_BX;
   package Class_SRA_CX is
      type SRA_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:604
      end record;
      pragma Import (CPP, SRA_CX);

      procedure exec (this : access SRA_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:604
      pragma Import (CPP, exec, "_ZN6SRA_CX4execEP9Processor");

      function toStr (this : access SRA_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:604
      pragma Import (CPP, toStr, "_ZN6SRA_CX5toStrEv");

      function opCode (this : access SRA_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:604
      pragma Import (CPP, opCode, "_ZN6SRA_CX6opCodeEv");

      function nbCycles (this : access SRA_CX) return int;  -- instruction.hpp:604
      pragma Import (CPP, nbCycles, "_ZN6SRA_CX8nbCyclesEv");

      function hasArg (this : access SRA_CX) return Extensions.bool;  -- instruction.hpp:604
      pragma Import (CPP, hasArg, "_ZN6SRA_CX6hasArgEv");

      procedure setArg (this : access SRA_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:604
      pragma Import (CPP, setArg, "_ZN6SRA_CX6setArgER3ARG");

      function argSize (this : access SRA_CX) return int;  -- instruction.hpp:604
      pragma Import (CPP, argSize, "_ZN6SRA_CX7argSizeEv");
   end;
   use Class_SRA_CX;
   package Class_SRA_DX is
      type SRA_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:605
      end record;
      pragma Import (CPP, SRA_DX);

      procedure exec (this : access SRA_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:605
      pragma Import (CPP, exec, "_ZN6SRA_DX4execEP9Processor");

      function toStr (this : access SRA_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:605
      pragma Import (CPP, toStr, "_ZN6SRA_DX5toStrEv");

      function opCode (this : access SRA_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:605
      pragma Import (CPP, opCode, "_ZN6SRA_DX6opCodeEv");

      function nbCycles (this : access SRA_DX) return int;  -- instruction.hpp:605
      pragma Import (CPP, nbCycles, "_ZN6SRA_DX8nbCyclesEv");

      function hasArg (this : access SRA_DX) return Extensions.bool;  -- instruction.hpp:605
      pragma Import (CPP, hasArg, "_ZN6SRA_DX6hasArgEv");

      procedure setArg (this : access SRA_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:605
      pragma Import (CPP, setArg, "_ZN6SRA_DX6setArgER3ARG");

      function argSize (this : access SRA_DX) return int;  -- instruction.hpp:605
      pragma Import (CPP, argSize, "_ZN6SRA_DX7argSizeEv");
   end;
   use Class_SRA_DX;
   package Class_SRA_EX is
      type SRA_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:606
      end record;
      pragma Import (CPP, SRA_EX);

      procedure exec (this : access SRA_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:606
      pragma Import (CPP, exec, "_ZN6SRA_EX4execEP9Processor");

      function toStr (this : access SRA_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:606
      pragma Import (CPP, toStr, "_ZN6SRA_EX5toStrEv");

      function opCode (this : access SRA_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:606
      pragma Import (CPP, opCode, "_ZN6SRA_EX6opCodeEv");

      function nbCycles (this : access SRA_EX) return int;  -- instruction.hpp:606
      pragma Import (CPP, nbCycles, "_ZN6SRA_EX8nbCyclesEv");

      function hasArg (this : access SRA_EX) return Extensions.bool;  -- instruction.hpp:606
      pragma Import (CPP, hasArg, "_ZN6SRA_EX6hasArgEv");

      procedure setArg (this : access SRA_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:606
      pragma Import (CPP, setArg, "_ZN6SRA_EX6setArgER3ARG");

      function argSize (this : access SRA_EX) return int;  -- instruction.hpp:606
      pragma Import (CPP, argSize, "_ZN6SRA_EX7argSizeEv");
   end;
   use Class_SRA_EX;
   package Class_SRA_HX is
      type SRA_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:607
      end record;
      pragma Import (CPP, SRA_HX);

      procedure exec (this : access SRA_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:607
      pragma Import (CPP, exec, "_ZN6SRA_HX4execEP9Processor");

      function toStr (this : access SRA_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:607
      pragma Import (CPP, toStr, "_ZN6SRA_HX5toStrEv");

      function opCode (this : access SRA_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:607
      pragma Import (CPP, opCode, "_ZN6SRA_HX6opCodeEv");

      function nbCycles (this : access SRA_HX) return int;  -- instruction.hpp:607
      pragma Import (CPP, nbCycles, "_ZN6SRA_HX8nbCyclesEv");

      function hasArg (this : access SRA_HX) return Extensions.bool;  -- instruction.hpp:607
      pragma Import (CPP, hasArg, "_ZN6SRA_HX6hasArgEv");

      procedure setArg (this : access SRA_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:607
      pragma Import (CPP, setArg, "_ZN6SRA_HX6setArgER3ARG");

      function argSize (this : access SRA_HX) return int;  -- instruction.hpp:607
      pragma Import (CPP, argSize, "_ZN6SRA_HX7argSizeEv");
   end;
   use Class_SRA_HX;
   package Class_SRA_LX is
      type SRA_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:608
      end record;
      pragma Import (CPP, SRA_LX);

      procedure exec (this : access SRA_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:608
      pragma Import (CPP, exec, "_ZN6SRA_LX4execEP9Processor");

      function toStr (this : access SRA_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:608
      pragma Import (CPP, toStr, "_ZN6SRA_LX5toStrEv");

      function opCode (this : access SRA_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:608
      pragma Import (CPP, opCode, "_ZN6SRA_LX6opCodeEv");

      function nbCycles (this : access SRA_LX) return int;  -- instruction.hpp:608
      pragma Import (CPP, nbCycles, "_ZN6SRA_LX8nbCyclesEv");

      function hasArg (this : access SRA_LX) return Extensions.bool;  -- instruction.hpp:608
      pragma Import (CPP, hasArg, "_ZN6SRA_LX6hasArgEv");

      procedure setArg (this : access SRA_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:608
      pragma Import (CPP, setArg, "_ZN6SRA_LX6setArgER3ARG");

      function argSize (this : access SRA_LX) return int;  -- instruction.hpp:608
      pragma Import (CPP, argSize, "_ZN6SRA_LX7argSizeEv");
   end;
   use Class_SRA_LX;
   package Class_SRA_HL is
      type SRA_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:609
      end record;
      pragma Import (CPP, SRA_HL);

      procedure exec (this : access SRA_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:609
      pragma Import (CPP, exec, "_ZN6SRA_HL4execEP9Processor");

      function toStr (this : access SRA_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:609
      pragma Import (CPP, toStr, "_ZN6SRA_HL5toStrEv");

      function opCode (this : access SRA_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:609
      pragma Import (CPP, opCode, "_ZN6SRA_HL6opCodeEv");

      function nbCycles (this : access SRA_HL) return int;  -- instruction.hpp:609
      pragma Import (CPP, nbCycles, "_ZN6SRA_HL8nbCyclesEv");

      function hasArg (this : access SRA_HL) return Extensions.bool;  -- instruction.hpp:609
      pragma Import (CPP, hasArg, "_ZN6SRA_HL6hasArgEv");

      procedure setArg (this : access SRA_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:609
      pragma Import (CPP, setArg, "_ZN6SRA_HL6setArgER3ARG");

      function argSize (this : access SRA_HL) return int;  -- instruction.hpp:609
      pragma Import (CPP, argSize, "_ZN6SRA_HL7argSizeEv");
   end;
   use Class_SRA_HL;
  -- SRL Instructions
   package Class_SRL_AX is
      type SRL_AX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:613
      end record;
      pragma Import (CPP, SRL_AX);

      procedure exec (this : access SRL_AX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:613
      pragma Import (CPP, exec, "_ZN6SRL_AX4execEP9Processor");

      function toStr (this : access SRL_AX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:613
      pragma Import (CPP, toStr, "_ZN6SRL_AX5toStrEv");

      function opCode (this : access SRL_AX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:613
      pragma Import (CPP, opCode, "_ZN6SRL_AX6opCodeEv");

      function nbCycles (this : access SRL_AX) return int;  -- instruction.hpp:613
      pragma Import (CPP, nbCycles, "_ZN6SRL_AX8nbCyclesEv");

      function hasArg (this : access SRL_AX) return Extensions.bool;  -- instruction.hpp:613
      pragma Import (CPP, hasArg, "_ZN6SRL_AX6hasArgEv");

      procedure setArg (this : access SRL_AX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:613
      pragma Import (CPP, setArg, "_ZN6SRL_AX6setArgER3ARG");

      function argSize (this : access SRL_AX) return int;  -- instruction.hpp:613
      pragma Import (CPP, argSize, "_ZN6SRL_AX7argSizeEv");
   end;
   use Class_SRL_AX;
   package Class_SRL_BX is
      type SRL_BX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:614
      end record;
      pragma Import (CPP, SRL_BX);

      procedure exec (this : access SRL_BX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:614
      pragma Import (CPP, exec, "_ZN6SRL_BX4execEP9Processor");

      function toStr (this : access SRL_BX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:614
      pragma Import (CPP, toStr, "_ZN6SRL_BX5toStrEv");

      function opCode (this : access SRL_BX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:614
      pragma Import (CPP, opCode, "_ZN6SRL_BX6opCodeEv");

      function nbCycles (this : access SRL_BX) return int;  -- instruction.hpp:614
      pragma Import (CPP, nbCycles, "_ZN6SRL_BX8nbCyclesEv");

      function hasArg (this : access SRL_BX) return Extensions.bool;  -- instruction.hpp:614
      pragma Import (CPP, hasArg, "_ZN6SRL_BX6hasArgEv");

      procedure setArg (this : access SRL_BX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:614
      pragma Import (CPP, setArg, "_ZN6SRL_BX6setArgER3ARG");

      function argSize (this : access SRL_BX) return int;  -- instruction.hpp:614
      pragma Import (CPP, argSize, "_ZN6SRL_BX7argSizeEv");
   end;
   use Class_SRL_BX;
   package Class_SRL_CX is
      type SRL_CX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:615
      end record;
      pragma Import (CPP, SRL_CX);

      procedure exec (this : access SRL_CX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:615
      pragma Import (CPP, exec, "_ZN6SRL_CX4execEP9Processor");

      function toStr (this : access SRL_CX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:615
      pragma Import (CPP, toStr, "_ZN6SRL_CX5toStrEv");

      function opCode (this : access SRL_CX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:615
      pragma Import (CPP, opCode, "_ZN6SRL_CX6opCodeEv");

      function nbCycles (this : access SRL_CX) return int;  -- instruction.hpp:615
      pragma Import (CPP, nbCycles, "_ZN6SRL_CX8nbCyclesEv");

      function hasArg (this : access SRL_CX) return Extensions.bool;  -- instruction.hpp:615
      pragma Import (CPP, hasArg, "_ZN6SRL_CX6hasArgEv");

      procedure setArg (this : access SRL_CX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:615
      pragma Import (CPP, setArg, "_ZN6SRL_CX6setArgER3ARG");

      function argSize (this : access SRL_CX) return int;  -- instruction.hpp:615
      pragma Import (CPP, argSize, "_ZN6SRL_CX7argSizeEv");
   end;
   use Class_SRL_CX;
   package Class_SRL_DX is
      type SRL_DX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:616
      end record;
      pragma Import (CPP, SRL_DX);

      procedure exec (this : access SRL_DX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:616
      pragma Import (CPP, exec, "_ZN6SRL_DX4execEP9Processor");

      function toStr (this : access SRL_DX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:616
      pragma Import (CPP, toStr, "_ZN6SRL_DX5toStrEv");

      function opCode (this : access SRL_DX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:616
      pragma Import (CPP, opCode, "_ZN6SRL_DX6opCodeEv");

      function nbCycles (this : access SRL_DX) return int;  -- instruction.hpp:616
      pragma Import (CPP, nbCycles, "_ZN6SRL_DX8nbCyclesEv");

      function hasArg (this : access SRL_DX) return Extensions.bool;  -- instruction.hpp:616
      pragma Import (CPP, hasArg, "_ZN6SRL_DX6hasArgEv");

      procedure setArg (this : access SRL_DX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:616
      pragma Import (CPP, setArg, "_ZN6SRL_DX6setArgER3ARG");

      function argSize (this : access SRL_DX) return int;  -- instruction.hpp:616
      pragma Import (CPP, argSize, "_ZN6SRL_DX7argSizeEv");
   end;
   use Class_SRL_DX;
   package Class_SRL_EX is
      type SRL_EX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:617
      end record;
      pragma Import (CPP, SRL_EX);

      procedure exec (this : access SRL_EX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:617
      pragma Import (CPP, exec, "_ZN6SRL_EX4execEP9Processor");

      function toStr (this : access SRL_EX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:617
      pragma Import (CPP, toStr, "_ZN6SRL_EX5toStrEv");

      function opCode (this : access SRL_EX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:617
      pragma Import (CPP, opCode, "_ZN6SRL_EX6opCodeEv");

      function nbCycles (this : access SRL_EX) return int;  -- instruction.hpp:617
      pragma Import (CPP, nbCycles, "_ZN6SRL_EX8nbCyclesEv");

      function hasArg (this : access SRL_EX) return Extensions.bool;  -- instruction.hpp:617
      pragma Import (CPP, hasArg, "_ZN6SRL_EX6hasArgEv");

      procedure setArg (this : access SRL_EX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:617
      pragma Import (CPP, setArg, "_ZN6SRL_EX6setArgER3ARG");

      function argSize (this : access SRL_EX) return int;  -- instruction.hpp:617
      pragma Import (CPP, argSize, "_ZN6SRL_EX7argSizeEv");
   end;
   use Class_SRL_EX;
   package Class_SRL_HX is
      type SRL_HX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:618
      end record;
      pragma Import (CPP, SRL_HX);

      procedure exec (this : access SRL_HX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:618
      pragma Import (CPP, exec, "_ZN6SRL_HX4execEP9Processor");

      function toStr (this : access SRL_HX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:618
      pragma Import (CPP, toStr, "_ZN6SRL_HX5toStrEv");

      function opCode (this : access SRL_HX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:618
      pragma Import (CPP, opCode, "_ZN6SRL_HX6opCodeEv");

      function nbCycles (this : access SRL_HX) return int;  -- instruction.hpp:618
      pragma Import (CPP, nbCycles, "_ZN6SRL_HX8nbCyclesEv");

      function hasArg (this : access SRL_HX) return Extensions.bool;  -- instruction.hpp:618
      pragma Import (CPP, hasArg, "_ZN6SRL_HX6hasArgEv");

      procedure setArg (this : access SRL_HX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:618
      pragma Import (CPP, setArg, "_ZN6SRL_HX6setArgER3ARG");

      function argSize (this : access SRL_HX) return int;  -- instruction.hpp:618
      pragma Import (CPP, argSize, "_ZN6SRL_HX7argSizeEv");
   end;
   use Class_SRL_HX;
   package Class_SRL_LX is
      type SRL_LX is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:619
      end record;
      pragma Import (CPP, SRL_LX);

      procedure exec (this : access SRL_LX; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:619
      pragma Import (CPP, exec, "_ZN6SRL_LX4execEP9Processor");

      function toStr (this : access SRL_LX) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:619
      pragma Import (CPP, toStr, "_ZN6SRL_LX5toStrEv");

      function opCode (this : access SRL_LX) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:619
      pragma Import (CPP, opCode, "_ZN6SRL_LX6opCodeEv");

      function nbCycles (this : access SRL_LX) return int;  -- instruction.hpp:619
      pragma Import (CPP, nbCycles, "_ZN6SRL_LX8nbCyclesEv");

      function hasArg (this : access SRL_LX) return Extensions.bool;  -- instruction.hpp:619
      pragma Import (CPP, hasArg, "_ZN6SRL_LX6hasArgEv");

      procedure setArg (this : access SRL_LX; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:619
      pragma Import (CPP, setArg, "_ZN6SRL_LX6setArgER3ARG");

      function argSize (this : access SRL_LX) return int;  -- instruction.hpp:619
      pragma Import (CPP, argSize, "_ZN6SRL_LX7argSizeEv");
   end;
   use Class_SRL_LX;
   package Class_SRL_HL is
      type SRL_HL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:620
      end record;
      pragma Import (CPP, SRL_HL);

      procedure exec (this : access SRL_HL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:620
      pragma Import (CPP, exec, "_ZN6SRL_HL4execEP9Processor");

      function toStr (this : access SRL_HL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:620
      pragma Import (CPP, toStr, "_ZN6SRL_HL5toStrEv");

      function opCode (this : access SRL_HL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:620
      pragma Import (CPP, opCode, "_ZN6SRL_HL6opCodeEv");

      function nbCycles (this : access SRL_HL) return int;  -- instruction.hpp:620
      pragma Import (CPP, nbCycles, "_ZN6SRL_HL8nbCyclesEv");

      function hasArg (this : access SRL_HL) return Extensions.bool;  -- instruction.hpp:620
      pragma Import (CPP, hasArg, "_ZN6SRL_HL6hasArgEv");

      procedure setArg (this : access SRL_HL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:620
      pragma Import (CPP, setArg, "_ZN6SRL_HL6setArgER3ARG");

      function argSize (this : access SRL_HL) return int;  -- instruction.hpp:620
      pragma Import (CPP, argSize, "_ZN6SRL_HL7argSizeEv");
   end;
   use Class_SRL_HL;
  --HALT
   package Class_HALT is
      type HALT is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:624
      end record;
      pragma Import (CPP, HALT);

      procedure exec (this : access HALT; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:624
      pragma Import (CPP, exec, "_ZN4HALT4execEP9Processor");

      function toStr (this : access HALT) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:624
      pragma Import (CPP, toStr, "_ZN4HALT5toStrEv");

      function opCode (this : access HALT) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:624
      pragma Import (CPP, opCode, "_ZN4HALT6opCodeEv");

      function nbCycles (this : access HALT) return int;  -- instruction.hpp:624
      pragma Import (CPP, nbCycles, "_ZN4HALT8nbCyclesEv");

      function hasArg (this : access HALT) return Extensions.bool;  -- instruction.hpp:624
      pragma Import (CPP, hasArg, "_ZN4HALT6hasArgEv");

      procedure setArg (this : access HALT; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:624
      pragma Import (CPP, setArg, "_ZN4HALT6setArgER3ARG");

      function argSize (this : access HALT) return int;  -- instruction.hpp:624
      pragma Import (CPP, argSize, "_ZN4HALT7argSizeEv");
   end;
   use Class_HALT;
  -- STOP
   package Class_STOP is
      type STOP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:628
      end record;
      pragma Import (CPP, STOP);

      procedure exec (this : access STOP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:628
      pragma Import (CPP, exec, "_ZN4STOP4execEP9Processor");

      function toStr (this : access STOP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:628
      pragma Import (CPP, toStr, "_ZN4STOP5toStrEv");

      function opCode (this : access STOP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:628
      pragma Import (CPP, opCode, "_ZN4STOP6opCodeEv");

      function nbCycles (this : access STOP) return int;  -- instruction.hpp:628
      pragma Import (CPP, nbCycles, "_ZN4STOP8nbCyclesEv");

      function hasArg (this : access STOP) return Extensions.bool;  -- instruction.hpp:628
      pragma Import (CPP, hasArg, "_ZN4STOP6hasArgEv");

      procedure setArg (this : access STOP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:628
      pragma Import (CPP, setArg, "_ZN4STOP6setArgER3ARG");

      function argSize (this : access STOP) return int;  -- instruction.hpp:628
      pragma Import (CPP, argSize, "_ZN4STOP7argSizeEv");
   end;
   use Class_STOP;
  -- EI/DI
   package Class_EI is
      type EI is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:632
      end record;
      pragma Import (CPP, EI);

      procedure exec (this : access EI; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:632
      pragma Import (CPP, exec, "_ZN2EI4execEP9Processor");

      function toStr (this : access EI) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:632
      pragma Import (CPP, toStr, "_ZN2EI5toStrEv");

      function opCode (this : access EI) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:632
      pragma Import (CPP, opCode, "_ZN2EI6opCodeEv");

      function nbCycles (this : access EI) return int;  -- instruction.hpp:632
      pragma Import (CPP, nbCycles, "_ZN2EI8nbCyclesEv");

      function hasArg (this : access EI) return Extensions.bool;  -- instruction.hpp:632
      pragma Import (CPP, hasArg, "_ZN2EI6hasArgEv");

      procedure setArg (this : access EI; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:632
      pragma Import (CPP, setArg, "_ZN2EI6setArgER3ARG");

      function argSize (this : access EI) return int;  -- instruction.hpp:632
      pragma Import (CPP, argSize, "_ZN2EI7argSizeEv");
   end;
   use Class_EI;
   package Class_DI is
      type DI is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:633
      end record;
      pragma Import (CPP, DI);

      procedure exec (this : access DI; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:633
      pragma Import (CPP, exec, "_ZN2DI4execEP9Processor");

      function toStr (this : access DI) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:633
      pragma Import (CPP, toStr, "_ZN2DI5toStrEv");

      function opCode (this : access DI) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:633
      pragma Import (CPP, opCode, "_ZN2DI6opCodeEv");

      function nbCycles (this : access DI) return int;  -- instruction.hpp:633
      pragma Import (CPP, nbCycles, "_ZN2DI8nbCyclesEv");

      function hasArg (this : access DI) return Extensions.bool;  -- instruction.hpp:633
      pragma Import (CPP, hasArg, "_ZN2DI6hasArgEv");

      procedure setArg (this : access DI; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:633
      pragma Import (CPP, setArg, "_ZN2DI6setArgER3ARG");

      function argSize (this : access DI) return int;  -- instruction.hpp:633
      pragma Import (CPP, argSize, "_ZN2DI7argSizeEv");
   end;
   use Class_DI;
   package Class_JP is
      type JP is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:635
      end record;
      pragma Import (CPP, JP);

      procedure exec (this : access JP; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:635
      pragma Import (CPP, exec, "_ZN2JP4execEP9Processor");

      function toStr (this : access JP) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:635
      pragma Import (CPP, toStr, "_ZN2JP5toStrEv");

      function opCode (this : access JP) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:635
      pragma Import (CPP, opCode, "_ZN2JP6opCodeEv");

      function nbCycles (this : access JP) return int;  -- instruction.hpp:635
      pragma Import (CPP, nbCycles, "_ZN2JP8nbCyclesEv");

      function hasArg (this : access JP) return Extensions.bool;  -- instruction.hpp:635
      pragma Import (CPP, hasArg, "_ZN2JP6hasArgEv");

      procedure setArg (this : access JP; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:635
      pragma Import (CPP, setArg, "_ZN2JP6setArgER3ARG");

      function argSize (this : access JP) return int;  -- instruction.hpp:635
      pragma Import (CPP, argSize, "_ZN2JP7argSizeEv");
   end;
   use Class_JP;
   package Class_JPNZ is
      type JPNZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:636
      end record;
      pragma Import (CPP, JPNZ);

      procedure exec (this : access JPNZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:636
      pragma Import (CPP, exec, "_ZN4JPNZ4execEP9Processor");

      function toStr (this : access JPNZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:636
      pragma Import (CPP, toStr, "_ZN4JPNZ5toStrEv");

      function opCode (this : access JPNZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:636
      pragma Import (CPP, opCode, "_ZN4JPNZ6opCodeEv");

      function nbCycles (this : access JPNZ) return int;  -- instruction.hpp:636
      pragma Import (CPP, nbCycles, "_ZN4JPNZ8nbCyclesEv");

      function hasArg (this : access JPNZ) return Extensions.bool;  -- instruction.hpp:636
      pragma Import (CPP, hasArg, "_ZN4JPNZ6hasArgEv");

      procedure setArg (this : access JPNZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:636
      pragma Import (CPP, setArg, "_ZN4JPNZ6setArgER3ARG");

      function argSize (this : access JPNZ) return int;  -- instruction.hpp:636
      pragma Import (CPP, argSize, "_ZN4JPNZ7argSizeEv");
   end;
   use Class_JPNZ;
   package Class_JPZ is
      type JPZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:637
      end record;
      pragma Import (CPP, JPZ);

      procedure exec (this : access JPZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:637
      pragma Import (CPP, exec, "_ZN3JPZ4execEP9Processor");

      function toStr (this : access JPZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:637
      pragma Import (CPP, toStr, "_ZN3JPZ5toStrEv");

      function opCode (this : access JPZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:637
      pragma Import (CPP, opCode, "_ZN3JPZ6opCodeEv");

      function nbCycles (this : access JPZ) return int;  -- instruction.hpp:637
      pragma Import (CPP, nbCycles, "_ZN3JPZ8nbCyclesEv");

      function hasArg (this : access JPZ) return Extensions.bool;  -- instruction.hpp:637
      pragma Import (CPP, hasArg, "_ZN3JPZ6hasArgEv");

      procedure setArg (this : access JPZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:637
      pragma Import (CPP, setArg, "_ZN3JPZ6setArgER3ARG");

      function argSize (this : access JPZ) return int;  -- instruction.hpp:637
      pragma Import (CPP, argSize, "_ZN3JPZ7argSizeEv");
   end;
   use Class_JPZ;
   package Class_JPNC is
      type JPNC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:638
      end record;
      pragma Import (CPP, JPNC);

      procedure exec (this : access JPNC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:638
      pragma Import (CPP, exec, "_ZN4JPNC4execEP9Processor");

      function toStr (this : access JPNC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:638
      pragma Import (CPP, toStr, "_ZN4JPNC5toStrEv");

      function opCode (this : access JPNC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:638
      pragma Import (CPP, opCode, "_ZN4JPNC6opCodeEv");

      function nbCycles (this : access JPNC) return int;  -- instruction.hpp:638
      pragma Import (CPP, nbCycles, "_ZN4JPNC8nbCyclesEv");

      function hasArg (this : access JPNC) return Extensions.bool;  -- instruction.hpp:638
      pragma Import (CPP, hasArg, "_ZN4JPNC6hasArgEv");

      procedure setArg (this : access JPNC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:638
      pragma Import (CPP, setArg, "_ZN4JPNC6setArgER3ARG");

      function argSize (this : access JPNC) return int;  -- instruction.hpp:638
      pragma Import (CPP, argSize, "_ZN4JPNC7argSizeEv");
   end;
   use Class_JPNC;
   package Class_JPC is
      type JPC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:639
      end record;
      pragma Import (CPP, JPC);

      procedure exec (this : access JPC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:639
      pragma Import (CPP, exec, "_ZN3JPC4execEP9Processor");

      function toStr (this : access JPC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:639
      pragma Import (CPP, toStr, "_ZN3JPC5toStrEv");

      function opCode (this : access JPC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:639
      pragma Import (CPP, opCode, "_ZN3JPC6opCodeEv");

      function nbCycles (this : access JPC) return int;  -- instruction.hpp:639
      pragma Import (CPP, nbCycles, "_ZN3JPC8nbCyclesEv");

      function hasArg (this : access JPC) return Extensions.bool;  -- instruction.hpp:639
      pragma Import (CPP, hasArg, "_ZN3JPC6hasArgEv");

      procedure setArg (this : access JPC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:639
      pragma Import (CPP, setArg, "_ZN3JPC6setArgER3ARG");

      function argSize (this : access JPC) return int;  -- instruction.hpp:639
      pragma Import (CPP, argSize, "_ZN3JPC7argSizeEv");
   end;
   use Class_JPC;
   package Class_JPHL is
      type JPHL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:640
      end record;
      pragma Import (CPP, JPHL);

      procedure exec (this : access JPHL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:640
      pragma Import (CPP, exec, "_ZN4JPHL4execEP9Processor");

      function toStr (this : access JPHL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:640
      pragma Import (CPP, toStr, "_ZN4JPHL5toStrEv");

      function opCode (this : access JPHL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:640
      pragma Import (CPP, opCode, "_ZN4JPHL6opCodeEv");

      function nbCycles (this : access JPHL) return int;  -- instruction.hpp:640
      pragma Import (CPP, nbCycles, "_ZN4JPHL8nbCyclesEv");

      function hasArg (this : access JPHL) return Extensions.bool;  -- instruction.hpp:640
      pragma Import (CPP, hasArg, "_ZN4JPHL6hasArgEv");

      procedure setArg (this : access JPHL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:640
      pragma Import (CPP, setArg, "_ZN4JPHL6setArgER3ARG");

      function argSize (this : access JPHL) return int;  -- instruction.hpp:640
      pragma Import (CPP, argSize, "_ZN4JPHL7argSizeEv");
   end;
   use Class_JPHL;
   package Class_JR is
      type JR is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:641
      end record;
      pragma Import (CPP, JR);

      procedure exec (this : access JR; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:641
      pragma Import (CPP, exec, "_ZN2JR4execEP9Processor");

      function toStr (this : access JR) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:641
      pragma Import (CPP, toStr, "_ZN2JR5toStrEv");

      function opCode (this : access JR) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:641
      pragma Import (CPP, opCode, "_ZN2JR6opCodeEv");

      function nbCycles (this : access JR) return int;  -- instruction.hpp:641
      pragma Import (CPP, nbCycles, "_ZN2JR8nbCyclesEv");

      function hasArg (this : access JR) return Extensions.bool;  -- instruction.hpp:641
      pragma Import (CPP, hasArg, "_ZN2JR6hasArgEv");

      procedure setArg (this : access JR; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:641
      pragma Import (CPP, setArg, "_ZN2JR6setArgER3ARG");

      function argSize (this : access JR) return int;  -- instruction.hpp:641
      pragma Import (CPP, argSize, "_ZN2JR7argSizeEv");
   end;
   use Class_JR;
   package Class_JRNZ is
      type JRNZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:642
      end record;
      pragma Import (CPP, JRNZ);

      procedure exec (this : access JRNZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:642
      pragma Import (CPP, exec, "_ZN4JRNZ4execEP9Processor");

      function toStr (this : access JRNZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:642
      pragma Import (CPP, toStr, "_ZN4JRNZ5toStrEv");

      function opCode (this : access JRNZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:642
      pragma Import (CPP, opCode, "_ZN4JRNZ6opCodeEv");

      function nbCycles (this : access JRNZ) return int;  -- instruction.hpp:642
      pragma Import (CPP, nbCycles, "_ZN4JRNZ8nbCyclesEv");

      function hasArg (this : access JRNZ) return Extensions.bool;  -- instruction.hpp:642
      pragma Import (CPP, hasArg, "_ZN4JRNZ6hasArgEv");

      procedure setArg (this : access JRNZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:642
      pragma Import (CPP, setArg, "_ZN4JRNZ6setArgER3ARG");

      function argSize (this : access JRNZ) return int;  -- instruction.hpp:642
      pragma Import (CPP, argSize, "_ZN4JRNZ7argSizeEv");
   end;
   use Class_JRNZ;
   package Class_JRZ is
      type JRZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:643
      end record;
      pragma Import (CPP, JRZ);

      procedure exec (this : access JRZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:643
      pragma Import (CPP, exec, "_ZN3JRZ4execEP9Processor");

      function toStr (this : access JRZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:643
      pragma Import (CPP, toStr, "_ZN3JRZ5toStrEv");

      function opCode (this : access JRZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:643
      pragma Import (CPP, opCode, "_ZN3JRZ6opCodeEv");

      function nbCycles (this : access JRZ) return int;  -- instruction.hpp:643
      pragma Import (CPP, nbCycles, "_ZN3JRZ8nbCyclesEv");

      function hasArg (this : access JRZ) return Extensions.bool;  -- instruction.hpp:643
      pragma Import (CPP, hasArg, "_ZN3JRZ6hasArgEv");

      procedure setArg (this : access JRZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:643
      pragma Import (CPP, setArg, "_ZN3JRZ6setArgER3ARG");

      function argSize (this : access JRZ) return int;  -- instruction.hpp:643
      pragma Import (CPP, argSize, "_ZN3JRZ7argSizeEv");
   end;
   use Class_JRZ;
   package Class_JRNC is
      type JRNC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:644
      end record;
      pragma Import (CPP, JRNC);

      procedure exec (this : access JRNC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:644
      pragma Import (CPP, exec, "_ZN4JRNC4execEP9Processor");

      function toStr (this : access JRNC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:644
      pragma Import (CPP, toStr, "_ZN4JRNC5toStrEv");

      function opCode (this : access JRNC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:644
      pragma Import (CPP, opCode, "_ZN4JRNC6opCodeEv");

      function nbCycles (this : access JRNC) return int;  -- instruction.hpp:644
      pragma Import (CPP, nbCycles, "_ZN4JRNC8nbCyclesEv");

      function hasArg (this : access JRNC) return Extensions.bool;  -- instruction.hpp:644
      pragma Import (CPP, hasArg, "_ZN4JRNC6hasArgEv");

      procedure setArg (this : access JRNC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:644
      pragma Import (CPP, setArg, "_ZN4JRNC6setArgER3ARG");

      function argSize (this : access JRNC) return int;  -- instruction.hpp:644
      pragma Import (CPP, argSize, "_ZN4JRNC7argSizeEv");
   end;
   use Class_JRNC;
   package Class_JRC is
      type JRC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:645
      end record;
      pragma Import (CPP, JRC);

      procedure exec (this : access JRC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:645
      pragma Import (CPP, exec, "_ZN3JRC4execEP9Processor");

      function toStr (this : access JRC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:645
      pragma Import (CPP, toStr, "_ZN3JRC5toStrEv");

      function opCode (this : access JRC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:645
      pragma Import (CPP, opCode, "_ZN3JRC6opCodeEv");

      function nbCycles (this : access JRC) return int;  -- instruction.hpp:645
      pragma Import (CPP, nbCycles, "_ZN3JRC8nbCyclesEv");

      function hasArg (this : access JRC) return Extensions.bool;  -- instruction.hpp:645
      pragma Import (CPP, hasArg, "_ZN3JRC6hasArgEv");

      procedure setArg (this : access JRC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:645
      pragma Import (CPP, setArg, "_ZN3JRC6setArgER3ARG");

      function argSize (this : access JRC) return int;  -- instruction.hpp:645
      pragma Import (CPP, argSize, "_ZN3JRC7argSizeEv");
   end;
   use Class_JRC;
   package Class_CALL is
      type CALL is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:647
      end record;
      pragma Import (CPP, CALL);

      procedure exec (this : access CALL; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:647
      pragma Import (CPP, exec, "_ZN4CALL4execEP9Processor");

      function toStr (this : access CALL) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:647
      pragma Import (CPP, toStr, "_ZN4CALL5toStrEv");

      function opCode (this : access CALL) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:647
      pragma Import (CPP, opCode, "_ZN4CALL6opCodeEv");

      function nbCycles (this : access CALL) return int;  -- instruction.hpp:647
      pragma Import (CPP, nbCycles, "_ZN4CALL8nbCyclesEv");

      function hasArg (this : access CALL) return Extensions.bool;  -- instruction.hpp:647
      pragma Import (CPP, hasArg, "_ZN4CALL6hasArgEv");

      procedure setArg (this : access CALL; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:647
      pragma Import (CPP, setArg, "_ZN4CALL6setArgER3ARG");

      function argSize (this : access CALL) return int;  -- instruction.hpp:647
      pragma Import (CPP, argSize, "_ZN4CALL7argSizeEv");
   end;
   use Class_CALL;
   package Class_CALLNZ is
      type CALLNZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:648
      end record;
      pragma Import (CPP, CALLNZ);

      procedure exec (this : access CALLNZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:648
      pragma Import (CPP, exec, "_ZN6CALLNZ4execEP9Processor");

      function toStr (this : access CALLNZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:648
      pragma Import (CPP, toStr, "_ZN6CALLNZ5toStrEv");

      function opCode (this : access CALLNZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:648
      pragma Import (CPP, opCode, "_ZN6CALLNZ6opCodeEv");

      function nbCycles (this : access CALLNZ) return int;  -- instruction.hpp:648
      pragma Import (CPP, nbCycles, "_ZN6CALLNZ8nbCyclesEv");

      function hasArg (this : access CALLNZ) return Extensions.bool;  -- instruction.hpp:648
      pragma Import (CPP, hasArg, "_ZN6CALLNZ6hasArgEv");

      procedure setArg (this : access CALLNZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:648
      pragma Import (CPP, setArg, "_ZN6CALLNZ6setArgER3ARG");

      function argSize (this : access CALLNZ) return int;  -- instruction.hpp:648
      pragma Import (CPP, argSize, "_ZN6CALLNZ7argSizeEv");
   end;
   use Class_CALLNZ;
   package Class_CALLZ is
      type CALLZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:649
      end record;
      pragma Import (CPP, CALLZ);

      procedure exec (this : access CALLZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:649
      pragma Import (CPP, exec, "_ZN5CALLZ4execEP9Processor");

      function toStr (this : access CALLZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:649
      pragma Import (CPP, toStr, "_ZN5CALLZ5toStrEv");

      function opCode (this : access CALLZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:649
      pragma Import (CPP, opCode, "_ZN5CALLZ6opCodeEv");

      function nbCycles (this : access CALLZ) return int;  -- instruction.hpp:649
      pragma Import (CPP, nbCycles, "_ZN5CALLZ8nbCyclesEv");

      function hasArg (this : access CALLZ) return Extensions.bool;  -- instruction.hpp:649
      pragma Import (CPP, hasArg, "_ZN5CALLZ6hasArgEv");

      procedure setArg (this : access CALLZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:649
      pragma Import (CPP, setArg, "_ZN5CALLZ6setArgER3ARG");

      function argSize (this : access CALLZ) return int;  -- instruction.hpp:649
      pragma Import (CPP, argSize, "_ZN5CALLZ7argSizeEv");
   end;
   use Class_CALLZ;
   package Class_CALLNC is
      type CALLNC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:650
      end record;
      pragma Import (CPP, CALLNC);

      procedure exec (this : access CALLNC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:650
      pragma Import (CPP, exec, "_ZN6CALLNC4execEP9Processor");

      function toStr (this : access CALLNC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:650
      pragma Import (CPP, toStr, "_ZN6CALLNC5toStrEv");

      function opCode (this : access CALLNC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:650
      pragma Import (CPP, opCode, "_ZN6CALLNC6opCodeEv");

      function nbCycles (this : access CALLNC) return int;  -- instruction.hpp:650
      pragma Import (CPP, nbCycles, "_ZN6CALLNC8nbCyclesEv");

      function hasArg (this : access CALLNC) return Extensions.bool;  -- instruction.hpp:650
      pragma Import (CPP, hasArg, "_ZN6CALLNC6hasArgEv");

      procedure setArg (this : access CALLNC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:650
      pragma Import (CPP, setArg, "_ZN6CALLNC6setArgER3ARG");

      function argSize (this : access CALLNC) return int;  -- instruction.hpp:650
      pragma Import (CPP, argSize, "_ZN6CALLNC7argSizeEv");
   end;
   use Class_CALLNC;
   package Class_CALLC is
      type CALLC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:651
      end record;
      pragma Import (CPP, CALLC);

      procedure exec (this : access CALLC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:651
      pragma Import (CPP, exec, "_ZN5CALLC4execEP9Processor");

      function toStr (this : access CALLC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:651
      pragma Import (CPP, toStr, "_ZN5CALLC5toStrEv");

      function opCode (this : access CALLC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:651
      pragma Import (CPP, opCode, "_ZN5CALLC6opCodeEv");

      function nbCycles (this : access CALLC) return int;  -- instruction.hpp:651
      pragma Import (CPP, nbCycles, "_ZN5CALLC8nbCyclesEv");

      function hasArg (this : access CALLC) return Extensions.bool;  -- instruction.hpp:651
      pragma Import (CPP, hasArg, "_ZN5CALLC6hasArgEv");

      procedure setArg (this : access CALLC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:651
      pragma Import (CPP, setArg, "_ZN5CALLC6setArgER3ARG");

      function argSize (this : access CALLC) return int;  -- instruction.hpp:651
      pragma Import (CPP, argSize, "_ZN5CALLC7argSizeEv");
   end;
   use Class_CALLC;
   package Class_RST_0x00 is
      type RST_0x00 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:654
      end record;
      pragma Import (CPP, RST_0x00);

      procedure exec (this : access RST_0x00; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:654
      pragma Import (CPP, exec, "_ZN8RST_0x004execEP9Processor");

      function toStr (this : access RST_0x00) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:654
      pragma Import (CPP, toStr, "_ZN8RST_0x005toStrEv");

      function opCode (this : access RST_0x00) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:654
      pragma Import (CPP, opCode, "_ZN8RST_0x006opCodeEv");

      function nbCycles (this : access RST_0x00) return int;  -- instruction.hpp:654
      pragma Import (CPP, nbCycles, "_ZN8RST_0x008nbCyclesEv");

      function hasArg (this : access RST_0x00) return Extensions.bool;  -- instruction.hpp:654
      pragma Import (CPP, hasArg, "_ZN8RST_0x006hasArgEv");

      procedure setArg (this : access RST_0x00; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:654
      pragma Import (CPP, setArg, "_ZN8RST_0x006setArgER3ARG");

      function argSize (this : access RST_0x00) return int;  -- instruction.hpp:654
      pragma Import (CPP, argSize, "_ZN8RST_0x007argSizeEv");
   end;
   use Class_RST_0x00;
   package Class_RST_0x08 is
      type RST_0x08 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:655
      end record;
      pragma Import (CPP, RST_0x08);

      procedure exec (this : access RST_0x08; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:655
      pragma Import (CPP, exec, "_ZN8RST_0x084execEP9Processor");

      function toStr (this : access RST_0x08) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:655
      pragma Import (CPP, toStr, "_ZN8RST_0x085toStrEv");

      function opCode (this : access RST_0x08) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:655
      pragma Import (CPP, opCode, "_ZN8RST_0x086opCodeEv");

      function nbCycles (this : access RST_0x08) return int;  -- instruction.hpp:655
      pragma Import (CPP, nbCycles, "_ZN8RST_0x088nbCyclesEv");

      function hasArg (this : access RST_0x08) return Extensions.bool;  -- instruction.hpp:655
      pragma Import (CPP, hasArg, "_ZN8RST_0x086hasArgEv");

      procedure setArg (this : access RST_0x08; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:655
      pragma Import (CPP, setArg, "_ZN8RST_0x086setArgER3ARG");

      function argSize (this : access RST_0x08) return int;  -- instruction.hpp:655
      pragma Import (CPP, argSize, "_ZN8RST_0x087argSizeEv");
   end;
   use Class_RST_0x08;
   package Class_RST_0x10 is
      type RST_0x10 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:656
      end record;
      pragma Import (CPP, RST_0x10);

      procedure exec (this : access RST_0x10; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:656
      pragma Import (CPP, exec, "_ZN8RST_0x104execEP9Processor");

      function toStr (this : access RST_0x10) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:656
      pragma Import (CPP, toStr, "_ZN8RST_0x105toStrEv");

      function opCode (this : access RST_0x10) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:656
      pragma Import (CPP, opCode, "_ZN8RST_0x106opCodeEv");

      function nbCycles (this : access RST_0x10) return int;  -- instruction.hpp:656
      pragma Import (CPP, nbCycles, "_ZN8RST_0x108nbCyclesEv");

      function hasArg (this : access RST_0x10) return Extensions.bool;  -- instruction.hpp:656
      pragma Import (CPP, hasArg, "_ZN8RST_0x106hasArgEv");

      procedure setArg (this : access RST_0x10; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:656
      pragma Import (CPP, setArg, "_ZN8RST_0x106setArgER3ARG");

      function argSize (this : access RST_0x10) return int;  -- instruction.hpp:656
      pragma Import (CPP, argSize, "_ZN8RST_0x107argSizeEv");
   end;
   use Class_RST_0x10;
   package Class_RST_0x18 is
      type RST_0x18 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:657
      end record;
      pragma Import (CPP, RST_0x18);

      procedure exec (this : access RST_0x18; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:657
      pragma Import (CPP, exec, "_ZN8RST_0x184execEP9Processor");

      function toStr (this : access RST_0x18) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:657
      pragma Import (CPP, toStr, "_ZN8RST_0x185toStrEv");

      function opCode (this : access RST_0x18) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:657
      pragma Import (CPP, opCode, "_ZN8RST_0x186opCodeEv");

      function nbCycles (this : access RST_0x18) return int;  -- instruction.hpp:657
      pragma Import (CPP, nbCycles, "_ZN8RST_0x188nbCyclesEv");

      function hasArg (this : access RST_0x18) return Extensions.bool;  -- instruction.hpp:657
      pragma Import (CPP, hasArg, "_ZN8RST_0x186hasArgEv");

      procedure setArg (this : access RST_0x18; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:657
      pragma Import (CPP, setArg, "_ZN8RST_0x186setArgER3ARG");

      function argSize (this : access RST_0x18) return int;  -- instruction.hpp:657
      pragma Import (CPP, argSize, "_ZN8RST_0x187argSizeEv");
   end;
   use Class_RST_0x18;
   package Class_RST_0x20 is
      type RST_0x20 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:658
      end record;
      pragma Import (CPP, RST_0x20);

      procedure exec (this : access RST_0x20; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:658
      pragma Import (CPP, exec, "_ZN8RST_0x204execEP9Processor");

      function toStr (this : access RST_0x20) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:658
      pragma Import (CPP, toStr, "_ZN8RST_0x205toStrEv");

      function opCode (this : access RST_0x20) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:658
      pragma Import (CPP, opCode, "_ZN8RST_0x206opCodeEv");

      function nbCycles (this : access RST_0x20) return int;  -- instruction.hpp:658
      pragma Import (CPP, nbCycles, "_ZN8RST_0x208nbCyclesEv");

      function hasArg (this : access RST_0x20) return Extensions.bool;  -- instruction.hpp:658
      pragma Import (CPP, hasArg, "_ZN8RST_0x206hasArgEv");

      procedure setArg (this : access RST_0x20; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:658
      pragma Import (CPP, setArg, "_ZN8RST_0x206setArgER3ARG");

      function argSize (this : access RST_0x20) return int;  -- instruction.hpp:658
      pragma Import (CPP, argSize, "_ZN8RST_0x207argSizeEv");
   end;
   use Class_RST_0x20;
   package Class_RST_0x28 is
      type RST_0x28 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:659
      end record;
      pragma Import (CPP, RST_0x28);

      procedure exec (this : access RST_0x28; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:659
      pragma Import (CPP, exec, "_ZN8RST_0x284execEP9Processor");

      function toStr (this : access RST_0x28) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:659
      pragma Import (CPP, toStr, "_ZN8RST_0x285toStrEv");

      function opCode (this : access RST_0x28) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:659
      pragma Import (CPP, opCode, "_ZN8RST_0x286opCodeEv");

      function nbCycles (this : access RST_0x28) return int;  -- instruction.hpp:659
      pragma Import (CPP, nbCycles, "_ZN8RST_0x288nbCyclesEv");

      function hasArg (this : access RST_0x28) return Extensions.bool;  -- instruction.hpp:659
      pragma Import (CPP, hasArg, "_ZN8RST_0x286hasArgEv");

      procedure setArg (this : access RST_0x28; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:659
      pragma Import (CPP, setArg, "_ZN8RST_0x286setArgER3ARG");

      function argSize (this : access RST_0x28) return int;  -- instruction.hpp:659
      pragma Import (CPP, argSize, "_ZN8RST_0x287argSizeEv");
   end;
   use Class_RST_0x28;
   package Class_RST_0x30 is
      type RST_0x30 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:660
      end record;
      pragma Import (CPP, RST_0x30);

      procedure exec (this : access RST_0x30; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:660
      pragma Import (CPP, exec, "_ZN8RST_0x304execEP9Processor");

      function toStr (this : access RST_0x30) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:660
      pragma Import (CPP, toStr, "_ZN8RST_0x305toStrEv");

      function opCode (this : access RST_0x30) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:660
      pragma Import (CPP, opCode, "_ZN8RST_0x306opCodeEv");

      function nbCycles (this : access RST_0x30) return int;  -- instruction.hpp:660
      pragma Import (CPP, nbCycles, "_ZN8RST_0x308nbCyclesEv");

      function hasArg (this : access RST_0x30) return Extensions.bool;  -- instruction.hpp:660
      pragma Import (CPP, hasArg, "_ZN8RST_0x306hasArgEv");

      procedure setArg (this : access RST_0x30; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:660
      pragma Import (CPP, setArg, "_ZN8RST_0x306setArgER3ARG");

      function argSize (this : access RST_0x30) return int;  -- instruction.hpp:660
      pragma Import (CPP, argSize, "_ZN8RST_0x307argSizeEv");
   end;
   use Class_RST_0x30;
   package Class_RST_0x38 is
      type RST_0x38 is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:661
      end record;
      pragma Import (CPP, RST_0x38);

      procedure exec (this : access RST_0x38; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:661
      pragma Import (CPP, exec, "_ZN8RST_0x384execEP9Processor");

      function toStr (this : access RST_0x38) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:661
      pragma Import (CPP, toStr, "_ZN8RST_0x385toStrEv");

      function opCode (this : access RST_0x38) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:661
      pragma Import (CPP, opCode, "_ZN8RST_0x386opCodeEv");

      function nbCycles (this : access RST_0x38) return int;  -- instruction.hpp:661
      pragma Import (CPP, nbCycles, "_ZN8RST_0x388nbCyclesEv");

      function hasArg (this : access RST_0x38) return Extensions.bool;  -- instruction.hpp:661
      pragma Import (CPP, hasArg, "_ZN8RST_0x386hasArgEv");

      procedure setArg (this : access RST_0x38; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:661
      pragma Import (CPP, setArg, "_ZN8RST_0x386setArgER3ARG");

      function argSize (this : access RST_0x38) return int;  -- instruction.hpp:661
      pragma Import (CPP, argSize, "_ZN8RST_0x387argSizeEv");
   end;
   use Class_RST_0x38;
   package Class_RET is
      type RET is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:663
      end record;
      pragma Import (CPP, RET);

      procedure exec (this : access RET; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:663
      pragma Import (CPP, exec, "_ZN3RET4execEP9Processor");

      function toStr (this : access RET) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:663
      pragma Import (CPP, toStr, "_ZN3RET5toStrEv");

      function opCode (this : access RET) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:663
      pragma Import (CPP, opCode, "_ZN3RET6opCodeEv");

      function nbCycles (this : access RET) return int;  -- instruction.hpp:663
      pragma Import (CPP, nbCycles, "_ZN3RET8nbCyclesEv");

      function hasArg (this : access RET) return Extensions.bool;  -- instruction.hpp:663
      pragma Import (CPP, hasArg, "_ZN3RET6hasArgEv");

      procedure setArg (this : access RET; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:663
      pragma Import (CPP, setArg, "_ZN3RET6setArgER3ARG");

      function argSize (this : access RET) return int;  -- instruction.hpp:663
      pragma Import (CPP, argSize, "_ZN3RET7argSizeEv");
   end;
   use Class_RET;
   package Class_RETNZ is
      type RETNZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:664
      end record;
      pragma Import (CPP, RETNZ);

      procedure exec (this : access RETNZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:664
      pragma Import (CPP, exec, "_ZN5RETNZ4execEP9Processor");

      function toStr (this : access RETNZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:664
      pragma Import (CPP, toStr, "_ZN5RETNZ5toStrEv");

      function opCode (this : access RETNZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:664
      pragma Import (CPP, opCode, "_ZN5RETNZ6opCodeEv");

      function nbCycles (this : access RETNZ) return int;  -- instruction.hpp:664
      pragma Import (CPP, nbCycles, "_ZN5RETNZ8nbCyclesEv");

      function hasArg (this : access RETNZ) return Extensions.bool;  -- instruction.hpp:664
      pragma Import (CPP, hasArg, "_ZN5RETNZ6hasArgEv");

      procedure setArg (this : access RETNZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:664
      pragma Import (CPP, setArg, "_ZN5RETNZ6setArgER3ARG");

      function argSize (this : access RETNZ) return int;  -- instruction.hpp:664
      pragma Import (CPP, argSize, "_ZN5RETNZ7argSizeEv");
   end;
   use Class_RETNZ;
   package Class_RETZ is
      type RETZ is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:665
      end record;
      pragma Import (CPP, RETZ);

      procedure exec (this : access RETZ; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:665
      pragma Import (CPP, exec, "_ZN4RETZ4execEP9Processor");

      function toStr (this : access RETZ) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:665
      pragma Import (CPP, toStr, "_ZN4RETZ5toStrEv");

      function opCode (this : access RETZ) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:665
      pragma Import (CPP, opCode, "_ZN4RETZ6opCodeEv");

      function nbCycles (this : access RETZ) return int;  -- instruction.hpp:665
      pragma Import (CPP, nbCycles, "_ZN4RETZ8nbCyclesEv");

      function hasArg (this : access RETZ) return Extensions.bool;  -- instruction.hpp:665
      pragma Import (CPP, hasArg, "_ZN4RETZ6hasArgEv");

      procedure setArg (this : access RETZ; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:665
      pragma Import (CPP, setArg, "_ZN4RETZ6setArgER3ARG");

      function argSize (this : access RETZ) return int;  -- instruction.hpp:665
      pragma Import (CPP, argSize, "_ZN4RETZ7argSizeEv");
   end;
   use Class_RETZ;
   package Class_RETNC is
      type RETNC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:666
      end record;
      pragma Import (CPP, RETNC);

      procedure exec (this : access RETNC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:666
      pragma Import (CPP, exec, "_ZN5RETNC4execEP9Processor");

      function toStr (this : access RETNC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:666
      pragma Import (CPP, toStr, "_ZN5RETNC5toStrEv");

      function opCode (this : access RETNC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:666
      pragma Import (CPP, opCode, "_ZN5RETNC6opCodeEv");

      function nbCycles (this : access RETNC) return int;  -- instruction.hpp:666
      pragma Import (CPP, nbCycles, "_ZN5RETNC8nbCyclesEv");

      function hasArg (this : access RETNC) return Extensions.bool;  -- instruction.hpp:666
      pragma Import (CPP, hasArg, "_ZN5RETNC6hasArgEv");

      procedure setArg (this : access RETNC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:666
      pragma Import (CPP, setArg, "_ZN5RETNC6setArgER3ARG");

      function argSize (this : access RETNC) return int;  -- instruction.hpp:666
      pragma Import (CPP, argSize, "_ZN5RETNC7argSizeEv");
   end;
   use Class_RETNC;
   package Class_RETC is
      type RETC is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:667
      end record;
      pragma Import (CPP, RETC);

      procedure exec (this : access RETC; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:667
      pragma Import (CPP, exec, "_ZN4RETC4execEP9Processor");

      function toStr (this : access RETC) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:667
      pragma Import (CPP, toStr, "_ZN4RETC5toStrEv");

      function opCode (this : access RETC) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:667
      pragma Import (CPP, opCode, "_ZN4RETC6opCodeEv");

      function nbCycles (this : access RETC) return int;  -- instruction.hpp:667
      pragma Import (CPP, nbCycles, "_ZN4RETC8nbCyclesEv");

      function hasArg (this : access RETC) return Extensions.bool;  -- instruction.hpp:667
      pragma Import (CPP, hasArg, "_ZN4RETC6hasArgEv");

      procedure setArg (this : access RETC; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:667
      pragma Import (CPP, setArg, "_ZN4RETC6setArgER3ARG");

      function argSize (this : access RETC) return int;  -- instruction.hpp:667
      pragma Import (CPP, argSize, "_ZN4RETC7argSizeEv");
   end;
   use Class_RETC;
   package Class_RETI is
      type RETI is limited new Instruction with record
         u_arg : aliased instructionargs_hpp.InstructionArg;  -- instruction.hpp:668
      end record;
      pragma Import (CPP, RETI);

      procedure exec (this : access RETI; p : access processor_hpp.Class_Processor.Processor);  -- instruction.hpp:668
      pragma Import (CPP, exec, "_ZN4RETI4execEP9Processor");

      function toStr (this : access RETI) return Interfaces.C.Strings.chars_ptr;  -- instruction.hpp:668
      pragma Import (CPP, toStr, "_ZN4RETI5toStrEv");

      function opCode (this : access RETI) return bits_stdint_uintn_h.uint16_t;  -- instruction.hpp:668
      pragma Import (CPP, opCode, "_ZN4RETI6opCodeEv");

      function nbCycles (this : access RETI) return int;  -- instruction.hpp:668
      pragma Import (CPP, nbCycles, "_ZN4RETI8nbCyclesEv");

      function hasArg (this : access RETI) return Extensions.bool;  -- instruction.hpp:668
      pragma Import (CPP, hasArg, "_ZN4RETI6hasArgEv");

      procedure setArg (this : access RETI; arg : access instructionargs_hpp.InstructionArg);  -- instruction.hpp:668
      pragma Import (CPP, setArg, "_ZN4RETI6setArgER3ARG");

      function argSize (this : access RETI) return int;  -- instruction.hpp:668
      pragma Import (CPP, argSize, "_ZN4RETI7argSizeEv");
   end;
   use Class_RETI;
end instruction_hpp;
