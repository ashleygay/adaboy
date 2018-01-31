pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with word_operations_hpp;
with Interfaces.C.Extensions;

package cartridge_hpp is

  -- We use this method to change the currently running game.
  -- The gameboy should not be running while calling it.
  -- It initializes the rom and the ram to zero.
  -- FIXME: actually implement permissions
  --the actual assembly of the cartridge separated in banks of 32kB  
   type Cartridge_rom_array is array (0 .. 2097151) of aliased word_operations_hpp.uint8_t;
   type Cartridge_boot_rom_array is array (0 .. 255) of aliased word_operations_hpp.uint8_t;
   type Cartridge_ram_array is array (0 .. 32767) of aliased word_operations_hpp.uint8_t;
   package Class_Cartridge is
      type Cartridge is limited record
         rom : aliased Cartridge_rom_array;  -- ./cartridge.hpp:41
         boot_rom : aliased Cartridge_boot_rom_array;  -- ./cartridge.hpp:68
         c_type : aliased word_operations_hpp.uint8_t;  -- ./cartridge.hpp:71
         mbc : aliased int;  -- ./cartridge.hpp:76
         ram : aliased Cartridge_ram_array;  -- ./cartridge.hpp:79
         rom_size : aliased word_operations_hpp.size_t;  -- ./cartridge.hpp:81
         ram_size : aliased word_operations_hpp.size_t;  -- ./cartridge.hpp:82
         current_rom_bank : aliased word_operations_hpp.uint8_t;  -- ./cartridge.hpp:84
         current_ram_bank : aliased word_operations_hpp.uint8_t;  -- ./cartridge.hpp:85
         ram_enable_u : aliased Extensions.bool;  -- ./cartridge.hpp:87
         rom_ram_mode_u : aliased Extensions.bool;  -- ./cartridge.hpp:88
         has_ram_u : aliased Extensions.bool;  -- ./cartridge.hpp:90
         has_battery_u : aliased Extensions.bool;  -- ./cartridge.hpp:91
         has_timer_u : aliased Extensions.bool;  -- ./cartridge.hpp:92
         has_rumble_u : aliased Extensions.bool;  -- ./cartridge.hpp:93
         has_boot_u : aliased Extensions.bool;  -- ./cartridge.hpp:95
         initialized : aliased Extensions.bool;  -- ./cartridge.hpp:97
      end record;
      pragma Import (CPP, Cartridge);

      function New_Cartridge return Cartridge;  -- ./cartridge.hpp:9
      pragma CPP_Constructor (New_Cartridge, "_ZN9CartridgeC1Ev");

      procedure change_game (this : access Cartridge; cart : access word_operations_hpp.uint8_t);  -- ./cartridge.hpp:14
      pragma Import (CPP, change_game, "_ZN9Cartridge11change_gameEPh");

      function in_range (this : access Cartridge; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./cartridge.hpp:16
      pragma Import (CPP, in_range, "_ZN9Cartridge8in_rangeEt");

      function addr_in_range
        (this : access Cartridge;
         address : word_operations_hpp.uint16_t;
         min : word_operations_hpp.uint16_t;
         max : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./cartridge.hpp:18
      pragma Import (CPP, addr_in_range, "_ZN9Cartridge13addr_in_rangeEttt");

      function read (this : access Cartridge; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./cartridge.hpp:20
      pragma Import (CPP, read, "_ZN9Cartridge4readEt");

      procedure write
        (this : access Cartridge;
         byte : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./cartridge.hpp:21
      pragma Import (CPP, write, "_ZN9Cartridge5writeEht");

      function can_read (this : access Cartridge; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./cartridge.hpp:24
      pragma Import (CPP, can_read, "_ZN9Cartridge8can_readEt");

      function can_write (this : access Cartridge; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./cartridge.hpp:25
      pragma Import (CPP, can_write, "_ZN9Cartridge9can_writeEt");

      function ram_enable (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:27
      pragma Import (CPP, ram_enable, "_ZN9Cartridge10ram_enableEv");

      function has_boot (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:28
      pragma Import (CPP, has_boot, "_ZN9Cartridge8has_bootEv");

      function rom_ram_mode (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:30
      pragma Import (CPP, rom_ram_mode, "_ZN9Cartridge12rom_ram_modeEv");

      function has_ram (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:31
      pragma Import (CPP, has_ram, "_ZN9Cartridge7has_ramEv");

      function has_battery (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:32
      pragma Import (CPP, has_battery, "_ZN9Cartridge11has_batteryEv");

      function has_timer (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:33
      pragma Import (CPP, has_timer, "_ZN9Cartridge9has_timerEv");

      function has_rumble (this : access Cartridge) return Extensions.bool;  -- ./cartridge.hpp:34
      pragma Import (CPP, has_rumble, "_ZN9Cartridge10has_rumbleEv");

      procedure fill_zeroes
        (this : access Cartridge;
         memory : access word_operations_hpp.uint8_t;
         size : word_operations_hpp.size_t);  -- ./cartridge.hpp:36
      pragma Import (CPP, fill_zeroes, "_ZN9Cartridge11fill_zeroesEPhy");
   end;
   use Class_Cartridge;
  -- a program inside the gameboy that boots the machine
  --     and jumps to the location of the animated sequence
  --     inside the rom  

  --This array has been generated with the xd utility tool.
  -- the type of the cartidge see manual  
  -- the MBC of the cartridge, chip that will extend address space,
  --     no MBC is a simple 32kb cartidge like Tetris
  --     no MBC is 0, MM01 is 4  

  -- the internal ram of the cartridge  
  -- can be upper 2 bit of rom_bank_number  
  -- false if rom mode, true if ram mode  
  -- true when boot rom is finished  
end cartridge_hpp;
