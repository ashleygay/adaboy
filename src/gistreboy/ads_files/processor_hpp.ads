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

   package Class_Processor is
      type Processor is limited record
         flag : aliased registers_hpp.Class_FlagRegister.FlagRegister;  -- ./processor.hpp:28
         A : aliased registers_hpp.Register;  -- ./processor.hpp:30
         B : aliased registers_hpp.Register;  -- ./processor.hpp:31
         C : aliased registers_hpp.Register;  -- ./processor.hpp:32
         D : aliased registers_hpp.Register;  -- ./processor.hpp:33
         E : aliased registers_hpp.Register;  -- ./processor.hpp:34
         H : aliased registers_hpp.Register;  -- ./processor.hpp:35
         L : aliased registers_hpp.Register;  -- ./processor.hpp:36
         PC : aliased registers_hpp.DRegister;  -- ./processor.hpp:38
         SP : aliased registers_hpp.DRegister;  -- ./processor.hpp:39
         IME : aliased Extensions.bool;  -- ./processor.hpp:45
         IMEDelay : aliased Extensions.bool;  -- ./processor.hpp:46
         currentInstruction : System.Address;  -- ./processor.hpp:48
         iset : aliased instructionset_hpp.Class_InstructionSet.InstructionSet;  -- ./processor.hpp:51
         mem : access memory_hpp.Class_Memory.Memory;  -- ./processor.hpp:55
         halted : aliased Extensions.bool;  -- ./processor.hpp:58
         stopped : aliased Extensions.bool;  -- ./processor.hpp:59
      end record;
      pragma Import (CPP, Processor);

      function New_Processor return Processor;  -- ./processor.hpp:26
      pragma CPP_Constructor (New_Processor, "_ZN9ProcessorC1Ev");

      function step (this : access Processor) return int;  -- ./processor.hpp:64
      pragma Import (CPP, step, "_ZN9Processor4stepEv");

      function read (this : access Processor; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./processor.hpp:68
      pragma Import (CPP, read, "_ZN9Processor4readEt");

      procedure write
        (this : access Processor;
         value : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./processor.hpp:70
      pragma Import (CPP, write, "_ZN9Processor5writeEht");

      function simple_read (this : access Processor; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./processor.hpp:72
      pragma Import (CPP, simple_read, "_ZN9Processor11simple_readEt");

      procedure simple_write
        (this : access Processor;
         value : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./processor.hpp:74
      pragma Import (CPP, simple_write, "_ZN9Processor12simple_writeEht");

      procedure setMemory (this : access Processor; memo : access memory_hpp.Class_Memory.Memory);  -- ./processor.hpp:76
      pragma Import (CPP, setMemory, "_ZN9Processor9setMemoryEP6Memory");

      procedure enableIME (this : access Processor);  -- ./processor.hpp:80
      pragma Import (CPP, enableIME, "_ZN9Processor9enableIMEEv");

      procedure disableIME (this : access Processor);  -- ./processor.hpp:81
      pragma Import (CPP, disableIME, "_ZN9Processor10disableIMEEv");

      procedure enableIMEDelay (this : access Processor);  -- ./processor.hpp:84
      pragma Import (CPP, enableIMEDelay, "_ZN9Processor14enableIMEDelayEv");

      procedure HALT (this : access Processor);  -- ./processor.hpp:95
      pragma Import (CPP, HALT, "_ZN9Processor4HALTEv");

      procedure STOP (this : access Processor);  -- ./processor.hpp:103
      pragma Import (CPP, STOP, "_ZN9Processor4STOPEv");

      procedure push_word (this : access Processor; word : word_operations_hpp.uint16_t);  -- ./processor.hpp:107
      pragma Import (CPP, push_word, "_ZN9Processor9push_wordEt");

      function pop_word (this : access Processor) return word_operations_hpp.uint16_t;  -- ./processor.hpp:108
      pragma Import (CPP, pop_word, "_ZN9Processor8pop_wordEv");

      function handleInterrupts (this : access Processor) return int;  -- ./processor.hpp:112
      pragma Import (CPP, handleInterrupts, "_ZN9Processor16handleInterruptsEv");

      procedure setupInterrupt (this : access Processor; inter : unsigned);  -- ./processor.hpp:115
      pragma Import (CPP, setupInterrupt, "_ZN9Processor14setupInterruptEj");

      function execCurrentInstruction (this : access Processor) return int;  -- ./processor.hpp:117
      pragma Import (CPP, execCurrentInstruction, "_ZN9Processor22execCurrentInstructionEv");

      procedure fetchNextInstruction (this : access Processor);  -- ./processor.hpp:119
      pragma Import (CPP, fetchNextInstruction, "_ZN9Processor20fetchNextInstructionEv");

      procedure operator_as (this : access Processor; arg2 : access constant Processor);  -- ./processor.hpp:122
      pragma Import (CPP, operator_as, "_ZN9ProcessoraSERKS_");

      INTERRUPT_VECTOR : aliased word_operations_hpp.uint16_t;  -- ./processor.hpp:43
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
