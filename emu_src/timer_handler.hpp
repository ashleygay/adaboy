#pragma once

#include <memory.hpp>
#include <bitset>

class TimerHandler {

public:
	TimerHandler(Memory& mem);

	void step(int cpu_cycles);
private:
	void interrupt();
	void updateVariables();
	void updateMemory();

	// Get clocks number associated with TAC
	int getClockNumber();

private:
	Memory& mem;

	int elapsed_time = 0;

	int clocks_nb = 0;

	bool timer_enable = true;

	// FF04
	uint8_t DIV = 0;
	int div_counter = 0;

	// FF05
	uint8_t TIMA = 0;

	// FF06
	uint8_t TMA = 0;

/*
Bit	2 - Timer Enable	(0=Disable, 1=Enable)
Bits 1-0 - Main Frequency Divider
	00:	4096 Hz (Increase every 1024 clocks)
	01: 262144 Hz (	“	“	16 clocks)
	10: 65536 Hz (	“	“	64 clocks)
	11: 16386 Hz (	“	“	256 clocks)
*/
	std::bitset<3> TAC;
	int clocks_nbs[4] = {1024, 16, 64, 256};
};
