#pragma once

#include <string>
#include <vector>
#include <array>
#include <stack>
#include "../Window/Window.h"
#include "macros.h"
#include <unordered_map>
#include "keymap.h"


class CHIP8Interpreter {

	static const uint32_t SIZE_OF_MEMORY = 8097;
	static const uint32_t CLOCK_FREQUENCY = 500;
	static const uint32_t DISPLAY_FREQUENCY = 60;

public:
	CHIP8Interpreter(const std::string& filePath);
	~CHIP8Interpreter() = default;
	CHIP8Interpreter(const CHIP8Interpreter&) = delete;
	CHIP8Interpreter(CHIP8Interpreter&&) = delete;
	CHIP8Interpreter& operator=(const CHIP8Interpreter&) = delete;
	CHIP8Interpreter& operator=(CHIP8Interpreter&&) = delete;

	void mainLoop();
	uint16_t getNextInstruction();
	void executeInstruction(uint16_t opcode);
	void drawSprites();
	void waitForClock();
	void pollEvents();

private:
	std::array<uint8_t, SIZE_OF_MEMORY * sizeof(uint8_t)> m_memory;
	std::stack<uint16_t> m_stack;
	std::array<uint8_t, 16> m_registers;
	std::vector<uint8_t> m_display;
	uint16_t m_I_register;
	uint16_t m_program_counter;
	Window m_window;
	uint32_t m_global_clock_counter;
	uint8_t m_delay_timer_counter;
	uint8_t m_sound_timer_counter;
	bool m_working;
	std::unordered_map<uint8_t, bool> m_keys;
	void initializeFont();
	void handleKeyEvent(SDL_KeyboardEvent& e);
	bool isPressed(SDL_Keycode code);
};