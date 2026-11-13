ifeq ($(strip $(DEVKITXENON)),)
$(error "export DEVKITXENON=/usr/local/xenon")
endif
include $(DEVKITXENON)/rules
.RECIPEPREFIX = >

TARGET  := main
OBJS    := main.o
DEPSDIR := .deps
$(shell mkdir -p $(DEPSDIR))
CFLAGS  := -O2 -Wall $(MACHDEP) -I$(LIBXENON_INC)

all: $(TARGET).elf32

$(TARGET).elf: $(OBJS)
> @echo linking ... $@
> $(CC) $^ $(MACHDEP) -Wl,-n -Wl,-T,$(LDSCRIPT) -L$(LIBXENON_LIB) -lxenon -lm -o $@

clean:
> rm -rf *.o *.elf *.elf32 $(DEPSDIR)

-include $(DEPSDIR)/*.d
