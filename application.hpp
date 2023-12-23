#pragma once

#include <SDL2/SDL.h>
#include <iostream>
#include <vector>
#include "cell.hpp"

using namespace std;

class Application{
public:
    
    Application();
    ~Application();

    void clear();
    void loop();
    void update();
    void draw();

private:
    
    bool pause;

    double accumulatedTime;
    double updateInterval;

    SDL_Window *m_window;
    SDL_Surface *m_window_surface;
    SDL_Event m_window_event;
    
    vector<vector<Cell>> cells;

};