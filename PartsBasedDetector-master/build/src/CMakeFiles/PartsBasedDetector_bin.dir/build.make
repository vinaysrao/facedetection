# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vsrao/git-reps/facedetection/PartsBasedDetector-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build

# Include any dependencies generated for this target.
include src/CMakeFiles/PartsBasedDetector_bin.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/PartsBasedDetector_bin.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/PartsBasedDetector_bin.dir/flags.make

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o: src/CMakeFiles/PartsBasedDetector_bin.dir/flags.make
src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o: ../src/demo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o"
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o -c /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/src/demo.cpp

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.i"
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/src/demo.cpp > CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.i

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.s"
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/src/demo.cpp -o CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.s

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.requires:
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.requires

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.provides: src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/PartsBasedDetector_bin.dir/build.make src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.provides.build
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.provides

src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.provides.build: src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o

# Object files for target PartsBasedDetector_bin
PartsBasedDetector_bin_OBJECTS = \
"CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o"

# External object files for target PartsBasedDetector_bin
PartsBasedDetector_bin_EXTERNAL_OBJECTS =

src/PartsBasedDetector: src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o
src/PartsBasedDetector: src/CMakeFiles/PartsBasedDetector_bin.dir/build.make
src/PartsBasedDetector: /usr/lib/libboost_system-mt.so
src/PartsBasedDetector: /usr/lib/libboost_filesystem-mt.so
src/PartsBasedDetector: /usr/lib/libboost_signals-mt.so
src/PartsBasedDetector: /usr/local/lib/libopencv_calib3d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_contrib.so
src/PartsBasedDetector: /usr/local/lib/libopencv_core.so
src/PartsBasedDetector: /usr/local/lib/libopencv_features2d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_flann.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpu.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuarithm.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpubgsegm.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpucodec.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpufeatures2d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpufilters.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuimgproc.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuoptflow.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpustereo.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuwarping.so
src/PartsBasedDetector: /usr/local/lib/libopencv_highgui.so
src/PartsBasedDetector: /usr/local/lib/libopencv_imgproc.so
src/PartsBasedDetector: /usr/local/lib/libopencv_legacy.so
src/PartsBasedDetector: /usr/local/lib/libopencv_ml.so
src/PartsBasedDetector: /usr/local/lib/libopencv_nonfree.so
src/PartsBasedDetector: /usr/local/lib/libopencv_objdetect.so
src/PartsBasedDetector: /usr/local/lib/libopencv_photo.so
src/PartsBasedDetector: /usr/local/lib/libopencv_softcascade.so
src/PartsBasedDetector: /usr/local/lib/libopencv_stitching.so
src/PartsBasedDetector: /usr/local/lib/libopencv_superres.so
src/PartsBasedDetector: /usr/local/lib/libopencv_ts.so
src/PartsBasedDetector: /usr/local/lib/libopencv_video.so
src/PartsBasedDetector: /usr/local/lib/libopencv_videostab.so
src/PartsBasedDetector: /usr/lib/libhdf5.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libpthread.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libz.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/librt.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libm.so
src/PartsBasedDetector: src/libPartsBasedDetector.so
src/PartsBasedDetector: /usr/lib/libboost_system-mt.so
src/PartsBasedDetector: /usr/lib/libboost_filesystem-mt.so
src/PartsBasedDetector: /usr/lib/libboost_signals-mt.so
src/PartsBasedDetector: /usr/local/lib/libopencv_calib3d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_contrib.so
src/PartsBasedDetector: /usr/local/lib/libopencv_core.so
src/PartsBasedDetector: /usr/local/lib/libopencv_features2d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_flann.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpu.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuarithm.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpubgsegm.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpucodec.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpufeatures2d.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpufilters.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuimgproc.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuoptflow.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpustereo.so
src/PartsBasedDetector: /usr/local/lib/libopencv_gpuwarping.so
src/PartsBasedDetector: /usr/local/lib/libopencv_highgui.so
src/PartsBasedDetector: /usr/local/lib/libopencv_imgproc.so
src/PartsBasedDetector: /usr/local/lib/libopencv_legacy.so
src/PartsBasedDetector: /usr/local/lib/libopencv_ml.so
src/PartsBasedDetector: /usr/local/lib/libopencv_nonfree.so
src/PartsBasedDetector: /usr/local/lib/libopencv_objdetect.so
src/PartsBasedDetector: /usr/local/lib/libopencv_photo.so
src/PartsBasedDetector: /usr/local/lib/libopencv_softcascade.so
src/PartsBasedDetector: /usr/local/lib/libopencv_stitching.so
src/PartsBasedDetector: /usr/local/lib/libopencv_superres.so
src/PartsBasedDetector: /usr/local/lib/libopencv_ts.so
src/PartsBasedDetector: /usr/local/lib/libopencv_video.so
src/PartsBasedDetector: /usr/local/lib/libopencv_videostab.so
src/PartsBasedDetector: /usr/lib/libhdf5.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libpthread.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libz.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/librt.so
src/PartsBasedDetector: /usr/lib/x86_64-linux-gnu/libm.so
src/PartsBasedDetector: src/CMakeFiles/PartsBasedDetector_bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable PartsBasedDetector"
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PartsBasedDetector_bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/PartsBasedDetector_bin.dir/build: src/PartsBasedDetector
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/build

src/CMakeFiles/PartsBasedDetector_bin.dir/requires: src/CMakeFiles/PartsBasedDetector_bin.dir/demo.cpp.o.requires
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/requires

src/CMakeFiles/PartsBasedDetector_bin.dir/clean:
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src && $(CMAKE_COMMAND) -P CMakeFiles/PartsBasedDetector_bin.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/clean

src/CMakeFiles/PartsBasedDetector_bin.dir/depend:
	cd /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vsrao/git-reps/facedetection/PartsBasedDetector-master /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/src /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src /home/vsrao/git-reps/facedetection/PartsBasedDetector-master/build/src/CMakeFiles/PartsBasedDetector_bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/PartsBasedDetector_bin.dir/depend

