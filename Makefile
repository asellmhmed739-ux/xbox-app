ifeq ($(strip $(DEVKITXENON)),)
$(error "export DEVKITXENON=/usr/local/xenon")
endif
TARGET := main
include $(DEVKITXENON)/rules
