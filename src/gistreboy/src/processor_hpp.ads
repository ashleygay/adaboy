pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with registers_hpp;
with Interfaces.C.Extensions;
with System;
with instructionset_hpp;
limited with memory_hpp;
with word_operations_hpp;

package processor_hpp is

  -- * File : processor.hpp
  -- *
  -- * This file represents the processor class
  -- *
  -- * File created by : Arnaud Bastie
  -- * File was created the : 29/08/2017
  --  

  -- Default values taken from TCAGBD docs
   package Class_Processor is
      type Processor is limited record
         flag : aliased registers_hpp.Class_FlagRegister.FlagRegister;  -- ./processor.hpp:41
         A : aliased registers_hpp.Register;  -- ./processor.hpp:43
         B : aliased registers_hpp.Register;  -- ./processor.hpp:44
         C : aliased registers_hpp.Register;  -- ./processor.hpp:45
         D : aliased registers_hpp.Register;  -- ./processor.hpp:46
         E : aliased registers_hpp.Register;  -- ./processor.hpp:47
         H : aliased registers_hpp.Register;  -- ./processor.hpp:48
         L : aliased registers_hpp.Register;  -- ./processor.hpp:49
         PC : aliased registers_hpp.DRegister;  -- ./processor.hpp:51
         SP : aliased registers_hpp.DRegister;  -- ./processor.hpp:52
         IME : aliased Extensions.bool;  -- ./processor.hpp:58
         IMEDelay : aliased Extensions.bool;  -- ./processor.hpp:59
         currentInstruction : System.Address;  -- ./processor.hpp:61
         iset : aliased instructionset_hpp.Class_InstructionSet.InstructionSet;  -- ./processor.hpp:64
         u_mem : access memory_hpp.Class_Memory.Memory;  -- ./processor.hpp:68
         halted : aliased Extensions.bool;  -- ./processor.hpp:71
         stopped : aliased Extensions.bool;  -- ./processor.hpp:72
      end record;
      pragma Import (CPP, Processor);

      function New_Processor return Processor;  -- ./processor.hpp:26
      pragma CPP_Constructor (New_Processor, "_ZN9ProcessorC1Ev");

      function step (this : access Processor) return int;  -- ./processor.hpp:77
      pragma Import (CPP, step, "_ZN9Processor4stepEv");

      --  skipped func _read

      --  skipped func _write

      --  skipped func _simple_read

      --  skipped func _simple_write

      procedure setMemory (this : access Processor; mem : access memory_hpp.Class_Memory.Memory);  -- ./processor.hpp:89
      pragma Import (CPP, setMemory, "_ZN9Processor9setMemoryEP6Memory");

      procedure enableIME (this : access Processor);  -- ./processor.hpp:93
      pragma Import (CPP, enableIME, "_ZN9Processor9enableIMEEv");

      procedure disableIME (this : access Processor);  -- ./processor.hpp:94
      pragma Import (CPP, disableIME, "_ZN9Processor10disableIMEEv");

      procedure enableIMEDelay (this : access Processor);  -- ./processor.hpp:97
      pragma Import (CPP, enableIMEDelay, "_ZN9Processor14enableIMEDelayEv");

      procedure HALT (this : access Processor);  -- ./processor.hpp:108
      pragma Import (CPP, HALT, "_ZN9Processor4HALTEv");

      procedure STOP (this : access Processor);  -- ./processor.hpp:116
      pragma Import (CPP, STOP, "_ZN9Processor4STOPEv");

      procedure push_word (this : access Processor; word : word_operations_hpp.uint16_t);  -- ./processor.hpp:120
      pragma Import (CPP, push_word, "_ZN9Processor9push_wordEt");

      function pop_word (this : access Processor) return word_operations_hpp.uint16_t;  -- ./processor.hpp:121
      pragma Import (CPP, pop_word, "_ZN9Processor8pop_wordEv");

      --  skipped func _handleInterrupts

      --  skipped func _setupInterrupt

      --  skipped func _execCurrentInstruction

      --  skipped func _fetchNextInstruction

      procedure operator_as (this : access Processor; arg2 : access constant Processor);  -- ./processor.hpp:135
      pragma Import (CPP, operator_as, "_ZN9ProcessoraSERKS_");

      INTERRUPT_VECTOR : aliased word_operations_hpp.uint16_t;  -- ./processor.hpp:56
      pragma Import (CPP, INTERRUPT_VECTOR, "_ZN9Processor16INTERRUPT_VECTORE");
   end;
   use Class_Processor;
  -- InstructionSet containing all instructions.
  -- Used to resolve all memory operations
  -- Read/Write as wall as charging next instruction etc
  -- They cannot be both true at the same time
  --Function used by the gameboy class
  -- returns the number of cycles that takes the instruction
  -- Those functions are used by the instructions to read/write
  -- memory values
  -- Enable/Disable IME
  -- Delayed version should be called from EI instruction only
  -- Enter halt mode,
  -- If (IF & IE) => an interrupt is enabled and active
  -- then we leave halt mode
  -- the behavior is then dependant on IME
  -- if IME is active we execute the interrupt and clean IF.
  -- if IME is not active then we continue execution of
  -- instructions and we do not clean IF.
  -- Enter stop mode
  -- Disable all interrupts except JOYPAD
  -- The programmer should clear IE before stopping
  -- The programmer must select bits prior to entering
  -- stop mode in order to be able to leave it correctly
  -- Functions for pushing word on the stack
  -- Returns 0 if there was no interrupt to do
  -- Setup PC and the stack for a jump to the interrupt vect
end processor_hpp;
