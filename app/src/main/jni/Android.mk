LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCVROOT := C:/Data/Cours/1MA/Erasmus/Embedded/Didattica/OpenCV-android-sdk
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on
OPENCV_LIB_TYPE := SHARED
include $(OPENCVROOT)/sdk/native/jni/OpenCV.mk

LOCAL_LDLIBS := -llog
LOCAL_MODULE := processing
LOCAL_SRC_FILES := processing.cpp

include $(BUILD_SHARED_LIBRARY)