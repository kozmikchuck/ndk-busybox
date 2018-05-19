LOCAL_PATH := $(call my-dir)
VERSION = 1
PATCHLEVEL = 28
SUBLEVEL = 3
EXTRAVERSION = -topjohnwu
BB_VER = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)

include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
include $(LOCAL_PATH)/Android_src.mk

LOCAL_LDFLAGS := -static
LOCAL_CFLAGS := -w -DBB_VER=\"$(BB_VER)\" -DBB_BT=AUTOCONF_TIMESTAMP

include $(BUILD_EXECUTABLE)