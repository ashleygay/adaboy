#include <timer_handler.hpp>

TimerHandler::TimerHandler(Memory& mem) : mem(mem)
{
}

void TimerHandler::step(int cpu_step)
{
	updateVariables();

	div_counter += cpu_step;
	if (div_counter >= 512) {
		++DIV;
		div_counter -= 512;
	}

	if (timer_enable) {
		elapsed_time += cpu_step;

		if (elapsed_time >= clocks_nb) {

			elapsed_time -= clocks_nb;
			if (timer_enable) {
				if (TIMA == 0xFF) { //we will have an overflow
					interrupt();
					TIMA = TMA;
				}
				else
					++TIMA;
			}
		}
	}
	else
		TIMA = 0;

	updateMemory();
}

void TimerHandler::interrupt()
{
	mem.set_interrupt_flag(Memory::Interrupt::TIMER);
}

void TimerHandler::updateVariables()
{
	DIV = mem.simple_read(0xFF04);
	TIMA = mem.simple_read(0xFF05);
	TMA = mem.simple_read(0xFF06);
	TAC = mem.simple_read(0xFF07);
	clocks_nb = getClockNumber();
	timer_enable = TAC[2];
}

void TimerHandler::updateMemory()
{
	mem.simple_write(DIV, 0xFF04);
	mem.simple_write(TIMA, 0xFF05);
	mem.simple_write(TMA, 0xFF06);
	uint8_t UTAC = TAC.to_ulong() & 0xFF;
	mem.simple_write(UTAC, 0xFF07);
}

int TimerHandler::getClockNumber()
{
	// We return the value in the tab with index being bits 0-1
	return clocks_nbs[TAC.to_ulong() & 0x03];
}
