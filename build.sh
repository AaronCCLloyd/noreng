#!/bin/sh

build() {
    mkdir build
    cd build
    cmake ../
    make all
    cd -
}

clone_raylib() {
    if [ ! -d "$(pwd)/raylib" ]; then
        git clone https://github.com/raysan5/raylib.git
    fi
}

build_raylib() {
    # TODO: Add logic
    return
}

while getopts "br" arg; do
    case "$arg" in
    b)
        clone_raylib
        build
        ;;
    r)
        ./build/src/noreng
        ;;
    *)
        echo "default"
        ;;
    esac
done
