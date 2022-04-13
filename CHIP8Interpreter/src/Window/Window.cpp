#include <stdexcept>
#include "Window.h"

Window::Window(const std::string& name, int32_t width, int32_t height)
{
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
		throw std::runtime_error("Failed to initialize SDL video");

	m_window = std::unique_ptr<SDL_Window, SDL_Window_Destroyer>(SDL_CreateWindow(name.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, 0));
	if (!m_window)
		throw std::runtime_error("Failed to create window");

	m_renderer = std::unique_ptr<SDL_Renderer, SDL_Renderer_Destroyer>(SDL_CreateRenderer(m_window.get(), -1, 0));
	if (!m_renderer)
		throw std::runtime_error("Failed to create renderer");
	



}

Window::~Window()
{

}


void Window::draw(const std::vector<SDL_Rect>& rects, int32_t count) {
	SDL_SetRenderDrawColor(m_renderer.get(), 0x00, 0x00, 0x00, SDL_ALPHA_OPAQUE);
	SDL_RenderClear(m_renderer.get());
	SDL_SetRenderDrawColor(m_renderer.get(), 255, 255, 255, SDL_ALPHA_OPAQUE);
	SDL_RenderDrawRects(m_renderer.get(), rects.data(), (int)count);
	SDL_RenderFillRects(m_renderer.get(), rects.data(), (int)count);
	SDL_RenderPresent(m_renderer.get());

}
