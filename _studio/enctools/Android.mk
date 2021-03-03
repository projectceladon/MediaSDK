LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(MFX_HOME)/android/mfx_defs.mk

LOCAL_SRC_FILES := \
    enctools.cpp \
    src/mfx_enctools_brc.cpp \
    src/mfx_enctools_common.cpp \
    src/mfx_enctools_aenc.cpp \
    src/mfx_enctools_utils.cpp

LOCAL_C_INCLUDES := \
    $(MFX_INCLUDES_INTERNAL_HW) \

LOCAL_CFLAGS := \
    $(MFX_CFLAGS_INTERNAL_HW) \
    -Wall -Wno-error -Wno-unused-parameter
LOCAL_CFLAGS_32 := $(MFX_CFLAGS_INTERNAL_32)
LOCAL_CFLAGS_64 := $(MFX_CFLAGS_INTERNAL_64)

LOCAL_HEADER_LIBRARIES := libmfx_headers


LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libaenc

include $(BUILD_STATIC_LIBRARY)
