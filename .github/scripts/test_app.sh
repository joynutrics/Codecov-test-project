#!/bin/bash

set -eo pipefail

xcodebuild -scheme Codecov-test-project -destination platform="iOS Simulator",OS=14.0,name="iPhone 11 Pro" clean test | xcpretty