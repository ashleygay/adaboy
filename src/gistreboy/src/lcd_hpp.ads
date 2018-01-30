pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with array_hpp;
with bitset_hpp;
limited with memory_hpp;
limited with video_hpp;
limited with screen_hpp;
with word_operations_hpp;
with Interfaces.C.Extensions;

package lcd_hpp is

  -- * File : lcd.hpp
  -- *
  -- * File created by : Corentin Gay
  -- * File was created at : 01/12/2017
  --  

  --<===================================>
  --	LCD CONTROLLER STATES
  --<===================================>
  -- Different status of the LCD controller:
  -- Mode 0: The LCD controller is in the H-Blank period and
  --         the CPU can access both the display RAM (8000h-9FFFh)
  --         and OAM (FE00h-FE9Fh)
  -- Mode 1: The LCD controller is in the V-Blank period (or the
  --         display is disabled) and the CPU can access both the
  --         display RAM (8000h-9FFFh) and OAM (FE00h-FE9Fh)
  -- Mode 2: The LCD controller is reading from OAM memory.
  --         The CPU <cannot> access OAM memory (FE00h-FE9Fh)
  --         during this period.
  -- Mode 3: The LCD controller is reading from both OAM and VRAM,
  --         The CPU <cannot> access OAM and VRAM during this period.
  --         CGB Mode: Cannot access Palette Data (FF69,FF6B) either.
  -- Mode 2  2_____2_____2_____2_____2_____2___________________2____
  -- Mode 3  _33____33____33____33____33____33__________________3___
  -- Mode 0  ___000___000___000___000___000___000________________000
  -- Mode 1  ____________________________________11111111111111_____
  -- 

   type LCD;
   type State is record
      state : aliased LCDState;  -- ./lcd.hpp:54
      duration : aliased int;  -- ./lcd.hpp:58
   end record;
   pragma Convention (C_Pass_By_Copy, State);
   type LCD_states_array is array (0 .. 3) of aliased State;
   package Class_LCD is
      type LCD is limited record
         pixels : aliased array_hpp.Class_c_array.c_array;  -- ./lcd.hpp:104
         CONTROL : aliased bitset_hpp.Class_bitset.bitset;  -- ./lcd.hpp:119
         STATUS : aliased bitset_hpp.Class_bitset.bitset;  -- ./lcd.hpp:135
         u_mem : aliased access memory_hpp.Class_Memory.Memory;  -- ./lcd.hpp:137
         video : aliased access video_hpp.Class_Video.Video;  -- ./lcd.hpp:138
         line : aliased int;  -- ./lcd.hpp:152
         current_mode : aliased State;  -- ./lcd.hpp:156
         clock : aliased int;  -- ./lcd.hpp:160
         sprites : aliased array_hpp.Class_c_array.c_array;  -- ./lcd.hpp:162
         on_line : aliased array_hpp.Class_c_array.c_array;  -- ./lcd.hpp:163
         states : aliased LCD_states_array;  -- ./lcd.hpp:170
      end record;
      pragma Import (CPP, LCD);

      function New_LCD (mem : access memory_hpp.Class_Memory.Memory) return LCD;  -- ./lcd.hpp:71
      pragma CPP_Constructor (New_LCD, "_ZN3LCDC1ER6Memory");

      procedure update_variables (this : access LCD; elapsed_time : int);  -- ./lcd.hpp:78
      pragma Import (CPP, update_variables, "_ZN3LCD16update_variablesEi");

      procedure step
        (this : access LCD;
         elapsed_time : int;
         s : access screen_hpp.Class_Screen.Screen);  -- ./lcd.hpp:80
      pragma Import (CPP, step, "_ZN3LCD4stepEiR6Screen");

      procedure render_tiles (this : access LCD; current_line : int);  -- ./lcd.hpp:83
      pragma Import (CPP, render_tiles, "_ZN3LCD12render_tilesEi");

      procedure render_sprites (this : access LCD; current_line : int);  -- ./lcd.hpp:85
      pragma Import (CPP, render_sprites, "_ZN3LCD14render_spritesEi");

      procedure check_lyc (this : access LCD);  -- ./lcd.hpp:95
      pragma Import (CPP, check_lyc, "_ZN3LCD9check_lycEv");

      procedure check_interrupt_stat (this : access LCD; num_bit : int);  -- ./lcd.hpp:97
      pragma Import (CPP, check_interrupt_stat, "_ZN3LCD20check_interrupt_statEi");

      procedure draw (this : access LCD; s : access screen_hpp.Class_Screen.Screen);  -- ./lcd.hpp:99
      pragma Import (CPP, draw, "_ZN3LCD4drawER6Screen");

      procedure draw_scanline (this : access LCD);  -- ./lcd.hpp:101
      pragma Import (CPP, draw_scanline, "_ZN3LCD13draw_scanlineEv");

      function get_tile_num
        (this : access LCD;
         tilemap_addr : word_operations_hpp.uint16_t;
         x : word_operations_hpp.uint8_t;
         y : word_operations_hpp.uint8_t;
         is_signed : Extensions.bool) return word_operations_hpp.int16_t;  -- ./lcd.hpp:140
      pragma Import (CPP, get_tile_num, "_ZN3LCD12get_tile_numEthhb");

      function get_tile_address
        (this : access LCD;
         tile_addr : word_operations_hpp.uint16_t;
         tilenum : word_operations_hpp.int16_t;
         is_signed : Extensions.bool) return word_operations_hpp.uint16_t;  -- ./lcd.hpp:143
      pragma Import (CPP, get_tile_address, "_ZN3LCD16get_tile_addressEtsb");

      function get_color_id
        (this : access LCD;
         tile_addr : word_operations_hpp.uint16_t;
         x : word_operations_hpp.uint8_t;
         y : word_operations_hpp.uint8_t) return word_operations_hpp.uint8_t;  -- ./lcd.hpp:146
      pragma Import (CPP, get_color_id, "_ZN3LCD12get_color_idEthh");

      function get_color
        (this : access LCD;
         id : word_operations_hpp.uint8_t;
         palette : word_operations_hpp.uint8_t) return int;  -- ./lcd.hpp:148
      pragma Import (CPP, get_color, "_ZN3LCD9get_colorEhh");
   end;
   use Class_LCD;
  -- Represents the number of clock cycles
  -- that we are spending in that mode.
  --		 *	This function updates the bitset that are used
  --		 *	to represent the different registers of the LCD.
  --		  

  --render the tile pixels for the current line 
  --render the sprites pixels for the current line 
  --	  	  map of pixel of the current screen 
  --	   	  0 = White
  --	   	  1 = Light Gray
  --	   	  2 = Dark Gray
  --	   	  3 = Black
  --        	 

  --	<==========================>
  --		LCD CONTROL
  --	<==========================>
  --	 Bit 7 - LCD Display Enable             (0=Off, 1=On)
  --	 Bit 6 - Window Tile Map Display Select (0=9800-9BFF, 1=9C00-9FFF)
  --	 Bit 5 - Window Display Enable          (0=Off, 1=On)
  --	 Bit 4 - BG & Window Tile Data Select   (0=8800-97FF, 1=8000-8FFF)
  --	 Bit 3 - BG Tile Map Display Select     (0=9800-9BFF, 1=9C00-9FFF)
  --	 Bit 2 - OBJ (Sprite) Size              (0=8x8, 1=8x16)
  --	 Bit 1 - OBJ (Sprite) Display Enable    (0=Off, 1=On)
  --	 Bit 0 - BG/Window Display/Priority     (0=Off, 1=On)
  -- 

  --	<==========================>
  --		STAT REGISTER
  --	<==========================>
  --	 Bit 6 - LYC=LY Coincidence Interrupt (1=Enable) (Read/Write)
  --	 Bit 5 - Mode 2 OAM Interrupt         (1=Enable) (Read/Write)
  --	 Bit 4 - Mode 1 V-Blank Interrupt     (1=Enable) (Read/Write)
  --	 Bit 3 - Mode 0 H-Blank Interrupt     (1=Enable) (Read/Write)
  --	 Bit 2 - Coincidence Flag  (0:LYC<>LY, 1:LYC=LY) (Read Only)
  --	 Bit 1-0 - Mode Flag       (Mode 0-3, see below) (Read Only)
  --           0: During H-Blank
  --           1: During V-Blank
  --           2: During Searching OAM
  --           3: During Transferring Data to LCD Driver
  -- 

  -- Current line that we are rendering
  -- 0-154
  -- Current LCD Mode
  -- Elapsed time since last mode change
  -- Array used to render the sprites
end lcd_hpp;
