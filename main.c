#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include "sys_devcon.h"

#define PRIVATE static

#pragma config TSEQ = 0x0000
#pragma config CSEQ = 0xFFFF

#pragma config_bf1 TSEQ = 0x0001
#pragma config_bf1 CSEQ = 0xFFFE

#pragma config_bf2 TSEQ = 0x0002
#pragma config_bf2 CSEQ = 0xFFFD


PRIVATE void PIC32MZ_CPU_Init(void)
{
    RCON = 0;
    
    /* Set system cache policy */
    SYS_DEVCON_CacheCoherencySet(SYS_CACHE_WRITEBACK_WRITEALLOCATE);

    /* Flush both I-Cache and D-Cache */
    SYS_DEVCON_CacheFlush();

    DMACON = 0;

    /* Disable global interrupt */
    __builtin_disable_interrupts();

    /* Disable JTAG port */
    CFGCONbits.JTAGEN = 0;

    /* enable predictive prefetch for any address
     * Flash Wait State = 2 */
    PRECONbits.PREFEN = 3;
    PRECONbits.PFMWS = 2;

    /* Unlock */
    SYSKEY = 0x00000000;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;

    /* PBCLK8: EBI */
    while (PB8DIVbits.PBDIVRDY == 0);
    PB8DIVbits.PBDIV = 1;
    PB8DIVbits.ON = 1;

    /* PBCLK7: CPU, Deadman Timer */
    while (PB7DIVbits.PBDIVRDY == 0);
    PB7DIVbits.PBDIV = 0;
    PB7DIVbits.ON = 1;

    /* PBCLK5: Flash, Crypto, RNG, USB, CAN, Ethernet, SQI */
    while (PB5DIVbits.PBDIVRDY == 0);
    PB5DIVbits.PBDIV = 1;
    PB5DIVbits.ON = 1;

    /* PBCLK4: Ports */
    while (PB4DIVbits.PBDIVRDY == 0);
    PB4DIVbits.PBDIV = 9;
    PB4DIVbits.ON = 1;

    /* PBCLK3: ADC, Comparator, Timers, Output Compare, Input Capture */
    while (PB3DIVbits.PBDIVRDY == 0);
    PB3DIVbits.PBDIV = 9;
    PB3DIVbits.ON = 1;

    /* PBCLK2: PMP, I2C, UART */
    while (PB2DIVbits.PBDIVRDY == 0);
    PB2DIVbits.PBDIV = 9;
    PB2DIVbits.ON = 1;

    /* PBCLK1: Always ON */
    while (PB1DIVbits.PBDIVRDY == 0);
    PB1DIVbits.PBDIV = 9;

    /* Disable Reference Clock Output */
    REFO1CONCLR = 0x00008000;
    REFO2CONCLR = 0x00008000;
    REFO3CONCLR = 0x00008000;
    REFO4CONCLR = 0x00008000;

    /* Lock */
    SYSKEY = 0x33333333;

    /* Configure SRS Priority Selection */
    PRISSbits.SS0 = 0;
    PRISSbits.PRI1SS = 1;
    PRISSbits.PRI2SS = 2;
    PRISSbits.PRI3SS = 3;
    PRISSbits.PRI4SS = 4;
    PRISSbits.PRI5SS = 5;
    PRISSbits.PRI6SS = 6;
    PRISSbits.PRI7SS = 7;

    /* Enable multi vector mode */
    INTCONbits.MVEC = 1;

    /* Enable global interrupt */
    __builtin_mtc0(12, 0, (__builtin_mfc0(12, 0) | 0x0001));
}

PRIVATE void PIC32MZ_IO_Init(void)
{
    /* All ports set to digital (100-pin device) */
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    ANSELD = 0;
    ANSELE = 0;
    ANSELF = 0;
    ANSELG = 0;

    /* Explorer16 LED3-9 */
    LATACLR = 0x004F; /* Turn them all off */
    TRISACLR = 0x004F;

    LATFCLR = 0x3000;
    TRISFCLR = 0x3000;
}

/* Cause bootstrap RI exception because 0xBFC0_FF00 - 0xBFC0_FF40 are reserved  */
//void __attribute__((address(0x9FC0FF00))) _on_bootstrap(void) 
//{
//    
//}

PRIVATE void TestTlbException(void)
{
    uint32_t *p = 0;
    
    *p = 0x12345678;
}

PRIVATE void TestGenException(void)
{
    uint32_t *p;
    
    p = (uint32_t *)0xA0000001;
    *p = 0x12345678;
}

PRIVATE void TestNMI(void)
{
    SYSKEY = 0x00000000;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    
    RNMICONSET = _RNMICON_SWNMI_MASK;   /* Trigger software NMI */
}

/* Can't simulate cache exception. Was told the hardware does not support this */
PRIVATE void TestCacheError(void)
{

}

int main(void)
{
    uint32_t seq1, seq2;
    
    PIC32MZ_CPU_Init(); /* Initialize CPU */
    PIC32MZ_IO_Init(); /* Initialize IO ports */
    
    seq1 = BF1SEQ0;
    seq2 = BF2SEQ0;
    
    Nop();
    
    /* Test TLB Exception */
    //TestTlbException();
    
    /* Test General Exception */
    //__builtin_mtc0(12, 0, 1 << 22); // Force into bootstrap mode
    
    TestGenException();
    
    //TestNMI();
    
    
    
    while (1)
    {
 
    }
    
    return (0);
}
