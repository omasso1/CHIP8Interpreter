#pragma once

#include <SDL.h>
#include <memory>
#include <string>
#include <vector>
#include "macros.h"



class Window {
public:
	static const int32_t PIXEL_SIZE = 13;
	static const int32_t WINDOW_WIDTH = 64 * PIXEL_SIZE;
	static const int32_t WINDOW_HEIGHT = 32 * PIXEL_SIZE;
	static const int32_t NUMBER_OF_PIXELS = 32 * 64;

public:
	Window::Window(const std::string& name, int32_t width = WINDOW_WIDTH, int32_t height = WINDOW_HEIGHT);
	~Window() = default;
	Window(const Window&) = delete;
	Window(Window&&) = delete;
	Window& operator=(const Window&) = delete;
	Window& operator=(Window&&) = delete;

	void Window::draw(const std::vector<SDL_Rect>& rects);
	void Window::clear();
	
private:
	struct SDL_Window_Destroyer {
		void operator()(SDL_Window* w) const {
			SDL_DestroyWindow(w);
		}
	};

	struct SDL_Renderer_Destroyer {
		void operator()(SDL_Renderer* r) const {
			SDL_DestroyRenderer(r);
		}
	};


	std::unique_ptr<SDL_Window, SDL_Window_Destroyer> m_window;
	std::unique_ptr<SDL_Renderer, SDL_Renderer_Destroyer> m_renderer;

};