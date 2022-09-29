#!/bin/sh
cargo update
cargo build --release
cargo build --target aarch64-apple-ios --release
cargo build --target x86_64-apple-ios --release

lipo -info ./target/aarch64-apple-ios/release/libresvg.a
lipo -info ./target/x86_64-apple-ios/release/libresvg.a

lipo -create ./target/aarch64-apple-ios/release/libresvg.a ./target/x86_64-apple-ios/release/libresvg.a -output ../libresvgIos.a
lipo -info ../libresvgIos.a
cp ./target/release/libresvg.a ../libresvg.a