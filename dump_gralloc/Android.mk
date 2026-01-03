LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dump_gralloc.cpp
LOCAL_MODULE := dump_gralloc
LOCAL_SHARED_LIBRARIES := libcutils libhardware liblog
LOCAL_CXX_STL := libc++
LOCAL_CFLAGS := -Wno-unused-parameter
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := check_gralloc_blob.cpp
LOCAL_MODULE := check_gralloc_blob
LOCAL_SHARED_LIBRARIES := libcutils libhardware liblog libdl
LOCAL_CFLAGS := -Wno-unused-parameter
include $(BUILD_EXECUTABLE)
