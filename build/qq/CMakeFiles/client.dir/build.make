# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/wwh/qqq/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wwh/qqq/build

# Include any dependencies generated for this target.
include qq/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include qq/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include qq/CMakeFiles/client.dir/flags.make

qq/CMakeFiles/client.dir/src/client.cpp.o: qq/CMakeFiles/client.dir/flags.make
qq/CMakeFiles/client.dir/src/client.cpp.o: /home/wwh/qqq/src/qq/src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwh/qqq/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object qq/CMakeFiles/client.dir/src/client.cpp.o"
	cd /home/wwh/qqq/build/qq && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/client.cpp.o -c /home/wwh/qqq/src/qq/src/client.cpp

qq/CMakeFiles/client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/client.cpp.i"
	cd /home/wwh/qqq/build/qq && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwh/qqq/src/qq/src/client.cpp > CMakeFiles/client.dir/src/client.cpp.i

qq/CMakeFiles/client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/client.cpp.s"
	cd /home/wwh/qqq/build/qq && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwh/qqq/src/qq/src/client.cpp -o CMakeFiles/client.dir/src/client.cpp.s

qq/CMakeFiles/client.dir/src/client.cpp.o.requires:

.PHONY : qq/CMakeFiles/client.dir/src/client.cpp.o.requires

qq/CMakeFiles/client.dir/src/client.cpp.o.provides: qq/CMakeFiles/client.dir/src/client.cpp.o.requires
	$(MAKE) -f qq/CMakeFiles/client.dir/build.make qq/CMakeFiles/client.dir/src/client.cpp.o.provides.build
.PHONY : qq/CMakeFiles/client.dir/src/client.cpp.o.provides

qq/CMakeFiles/client.dir/src/client.cpp.o.provides.build: qq/CMakeFiles/client.dir/src/client.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/client.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

/home/wwh/qqq/devel/lib/qq/client: qq/CMakeFiles/client.dir/src/client.cpp.o
/home/wwh/qqq/devel/lib/qq/client: qq/CMakeFiles/client.dir/build.make
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libcv_bridge.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libopencv_core3.so.3.3.1
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.3.1
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.3.1
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libimage_transport.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libmessage_filters.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libclass_loader.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/libPocoFoundation.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libdl.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libroscpp.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/librosconsole.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libroslib.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/librospack.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/librostime.so
/home/wwh/qqq/devel/lib/qq/client: /opt/ros/kinetic/lib/libcpp_common.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/wwh/qqq/devel/lib/qq/client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/wwh/qqq/devel/lib/qq/client: qq/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wwh/qqq/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/wwh/qqq/devel/lib/qq/client"
	cd /home/wwh/qqq/build/qq && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qq/CMakeFiles/client.dir/build: /home/wwh/qqq/devel/lib/qq/client

.PHONY : qq/CMakeFiles/client.dir/build

qq/CMakeFiles/client.dir/requires: qq/CMakeFiles/client.dir/src/client.cpp.o.requires

.PHONY : qq/CMakeFiles/client.dir/requires

qq/CMakeFiles/client.dir/clean:
	cd /home/wwh/qqq/build/qq && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : qq/CMakeFiles/client.dir/clean

qq/CMakeFiles/client.dir/depend:
	cd /home/wwh/qqq/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wwh/qqq/src /home/wwh/qqq/src/qq /home/wwh/qqq/build /home/wwh/qqq/build/qq /home/wwh/qqq/build/qq/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qq/CMakeFiles/client.dir/depend

