# Minimum CMake version with cross-compiling support
cmake_minimum_required(VERSION 2.8.11)

project(gurux.dlms.client.bin CXX)

set(VERSION_MAJOR "1")
set(VERSION_MINOR "0")
set(VERSION_PATCH "0")

# Gurux client example source files
set(CLIENT_SOURCES
    src/GuruxDLMSClientExample.cpp
    src/communication.cpp
    src/getopt.c
    )

# Gurux client example header files directory
include_directories(include)

# Adds the subdirectory where the Gurux library and CMakeLists.txt can be found
add_subdirectory(development)

# Defines the executable target
add_executable(${PROJECT_NAME} ${CLIENT_SOURCES})

# Links executable program to libgurux library
target_link_libraries(${PROJECT_NAME} libgurux_dlms_cpp_static)

# Defines install path targets for the executable program
install(TARGETS ${PROJECT_NAME}
        DESTINATION ${CMAKE_FIND_ROOT_PATH}/usr/bin)
