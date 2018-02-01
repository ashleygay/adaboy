pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with array_hpp;
with bitset_hpp;
limited with memory_hpp;
limited with video_hpp;
with word_operations_hpp;

package lcd_hpp is

   type LCDState is 
     (Mode0,
      Mode1,
      Mode2,
      Mode3);
   pragma Convention (C, LCDState);  -- lcd.hpp:18

   package Class_State is
      type State is limited record
         state : aliased LCDState;  -- lcd.hpp:23
         duration : aliased int;  -- lcd.hpp:27
      end record;
      pragma Import (CPP, State);

      function can_access_VRAM (this : access constant State) return Extensions.bool;  -- lcd.hpp:29
      pragma Import (CPP, can_access_VRAM, "_ZNK5State15can_access_VRAMEv");

      function can_access_OAM (this : access constant State) return Extensions.bool;  -- lcd.hpp:31
      pragma Import (CPP, can_access_OAM, "_ZNK5State14can_access_OAMEv");
   end;
   use Class_State;
   type LCD_states_array is array (0 .. 3) of aliased State;
   package Class_LCD is
      type LCD is limited record
         pixels : aliased array_hpp.template_array_c_array_160.instance;  -- lcd.hpp:119
         CONTROL : aliased bitset_hpp.template_bitset_8.instance;  -- lcd.hpp:134
         STATUS : aliased bitset_hpp.template_bitset_8.instance;  -- lcd.hpp:150
         u_mem : aliased access memory_hpp.Class_Memory.Memory;  -- lcd.hpp:152
         video : aliased access video_hpp.Class_Video.Video;  -- lcd.hpp:153
         line : aliased int;  -- lcd.hpp:167
         current_mode : aliased State;  -- lcd.hpp:171
         clock : aliased int;  -- lcd.hpp:175
         sprites : aliased array_hpp.template_array_Class_Sprite_40.instance;  -- lcd.hpp:177
         on_line : aliased array_hpp.template_array_Class_Sprite_40.instance;  -- lcd.hpp:178
         states : aliased LCD_states_array;  -- lcd.hpp:185
      end record;
      pragma Import (CPP, LCD);

      function New_LCD (mem : access memory_hpp.Class_Memory.Memory) return LCD;  -- lcd.hpp:86
      pragma CPP_Constructor (New_LCD, "_ZN3LCDC1ER6Memory");

      procedure update_variables (this : access LCD; elapsed_time : int);  -- lcd.hpp:93
      pragma Import (CPP, update_variables, "_ZN3LCD16update_variablesEi");

      procedure step
        (this : access LCD;
         elapsed_time : int;
         s : access unsigned_char);  -- lcd.hpp:95
      pragma Import (CPP, step, "_ZN3LCD4stepEiPh");

      procedure render_tiles (this : access LCD; current_line : int);  -- lcd.hpp:98
      pragma Import (CPP, render_tiles, "_ZN3LCD12render_tilesEi");

      procedure render_sprites (this : access LCD; current_line : int);  -- lcd.hpp:100
      pragma Import (CPP, render_sprites, "_ZN3LCD14render_spritesEi");

      procedure check_lyc (this : access LCD);  -- lcd.hpp:110
      pragma Import (CPP, check_lyc, "_ZN3LCD9check_lycEv");

      procedure check_interrupt_stat (this : access LCD; num_bit : int);  -- lcd.hpp:112
      pragma Import (CPP, check_interrupt_stat, "_ZN3LCD20check_interrupt_statEi");

      procedure draw (this : access LCD; s : access unsigned_char);  -- lcd.hpp:114
      pragma Import (CPP, draw, "_ZN3LCD4drawEPh");

      procedure draw_scanline (this : access LCD);  -- lcd.hpp:116
      pragma Import (CPP, draw_scanline, "_ZN3LCD13draw_scanlineEv");

      function get_tile_num
        (this : access LCD;
         tilemap_addr : word_operations_hpp.uint16_t;
         x : word_operations_hpp.uint8_t;
         y : word_operations_hpp.uint8_t;
         is_signed : Extensions.bool) return word_operations_hpp.int16_t;  -- lcd.hpp:155
      pragma Import (CPP, get_tile_num, "_ZN3LCD12get_tile_numEthhb");

      function get_tile_address
        (this : access LCD;
         tile_addr : word_operations_hpp.uint16_t;
         tilenum : word_operations_hpp.int16_t;
         is_signed : Extensions.bool) return word_operations_hpp.uint16_t;  -- lcd.hpp:158
      pragma Import (CPP, get_tile_address, "_ZN3LCD16get_tile_addressEtsb");

      function get_color_id
        (this : access LCD;
         tile_addr : word_operations_hpp.uint16_t;
         x : word_operations_hpp.uint8_t;
         y : word_operations_hpp.uint8_t) return word_operations_hpp.uint8_t;  -- lcd.hpp:161
      pragma Import (CPP, get_color_id, "_ZN3LCD12get_color_idEthh");

      function get_color
        (this : access LCD;
         id : word_operations_hpp.uint8_t;
         palette : word_operations_hpp.uint8_t) return int;  -- lcd.hpp:163
      pragma Import (CPP, get_color, "_ZN3LCD9get_colorEhh");
   end;
   use Class_LCD;
end lcd_hpp;
