# A simple test for the minimal standard C++ library
#


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := curl
LOCAL_SRC_FILES := libcurl.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_CFLAGS = -Wno-psabi
LOCAL_MODULE := curltest
LOCAL_SRC_FILES := curltest.c
LOCAL_STATIC_LIBRARIES := libcurl
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS    += -lz
LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE
include $(BUILD_EXECUTABLE)

