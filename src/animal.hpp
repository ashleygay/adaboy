class Animal {
 public:
   virtual void Set_Age (int New_Age);
   virtual int Age ();
   Animal();
 private:
   int Age_Count = 0;
};

class Carnivore {
public:
   virtual int Number_Of_Teeth () = 0;
};

class Domestic {
public:
   virtual void Set_Owner (char* Name) = 0;
};

class Dog : Animal, Carnivore, Domestic {
 public:
   virtual int  Number_Of_Teeth ();
   virtual void Set_Owner (char* Name);
   Dog();

 private:
   int  Tooth_Count = 0;
   char *Owner = nullptr;
};
