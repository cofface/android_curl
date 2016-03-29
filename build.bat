set NDK="C:\android_tool\android-ndk-r9d-windows-x86_64\android-ndk-r9d\ndk-build"
call %NDK% NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk
copy libs\armeabi\curltest .\curl
call %NDK% NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk clean
rd obj /s /q
rd libs /s /q
@pause