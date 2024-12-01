cmake_minimum_required(VERSION 3.5.0)
project(noreng VERSION 0.1.0 LANGUAGES C CXX)

add_subdirectory("src")
add_subdirectory("test")
include_directories("${PROJECT_SOURCE_DIR}/raylib/src")

include(CTest)
enable_testing()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
