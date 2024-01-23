#!/bin/bash

echo "Removing build dir"
rm -rf ./build ./staging
echo "CMake: config step"
cmake -S . -B ./build  -GNinja -DCMAKE_BUILD_TYPE=Release
# -S .        Look for CMakeLists.txt in this dir
# -B ./build  Place the configuration files in ./build
# -GNinja     Use the Ninja build tool
# -DCMAKE_BUILD_TYPE=Release

echo "CMake: build step"
cmake --build ./build --target all
# --build ./build   Build the ninja project placed in ./build from previous command
# --target all      Build all targets

echo "CMake: install step"
cmake --install ./build --prefix ./staging
# --install ./build   Execute all the install() statements in CMakeLists.txt
# --prefix ./staging  Don't put the files in /opt/yoyodune/simpleton as CMAKE_INSTALL_PREFIX says. Put them in ./staging

#echo "CPack: Packaging step"
cpack -B ./build --config ./build/CPackConfig.cmake -C Release

echo "Done"
