#include "CHIP8Interpreter.h"
#include <fstream>
#include <iostream>
#include <chrono>
#include <thread>

#include <stdlib.h>
#include <time.h>      

CHIP8Interpreter::CHIP8Interpreter(const std::string& filePath)
																										// 32 bytes - 64 * 32 pixels
	:m_window(filePath), m_registers(), m_memory(), m_I_register(), m_program_counter(512), m_working(true), m_display(8 * 32), m_delay_timer_counter(0), m_sound_timer_counter(0), m_global_clock_counter(0), m_keys()
{
	std::ifstream input_file(filePath, std::ios::binary | std::ios::ate);
	if (!input_file.good())
		throw std::runtime_error("File not found: " + filePath);

	auto size = input_file.tellg();
	input_file.seekg(input_file.beg);
	input_file.read(reinterpret_cast<char*>(m_memory.data() + m_program_counter), size);
	input_file.close();

	initializeFont();
}

void CHIP8Interpreter::mainLoop()
{
	while (m_working) {
		pollEvents();
		uint16_t instruction = getNextInstruction();
		//instruction = 0xD011;
		executeInstruction(instruction);

		//draw every nth clock to match display frequency
		if (m_global_clock_counter % (CLOCK_FREQUENCY / DISPLAY_FREQUENCY) == 0) {
			drawSprites();
		}

		waitForClock();	
	}
}

void CHIP8Interpreter::pollEvents() {
	SDL_Event e;
	while (SDL_PollEvent(&e)) {
		switch (e.type) {
		case SDL_QUIT: m_working = false; break;
		case SDL_KEYDOWN:
		case SDL_KEYUP:
			handleKeyEvent(e.key); break;
		}
	}
}

uint16_t CHIP8Interpreter::getNextInstruction()
{
	//intructions are 2bytes wide
	return (static_cast<uint16_t>(m_memory[m_program_counter++]) << 8) | static_cast<uint16_t>(m_memory[m_program_counter++]);
}



void CHIP8Interpreter::executeInstruction(uint16_t opcode)
{
	uint8_t& VX = m_registers[(opcode & 0x0F00) >> 8];
	uint8_t& VY = m_registers[(opcode & 0x00F0) >> 4];
	uint8_t& VF = m_registers[0xF];
	/*const uint8_t* keys = SDL_GetKeyboardState(NULL);
	VY = 0;
	static uint32_t x = 0;
	VX = static_cast<uint8_t>(x++);

	m_memory[100] = 0b10000000;
	m_I_register = 100;
	
	if (VX == 67)
		int i = 1;*/

	//0x0000 opcodes
	switch (opcode) {
	case 0x00E0:
		std::fill(m_display.begin(), m_display.end(), 0);
		m_window.clear();
		return;
	case 0x00EE:
		m_program_counter = m_stack.top();
		m_stack.pop();
		return;
	}

	//opcodes 0x1000 - 0x7000, 0x9000 - 0xD000
	switch (opcode & 0xF000) {
	case 0x1000:
		m_program_counter = opcode & 0x0FFF;
		return;
	case 0x2000:
		m_stack.push(m_program_counter);
		m_program_counter = opcode & 0x0FFF;
		return;
	case 0x3000:
		if (VX == (opcode & 0x00FF))
			m_program_counter += 2;
		return;
	case 0x4000:
		if (VX != (opcode & 0x00FF))
			m_program_counter += 2;
		return;
	case 0x5000:
		if (VX == VY)
			m_program_counter += 2;
		return;
	case 0x6000:
		VX = (opcode & 0x00FF);
		return;
	case 0x7000:
		VX += (opcode & 0x00FF);
		return;
	case 0x9000:
		if (VX != VY)
			m_program_counter += 2;
		return;

	case 0xA000:
		m_I_register = opcode & 0x0FFF;
		return;

	case 0xB000:
		m_program_counter = opcode & 0x0FFF + m_registers[0];
		return;

	case 0xC000: {
		srand(time(NULL));
		uint8_t rand_value = rand() % 256;
		VX = rand_value & (opcode & 0x00FF);
		return;
	}

	case 0xD000: {
		VF = 0;
		uint16_t sprite_address = m_I_register;
		for (uint16_t N = 0; N < (opcode & 0x000F); ++N) {
			uint8_t sprite_offset = 0;
			for (uint16_t X = VX; X < VX + 8; ++X, ++sprite_offset) {
				//uint16_t bit_number = (N + VY) % 32 * 32 + X % 64;
				uint16_t bit_number = ((N + VY) & 31) * 64 + (X & 63);
				uint8_t display_bit = m_display[bit_number / 8] & (0b10000000 >> (bit_number & 7));
				uint8_t sprite_bit = m_memory[sprite_address] & (0b10000000 >> sprite_offset);
				VF = VF | (display_bit && sprite_bit);
				//tricky XOR, didnt want to mess with wits anymore
				//shifted bit to correct place
				uint8_t new_bit = ((display_bit || sprite_bit) && !(display_bit && sprite_bit)) << (7 - (bit_number & 7));
				//set single bit
				uint8_t tmp = (m_display[bit_number / 8] & ~(0b10000000 >> (bit_number & 7))) | new_bit;
				m_display[bit_number / 8] = tmp;
				
			}
			sprite_address++;
		}
		return;
	}

	}

	//opcodes 0x8000, 0xE000
	switch (opcode & 0xF00F) {
	case 0x8000:
		VX = VY;
		return;

	case 0x8001:
		VX |= VY;
		return;

	case 0x8002:
		VX &= VY;
		return;

	case 0x8003:
		VX ^= VY;
		return;

	case 0x8004: {
		uint16_t sum = VX + VY;
		VX = (sum & 0xFF);
		VF = (sum & 0x0100) >> 8;
	}
		return;

	case 0x8005:
		if (VX > VY)
			VF = 1;
		else
			VF = 0;
		VX -= VY;
		return;

	case 0x8006:
		VF = VX & 0x1;
		VX = VX >> 1;
		return;

	case 0x8007:
		if (VY > VX)
			VF = 1;
		else
			VF = 0;
		VX = VY - VX;
		return;

	case 0x800E:
		VF = (VX & 0b10000000) >> 7;
		VX = VX << 1;
		return;

	case 0xE00E:
		if (isPressed(keymap::at(VX)))
			m_program_counter += 2;
		return;
	case 0xE001:
		if (!isPressed(keymap::at(VX)))
			m_program_counter += 2;
		return;
	}
	//opcodes 0xF000
	switch (opcode & 0xF0FF) {
	case 0xF007:
		VX = m_delay_timer_counter;
		return;
	case 0xF00A: {
		SDL_Event e;
		while (SDL_WaitEvent(&e) && e.type != SDL_KEYDOWN);

		VX = keymap::at(e.key.keysym.sym);
		return;
	}
	case 0xF015:
		m_delay_timer_counter = VX;
		return;

	case 0xF018:
		m_sound_timer_counter = VX;
		return;

	case 0xF01E:
		m_I_register += VX;
		return;

	case 0xF029:
		m_I_register = VX * 5;
		return;

	case 0xF033:
		m_memory[m_I_register] = VX / 100;
		m_memory[m_I_register + static_cast<uint16_t>(1)] = (VX / 10) % (10);
		m_memory[m_I_register + static_cast<uint16_t>(2)] = VX % 100;
		return;

	case 0xF055: 
		for (size_t offset = 0; offset <= (opcode & 0x0F00); ++offset) {
			m_memory[m_I_register + offset] = m_registers[offset];
		}
		return;
	case 0xF065:
		for (size_t offset = 0; offset <= (opcode & 0x0F00); ++offset) {
			m_registers[offset] = m_memory[m_I_register + offset];
		}
		return;
	}





}

