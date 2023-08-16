#!/bin/bash

# Format the project
echo "⚙ Formatting the project..."
dart format lib test

# Analyze the project
echo -e "\n🔍Analyzing the project..."
analyze_output=$(flutter analyze)
echo "$analyze_output"

# Check if the analyze gives an error or warnings
if echo "$analyze_output" | grep -q "No issues found!"; then
    echo -e "✅Flutter analyze succeeded.\n\n📦Proceeding to build web."

    #Cleaning cache
    echo -e "\n🧹Cleaning cache..."
    flutter clean

    #Getting latest packages
    echo -e "\n📦Getting latest packages..."
    flutter pub get

    #Building for web
    echo -e "\n📦Building for web..."
    flutter build web
    echo -e "✅Build successfully for web at ./build/web"
else
    echo "💡Flutter analyze found issues. Stopping execution."
    exit 1
fi