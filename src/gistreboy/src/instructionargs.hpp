#pragma once

#include <word_operations.hpp>

union ARG {
	uint16_t word;
	uint8_t byte;
};

using InstructionArg = ARG;
