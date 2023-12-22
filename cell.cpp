#include "cell.hpp"

Cell::Cell() : pos_x(0), pos_y(0), cellColor(0, 0, 0), alive(false) {
}

Cell::~Cell(){

}

void Cell::updatePosition(int x, int y){
    pos_x = x*20;
    pos_y = y*20;
}

void Cell::shuffleColor(){
    random_device rd;
    mt19937 gen(rd());

    uniform_int_distribution<int> distribution(0,255);

    cellColor._r = distribution(gen);
    cellColor._g = distribution(gen);
    cellColor._b = distribution(gen);


}

bool Cell::insideCell(int x, int y){
    return (x >= pos_x && x < pos_x + 20 && y >= pos_y && y < pos_y + 20);
}

bool Cell::isAlive(){
    return alive;
}

void Cell::active(){
    cellColor._r = 255;
    cellColor._g = 255;
    cellColor._b = 255;
    alive = true;
}

void Cell::dead(){
    cellColor._r = 0;
    cellColor._g = 0;
    cellColor._b = 0;
    alive = false;
}



void Cell::drawCell(SDL_Surface *surface){

     if(!surface)
    {
        std::cout << "Failed to get window's surface\n";
        std::cout << "SDL2 Error: " << SDL_GetError() << "\n";
        return;
    }else{
        
        SDL_Rect squareRect = {pos_x,pos_y, 20, 20};
        SDL_FillRect(surface, &squareRect, SDL_MapRGB(surface->format, cellColor._r, cellColor._g, cellColor._b));
    }
}