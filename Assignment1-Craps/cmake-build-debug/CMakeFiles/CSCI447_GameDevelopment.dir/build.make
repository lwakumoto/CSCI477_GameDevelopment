# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/CSCI447_GameDevelopment.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/CSCI447_GameDevelopment.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CSCI447_GameDevelopment.dir/flags.make

CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.obj: CMakeFiles/CSCI447_GameDevelopment.dir/flags.make
CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CSCI447_GameDevelopment.dir\main.cpp.obj -c "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\main.cpp"

CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\main.cpp" > CMakeFiles\CSCI447_GameDevelopment.dir\main.cpp.i

CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\main.cpp" -o CMakeFiles\CSCI447_GameDevelopment.dir\main.cpp.s

CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.obj: CMakeFiles/CSCI447_GameDevelopment.dir/flags.make
CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.obj: ../Dice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CSCI447_GameDevelopment.dir\Dice.cpp.obj -c "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\Dice.cpp"

CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\Dice.cpp" > CMakeFiles\CSCI447_GameDevelopment.dir\Dice.cpp.i

CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\Dice.cpp" -o CMakeFiles\CSCI447_GameDevelopment.dir\Dice.cpp.s

# Object files for target CSCI447_GameDevelopment
CSCI447_GameDevelopment_OBJECTS = \
"CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.obj" \
"CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.obj"

# External object files for target CSCI447_GameDevelopment
CSCI447_GameDevelopment_EXTERNAL_OBJECTS =

CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/main.cpp.obj
CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/Dice.cpp.obj
CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/build.make
CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/linklibs.rsp
CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/objects1.rsp
CSCI447_GameDevelopment.exe: CMakeFiles/CSCI447_GameDevelopment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CSCI447_GameDevelopment.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CSCI447_GameDevelopment.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CSCI447_GameDevelopment.dir/build: CSCI447_GameDevelopment.exe
.PHONY : CMakeFiles/CSCI447_GameDevelopment.dir/build

CMakeFiles/CSCI447_GameDevelopment.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CSCI447_GameDevelopment.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CSCI447_GameDevelopment.dir/clean

CMakeFiles/CSCI447_GameDevelopment.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps" "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps" "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug" "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug" "C:\Users\Luke Wakumoto\Documents\CSCI447_GameDevelopment\Assignment1-Craps\cmake-build-debug\CMakeFiles\CSCI447_GameDevelopment.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/CSCI447_GameDevelopment.dir/depend

