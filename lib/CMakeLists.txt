cmake_minimum_required(VERSION 3.0) # I would advise to update
project(resvgc CXX C)
include_directories(include)
file(GLOB headers src/*.h) # upper case variable names reserved for exported variables by convention
file(GLOB sources src/*.cpp) # upper case variable names reserved for exported variables by convention
add_library(resvgc STATIC ${sources} ${headers}) # STATIC by default
#target_include_directories(resvgc PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
