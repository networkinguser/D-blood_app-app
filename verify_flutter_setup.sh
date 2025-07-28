#!/bin/bash

echo "=== Flutter and Dart SDK Verification ==="
echo ""

echo "1. Flutter Version:"
flutter --version
echo ""

echo "2. Dart Version:"
dart --version
echo ""

echo "3. Flutter Doctor:"
flutter doctor
echo ""

echo "4. Dart SDK Path:"
which dart
echo ""

echo "5. Flutter SDK Path:"
which flutter
echo ""

echo "=== Android Studio Configuration ==="
echo "Dart SDK Path for Android Studio: /home/ubuntu/flutter/bin/cache/dart-sdk"
echo "Flutter SDK Path for Android Studio: /home/ubuntu/flutter"
echo ""
echo "If Android Studio still can't find Dart SDK, try: /home/ubuntu/flutter/bin/dart"