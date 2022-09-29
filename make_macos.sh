# Retrieve architecture type
#ARCHITECTURE=""
#if [ $NATIVE_ARCH == "i386" ] || [ $NATIVE_ARCH == "x86_64" ] ; then
#    ARCHITECTURE="x86_64"
#else
#    ARCHITECTURE="arm64"
#fi
# Retrieve build configuration
#BUILD_CONFIG=""
#if [ $CONFIGURATION == "Debug" ] ; then
#    BUILD_CONFIG="Debug"
#else
#    BUILD_CONFIG="Release"
#fi
#cmake CMakeLists.txt
#ccmake .
#cmake -DCMAKE_BUILD_TYPE=Release ..
#cmake --build .
rm -rf build
mkdir build
cmake . -B build
cd build
make
cp libresvg.a ../essai/libresvg.a

#make
#chmod +x resvg
#./resvg