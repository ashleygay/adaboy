#pragma once

#include <word_operations.hpp>

class Sprite {

public :
	Sprite();

	Sprite(uint8_t y_pos, uint8_t x_pos, uint8_t tile, uint8_t flag);

	uint8_t get_x();
	uint8_t get_y();
	int get_x_pos();
	int get_y_pos();
	uint8_t get_tile();
	bool is_x_flipped();
	bool is_y_flipped();
	bool is_above_bg();
	bool is_obp1();

private :
	uint8_t x_pos_ = 0;
	uint8_t y_pos_ = 0;

	uint8_t tile_ = 0;

	bool x_flipped = false;
	bool y_flipped = false;
	bool above_bg = false;

	bool obp1 = false;

};
