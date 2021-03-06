# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := anddown
LOCAL_SHARED_LIBRARIES := DropboxSync
LOCAL_SRC_FILES := anddown.c src/autolink.c src/buffer.c src/markdown.c src/stack.c html/houdini_href_e.c html/houdini_html_e.c html/html_smartypants.c html/html.c
LOCAL_C_INCLUDES := jni/src jni/html

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/libs/Android.mk

#src/html_blocks.h: html_block_names.txt
#	gperf -N find_block_tag -H hash_block_tag -C -c -E --ignore-case $^ > $@

