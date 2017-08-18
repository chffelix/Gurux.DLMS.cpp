# Minimum CMake version with cross-compiling support
cmake_minimum_required(VERSION 2.6)

project(libgurux CXX)

set(VERSION_MAJOR "1")
set(VERSION_MINOR "0")
set(VERSION_PATCH "0")

# Gurux library sources directory
aux_source_directory(src SOURCES)

# Prepares static and shared library versions of Gurux
add_library(libgurux_dlms_cpp_static STATIC ${SOURCES})
add_library(libgurux_dlms_cpp_shared SHARED ${SOURCES})

# Sets the same library filenames for both the static and shared versions (they
# can be distinguished by the extension) and specifies C++ linking language
set_target_properties(libgurux_dlms_cpp_static PROPERTIES OUTPUT_NAME gurux_dlms_cpp LINKER_LANGUAGE CXX)
set_target_properties(libgurux_dlms_cpp_shared PROPERTIES OUTPUT_NAME gurux_dlms_cpp LINKER_LANGUAGE CXX)

# Defines install path targets for the compiled libraries
install(TARGETS libgurux_dlms_cpp_static libgurux_dlms_cpp_shared
        DESTINATION ${CMAKE_FIND_ROOT_PATH}/usr/lib)
