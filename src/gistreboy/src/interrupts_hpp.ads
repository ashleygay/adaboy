pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package interrupts_hpp is

   type Interrupt is 
     (VBLANK,
      LCD_STATUS,
      TIMER,
      SERIAL,
      JOYPAD);
   pragma Convention (C, Interrupt);  -- ./interrupts.hpp:3

end interrupts_hpp;
