pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with processor_hpp;
with memory_hpp;
with lcd_hpp;
with timer_handler_hpp;
with Interfaces.C.Extensions;
with word_operations_hpp;
limited with screen_hpp;

package gameboy_hpp is

  -- * File : gameboy.hpp
  -- *
  -- * File created by : Corentin Gay
  -- * File was created the : 08/10/2017
  --  

  -- Execute a single step loop of the emulator
  -- Tries to start the gameboy, if memory not set
  -- returns false.
  -- Functions called by emulator for interacting
  -- with the memory to correctly set the joypad lines (FF00)
   package Class_Gameboy is
      type Gameboy is limited record
         p : aliased processor_hpp.Class_Processor.Processor;  -- gameboy.hpp:44
         mem : aliased memory_hpp.Class_Memory.Memory;  -- gameboy.hpp:45
         the_lcd : aliased lcd_hpp.Class_LCD.LCD;  -- gameboy.hpp:46
         timers : aliased timer_handler_hpp.Class_TimerHandler.TimerHandler;  -- gameboy.hpp:47
         running : aliased Extensions.bool;  -- gameboy.hpp:49
         keys : aliased word_operations_hpp.uint8_t;  -- gameboy.hpp:50
      end record;
      pragma Import (CPP, Gameboy);

      function New_Gameboy return Gameboy;  -- gameboy.hpp:19
      pragma CPP_Constructor (New_Gameboy, "_ZN7GameboyC1Ev");

      procedure step (this : access Gameboy; s : access screen_hpp.Class_Screen.Screen);  -- gameboy.hpp:22
      pragma Import (CPP, step, "_ZN7Gameboy4stepER6Screen");

      procedure changeGame (this : access Gameboy; game : access word_operations_hpp.uint8_t);  -- gameboy.hpp:24
      pragma Import (CPP, changeGame, "_ZN7Gameboy10changeGameEPh");

      function isRunning (this : access Gameboy) return Extensions.bool;  -- gameboy.hpp:26
      pragma Import (CPP, isRunning, "_ZN7Gameboy9isRunningEv");

      procedure stop (this : access Gameboy);  -- gameboy.hpp:27
      pragma Import (CPP, stop, "_ZN7Gameboy4stopEv");

      function readyToLaunch (this : access Gameboy) return Extensions.bool;  -- gameboy.hpp:31
      pragma Import (CPP, readyToLaunch, "_ZN7Gameboy13readyToLaunchEv");

      procedure setKeys (this : access Gameboy; value : word_operations_hpp.uint8_t);  -- gameboy.hpp:35
      pragma Import (CPP, setKeys, "_ZN7Gameboy7setKeysEh");

      procedure setJoypadInterrupt (this : access Gameboy);  -- gameboy.hpp:37
      pragma Import (CPP, setJoypadInterrupt, "_ZN7Gameboy18setJoypadInterruptEv");

      procedure wireComponents (this : access Gameboy);  -- gameboy.hpp:39
      pragma Import (CPP, wireComponents, "_ZN7Gameboy14wireComponentsEv");

      procedure clockCycle (this : access Gameboy);  -- gameboy.hpp:40
      pragma Import (CPP, clockCycle, "_ZN7Gameboy10clockCycleEv");

      procedure checkKeys (this : access Gameboy; atomic : word_operations_hpp.uint8_t);  -- gameboy.hpp:41
      pragma Import (CPP, checkKeys, "_ZN7Gameboy9checkKeysEh");

      procedure interruptJOYPAD (this : access Gameboy);  -- gameboy.hpp:42
      pragma Import (CPP, interruptJOYPAD, "_ZN7Gameboy15interruptJOYPADEv");
   end;
   use Class_Gameboy;
end gameboy_hpp;
