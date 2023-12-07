# 0 "interrupts_msp432p401r_gcc.c"
# 1 "/mnt/c/Introduction_To_Embedded_Systems_UC/ese-coursera-course1/assessments/m2/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "interrupts_msp432p401r_gcc.c"
# 37 "interrupts_msp432p401r_gcc.c"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 486 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 559 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 560 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 561 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 487 "/usr/include/features.h" 2 3 4
# 510 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 511 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4



# 31 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdint.h" 2 3 4
# 38 "interrupts_msp432p401r_gcc.c" 2



# 40 "interrupts_msp432p401r_gcc.c"
extern int main(void);


extern void SystemInit(void);
# 59 "interrupts_msp432p401r_gcc.c"
extern uint32_t __data_load__;
extern uint32_t __data_start__;
extern uint32_t __data_end__;





__attribute__((interrupt,section(".text:Reset_Handler")))
void Reset_Handler(void)
{

     uint32_t *pui32Src, *pui32Dest;

     pui32Src = &__data_load__;
     for(pui32Dest = &__data_start__; pui32Dest < &__data_end__; )
     {
         *pui32Dest++ = *pui32Src++;
     }


     __asm("    ldr     r0, =__bss_start__\n"
           "    ldr     r1, =__bss_end__\n"
           "    mov     r2, #0\n"
           "    .thumb_func\n"
           "zero_loop:\n"
           "    cmp     r0, r1\n"
           "    it      lt\n"
           "    strlt   r2, [r0], #4\n"
           "    blt     zero_loop");


  SystemInit();


     main();
}




__attribute__((interrupt,section(".text:NMI_Handler")))
void NMI_Handler(void)
{

    while(1)
    {
    }
}





__attribute__((interrupt,section(".text:HardFault_Handler")))
void HardFault_Handler(void)
{

    while(1)
    {
    }
}

__attribute__((interrupt,section(".text:Default_Handler")))
void Default_Handler(void)
{

 while(1)
 {
 }
}

__attribute__((weak,alias("Default_Handler")))
void MemManage_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void BusFault_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void UsageFault_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void SVC_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void DebugMon_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void PendSV_Handler(void);


__attribute__((weak,alias("Default_Handler")))
void SysTick_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void PSS_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void CS_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PCM_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void WDT_A_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void FPU_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void FLCTL_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void COMP_E0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void COMP_E1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA0_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA0_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA1_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA1_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA2_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA2_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA3_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA3_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void ADC14_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INTC_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void AES256_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void RTC_C_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_ERR_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT4_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT5_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT6_IRQHandler(void);
