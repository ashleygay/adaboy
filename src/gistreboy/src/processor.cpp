/*
 * File : processor.cpp
 *
 * File created by : Arnaud Bastie
 * File was created at : 29/08/2017
 */

#include <processor.hpp>
#include <instruction.hpp>
#include <memory.hpp>

/* PUBLIC METHODS */

Processor::Processor()
{
	A.value = 0x01;
 	B.value = 0x00;
	C.value = 0x13;
 	D.value = 0x00;
 	E.value = 0xD8;
 	H.value = 0x01;
 	L.value = 0x4D;
 	PC.value = 0x0000;
 	SP.value = 0xfffe;
}

void Processor::enableIME()
{
	IME = true;
}

void Processor::disableIME()
{
	IME = false;
}


void Processor::enableIMEDelay()
{
	IMEDelay = true;
}

int Processor::step()
{
	int interrupts = handleInterrupts();

#if 0
	if (stopped || halted)
		return 0;
#endif

	if (!interrupts) {

		if (IMEDelay) {
			// Interrupts will be called on the next step
			IME = true;
			IMEDelay = false;
		}
		// No interrupts to handle and we are not halted/stopped
		fetchNextInstruction();
		return execCurrentInstruction();
	}
	else
		return interrupts;
}

int Processor::handleInterrupts()
{
	//TODO maybe factorize IF and IE
	if (stopped) {
		// Check if any selected button is pressed
		uint8_t joypad_status = mem->get_joypad();

		// Get bits [0-3] check that a button is pressed
		bool pressed = ~joypad_status & 0x0F;

		// Get bits [4-5], check that joypad is enabled
		bool selected = ~joypad_status & 0x30;

		if (pressed && selected) {
			// We end STOP mode.
			stopped = false;
			return 4;
		}
	}
	else { // We are either halted or doing an interrupt

		std::bitset<5> IF = mem->get_interrupt_flags();
		std::bitset<5> IE = mem->get_interrupt_enable();
		std::bitset<5> res = IF & IE;

		// Check that the selected interrupt is triggered
		int inter = res.any();
		if (inter && IME){
			// We compute the nth interrupt index
			unsigned int index = 0;
			while (!res[index] && (index < res.size())) {
				++index;
			}

			// Clear interrupt flag
			// Disable IME so we do not interrupt whil interrupting
			mem->reset_interrupt_flag(index);
			IME = false;
			halted = false;
			setupInterrupt(index);
			return 5;
		}
	}
	// No interrupts, we return 0
	return 0;
}

void Processor::push_word(uint16_t word)
{
	mem->write(get_high(word), --SP.value);
	mem->write(get_low(word), --SP.value);
}

uint16_t Processor::pop_word()
{
	uint8_t low = read(SP.value++);
	uint8_t high = read(SP.value++);
	uint16_t tmp = make_word(low, high);
	return tmp;
}

void Processor::setupInterrupt(unsigned int interrupt)
{
	// We push PC onto the stack
	push_word(PC.value);
	// We set PC to the correct interrupt
	PC.value = INTERRUPT_VECTOR + (8 * interrupt);
}

void Processor::HALT()
{
	halted = false;
}

void Processor::STOP()
{
	stopped = true;
}

/* PRIVATE METHODS */

int Processor::execCurrentInstruction()
{
	currentInstruction->exec(this);
	return currentInstruction->nbCycles();
}

void Processor::fetchNextInstruction()
{
	uint16_t opcode = mem->read(PC.value);
	++PC.value;
	if (!iset.isValidOpCode(opcode)) {
		// We try the to get the instruction over 16bits
		opcode = (opcode << 8) | (mem->read(PC.value));
		if (!iset.isValidOpCode(opcode)) {
			// We dont really care if the program crashes,
			// the rom is bad or there is a bug.
		}
		else //OpCode is on 16bits, we increment PC for args
			++PC.value;
	}
	// Opcode is valid
	currentInstruction = iset.getInstruction(opcode);
	InstructionArg arg;
//	std::cout << "INSTR: " << currentInstruction->toStr();
	// This instruction takes an argument
	if(currentInstruction->hasArg()) {
//	std::cout << " ";

		int size = currentInstruction->argSize();
		if (size == 1) { // We add a byte to the argument vector
			arg.byte = mem->read(PC.value);
//			std::cout << std::hex << (int)arg.byte;
		}
		else { // Argument of size 2, we add a short to the argument vector
			uint16_t word = mem->read(PC.value);
			++PC.value;
			word = word | (mem->read(PC.value) << 8);
			arg.word = word;
//			std::cout << std::hex << (int)arg.word;
		}
		++PC.value;
	}
//	std::cout << std::endl;
	currentInstruction->setArg(arg);
}

uint8_t Processor::read(uint16_t address)
{
	return mem->read(address);
}

void Processor::write(uint8_t value, uint16_t address)
{
	mem->write(value, address);
}

uint8_t Processor::simple_read(uint16_t address)
{
	return mem->simple_read(address);
}

void Processor::simple_write(uint8_t value, uint16_t address)
{
	mem->simple_write(value, address);
}
