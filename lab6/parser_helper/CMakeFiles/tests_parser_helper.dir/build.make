# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /workspaces/master-programming-task/lab6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/master-programming-task/lab6

# Include any dependencies generated for this target.
include parser_helper/CMakeFiles/tests_parser_helper.dir/depend.make

# Include the progress variables for this target.
include parser_helper/CMakeFiles/tests_parser_helper.dir/progress.make

# Include the compile flags for this target's objects.
include parser_helper/CMakeFiles/tests_parser_helper.dir/flags.make

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o: parser_helper/CMakeFiles/tests_parser_helper.dir/flags.make
parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o: parser_helper/tests/quoted_string.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/master-programming-task/lab6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o -c /workspaces/master-programming-task/lab6/parser_helper/tests/quoted_string.cpp

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.i"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/master-programming-task/lab6/parser_helper/tests/quoted_string.cpp > CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.i

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.s"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/master-programming-task/lab6/parser_helper/tests/quoted_string.cpp -o CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.s

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o: parser_helper/CMakeFiles/tests_parser_helper.dir/flags.make
parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o: parser_helper/tests/variant_decorator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/master-programming-task/lab6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o -c /workspaces/master-programming-task/lab6/parser_helper/tests/variant_decorator.cpp

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.i"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/master-programming-task/lab6/parser_helper/tests/variant_decorator.cpp > CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.i

parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.s"
	cd /workspaces/master-programming-task/lab6/parser_helper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/master-programming-task/lab6/parser_helper/tests/variant_decorator.cpp -o CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.s

# Object files for target tests_parser_helper
tests_parser_helper_OBJECTS = \
"CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o" \
"CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o"

# External object files for target tests_parser_helper
tests_parser_helper_EXTERNAL_OBJECTS =

parser_helper/tests_parser_helper: parser_helper/CMakeFiles/tests_parser_helper.dir/tests/quoted_string.cpp.o
parser_helper/tests_parser_helper: parser_helper/CMakeFiles/tests_parser_helper.dir/tests/variant_decorator.cpp.o
parser_helper/tests_parser_helper: parser_helper/CMakeFiles/tests_parser_helper.dir/build.make
parser_helper/tests_parser_helper: _deps/catch2-build/src/libCatch2Main.a
parser_helper/tests_parser_helper: _deps/catch2-build/src/libCatch2.a
parser_helper/tests_parser_helper: parser_helper/CMakeFiles/tests_parser_helper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/master-programming-task/lab6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tests_parser_helper"
	cd /workspaces/master-programming-task/lab6/parser_helper && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests_parser_helper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
parser_helper/CMakeFiles/tests_parser_helper.dir/build: parser_helper/tests_parser_helper

.PHONY : parser_helper/CMakeFiles/tests_parser_helper.dir/build

parser_helper/CMakeFiles/tests_parser_helper.dir/clean:
	cd /workspaces/master-programming-task/lab6/parser_helper && $(CMAKE_COMMAND) -P CMakeFiles/tests_parser_helper.dir/cmake_clean.cmake
.PHONY : parser_helper/CMakeFiles/tests_parser_helper.dir/clean

parser_helper/CMakeFiles/tests_parser_helper.dir/depend:
	cd /workspaces/master-programming-task/lab6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/master-programming-task/lab6 /workspaces/master-programming-task/lab6/parser_helper /workspaces/master-programming-task/lab6 /workspaces/master-programming-task/lab6/parser_helper /workspaces/master-programming-task/lab6/parser_helper/CMakeFiles/tests_parser_helper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parser_helper/CMakeFiles/tests_parser_helper.dir/depend

