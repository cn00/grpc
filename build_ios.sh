cd $(dirname $0;pwd)
mkdir -p build_ios && cd build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM_INT="OS64COMBINED" -GXcode ../
cd ..
# cmake --build build_ios --config Debug
cmake --build build_ios --config Release


# ## sim
# mkdir -p build_ios_sim && cd build_ios_sim
# cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM_INT="SIMULATOR64" -GXcode ../
# cd ..
# cmake --build build_ios_sim --config Debug
# cmake --build build_ios_sim --config Release


# lipo -create -output libgrpc_csharp_ext.fat.dylib \
#     build_ios/Release-iphoneos/libgrpc_csharp_ext*.dylib \
#     build_ios_sim/Release-iphonesimulator/libgrpc_csharp_ext*.dylib