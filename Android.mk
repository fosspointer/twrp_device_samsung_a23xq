LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a23xq)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
