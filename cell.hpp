#ifndef CELL_HPP
#define CELL_HPP

#include <SDL2/SDL.h>
#include <iostream>
#include <random>

using namespace std;

class Cell{
public:
    
    Cell();
    ~Cell();

    void updatePosition(int x, int y );
    void shuffleColor();

    bool insideCell(int x, int y);

    bool isAlive();

    void active();
    void dead();

    void drawCell(SDL_Surface *surface);

private:
    struct color
    {
        int _r;
        int _g;
        int _b; 
        color(int r,int g, int b): _r(r), _g(g), _b(b){}; 
    };

    bool alive;
    int pos_x;
    int pos_y;
    color cellColor;
    
};

#endif // CELL_HPP