set(WT_ARCH "ppc64le" CACHE STRING "")
set(WT_OS "linux" CACHE STRING "")
set(WT_POSIX ON CACHE BOOL "")

# Linux requires '_GNU_SOURCE' to be defined for access to GNU/Linux extension functions
# e.g. Access to 'pthread_setname_np' on Linux. Append this macro to our compiler flags for Linux-based
# builds.
add_cmake_flag(CMAKE_C_FLAGS -D_GNU_SOURCE)