void CHIP8Interpreter::drawSprites()
{
	std::vector<SDL_Rect> rects;
	rects.reserve(32 * 64);
	size_t index = 0;
	int ps = Window::PIXEL_SIZE;
	//take every byte in disply memory, and then each pixel is single bit of that byte
	for (int y = 0; y < 32; ++y) {
		//x and i combined creartes x coordinates, since X is treated like entire byte
		for (int x = 0; x < 8; ++x) {
			for (int i = 0; i < 8; ++i) {
				if(m_display[index] & (0b10000000 >> i))
					rects.push_back({ (x*8+i) * ps, y * ps, ps-1, ps-1 });
			}
			index++;
		}
	}

	m_window.draw(rects);
}

void CHIP8Interpreter::waitForClock() 
{
	static auto last_frame_time = std::chrono::high_resolution_clock::now();
	auto time = std::chrono::high_resolution_clock::now();
	auto current_frame_duration = std::chrono::duration_cast<std::chrono::milliseconds>(time - last_frame_time);
	//DEBUG_INFO("Frame took: ", current_frame_duration.count());
	auto one_tick_duration = std::chrono::milliseconds(1000 / CLOCK_FREQUENCY);
	std::this_thread::sleep_for(one_tick_duration - current_frame_duration);
	last_frame_time = std::chrono::high_resolution_clock::now();

	if (m_global_clock_counter % CLOCK_FREQUENCY / DISPLAY_FREQUENCY == 0) {
		if (m_delay_timer_counter)
			m_delay_timer_counter--;
		if (m_sound_timer_counter)
			m_sound_timer_counter--;
	}
	m_global_clock_counter++;
}


void CHIP8Interpreter::initializeFont() {
	std::array<uint8_t, 16 * 5> fonts = {
		0xF0, 0x90, 0x90, 0x90, 0xF0, // "0"
		0x20, 0x60, 0x20, 0x20, 0x70, // "1"
		0xF0, 0x10, 0xF0, 0x80, 0xF0, // "2"
		0xF0, 0x10, 0xF0, 0x10, 0xF0, // "3"
		0x90, 0x90, 0xF0, 0x10, 0x10, // "4"
		0xF0, 0x80, 0xF0, 0x10, 0xF0, // "5"
		0xF0, 0x80, 0xF0, 0x90, 0xF0, // "6"
		0xF0, 0x10, 0x20, 0x40, 0x40, // "7"
		0xF0, 0x90, 0xF0, 0x90, 0xF0, // "8"
		0xF0, 0x90, 0xF0, 0x10, 0xF0, // "9"
		0xF0, 0x90, 0xF0, 0x90, 0x90, // "A"
		0xE0, 0x90, 0xE0, 0x90, 0xE0, // "B"
		0xF0, 0x80, 0x80, 0x80, 0xF0, // "C"
		0xE0, 0x90, 0x90, 0x90, 0xE0, // "D"
		0xF0, 0x80, 0xF0, 0x80, 0xF0, // "E"
		0xF0, 0x80, 0xF0, 0x80, 0x80  // "F"
	};

	memcpy(m_memory.data(), fonts.data(), fonts.size());
}

void CHIP8Interpreter::handleKeyEvent(SDL_KeyboardEvent& e)
{
	m_keys[e.keysym.sym] = e.type == SDL_KEYDOWN ? true : false;
}

bool CHIP8Interpreter::isPressed(SDL_Keycode code)
{
	return m_keys[code];
}
