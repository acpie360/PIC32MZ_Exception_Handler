#include <xc.h>
#include <cp0defs.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include "error_handler.h"

#define PRIVATE static

// declared static in case exception condition would prevent
// auto variable being created
PRIVATE volatile uint32_t excep_code;
PRIVATE volatile uint32_t excep_addr;
PRIVATE volatile uint32_t bad_addr;
PRIVATE volatile uint32_t excep_ret;
PRIVATE const char * const ExcCodeString[] =
{
    "Int ",     /* 0x00 */
    "----",     /* 0x01 */
    "TLBL",     /* 0x02 */
    "TLBS",     /* 0x03 */
    "AdEL",     /* 0x04 */
    "AdES",     /* 0x05 */
    "IBE ",     /* 0x06 */
    "DBE ",     /* 0x07 */
    "Sys ",     /* 0x08 */
    "Bp  ",     /* 0x09 */
    "RI  ",     /* 0x0A */
    "CPU ",     /* 0x0B */
    "Ov  ",     /* 0x0C */
    "Tr  ",     /* 0x0D */
    "----",     /* 0x0E */
    "----",     /* 0x0F */
    "----",     /* 0x10 */
    "----",     /* 0x11 */
    "----",     /* 0x12 */
    "----",     /* 0x13 */
    "TLBe",     /* 0x14 */
    "----",     /* 0x15 */
    "----",     /* 0x16 */
    "Wtch",     /* 0x17 */
    "MChk",     /* 0x18 */
    "----",     /* 0x19 */
    "----",     /* 0x1A */
    "----",     /* 0x1B */
    "----",     /* 0x1C */
    "----"      /* 0x1D */
    "CchE",     /* 0x1E */
    "----"      /* 0x1F */
};

/* Not supported by the current MZ */
void _cache_err_exception_handler(void)
{
    excep_code = (_CP0_GET_CAUSE() & 0x0000007C) >> 2;
    excep_addr = _CP0_GET_EPC();
    
    __builtin_software_breakpoint();
}

void _nmi_handler(void)
{        
    __builtin_software_breakpoint();
}

void _simple_tlb_refill_exception_handler(unsigned cause, unsigned status, unsigned ret_addr)
{
    excep_ret = ret_addr;
    excep_code = (cause & 0x0000007C) >> 2;
    excep_addr = _CP0_GET_EPC();

    if ((cause & 0x80000000) != 0)
    {
        excep_addr += 4;
    }
    
    bad_addr = _CP0_GET_BADVADDR();

    __builtin_software_breakpoint();
}

/* General Exception Handler */
void _general_exception_handler(unsigned cause, unsigned status, unsigned ret_addr)
{
    excep_ret = ret_addr;                   /* Where the call originates */
    excep_code = (cause & 0x0000007C) >> 2; /* Cause of exception */
    excep_addr = _CP0_GET_EPC();            /* Exception victim */

    if ((cause & 0x80000000) != 0)
    {
        excep_addr += 4;
    }

    bad_addr = _CP0_GET_BADVADDR(); /* Bad address if it is a bad address exception */

    __builtin_software_breakpoint();
}

void _bootstrap_exception_handler(void)
{
    excep_code = (_CP0_GET_CAUSE() & 0x0000007C) >> 2;
    excep_addr = _CP0_GET_EPC(); 

    __builtin_software_breakpoint();
}


// EOF

