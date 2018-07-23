adb uninstall zaza.dev205
cd jni/
ndk-build.cmd V=1 NDK_DEBUG=1
cd ..
ant clean debug
adb install bin/ZazaDev205-debug.apk
adb push note4redirect.txt /storage/self/primary/Android/data/zaza.dev205/files/redirect.txt
adb shell "mkdir /storage/9C33-6BBD/Android/data/zaza.dev205"
adb shell "mkdir /storage/9C33-6BBD/Android/data/zaza.dev205/files"
adb push transpColor.txt /storage/9C33-6BBD/Android/data/zaza.dev205/files/transpColor.txt

#adb shell monkey -p your.app.package.name -c android.intent.category.LAUNCHER 1

