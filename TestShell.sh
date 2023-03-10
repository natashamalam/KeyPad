#!/usr/bin/env bash

xcodebuild clean

xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -destination 'platform=iOS Simulator,name=iPhone 14'

xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -archivePath ${pwd}/KeyPad.xcarchive -destination generic/platform=iOS archive
