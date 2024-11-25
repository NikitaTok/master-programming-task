cmake_minimum_requred(VERSION 3.15)
project(lab4)

set(CMAKE_CXX_COMPILER_ID MATCHES "Clang|GNU")
    add_compile_options(-Wall -Wextra -pedantic -Werror)
    if(CMAKE_BUILD_TYPE STREQUAL Debug)
        add_compile_definitions(_GLIBCXX_DEBUG=1)
    endif()
endif()

Include(FetchContent)

FecthContent_Declare(
    Catch2GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v3.7.1
)

FetchContent_MakeAvailable(Catch2)
find_package(Boost 1.70 REQUIRED)

add_library(iterator INTERFACE)
target_include_directories(iterator INTERFACE include)
target_link_libraries(iterator INTERFACE Boost::boost)

file(GLOB TESTS tests/*.cpp)
add_executable(tests_iterator ${TESTS})
target_link_libraries(tests_iterator iterator Catch2::Catch2WithMain)
catch_discover_tests(tests_iterator)
