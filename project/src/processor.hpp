/*
 * File : processor.hpp
 *
 * This file represents the processor class
 *
 * File created by : Arnaud Bastie
 * File was created the : 29/08/2017
 */

#pragma once

class InstructionSet;
class Memory;

#include <interrupts.hpp>
#include <instructionset.hpp>
#include <instructionargs.hpp>
#include <registers.hpp>
#include <word_operations.hpp>

#include "bitset.hpp"

class Processor {

	public:
		Processor();
	public:
		FlagRegister flag;

		Register A;
		Register B;
		Register C;
		Register D;
		Register E;
		Register H;
		Register L;

		DRegister PC;
		DRegister SP;

	private:

		static const uint16_t INTERRUPT_VECTOR = 0x0040;

		bool IME = true;
		bool IMEDelay = false;

		Instruction * currentInstruction;

		// InstructionSet containing all instructions.
		InstructionSet iset;

		// Used to resolve all memory operations
		// Read/Write as wall as charging next instruction etc
		Memory *mem = nullptr;

		// They cannot be both true at the same time
		bool halted = false;
		bool stopped = false;

	public:
		//Function used by the gameboy class
		// returns the number of cycles that takes the instruction
		int step();

		// Those functions are used by the instructions to read/write
		// memory values
		uint8_t read(uint16_t address);

		void write(uint8_t value, uint16_t address);

		uint8_t simple_read(uint16_t address);

		void simple_write(uint8_t value, uint16_t address);

		void setMemory(Memory *memo)
			{mem = memo;}

		// Enable/Disable IME
		void enableIME();
		void disableIME();

		// Delayed version should be called from EI instruction only
		void enableIMEDelay();

		// Enter halt mode,
		// If (IF & IE) => an interrupt is enabled and active
		// then we leave halt mode
		// the behavior is then dependant on IME
		//
		// if IME is active we execute the interrupt and clean IF.
		//
		// if IME is not active then we continue execution of
		// instructions and we do not clean IF.
		void HALT();


		// Enter stop mode
		// Disable all interrupts except JOYPAD
		// The programmer should clear IE before stopping
		// The programmer must select bits prior to entering
		// stop mode in order to be able to leave it correctly
		void STOP();


		// Functions for pushing word on the stack
		void push_word(uint16_t word);
		uint16_t pop_word();

	private:
		// Returns 0 if there was no interrupt to do
		int handleInterrupts();
	
		// Setup PC and the stack for a jump to the interrupt vect
		void setupInterrupt(unsigned int inter);

		int execCurrentInstruction();

		void fetchNextInstruction();
	public:
		Processor(Processor const&) = delete;
		void operator=(Processor const&)  = delete;
};
