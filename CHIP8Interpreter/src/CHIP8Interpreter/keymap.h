#pragma once
#include <unordered_map>
#include <SDL_keycode.h>
//SDLKEY -> CHIPKEY
struct keymap {
	static std::unordered_map<uint8_t, uint8_t> keys;
	static const uint8_t& at(uint8_t key);
};
