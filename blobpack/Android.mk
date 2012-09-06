LOCAL_PATH:= $(call my-dir)

ifneq ($(filter tf700t,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := blobpack.cpp
LOCAL_CFLAGS += -I. -Ishared -Wall -ggdb
LOCAL_MODULE := blobpack_tfp
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))

endif