# WebRTC cmake script
This repository is a wrapper of official WebRTC repository
made to be built from source using CMake. 

## Supported platforms:
  - MAC
  - POSIX
  - (probably) Windows

## How to use
### Usual way
  1. Clone `https://github.com/dmllr/webrtc.git` repository or add it as submodule
  1. In your CMakeLists.txt add
```cmake
add_subdirectory("<path to folder contains this file>")
target_include_directories(your_shiny_target
    PRIVATE
    ${webrtc_source_path}
)
target_link_libraries(your_shiny_target
    webrtc
)
```

### Alternatively
  1. Using `cmake/import_remote.cmake` from this repository do
```cmake
include(import_remote.cmake)
import_remote("https://github.com/dmllr/webrtc.git" TAG "master" ALIAS webrtc)
target_include_directories(your_shiny_target
    PRIVATE
    ${webrtc_source_path}
)
target_link_libraries(your_shiny_target
    webrtc
)
```