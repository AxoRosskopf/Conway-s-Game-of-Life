cmake_minimum_required(VERSION 3.10)

# Set the project name
project(Testing)

# Find the SDL2 library
find_package(SDL2 REQUIRED)

# Include SDL2 headers
include_directories(${SDL2_INCLUDE_DIRS})

# Add the executable and link against the SDL2 library
add_executable(Testing main.cpp application.cpp cell.cpp)

# Link against the SDL2 library
target_link_libraries(Testing ${SDL2_LIBRARIES})