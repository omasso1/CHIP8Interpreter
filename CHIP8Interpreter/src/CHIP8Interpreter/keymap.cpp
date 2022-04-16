#include "keymap.h"

std::unordered_map<uint8_t, uint8_t> keymap::keys = {
		{SDLK_1, 0},
		{ SDLK_2, 1 },
		{ SDLK_3, 2 },
		{ SDLK_4, 3 },
		{ SDLK_q, 4 },
		{ SDLK_w, 5 },
		{ SDLK_e, 6 },
		{ SDLK_r, 7 },
		{ SDLK_a, 8 },
		{ SDLK_s, 9 },
		{ SDLK_d, 10 },
		{ SDLK_f, 11 },
		{ SDLK_z, 12 },
		{ SDLK_x, 13 },
		{ SDLK_c, 14 },
		{ SDLK_v, 15 },
		{ 0, SDLK_1 },
		{ 1, SDLK_2 },
		{ 2, SDLK_3 },
		{ 3, SDLK_4 },
		{ 4, SDLK_q },
		{ 5, SDLK_w },
		{ 6, SDLK_e },
		{ 7, SDLK_r },
		{ 8, SDLK_a },
		{ 9, SDLK_s },
		{ 10, SDLK_d },
		{ 11, SDLK_f },
		{ 12, SDLK_z },
		{ 13, SDLK_x },
		{ 14, SDLK_c },
		{ 15, SDLK_v }
};

const uint8_t& keymap::at(uint8_t key){
	return keys.at(key);
}

