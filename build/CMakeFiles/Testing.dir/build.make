# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/axrskpf/Documents/Projects/Testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/axrskpf/Documents/Projects/Testing/build

# Include any dependencies generated for this target.
include CMakeFiles/Testing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Testing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Testing.dir/flags.make

CMakeFiles/Testing.dir/main.cpp.o: CMakeFiles/Testing.dir/flags.make
CMakeFiles/Testing.dir/main.cpp.o: /home/axrskpf/Documents/Projects/Testing/main.cpp
CMakeFiles/Testing.dir/main.cpp.o: CMakeFiles/Testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/axrskpf/Documents/Projects/Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Testing.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Testing.dir/main.cpp.o -MF CMakeFiles/Testing.dir/main.cpp.o.d -o CMakeFiles/Testing.dir/main.cpp.o -c /home/axrskpf/Documents/Projects/Testing/main.cpp

CMakeFiles/Testing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Testing.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/axrskpf/Documents/Projects/Testing/main.cpp > CMakeFiles/Testing.dir/main.cpp.i

CMakeFiles/Testing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Testing.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/axrskpf/Documents/Projects/Testing/main.cpp -o CMakeFiles/Testing.dir/main.cpp.s

CMakeFiles/Testing.dir/application.cpp.o: CMakeFiles/Testing.dir/flags.make
CMakeFiles/Testing.dir/application.cpp.o: /home/axrskpf/Documents/Projects/Testing/application.cpp
CMakeFiles/Testing.dir/application.cpp.o: CMakeFiles/Testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/axrskpf/Documents/Projects/Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Testing.dir/application.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Testing.dir/application.cpp.o -MF CMakeFiles/Testing.dir/application.cpp.o.d -o CMakeFiles/Testing.dir/application.cpp.o -c /home/axrskpf/Documents/Projects/Testing/application.cpp

CMakeFiles/Testing.dir/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Testing.dir/application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/axrskpf/Documents/Projects/Testing/application.cpp > CMakeFiles/Testing.dir/application.cpp.i

CMakeFiles/Testing.dir/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Testing.dir/application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/axrskpf/Documents/Projects/Testing/application.cpp -o CMakeFiles/Testing.dir/application.cpp.s

CMakeFiles/Testing.dir/cell.cpp.o: CMakeFiles/Testing.dir/flags.make
CMakeFiles/Testing.dir/cell.cpp.o: /home/axrskpf/Documents/Projects/Testing/cell.cpp
CMakeFiles/Testing.dir/cell.cpp.o: CMakeFiles/Testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/axrskpf/Documents/Projects/Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Testing.dir/cell.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Testing.dir/cell.cpp.o -MF CMakeFiles/Testing.dir/cell.cpp.o.d -o CMakeFiles/Testing.dir/cell.cpp.o -c /home/axrskpf/Documents/Projects/Testing/cell.cpp

CMakeFiles/Testing.dir/cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Testing.dir/cell.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/axrskpf/Documents/Projects/Testing/cell.cpp > CMakeFiles/Testing.dir/cell.cpp.i

CMakeFiles/Testing.dir/cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Testing.dir/cell.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/axrskpf/Documents/Projects/Testing/cell.cpp -o CMakeFiles/Testing.dir/cell.cpp.s

# Object files for target Testing
Testing_OBJECTS = \
"CMakeFiles/Testing.dir/main.cpp.o" \
"CMakeFiles/Testing.dir/application.cpp.o" \
"CMakeFiles/Testing.dir/cell.cpp.o"

# External object files for target Testing
Testing_EXTERNAL_OBJECTS =

Testing: CMakeFiles/Testing.dir/main.cpp.o
Testing: CMakeFiles/Testing.dir/application.cpp.o
Testing: CMakeFiles/Testing.dir/cell.cpp.o
Testing: CMakeFiles/Testing.dir/build.make
Testing: /usr/lib/x86_64-linux-gnu/libSDL2.so
Testing: CMakeFiles/Testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/axrskpf/Documents/Projects/Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Testing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Testing.dir/build: Testing
.PHONY : CMakeFiles/Testing.dir/build

CMakeFiles/Testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Testing.dir/clean

CMakeFiles/Testing.dir/depend:
	cd /home/axrskpf/Documents/Projects/Testing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/axrskpf/Documents/Projects/Testing /home/axrskpf/Documents/Projects/Testing /home/axrskpf/Documents/Projects/Testing/build /home/axrskpf/Documents/Projects/Testing/build /home/axrskpf/Documents/Projects/Testing/build/CMakeFiles/Testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Testing.dir/depend

