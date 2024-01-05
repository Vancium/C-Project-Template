#[[
    CMake Project Template for C programming, can easily be converted to C++

]]


cmake_minimum_required(VERSION 3.5)

project(MyApp C)

set(BUILD_TYPE Debug)

set(CMAKE_BUILD_TYPE ${BUILD_TYPE})

set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/project/src/)

set(
    PROJECT_SOURCES
    ${SOURCE_DIR}main.c
)

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES})
