ifeq ($(strip $(DEVKITXENON)),)
$(error "export DEVKITXENON=/usr/local/xenon")
endif
$(shell ls $(DEVKITXENON) >&2; echo ---RULES--- >&2; cat $(DEVKITXENON)/rules >&2)
TARGET := main
OBJS := main.o
include $(DEVKITXENON)/rules
all: $(TARGET).elf32
