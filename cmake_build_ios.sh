#cmake -G Xcode -B build \
#    -DCMAKE_SYSTEM_NAME=iOS \
#    -DCMAKE_Swift_COMPILER_FORCED=true \
#    -DCMAKE_OSX_DEPLOYMENT_TARGET=15.0
cmake -DCMAKE_TOOLCHAIN_FILE=${CMAKE_SOURCE_DIR}/toolchains/ios.cmake -GXcode