source pname.sh
adb uninstall $PNAME

cd jni/
ndk-build.cmd V=1 NDK_DEBUG=1
cd ..
ant clean debug
adb install bin/ZazaDev205-debug.apk
adb push note8redirect.txt /storage/emulated/legacy/Android/data/$PNAME/files/redirect.txt
adb shell "mkdir /storage/extSdCard/Android/data/$PNAME"
adb shell "mkdir /storage/extSdCard/Android/data/$PNAME/files"

#adb shell monkey -p your.app.package.name -c android.intent.category.LAUNCHER 1
