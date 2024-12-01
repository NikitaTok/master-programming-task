cmake_minimum_required(VERSION 3.16)
project(lab4)

Include(FetchContent)

set(CMAKE_CXX_STANDARD 20)
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang|GNU")
    add_compile_options(-Wall -Wextra -pedantic -Werror)
    if(CMAKE_BUILD_TYPE STREQUAL Debug)
        add_compile_definitions(_GLIBCXX_DEBUG=1)
    endif()
endif()

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.4.0 # or a later release
)

FetchContent_MakeAvailable(Catch2)


find_package(Boost CONFIG)

include_directories(${Boost_INCLUDE_DIRS})

add_library(variant INTERFACE)
target_include_directories(variant INTERFACE include)

file(GLOB TESTS tests/*.cpp)
add_executable(tests_variant ${TESTS})
target_link_libraries(tests_variant variant Catch2::Catch2WithMain Boost::boost)
# catch_discover_tests(tests_variant)