pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__draw.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__draw.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E021 : Short_Integer; pragma Import (Ada, E021, "ada__real_time_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "system__tasking__protected_objects_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "system__tasking__protected_objects__multiprocessors_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "system__tasking__restricted__stages_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "bmp_fonts_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "cortex_m__cache_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "bitmap_color_conversion_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "hal__sdmmc_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "ft5336_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "hershey_fonts_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "bitmapped_drawing_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ravenscar_time_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "sdmmc_init_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "soft_drawing_bitmap_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "memory_mapped_bitmap_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "stm32__adc_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "stm32__dac_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "stm32__dma__interrupts_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "stm32__dma2d_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "stm32__dma2d__interrupt_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "stm32__dma2d__polling_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "stm32__dma2d_bitmap_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "stm32__exti_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "stm32__fmc_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "stm32__i2c_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "stm32__power_control_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "stm32__rcc_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "stm32__rtc_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "stm32__spi_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "stm32__spi__dma_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "stm32__gpio_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "stm32__sdmmc_interrupt_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "stm32__i2s_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "stm32__syscfg_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "stm32__sdmmc_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "stm32__device_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "stm32__ltdc_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "stm32__sai_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "stm32__setup_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "wm8994_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "audio_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "touch_panel_ft5336_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "sdcard_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "stm32__sdram_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "framebuffer_ltdc_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "framebuffer_rk043fn48h_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "stm32__board_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "last_chance_handler_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "lcd_std_out_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "stm32__user_button_E");


   procedure adainit is
      procedure Start_Slave_CPUs;
      pragma Import (C, Start_Slave_CPUs, "__gnat_start_slave_cpus");
   begin

      Ada.Real_Time'Elab_Body;
      E021 := E021 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E087 := E087 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E091 := E091 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E083 := E083 + 1;
      E013 := E013 + 1;
      Cortex_M.Cache'Elab_Body;
      E143 := E143 + 1;
      E195 := E195 + 1;
      HAL.SDMMC'ELAB_SPEC;
      E149 := E149 + 1;
      FT5336'ELAB_BODY;
      E206 := E206 + 1;
      E212 := E212 + 1;
      E210 := E210 + 1;
      Ravenscar_Time'Elab_Body;
      E169 := E169 + 1;
      E147 := E147 + 1;
      Soft_Drawing_Bitmap'Elab_Body;
      E197 := E197 + 1;
      Memory_Mapped_Bitmap'Elab_Body;
      E193 := E193 + 1;
      STM32.ADC'ELAB_SPEC;
      E100 := E100 + 1;
      E103 := E103 + 1;
      E109 := E109 + 1;
      E178 := E178 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E181 := E181 + 1;
      E183 := E183 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E191 := E191 + 1;
      E117 := E117 + 1;
      E187 := E187 + 1;
      STM32.I2C'ELAB_BODY;
      E123 := E123 + 1;
      E134 := E134 + 1;
      E113 := E113 + 1;
      STM32.RTC'ELAB_BODY;
      E131 := E131 + 1;
      STM32.SPI'ELAB_BODY;
      E157 := E157 + 1;
      STM32.SPI.DMA'ELAB_BODY;
      E160 := E160 + 1;
      STM32.GPIO'ELAB_BODY;
      E111 := E111 + 1;
      E153 := E153 + 1;
      STM32.DEVICE'ELAB_SPEC;
      E096 := E096 + 1;
      STM32.SDMMC'ELAB_BODY;
      E140 := E140 + 1;
      STM32.I2S'ELAB_BODY;
      E127 := E127 + 1;
      E115 := E115 + 1;
      STM32.LTDC'ELAB_BODY;
      E199 := E199 + 1;
      E165 := E165 + 1;
      E167 := E167 + 1;
      WM8994'ELAB_BODY;
      E172 := E172 + 1;
      Audio'Elab_Spec;
      Framebuffer_Rk043fn48h'Elab_Body;
      E174 := E174 + 1;
      STM32.BOARD'ELAB_SPEC;
      E074 := E074 + 1;
      Sdcard'Elab_Body;
      E202 := E202 + 1;
      E185 := E185 + 1;
      Framebuffer_Ltdc'Elab_Body;
      E176 := E176 + 1;
      Audio'Elab_Body;
      E094 := E094 + 1;
      Touch_Panel_Ft5336'Elab_Body;
      E204 := E204 + 1;
      E019 := E019 + 1;
      Lcd_Std_Out'Elab_Body;
      E208 := E208 + 1;
      STM32.USER_BUTTON'ELAB_BODY;
      E214 := E214 + 1;
      Start_Slave_CPUs;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_draw");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/bmp_fonts.o
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/hershey_fonts.o
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/bitmapped_drawing.o
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/last_chance_handler.o
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/lcd_std_out.o
   --   /home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/draw.o
   --   -L/home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/
   --   -L/home/gps/ada/adl/examples/shared/draw/obj/stm32f746disco/
   --   -L/home/gps/ada/adl/examples/shared/common/
   --   -L/home/gps/ada/adl/boards/stm32f746_discovery/lib/ravenscar-sfp-stm32f746disco/
   --   -L/home/gps/ada/adl/arch/ARM/STM32/lib/stm32f7x/
   --   -L/home/gps/ada/adl/hal/lib/
   --   -L/home/gps/ada/adl/middleware/lib/
   --   -L/home/gps/ada/adl/arch/ARM/cortex_m/lib/cortex-m7/
   --   -L/home/gps/ada/adl/components/lib/
   --   -L/usr/gnat/arm-eabi/lib/gnat/ravenscar-sfp-stm32f746disco/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
