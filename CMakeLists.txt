cmake_minimum_required(VERSION 3.18)

project(simpleton VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(simpleton
    src/main.cpp
    .github/workflows/main.yml
    docker/Dockerfile)

install(
    TARGETS simpleton
    DESTINATION ./build/staging
)


