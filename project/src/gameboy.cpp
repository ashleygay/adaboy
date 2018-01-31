/*
 * File : gameboy.cpp
 *
 * File created by : Corentin Gay
 * File was created at : 08/10/2017
 */

#include <gameboy.hpp>

#include "tetris.h"

Gameboy::Gameboy(): mem(p), lcd(mem), timers(mem)
{
	wireComponents();
	changeGame(tetris);
}

bool Gameboy::readyToLaunch()
{
	if (mem.is_ready()) {
		running = true;
		return true;
	}
	return false;
}

void Gameboy::step(Screen& s)
{
	checkKeys(keys);
	int cpu_cycles = p.step();
	lcd.step(cpu_cycles, s);
	timers.step(cpu_cycles);
}

void Gameboy::wireComponents()
{
	p.setMemory(&mem);
}

void Gameboy::checkKeys(uint8_t atomic)
{
	uint8_t reg = mem.get_joypad();
	uint8_t keys = atomic;

	uint8_t buttons = keys & 0x0F; // The lowest bits are the buttons.
	uint8_t pad = keys >> 4;

	// We keep only the select bits.
	reg &= 0x30;

	uint8_t tmp = 0;
	if ((reg & (1 << 5))) { // Bit 5 is set we 'or' the button bits
		tmp |= buttons;
		interruptJOYPAD();
	}

	if ((reg & (1 << 4))) { // Bit 4 is set we 'or' the pad bits
		tmp |= pad;
		interruptJOYPAD();
	}
	tmp = (~tmp & 0x0F);
	reg |= tmp;

	// Write modified register to 0xFF00
	mem.set_joypad(reg);
}

void Gameboy::interruptJOYPAD()
{
	mem.set_interrupt_flag(Memory::Interrupt::JOYPAD);
}

void Gameboy::changeGame(uint8_t *game)
{
	mem.change_game(game);
}

void Gameboy::setKeys(uint8_t value)
{
  	keys = value;
}

void Gameboy::setJoypadInterrupt()
{
  	mem.set_interrupt_flag(Interrupt::JOYPAD);
}
