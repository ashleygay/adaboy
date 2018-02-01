#include <sprite.hpp>

Sprite::Sprite() {}

Sprite::Sprite(uint8_t y_pos, uint8_t x_pos, uint8_t tile, uint8_t flag) :
	       x_pos_(x_pos), y_pos_(y_pos), tile_(tile) {
		above_bg = (flag & 0x80);
		x_flipped = (flag & 0x40);
		y_flipped = (flag & 0x20);
		obp1 = (flag & 0x10);
	}

	uint8_t Sprite::get_x() { return x_pos_; }
	uint8_t Sprite::get_y() { return y_pos_; }
	int Sprite::get_x_pos() { return static_cast<int>(x_pos_) - 8; }
	int Sprite::get_y_pos() { return static_cast<int>(y_pos_) - 16; }
	uint8_t Sprite::get_tile() { return tile_; }
	bool Sprite::is_x_flipped() { return x_flipped; }
	bool Sprite::is_y_flipped() { return y_flipped; }
	bool Sprite::is_above_bg() { return above_bg; }
	bool Sprite::is_obp1() { return obp1; }


