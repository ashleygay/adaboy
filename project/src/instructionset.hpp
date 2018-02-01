#pragma once

class Instruction;

#include <word_operations.hpp>
using OpCode = uint16_t;

#include <instruction.hpp>

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
		Instruction* map[0xCFFF];
};
