# JavaScriptCore

The JavaScript engine that powers Safari.

You can install JavaScriptCore with [wapm](https://wapm.io/help/install):

```bash
wapm install -g jsc
```

## Running

You can run the `jsc` shell:

```bash
$ jsc
>>> function multiply(a, b) { return a * b; }
undefined
>>> multiply(10, 20)
200
>>> 0.1 + 0.2
0.30000000000000004
>>> Date();
Mon Apr 15 2019 19:05:43 GMT-c100 (UTC)
>>>
```

## Building from Source

You will need Emscripten SDK (emsdk), Python, Ruby, and Ninja to build the `php.wasm` file.

Steps:

1. Setup emsdk (>= 1.38.11), see [Installation Instructions](https://github.com/juj/emsdk#installation-instructions)
2. Run `bash build.sh`

Manual step-by-step instructions:

### Preparation on Mac
- install emscripten
- install python, ruby, ninja, etc.
- run `./build/gn/UpdateGN.sh` to download latest `gn`.
- run `./Source/JavaScriptCore/DerivedSources/gen.sh` to generate derived sources.

### Preparation on Windows
- install emscripten
- install python, ruby, ninja, etc.
- run `build/gn/download.bat` to download latest `gn.exe`.
- run `Source/JavaScriptCore/DerivedSources/gen.bat` to generate derived sources.

### Build with gn
```
> ./build/gn/mac/gn gen out --args="target_os=\"wasm\""
> ninja -C out
```

### Build test shell on Windows
```
> gn gen out --args="target_os=\"win\""
> ninja -C out
```
