# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/toby/Desktop/Source Codes/crsfml"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/toby/Desktop/Source Codes/crsfml"

# Include any dependencies generated for this target.
include voidcsfml/CMakeFiles/voidcsfml-audio.dir/depend.make

# Include the progress variables for this target.
include voidcsfml/CMakeFiles/voidcsfml-audio.dir/progress.make

# Include the compile flags for this target's objects.
include voidcsfml/CMakeFiles/voidcsfml-audio.dir/flags.make

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o: voidcsfml/CMakeFiles/voidcsfml-audio.dir/flags.make
voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o: voidcsfml/src/voidcsfml/audio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/toby/Desktop/Source Codes/crsfml/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o"
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o -c "/home/toby/Desktop/Source Codes/crsfml/voidcsfml/src/voidcsfml/audio.cpp"

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.i"
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/toby/Desktop/Source Codes/crsfml/voidcsfml/src/voidcsfml/audio.cpp" > CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.i

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.s"
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/toby/Desktop/Source Codes/crsfml/voidcsfml/src/voidcsfml/audio.cpp" -o CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.s

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.requires:

.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.requires

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.provides: voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.requires
	$(MAKE) -f voidcsfml/CMakeFiles/voidcsfml-audio.dir/build.make voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.provides.build
.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.provides

voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.provides.build: voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o


# Object files for target voidcsfml-audio
voidcsfml__audio_OBJECTS = \
"CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o"

# External object files for target voidcsfml-audio
voidcsfml__audio_EXTERNAL_OBJECTS =

voidcsfml/libvoidcsfml-audio.so.2.4: voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o
voidcsfml/libvoidcsfml-audio.so.2.4: voidcsfml/CMakeFiles/voidcsfml-audio.dir/build.make
voidcsfml/libvoidcsfml-audio.so.2.4: /usr/lib/libsfml-audio.so
voidcsfml/libvoidcsfml-audio.so.2.4: /usr/lib/libsfml-system.so
voidcsfml/libvoidcsfml-audio.so.2.4: voidcsfml/CMakeFiles/voidcsfml-audio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/toby/Desktop/Source Codes/crsfml/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libvoidcsfml-audio.so"
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voidcsfml-audio.dir/link.txt --verbose=$(VERBOSE)
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && $(CMAKE_COMMAND) -E cmake_symlink_library libvoidcsfml-audio.so.2.4 libvoidcsfml-audio.so.2.4 libvoidcsfml-audio.so

voidcsfml/libvoidcsfml-audio.so: voidcsfml/libvoidcsfml-audio.so.2.4
	@$(CMAKE_COMMAND) -E touch_nocreate voidcsfml/libvoidcsfml-audio.so

# Rule to build all files generated by this target.
voidcsfml/CMakeFiles/voidcsfml-audio.dir/build: voidcsfml/libvoidcsfml-audio.so

.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/build

voidcsfml/CMakeFiles/voidcsfml-audio.dir/requires: voidcsfml/CMakeFiles/voidcsfml-audio.dir/src/voidcsfml/audio.cpp.o.requires

.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/requires

voidcsfml/CMakeFiles/voidcsfml-audio.dir/clean:
	cd "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" && $(CMAKE_COMMAND) -P CMakeFiles/voidcsfml-audio.dir/cmake_clean.cmake
.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/clean

voidcsfml/CMakeFiles/voidcsfml-audio.dir/depend:
	cd "/home/toby/Desktop/Source Codes/crsfml" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/toby/Desktop/Source Codes/crsfml" "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" "/home/toby/Desktop/Source Codes/crsfml" "/home/toby/Desktop/Source Codes/crsfml/voidcsfml" "/home/toby/Desktop/Source Codes/crsfml/voidcsfml/CMakeFiles/voidcsfml-audio.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : voidcsfml/CMakeFiles/voidcsfml-audio.dir/depend
