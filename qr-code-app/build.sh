#!/bin/bash

# QR Code Generator APK Build Script

echo "QR Code Generator APK Build Script"
echo "=================================="

# Check if Cordova is installed
if ! command -v cordova &> /dev/null; then
    echo "Error: Cordova CLI not found. Please install it first:"
    echo "npm install -g cordova"
    exit 1
fi

# Check if Android SDK is available
if [ -z "$ANDROID_HOME" ]; then
    echo "Error: ANDROID_HOME environment variable not set."
    echo "Please install Android SDK and set ANDROID_HOME"
    echo "See BUILD_INSTRUCTIONS.md for details"
    exit 1
fi

echo "Building APK..."

# Build debug APK
cordova build android

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ APK built successfully!"
    echo "📱 APK location: platforms/android/app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "To build release APK, run:"
    echo "cordova build android --release"
else
    echo ""
    echo "❌ Build failed. Check the error messages above."
    echo "Make sure Android SDK is properly installed and configured."
fi