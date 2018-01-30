#pragma once

struct Register {
	unsigned char value;
};

struct DRegister {
	unsigned short value;
};


enum Flag { ZERO, SUBTRACT, HALFCARRY, CARRY };

class FlagRegister {
	public:
		FlagRegister() { value = 0; }
		//enum Flag { ZERO, SUBTRACT, HALFCARRY, CARRY };
		void setFlag(Flag flag);
		void unsetFlag(Flag flag);
		bool getFlag(Flag flag);
		unsigned char get_value();
		void set_value(unsigned char val);
	private:
		unsigned char value;
};
