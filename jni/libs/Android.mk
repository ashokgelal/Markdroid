LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := DropboxSync
LOCAL_SRC_FILES := armeabi/libDropboxSync.so
include $(PREBUILT_SHARED_LIBRARY)