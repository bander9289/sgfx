

#Add sources to the project
set(SOURCES_PREFIX ${CMAKE_SOURCE_DIR}/src)
add_subdirectory(src)
file(GLOB_RECURSE HEADER_SOURCES ${CMAKE_SOURCE_DIR}/include/*)
list(APPEND SOS_LIB_SOURCELIST ${SOURCES} ${HEADER_SOURCES})

set(SOS_LIB_TYPE release)
set(SOS_LIB_ARCH link)
set(SOS_LIB_OPTION 1bpp)
set(SOS_LIB_DEFINITIONS SG_BITS_PER_PIXEL=1)
include(${SOS_TOOLCHAIN_CMAKE_PATH}/sos-lib.cmake)

set(SOS_LIB_OPTION 2bpp)
set(SOS_LIB_DEFINITIONS SG_BITS_PER_PIXEL=2)
include(${SOS_TOOLCHAIN_CMAKE_PATH}/sos-lib.cmake)

set(SOS_LIB_OPTION 4bpp)
set(SOS_LIB_DEFINITIONS SG_BITS_PER_PIXEL=4)
include(${SOS_TOOLCHAIN_CMAKE_PATH}/sos-lib.cmake)

set(SOS_LIB_OPTION 8bpp)
set(SOS_LIB_DEFINITIONS SG_BITS_PER_PIXEL=8)
include(${SOS_TOOLCHAIN_CMAKE_PATH}/sos-lib.cmake)
