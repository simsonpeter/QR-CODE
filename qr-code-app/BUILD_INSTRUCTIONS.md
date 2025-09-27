# QR Code Generator APK Build Instructions

## Prerequisites

To build the APK, you need to install:

1. **Java JDK 8 or higher**
2. **Android SDK** (Android Studio recommended)
3. **Cordova CLI** (already installed)

## Installation Steps

### 1. Install Android Studio
- Download from: https://developer.android.com/studio
- Install Android Studio
- Open Android Studio and install Android SDK

### 2. Set Environment Variables
Add these to your shell profile (~/.bashrc or ~/.zshrc):

```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools
```

### 3. Build the APK

```bash
# Navigate to the project directory
cd qr-code-app

# Build the APK
cordova build android

# Build release APK (for distribution)
cordova build android --release
```

## Alternative: Online APK Builders

If you don't want to install Android SDK, you can use online services:

1. **PhoneGap Build** (now Adobe PhoneGap Build)
2. **Appy Pie**
3. **BuildFire**

## Project Structure

```
qr-code-app/
├── www/
│   └── index.html          # Your QR code generator web app
├── platforms/
│   └── android/            # Android project files
├── config.xml              # App configuration
└── package.json            # Project dependencies
```

## App Features

- Generate QR codes for:
  - Text/URL
  - Contact (vCard)
  - Wi-Fi networks
  - Payment (Bitcoin, Ethereum, PayPal)
- Download QR codes with invisible border
- Logo upload support
- Custom colors and sizes
- Mobile-optimized interface

## APK Output

The built APK will be located at:
`platforms/android/app/build/outputs/apk/debug/app-debug.apk`

For release APK:
`platforms/android/app/build/outputs/apk/release/app-release.apk`