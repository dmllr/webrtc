cmake_minimum_required(VERSION 3.8)
project(webrtc-build)

include(cmake/import_remote.cmake)

set (boringssl_source_path "${CMAKE_CURRENT_SOURCE_DIR}/third_party/boringssl")
set (rnnoise_source_path "${CMAKE_CURRENT_SOURCE_DIR}/third_party/rnnoise/src")

include(cmake/libsrtp.cmake)
include(cmake/libusrsctp.cmake)
include(cmake/libopus.cmake)
include(cmake/libjsoncpp.cmake)
include(cmake/libvpx.cmake)

include(cmake/libwebrtc.cmake)
