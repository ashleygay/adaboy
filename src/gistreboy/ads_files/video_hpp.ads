pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with word_operations_hpp;
limited with processor_hpp;
with Interfaces.C.Extensions;
limited with array_hpp;

package video_hpp is

  -- NOTE: There is no difference between read/write for perms
  -- If we try to read/write potentially protected memory,
  -- we return _accessible otherwise we return true.
  -- Change permission on protected memory:
  -- VRAM (0x8000-0x9FFF) and OAM (0xFE00-0xFE9F)
  -- actually wx - 7  
   type Video_video_memory_array is array (0 .. 65535) of aliased word_operations_hpp.uint8_t;
   package Class_Video is
      type Video is limited record
         u_proc : aliased access processor_hpp.Class_Processor.Processor;  -- ./video.hpp:59
         video_memory : aliased Video_video_memory_array;  -- ./video.hpp:60
         u_OAM_accessible : aliased Extensions.bool;  -- ./video.hpp:61
         u_VRAM_accessible : aliased Extensions.bool;  -- ./video.hpp:62
      end record;
      pragma Import (CPP, Video);

      function New_Video (proc : access processor_hpp.Class_Processor.Processor) return Video;  -- ./video.hpp:11
      pragma CPP_Constructor (New_Video, "_ZN5VideoC1ER9Processor");

      function in_range (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:13
      pragma Import (CPP, in_range, "_ZN5Video8in_rangeEt");

      function read (this : access Video; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./video.hpp:15
      pragma Import (CPP, read, "_ZN5Video4readEt");

      procedure write
        (this : access Video;
         byte : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./video.hpp:16
      pragma Import (CPP, write, "_ZN5Video5writeEht");

      function simple_read (this : access Video; address : word_operations_hpp.uint16_t) return word_operations_hpp.uint8_t;  -- ./video.hpp:18
      pragma Import (CPP, simple_read, "_ZN5Video11simple_readEt");

      procedure simple_write
        (this : access Video;
         byte : word_operations_hpp.uint8_t;
         address : word_operations_hpp.uint16_t);  -- ./video.hpp:19
      pragma Import (CPP, simple_write, "_ZN5Video12simple_writeEht");

      procedure dma_transfer
        (this : access Video;
         beg_src : word_operations_hpp.uint16_t;
         end_src : word_operations_hpp.uint16_t);  -- ./video.hpp:21
      pragma Import (CPP, dma_transfer, "_ZN5Video12dma_transferEtt");

      function is_accessible (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:26
      pragma Import (CPP, is_accessible, "_ZN5Video13is_accessibleEt");

      function can_read (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:28
      pragma Import (CPP, can_read, "_ZN5Video8can_readEt");

      function can_write (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:29
      pragma Import (CPP, can_write, "_ZN5Video9can_writeEt");

      procedure set_VRAM_accessible (this : access Video; accessible : Extensions.bool);  -- ./video.hpp:33
      pragma Import (CPP, set_VRAM_accessible, "_ZN5Video19set_VRAM_accessibleEb");

      procedure set_OAM_accessible (this : access Video; accessible : Extensions.bool);  -- ./video.hpp:34
      pragma Import (CPP, set_OAM_accessible, "_ZN5Video18set_OAM_accessibleEb");

      function get_sprites (this : access Video; sprites : access array_hpp.template_array_Class_Sprite_40.instance) return word_operations_hpp.size_t;  -- ./video.hpp:36
      pragma Import (CPP, get_sprites, "_ZN5Video11get_spritesERSt5arrayI6SpriteLj40EE");

      function get_lcd_control (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:38
      pragma Import (CPP, get_lcd_control, "_ZN5Video15get_lcd_controlEv");

      function get_lcd_status (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:39
      pragma Import (CPP, get_lcd_status, "_ZN5Video14get_lcd_statusEv");

      function get_scrolly (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:40
      pragma Import (CPP, get_scrolly, "_ZN5Video11get_scrollyEv");

      function get_scrollx (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:41
      pragma Import (CPP, get_scrollx, "_ZN5Video11get_scrollxEv");

      function get_ly (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:42
      pragma Import (CPP, get_ly, "_ZN5Video6get_lyEv");

      function get_lyc (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:43
      pragma Import (CPP, get_lyc, "_ZN5Video7get_lycEv");

      function get_wy (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:44
      pragma Import (CPP, get_wy, "_ZN5Video6get_wyEv");

      function get_wx (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:45
      pragma Import (CPP, get_wx, "_ZN5Video6get_wxEv");

      function get_bgp (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:46
      pragma Import (CPP, get_bgp, "_ZN5Video7get_bgpEv");

      function get_obp0 (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:47
      pragma Import (CPP, get_obp0, "_ZN5Video8get_obp0Ev");

      function get_obp1 (this : access Video) return word_operations_hpp.uint8_t;  -- ./video.hpp:48
      pragma Import (CPP, get_obp1, "_ZN5Video8get_obp1Ev");

      procedure set_lcd_status (this : access Video; status : word_operations_hpp.uint8_t);  -- ./video.hpp:50
      pragma Import (CPP, set_lcd_status, "_ZN5Video14set_lcd_statusEh");

      procedure set_lcd_status_mode (this : access Video; mode : word_operations_hpp.uint8_t);  -- ./video.hpp:51
      pragma Import (CPP, set_lcd_status_mode, "_ZN5Video19set_lcd_status_modeEh");

      procedure set_ly (this : access Video; ly : word_operations_hpp.uint8_t);  -- ./video.hpp:52
      pragma Import (CPP, set_ly, "_ZN5Video6set_lyEh");

      function is_OAM (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:55
      pragma Import (CPP, is_OAM, "_ZN5Video6is_OAMEt");

      function is_VRAM (this : access Video; address : word_operations_hpp.uint16_t) return Extensions.bool;  -- ./video.hpp:56
      pragma Import (CPP, is_VRAM, "_ZN5Video7is_VRAMEt");
   end;
   use Class_Video;
end video_hpp;
