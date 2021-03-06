# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# compat symbols for camera HAL
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := ste_camera.cpp
LOCAL_SHARED_LIBRARIES := libgui libui libutils
LOCAL_MODULE := libcamera_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#
# compat symbols for cn_server
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ucnv_51.c
LOCAL_SHARED_LIBRARIES := libicuuc
LOCAL_MODULE := libicuuc_51
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#
# compat symbols for suntrold
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := md5/md5.c
LOCAL_MODULE := libmd5_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#
# compat symbols for RIL
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ste_ril.cpp
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libril_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
