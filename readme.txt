ndk编译出来curltest，
adb push curl /data/local/tmp/curl
adb shell chmod 777 /data/local/tmp/curl
adb shell
/data/local/tmp/curl http://www.baidu.com /data/local/tmp/baidu