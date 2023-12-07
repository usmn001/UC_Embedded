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
# make compile-all PLATFORM=HOST or MSP432
# make build PLATFORM=HOST or MSP432 
# make clean
# make c1m2.asm PLATFORM=HOST or MSP432
# 
# make main.d PLATFORM=HOST or MSP432
# make main.i PLATFORM=HOST or MSP432 
# make main.asm PLATFORM=HOST or MSP432
# make main.o PLATFORM=HOST or MSP432
#
# make memory.d PLATFORM=HOST or MSP432
# make memory.i PLATFORM=HOST or MSP432 
# make memory.asm PLATFORM=HOST or MSP432
# make memory.o PLATFORM=HOST or MSP432
#
# make interrupts_msp432p401r_gcc.d PLATFORM=MSP432
# make interrupts_msp432p401r_gcc.i PLATFORM=MSP432
# make interrupts_msp432p401r_gcc.asm PLATFORM=MSP432
# make interrupts_msp432p401r_gcc.o PLATFORM=MSP432
#
# make startup_msp432p401r_gcc.d PLATFORM=MSP432 
# make startup_msp432p401r_gcc.i PLATFORM=MSP432 
# make startup_msp432p401r_gcc.asm PLATFORM=MSP432 
# make startup_msp432p401r_gcc.o PLATFORM=MSP432 

# make system_msp432p401r.d PLATFORM=MSP432
# make system_msp432p401r.i PLATFORM=MSP432
# make system_msp432p401r.asm PLATFORM=MSP432
# make system_msp432p401r.o PLATFORM=MSP432
#
# 
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#     course1.out is the build target generated from main.c, memory.c,data.c,course1 source files
#
# Platform Overrides:
#      PLATFORM = HOST, 
#      PLATFORM = MSP432 
#
#------------------------------------------------------------------------------
include sources.mk


#Common Compiler Flag
CFLAGS  = 	-g        \
			-std=c99  \
			-Werror   \
			-Wall     \
			-O0
			
CPPFLAGs = 	-E

TARGET = course1
LDFLAGS += -Wl,-Map=$(TARGET).map	
			
DEPFLAGS = -MD 			
ifeq ($(PLATFORM),MSP432)

# Architectures Specific Flags
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
LINKER_FILE = msp432p401r.lds
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs
LDFLAGS += -T../$(LINKER_FILE)		

CFLAGS  += -DCOURSE1		   \
           -mtune=$(CPU)       \
           -m$(ARCH)           \         
		   --specs=$(SPECS)    \
           -march=armv7e-m     \
		   -mfloat-abi=hard    \
		   -mfpu=fpv4-sp-d16
endif

ifeq ($(PLATFORM),HOST)

# Compiler Flags and Defines
CC = gcc
LD = ld
CFLAGS = -DCOURSE1 


endif


#Generating Dependency Files For Each Source file

%.d : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -D$(PLATFORM) $(DEPFLAGS) -c $< -o $@
DEP = $(SOURCES:.c=.d)	


# Generating Preprocessed Output Of Each Source File

%.i : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -D$(PLATFORM) $(CPPFLAGs) $< -o $@ 

PREP = $(SOURCES:.c=.i)


# Generating Required Assembly Files For Each Source File

%.asm : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -D$(PLATFORM) -S $<  

ASM = $(SOURCES:.c=.asm)
        
# Generating Required Object Files For Each Source File

%.o : %.c
	$(CC) $(CFLAGS) $(LDFLAGS) $(INCLUDES) -D$(PLATFORM) -c $< -o $@ 

OBJS = $(SOURCES:.c=.o)


# Compile All Source Files Into Object Files But Do Not Link
.PHONY : compile-all
compile-all : $(OBJS)

# Compile all object files and link into a final executable , Produce map file of final build and Provide Information Of The Data Section Sizes.
.PHONY : build
build : $(TARGET).out
         

$(TARGET).out : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LDFLAGS) -o $@
	size $@

$(TARGET).asm : $(TARGET).out
	objdump -s $(TARGET).out


# Cleaning All Generated Files
.PHONY : clean
clean : 
	rm -f $(OBJS) $(ASM) $(PREP) $(DEP) $(TARGET).out $(TARGET).map
			




