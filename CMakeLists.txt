cmake_minimum_required(VERSION 2.8)
project(RelaxIV_cmake)
set(SOURCE_FILES Main.C MCFClass.h RelaxIV.C RelaxIV.h OPTUtils.h)
add_executable(RelaxIV_cmake ${SOURCE_FILES})
