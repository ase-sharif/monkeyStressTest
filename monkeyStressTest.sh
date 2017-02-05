#!/bin/bash

# extract package name from apk file
package_name=`aapt dump badging $1 | awk -v FS="'" '/package: name=/{print $2}'`

#install apk file on emulator
adb install $1

# run monkey stress test
adb shell monkey -p $package_name -v 5000




