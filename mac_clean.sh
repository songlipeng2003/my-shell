#!/bin/bash

# 基础清理

# brew 
brew cleanup

# ruby gem
gem cleanup

# npm
npm cache clean --force

# yarn 
yarn cache clean

# CocoaPod caches
rm -rf "${HOME}/Library/Caches/CocoaPods"

# maven
rm -rf "${HOME}.m2/repository"

# old Xcode Simulators
xcrun simctl delete unavailable

# Clean up various archives, logs, and derived data folders
rm -rf ~/Library/Developer/Xcode/Archives
rm -rf ~/Library/Developer/Xcode/DerivedData
rm -rf ~~/Library/Developer/Xcode/iOS Device Logs/

# Docker 
docker image prune
docker volume prune