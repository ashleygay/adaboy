/*
 * File : gameboy.hpp
 *
 * File created by : Corentin Gay
 * File was created the : 08/10/2017
 */

#pragma once

#include <processor.hpp>
#include <memory.hpp>
#include <lcd.hpp>
#include <timer_handler.hpp>
#include <screen.hpp>

class Gameboy
{
	public:
		Gameboy();

		// Execute a single step loop of the emulator
		void step(Screen& s);

		void changeGame(uint8_t *game);

		bool isRunning() {return running;}
		void stop() {running = false;}

		// Tries to start the gameboy, if memory not set
		// returns false.
		bool readyToLaunch();

		// Functions called by emulator for interacting
		// with the memory to correctly set the joypad lines (FF00)
  		void setKeys(uint8_t value);

		void setJoypadInterrupt();
	private:
		void wireComponents();
		void clockCycle();
		void checkKeys(uint8_t atomic);
		void interruptJOYPAD();
	private:
		Processor p;
		Memory mem;
		LCD lcd;
		TimerHandler timers;

		bool running = false;
                uint8_t keys = 0;
};
