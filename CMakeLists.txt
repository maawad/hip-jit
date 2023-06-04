cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(project_name "hip_jitter")

project(${project_name} LANGUAGES CXX HIP)


# Find hip
find_package(hip REQUIRED)

# C++ and HIP standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_HIP_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_HIP_STANDARD_REQUIRED TRUE)


set(CMAKE_HIP_FLAGS_DEBUG "-g -G -ggdb") # either -g or -G should be removed
set(CMAKE_HIP_FLAGS_RELEASE "-O3")

# Release mode is the default
if ("${CMAKE_BUILD_TYPE}" STREQUAL "")
    set(CMAKE_BUILD_TYPE Release)
endif ()

set(CXX_FLAGS
        $<IF:$<CXX_COMPILER_ID:MSVC>,
        /std:c++20,
        --std=c++20
        >)

set(HIP_FLAGS
      -Rpass-analysis=kernel-resource-usage
   )

# Direct outputs to bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)

set(external_includes "${CMAKE_CURRENT_SOURCE_DIR}/external")
set(${project_name}_includes "${CMAKE_CURRENT_SOURCE_DIR}/include")

add_library(${project_name} INTERFACE)
target_include_directories(${project_name} INTERFACE ${${project_name}_includes})

option(build_examples "Build examples" ON)

if(build_examples)
   add_subdirectory(examples)
endif(build_examples)