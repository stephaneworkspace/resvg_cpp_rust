cmake_minimum_required(VERSION 3.22)
project(resvg)
#project(resvg CXX C)
set(CMAKE_CXX_STANDARD 20)

option(WITH_IOS "Option description" OFF)
option(WITH_MACOS "Option description" ON)


if (DEFINED PLATFORM)
    include(toolchains/ios.cmake)
endif()

add_definitions(-Wall)
set(DEBUG)
if (DEFINED DEBUG)
    add_definitions(-g)
endif()
if (DEFINED RELEASE)
    add_definitions(-O3)
endif()

IF (WITH_IOS)
    #SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -arch armv7")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -arch armv7")
    set(CMAKE_CXX_FLAGS "-fobjc-abi-version=2 -fobjc-arc ${CMAKE_CXX_FLAGS}")
endif()

#add_library(libresvg SHARED IMPORTED helloworld.cpp helloworld.h)

#set_target_properties(libresvg
#        PROPERTIES IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/rust/resvg/target/release/libresvg.dylib)

#set_target_properties(libresvg
#        PROPERTIES IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/rust/libresvg.a)

#set_target_properties(libresvg
#        PROPERTIES IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/rust/libresvgIos.a)
#target_include_directories(libresvg
#        INTERFACE ${CMAKE_SOURCE_DIR}/lib)

include_directories(include)
file(GLOB SOURCES "src/*.cpp")
add_library(resvg STATIC ${SOURCES})

#add_executable(resvg main.cpp libresvg.h)

IF (WITH_IOS)
    TARGET_LINK_LIBRARIES(resvg ${CMAKE_SOURCE_DIR}/rust/libresvgIos.a)
endif()
IF (WITH_MACOS)
    TARGET_LINK_LIBRARIES(resvg ${CMAKE_SOURCE_DIR}/rust/libresvg.a)
endif()
# https://gitlab.com/Fraser999/Rust-From-CXX/-/blob/master/CMakeLists.txt

#SET(APP_EXE StaticLib)
#ADD_EXECUTABLE( ${APP_EXE}
#        lib/include/src/helloworld.h lib/include/src/helloworld.cpp)
#TARGET_LINK_LIBRARIES(${APP_EXE} resvg)





#target_link_libraries(${PROJECT_NAME} PUBLIC libresvg)









###set_xcode_property (resvg GCC_GENERATE_DEBUGGING_SYMBOLS YES)

#install(TARGETS resvg
#        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
#        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

#configure_file(resvg.pc.in resvg.pc @ONLY)
#target_include_directories(resvg PRIVATE .)
#install(FILES ${CMAKE_BINARY_DIR}/resvg.pc DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/pkgconfig)