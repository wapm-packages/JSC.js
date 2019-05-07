#/bin/bash

./build/gn/UpdateGN.sh
./Source/JavaScriptCore/DerivedSources/gen.sh

./build/gn/mac/gn gen out --args="target_os=\"wasm\""
ninja -C out
