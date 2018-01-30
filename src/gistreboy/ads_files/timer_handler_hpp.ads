pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with memory_hpp;
with Interfaces.C.Extensions;
with word_operations_hpp;
with bitset_hpp;

package timer_handler_hpp is

  -- Get clocks number associated with TAC
   type TimerHandler_clocks_nbs_array is array (0 .. 3) of aliased int;
   package Class_TimerHandler is
      type TimerHandler is limited record
         mem : aliased access memory_hpp.Class_Memory.Memory;  -- ./timer_handler.hpp:21
         elapsed_time : aliased int;  -- ./timer_handler.hpp:23
         clocks_nb : aliased int;  -- ./timer_handler.hpp:25
         timer_enable : aliased Extensions.bool;  -- ./timer_handler.hpp:27
         DIV : aliased word_operations_hpp.uint8_t;  -- ./timer_handler.hpp:30
         div_counter : aliased int;  -- ./timer_handler.hpp:31
         TIMA : aliased word_operations_hpp.uint8_t;  -- ./timer_handler.hpp:34
         TMA : aliased word_operations_hpp.uint8_t;  -- ./timer_handler.hpp:37
         TAC : aliased bitset_hpp.template_bitset_3.instance;  -- ./timer_handler.hpp:47
         clocks_nbs : aliased TimerHandler_clocks_nbs_array;  -- ./timer_handler.hpp:48
      end record;
      pragma Import (CPP, TimerHandler);

      function New_TimerHandler (mem : access memory_hpp.Class_Memory.Memory) return TimerHandler;  -- ./timer_handler.hpp:9
      pragma CPP_Constructor (New_TimerHandler, "_ZN12TimerHandlerC1ER6Memory");

      procedure step (this : access TimerHandler; cpu_cycles : int);  -- ./timer_handler.hpp:11
      pragma Import (CPP, step, "_ZN12TimerHandler4stepEi");

      procedure interrupt (this : access TimerHandler);  -- ./timer_handler.hpp:13
      pragma Import (CPP, interrupt, "_ZN12TimerHandler9interruptEv");

      procedure updateVariables (this : access TimerHandler);  -- ./timer_handler.hpp:14
      pragma Import (CPP, updateVariables, "_ZN12TimerHandler15updateVariablesEv");

      procedure updateMemory (this : access TimerHandler);  -- ./timer_handler.hpp:15
      pragma Import (CPP, updateMemory, "_ZN12TimerHandler12updateMemoryEv");

      function getClockNumber (this : access TimerHandler) return int;  -- ./timer_handler.hpp:18
      pragma Import (CPP, getClockNumber, "_ZN12TimerHandler14getClockNumberEv");
   end;
   use Class_TimerHandler;
  -- FF04
  -- FF05
  -- FF06
  --Bit	2 - Timer Enable	(0=Disable, 1=Enable)
  --Bits 1-0 - Main Frequency Divider
  --	00:	4096 Hz (Increase every 1024 clocks)
  --	01: 262144 Hz (	“	“	16 clocks)
  --	10: 65536 Hz (	“	“	64 clocks)
  --	11: 16386 Hz (	“	“	256 clocks)
  -- 

end timer_handler_hpp;
