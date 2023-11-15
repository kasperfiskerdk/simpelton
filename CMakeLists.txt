# $ cmake -S . -B ./build  -GNinja -DCMAKE_BUILD_TYPE=Release
# $ cmake --build ./build --target all
# $ cmake --install ./build

cmake_minimum_required(VERSION 3.18)

project(simpleton VERSION 0.0.1 LANGUAGES CXX)

include(GNUInstallDirs)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# This is where the final project will install
set(CMAKE_INSTALL_PREFIX "/opt/yoyodyne/${PROJECT_NAME}")

add_executable(simpleton
    src/main.cpp
    go.sh
    .github/workflows/main.yml
    docker/Dockerfile
)

# Install executable simpleton to CMAKE_INSTALL_PREFIX/CMAKE_INSTALL_BINDIR
# which becomes /opt/yoyodyne/simpleton/bin/simpleton
install(
    TARGETS simpleton
    RUNTIME
    DESTINATION ${CMAKE_INSTALL_BINDIR}
)

install(
    FILES README.md
    DESTINATION ${CMAKE_INSTALL_BINDIR}
)

include(CPack)
