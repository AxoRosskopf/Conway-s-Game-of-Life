#include "application.hpp"
#define WIDTH 1080 
#define HEIGHT 1920
#define CANT_CELL_W 50
#define CANT_CELL_H 100



SDL_Surface *load_surface(char const *path)
{
    SDL_Surface *image_surface = SDL_LoadBMP(path);

    if(!image_surface)
        return 0;

    return image_surface;
}

Application::Application(){
    m_window = SDL_CreateWindow("Testing",
                                SDL_WINDOWPOS_CENTERED,
                                SDL_WINDOWPOS_CENTERED,
                                HEIGHT,
                                WIDTH,
                                0);

    if(!m_window)
    {
        std::cout << "Failed to create window\n";
        std::cout << "SDL2 Error: " << SDL_GetError() << "\n";
        return;
    }

    m_window_surface = SDL_GetWindowSurface(m_window);

    if(!m_window_surface)
    {
        std::cout << "Failed to get window's surface\n";
        std::cout << "SDL2 Error: " << SDL_GetError() << "\n";
        return;
    }

    cells = vector<vector<Cell>>(CANT_CELL_H, vector<Cell>(CANT_CELL_W));
    for(int i = 0; i < CANT_CELL_H; i++){
        for(int j = 0; j < CANT_CELL_W; j++){
            cells[i][j].updatePosition(i,j);
            cells[i][j].dead();
        }
    }

    pause = false;
    accumulatedTime = 0.0;
    updateInterval = 0.01;

}

Application::~Application(){
    
    SDL_FreeSurface(m_window_surface);
    SDL_DestroyWindow(m_window);
    SDL_Quit();

}

int cantAdy(vector<vector<Cell>>&t , int x, int y){
    int res = 0;
    for (int i = -1; i <= 1; ++i) {
        for (int j = -1; j <= 1; ++j) {
            int nx = x + i;
            int ny = y + j;

            if (nx >= 0 && nx < t.size() && ny >= 0 && ny < t[x].size() && (i != 0 || j != 0)) {
                res += t[nx][ny].isAlive();
            }
        }
    }

    return res;
}

void Application::clear(){
    for(int i = 0; i < CANT_CELL_H; i++){
        for(int j = 0; j < CANT_CELL_W; j++){
            cells[i][j].dead();
        }
    }
}

void Application::loop()
{
    bool keep_window_open = true;
    while(keep_window_open)
    {
        double deltaTime = 1.0 / 60.0;  
        
        if(!pause){
            accumulatedTime += deltaTime;
        }

        while(SDL_PollEvent(&m_window_event) > 0)
        {

            switch(m_window_event.type)
            {
                case SDL_QUIT:
                    keep_window_open = false;
                    break;
                case SDL_MOUSEBUTTONDOWN:
                    if(m_window_event.button.button = SDL_BUTTON_LEFT){
                        int mouseX = m_window_event.button.x;
                        int mouseY = m_window_event.button.y;
                        for(int i = 0; i < CANT_CELL_H; i++){
                            for(int j = 0; j < CANT_CELL_W; j++){
                                if(cells[i][j].insideCell(mouseX,mouseY)){
                                    cells[i][j].active();
                                }
                            }
                        }


                    }
                    break;
                case SDL_KEYDOWN:
                    if(m_window_event.key.keysym.sym == SDLK_RETURN){
                        pause = !pause;
                    }
                    break;
            }
        }


        if(accumulatedTime >= updateInterval && !pause){
            update();
            accumulatedTime = 0.0;
        }

        
        draw();
    }
}



void Application::update()
{
    vector<vector<Cell>> newCells = cells;

    for (int i = 0; i < CANT_CELL_H; i++) {
        for (int j = 0; j < CANT_CELL_W; j++) {
            int neighbors = cantAdy(cells, i, j);

            if (cells[i][j].isAlive()) {
                if (neighbors < 2 || neighbors > 3) {
                    newCells[i][j].dead();
                }
            } else {
                if (neighbors == 3) {
                    newCells[i][j].active();
                }
            }
        }
    }

    cells = newCells;

}

void Application::draw()
{
    SDL_FillRect(m_window_surface,NULL,SDL_MapRGB(m_window_surface->format,0,0,0));

    for(int i = 0; i < CANT_CELL_H; i++){
        for(int j = 0; j < CANT_CELL_W; j++){
            cells[i][j].drawCell(m_window_surface);
        }
    }

    SDL_UpdateWindowSurface(m_window);
}


