#include "animal.hpp"

void Animal::Set_Age(int New_Age)
{
	Age_Count = New_Age;
}

int Animal::Age()
{
	return Age_Count;
}

Animal::Animal()
{
	Age_Count = 0;
}


Dog::Dog() : Animal()
{
}

void Dog::Set_Owner(char* Name)
{
	Owner = Name;
}

int Dog::Number_Of_Teeth()
{
	return Tooth_Count;
}
