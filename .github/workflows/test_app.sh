#!/bin/bash

set -eo pipefail

xcodebuild -workspace FitNess.xcworkspace \
            -scheme FitNess\ iOS \
            -destination platform=iOS\ Simulator,OS=14.1,name=iPhone\ 8 \
            clean test | xcpretty
