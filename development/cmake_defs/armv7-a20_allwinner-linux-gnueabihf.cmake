# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Linux)

# which C and C++ compiler to use
SET(CMAKE_C_COMPILER   armv7-a20_allwinner-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER armv7-a20_allwinner-linux-gnueabihf-g++) 

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH  "$ENV{HOME}/arm_rootfs")
# sets the root filesystem path for the compiler to use
SET(CMAKE_SYSROOT ${CMAKE_FIND_ROOT_PATH})

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search 
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

