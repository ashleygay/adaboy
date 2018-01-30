pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package animal_hpp is

   package Class_Animal is
      type Animal is tagged limited record
         Age_Count : aliased int;  -- animal.hpp:7
      end record;
      pragma Import (CPP, Animal);

      procedure Set_Age (this : access Animal; New_Age : int);  -- animal.hpp:3
      pragma Import (CPP, Set_Age, "_ZN6Animal7Set_AgeEi");

      function Age (this : access Animal) return int;  -- animal.hpp:4
      pragma Import (CPP, Age, "_ZN6Animal3AgeEv");

      function New_Animal return Animal;  -- animal.hpp:5
      pragma CPP_Constructor (New_Animal, "_ZN6AnimalC1Ev");
   end;
   use Class_Animal;
   package Class_Carnivore is
      type Carnivore is limited interface;  -- animal.hpp:10
      pragma Import (CPP, Carnivore);

      function Number_Of_Teeth (this : access Carnivore) return int is abstract;  -- animal.hpp:12
   end;
   use Class_Carnivore;
   package Class_Domestic is
      type Domestic is limited interface;  -- animal.hpp:15
      pragma Import (CPP, Domestic);

      procedure Set_Owner (this : access Domestic; Name : Interfaces.C.Strings.chars_ptr) is abstract;  -- animal.hpp:17
   end;
   use Class_Domestic;
   package Class_Dog is
      type Dog is limited new Animal and Carnivore and Domestic with record
         Tooth_Count : aliased int;  -- animal.hpp:27
         Owner : Interfaces.C.Strings.chars_ptr;  -- animal.hpp:28
      end record;
      pragma Import (CPP, Dog);

      function Number_Of_Teeth (this : access Dog) return int;  -- animal.hpp:22
      pragma Import (CPP, Number_Of_Teeth, "_ZN3Dog15Number_Of_TeethEv");

      procedure Set_Owner (this : access Dog; Name : Interfaces.C.Strings.chars_ptr);  -- animal.hpp:23
      pragma Import (CPP, Set_Owner, "_ZN3Dog9Set_OwnerEPc");

      function New_Dog return Dog;  -- animal.hpp:24
      pragma CPP_Constructor (New_Dog, "_ZN3DogC1Ev");
   end;
   use Class_Dog;
end animal_hpp;
