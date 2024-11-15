#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit

find . -type d \( -path ./build\* -o -path ./external \) -prune -false -o -type f \( -name '*.cmake' -o -name 'CMakeLists.txt' \) -exec cmake-format $* {} +

exit $?
