#
# Automatically generated file; DO NOT EDIT.
# CMake toolchain file for Buildroot
#

# In order to allow the toolchain to be relocated, we calculate the
# HOST_DIR based on this file's location: $(HOST_DIR)/share/buildroot
# and store it in RELOCATED_HOST_DIR.
# All the other variables that need to refer to HOST_DIR will use the
# RELOCATED_HOST_DIR variable.
string(REPLACE "/share/buildroot" "" RELOCATED_HOST_DIR ${CMAKE_CURRENT_LIST_DIR})

# Point cmake to the location where we have our custom modules,
# so that it can find our custom platform description.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

if(NOT DEFINED CMAKE_SYSTEM_NAME)
  set(CMAKE_SYSTEM_NAME Buildroot)
endif()
if(NOT DEFINED CMAKE_SYSTEM_VERSION)
  set(CMAKE_SYSTEM_VERSION 1)
endif()
if(NOT DEFINED CMAKE_SYSTEM_PROCESSOR)
  set(CMAKE_SYSTEM_PROCESSOR aarch64)
endif()

# Set the {C,CXX}FLAGS appended by CMake depending on the build type
# defined by Buildroot. CMake defaults these variables with -g and/or
# -O options, and they are appended at the end of the argument list,
# so the Buildroot options are overridden. Therefore these variables
# have to be cleared, so that the options passed in CMAKE_C_FLAGS do
# apply.
#
# Note:
#   if the project forces some of these flag variables, Buildroot is
#   screwed up and there is nothing Buildroot can do about that :(
if(NOT DEFINED CMAKE_C_FLAGS_DEBUG)
  set(CMAKE_C_FLAGS_DEBUG "" CACHE STRING "Debug CFLAGS")
endif()
if(NOT DEFINED CMAKE_C_FLAGS_RELEASE)
  set(CMAKE_C_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release CFLAGS")
endif()

# Build type from the Buildroot configuration
if(NOT DEFINED CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Buildroot build configuration")
endif()

# Buildroot defaults flags.
# If you are using this toolchainfile.cmake file outside of Buildroot and
# want to customize the compiler/linker flags, then:
# * set them all on the cmake command line, e.g.:
#     cmake -DCMAKE_C_FLAGS="-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Os -g0 -Dsome_custom_flag" ...
# * and make sure the project's CMake code extends them like this if needed:
#     set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Dsome_definitions")
if(NOT DEFINED CMAKE_C_FLAGS)
  set(CMAKE_C_FLAGS "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Os -g0" CACHE STRING "Buildroot CFLAGS")
endif()
if(NOT DEFINED CMAKE_EXE_LINKER_FLAGS)
  set(CMAKE_EXE_LINKER_FLAGS "" CACHE STRING "Buildroot LDFLAGS for executables")
endif()
if(NOT DEFINED CMAKE_SHARED_LINKER_FLAGS)
  set(CMAKE_SHARED_LINKER_FLAGS "" CACHE STRING "Buildroot LDFLAGS for shared libraries")
endif()
if(NOT DEFINED CMAKE_MODULE_LINKER_FLAGS)
  set(CMAKE_MODULE_LINKER_FLAGS "" CACHE STRING "Buildroot LDFLAGS for module libraries")
endif()

if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE 0)
endif()

if(NOT DEFINED CMAKE_PROGRAM_PATH)
  set(CMAKE_PROGRAM_PATH "${RELOCATED_HOST_DIR}/bin")
endif()
if(NOT DEFINED CMAKE_SYSROOT)
  set(CMAKE_SYSROOT "${RELOCATED_HOST_DIR}/aarch64-none-linux-musl/sysroot")
endif()
if(NOT DEFINED CMAKE_FIND_ROOT_PATH)
  set(CMAKE_FIND_ROOT_PATH "${RELOCATED_HOST_DIR}/aarch64-none-linux-musl/sysroot")
endif()
if(NOT DEFINED CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
  set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
endif()
if(NOT DEFINED CMAKE_FIND_ROOT_PATH_MODE_PACKAGE)
  set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
endif()
if(NOT DEFINED CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
  set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
endif()
if(NOT DEFINED CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
  set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif()
set(ENV{PKG_CONFIG_SYSROOT_DIR} "${RELOCATED_HOST_DIR}/aarch64-none-linux-musl/sysroot")

# This toolchain file can be used both inside and outside Buildroot.
if(NOT DEFINED CMAKE_C_COMPILER)
  set(CMAKE_C_COMPILER "${RELOCATED_HOST_DIR}/bin/aarch64-none-linux-musl-gcc")
endif()
if(1)
  if(NOT DEFINED CMAKE_CXX_FLAGS_DEBUG)
    set(CMAKE_CXX_FLAGS_DEBUG "" CACHE STRING "Debug CXXFLAGS")
  endif()
  if(NOT DEFINED CMAKE_CXX_FLAGS_RELEASE)
    set(CMAKE_CXX_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release CXXFLAGS")
  endif()
  if(NOT DEFINED CMAKE_CXX_FLAGS)
    set(CMAKE_CXX_FLAGS "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Os -g0" CACHE STRING "Buildroot CXXFLAGS")
  endif()
  if(NOT DEFINED CMAKE_CXX_COMPILER)
    set(CMAKE_CXX_COMPILER "${RELOCATED_HOST_DIR}/bin/aarch64-none-linux-musl-g++")
  endif()
endif()
if(0)
  if(NOT DEFINED CMAKE_Fortran_FLAGS_DEBUG)
    set(CMAKE_Fortran_FLAGS_DEBUG "" CACHE STRING "Debug Fortran FLAGS")
  endif()
  if(NOT DEFINED CMAKE_Fortran_FLAGS_RELEASE)
    set(CMAKE_Fortran_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release Fortran FLAGS")
  endif()
  if(NOT DEFINED CMAKE_Fortran_FLAGS)
    set(CMAKE_Fortran_FLAGS "-Os -g0" CACHE STRING "Buildroot FCFLAGS")
  endif()
  if(NOT DEFINED CMAKE_Fortran_COMPILER)
    set(CMAKE_Fortran_COMPILER "${RELOCATED_HOST_DIR}/bin/aarch64-none-linux-musl-gfortran")
  endif()
endif()

# For Qt6
if(NOT DEFINED QT_HOST_PATH)
  set(QT_HOST_PATH "${RELOCATED_HOST_DIR}")
endif()

if(NOT DEFINED QT_HOST_PATH_CMAKE_DIR)
  set(QT_HOST_PATH_CMAKE_DIR "${RELOCATED_HOST_DIR}/lib/cmake")
endif()
