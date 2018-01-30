pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with array_hpp;
with Interfaces.C.Extensions;
limited with processor_hpp;
with cartridge_hpp;
with video_hpp;
with word_operations_hpp;

package memory_hpp is

  -- This class abstracts any memory access done by the processor, it will find
  -- out which type of memory and what it must be done depending on the address
  -- Rebuild a cartridge with a new rom
  --Resets memory values to their default state
   package Class_Memory is
      type Memory is limited record
         memory : aliased array_hpp.template_array_unsigned_char_65536.instance;  -- ./memory.hpp:53
         u_ready : aliased Extensions.bool;  -- ./memory.hpp:55
         processor : aliased access processor_hpp.Class_Processor.Processor;  -- ./memory.hpp:57
         the_cartridge : aliased cartridge_hpp.Class_Cartridge.Cartridge;  -- ./memory.hpp:58
         the_video : aliased video_hpp.Class_Video.Video;  -- ./memory.hpp:59
      end record;
      pragma Import (CPP, Memory);

      function New_Memory (proc : access processor_hpp.Class_Processor.Processor) return Memory;  -- ./memory.hpp:15
      pragma CPP_Constructor (New_Memory, "_ZN6MemoryC1ER9Processor");

      function read (this : access Memory; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./memory.hpp:17
      pragma Import (CPP, read, "_ZN6Memory4readEt");

      procedure write
        (this : access Memory;
         byte : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./memory.hpp:18
      pragma Import (CPP, write, "_ZN6Memory5writeEht");

      function simple_read (this : access Memory; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./memory.hpp:20
      pragma Import (CPP, simple_read, "_ZN6Memory11simple_readEt");

      procedure simple_write
        (this : access Memory;
         byte : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./memory.hpp:21
      pragma Import (CPP, simple_write, "_ZN6Memory12simple_writeEht");

      procedure change_game (this : access Memory; cart : access word_operations_hpp.uint8_t);  -- ./memory.hpp:24
      pragma Import (CPP, change_game, "_ZN6Memory11change_gameEPh");

      procedure resetMemory (this : access Memory);  -- ./memory.hpp:27
      pragma Import (CPP, resetMemory, "_ZN6Memory11resetMemoryEv");

      function get_video (this : access Memory) return access video_hpp.Class_Video.Video;  -- ./memory.hpp:29
      pragma Import (CPP, get_video, "_ZN6Memory9get_videoEv");

      function get_cartridge (this : access Memory) return access cartridge_hpp.Class_Cartridge.Cartridge;  -- ./memory.hpp:30
      pragma Import (CPP, get_cartridge, "_ZN6Memory13get_cartridgeEv");

      function is_ready (this : access Memory) return Extensions.bool;  -- ./memory.hpp:32
      pragma Import (CPP, is_ready, "_ZN6Memory8is_readyEv");

      procedure reset (this : access Memory);  -- ./memory.hpp:34
      pragma Import (CPP, reset, "_ZN6Memory5resetEv");

      procedure set_interrupt_flag (this : access Memory; interrupt : unsigned);  -- ./memory.hpp:39
      pragma Import (CPP, set_interrupt_flag, "_ZN6Memory18set_interrupt_flagEj");

      procedure reset_interrupt_flag (this : access Memory; interrupt : unsigned);  -- ./memory.hpp:43
      pragma Import (CPP, reset_interrupt_flag, "_ZN6Memory20reset_interrupt_flagEj");

      function get_interrupt_flags (this : access Memory) return word_operations_hpp.uint8_t;  -- ./memory.hpp:46
      pragma Import (CPP, get_interrupt_flags, "_ZN6Memory19get_interrupt_flagsEv");

      function get_interrupt_enable (this : access Memory) return word_operations_hpp.uint8_t;  -- ./memory.hpp:47
      pragma Import (CPP, get_interrupt_enable, "_ZN6Memory20get_interrupt_enableEv");

      function get_joypad (this : access Memory) return word_operations_hpp.uint8_t;  -- ./memory.hpp:48
      pragma Import (CPP, get_joypad, "_ZN6Memory10get_joypadEv");

      procedure set_joypad (this : access Memory; byte : word_operations_hpp.uint8_t);  -- ./memory.hpp:49
      pragma Import (CPP, set_joypad, "_ZN6Memory10set_joypadEh");
   end;
   use Class_Memory;
  -- Zeroes the desired interrupt to enable it
  -- Set the desired interrupt to 1
  -- Called from interrupt handler to "consume" the interrupt
  -- Get specific values in memory
end memory_hpp;
