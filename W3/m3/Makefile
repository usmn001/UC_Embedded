#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Supported Make File Commands Are : 
#
# 
# make build 
# make clean
# make c1m2.asm PLATFORM=HOST or MSP432
# 
#
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#     c1m2.out is the build target generated from main.c and memory.c source files
#
# Platform Overrides:
#      PLATFORM = HOST, 
#      PLATFORM = MSP432 
#
#------------------------------------------------------------------------------

#Common Compiler Flag
CFLAGS  = 	-g        \
			-std=c99  \
			-Werror   \
			-Wall     \
			-O0
			
CPPFLAGs = 	-E

TARGET = c1m2
LDFLAGS += -Wl,-Map=$(TARGET).map	
			
DEPFLAGS = -MD 			

# Architectures Specific Flags
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
LINKER_FILE = msp432p401r.lds
SOURCES = main.c \
          misc.c
INCLUDES = misc.h		  
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs
LDFLAGS += -T $(LINKER_FILE)		

CFLAGS  += -mtune=$(CPU)       \
           -m$(ARCH)           \
		   --specs=$(SPECS)    \
           -march=armv7e-m     \
		   -mfloat-abi=hard    \
		   -mfpu=fpv4-sp-d16

# Generating Required Object Files For Each Source File

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

OBJS = $(SOURCES:.c=.o)


# Compile All Source Files Into Object Files But Do Not Link
.PHONY : compile-all
compile-all : $(OBJS)  


# Compile all object files and link into a final executable , Produce map file of final build and Provide Information Of The Data Section Sizes.
.PHONY : build
build : $(TARGET).out
         

$(TARGET).out : 
	$(CC) $(CFLAGS) $(INCLUDES) $(SOURCES) $(LDFLAGS) -o $@
	size $@

$(TARGET).asm : $(TARGET).out
	objdump -s $(TARGET).out 


# Cleaning All Generated Files
.PHONY : clean
clean : 
	rm -f $(OBJS) $(TARGET).out $(TARGET).map $(TARGET).asm 
			



