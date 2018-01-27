#pragma once

#include <array>

class Instruction;

using OpCode = uint16_t;

using OpCodeToInstruction = std::array<Instruction *, 0xCFFF>;

class InstructionSet
{
	public:
		InstructionSet();

		// -1 invalid instruction
		// otherwise, the number of arguments it takes
		int isValidOpCode(OpCode opcode);

		// Function not safe on its own, use isOpCodeValid() first
		Instruction * getInstruction(OpCode opcode);

	private:
		OpCodeToInstruction map;
};
