cmake_minimum_required(VERSION 3.16)
project(lab6)
set(CMAKE_CXX_STANDARD 20)

Include(FetchContent)

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.4.0 # or a later release
)

FetchContent_MakeAvailable(Catch2)

find_package(Boost CONFIG)

include_directories(${Boost_INCLUDE_DIRS})


add_library(boost_system INTERFACE)
#add_library(Boost::system ALIAS boost_system)

add_library(parser_helper INTERFACE)
target_include_directories(parser_helper INTERFACE include)
target_link_libraries(parser_helper INTERFACE Boost::boost)

file(GLOB TESTS tests/*.cpp)
add_executable(tests_parser_helper ${TESTS})
target_link_libraries(tests_parser_helper parser_helper Catch2::Catch2WithMain)