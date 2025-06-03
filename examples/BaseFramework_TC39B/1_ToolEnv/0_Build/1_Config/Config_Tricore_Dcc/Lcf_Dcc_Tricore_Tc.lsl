
-Xgenerate-copytables

LCF_CSA0_SIZE = 8k;
LCF_USTACK0_SIZE = 2k;
LCF_ISTACK0_SIZE = 1k;

LCF_CSA1_SIZE = 8k;
LCF_USTACK1_SIZE = 2k;
LCF_ISTACK1_SIZE = 1k;

LCF_CSA2_SIZE = 8k;
LCF_USTACK2_SIZE = 2k;
LCF_ISTACK2_SIZE = 1k;

LCF_CSA3_SIZE = 8k;
LCF_USTACK3_SIZE = 2k;
LCF_ISTACK3_SIZE = 1k;

LCF_CSA4_SIZE = 8k;
LCF_USTACK4_SIZE = 2k;
LCF_ISTACK4_SIZE = 1k;

LCF_CSA5_SIZE = 8k;
LCF_USTACK5_SIZE = 2k;
LCF_ISTACK5_SIZE = 1k;

LCF_HEAP_SIZE = 4k;

LCF_DSPR5_START = 0x10000000;
LCF_DSPR5_SIZE = 96k;

LCF_DSPR4_START = 0x30000000;
LCF_DSPR4_SIZE = 96k;

LCF_DSPR3_START = 0x40000000;
LCF_DSPR3_SIZE = 96k;

LCF_DSPR2_START = 0x50000000;
LCF_DSPR2_SIZE = 96k;

LCF_DSPR1_START = 0x60000000;
LCF_DSPR1_SIZE = 240k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 240k;

LCF_CSA5_OFFSET =    (LCF_DSPR5_SIZE - 1k - LCF_CSA5_SIZE);
LCF_ISTACK5_OFFSET = (LCF_CSA5_OFFSET - 256 - LCF_ISTACK5_SIZE);
LCF_USTACK5_OFFSET = (LCF_ISTACK5_OFFSET - 256 - LCF_USTACK5_SIZE);

LCF_CSA4_OFFSET =    (LCF_DSPR4_SIZE - 1k - LCF_CSA4_SIZE);
LCF_ISTACK4_OFFSET = (LCF_CSA4_OFFSET - 256 - LCF_ISTACK4_SIZE);
LCF_USTACK4_OFFSET = (LCF_ISTACK4_OFFSET - 256 - LCF_USTACK4_SIZE);

LCF_CSA3_OFFSET =    (LCF_DSPR3_SIZE - 1k - LCF_CSA3_SIZE);
LCF_ISTACK3_OFFSET = (LCF_CSA3_OFFSET - 256 - LCF_ISTACK3_SIZE);
LCF_USTACK3_OFFSET = (LCF_ISTACK3_OFFSET - 256 - LCF_USTACK3_SIZE);

LCF_CSA2_OFFSET =    (LCF_DSPR2_SIZE - 1k - LCF_CSA2_SIZE);
LCF_ISTACK2_OFFSET = (LCF_CSA2_OFFSET - 256 - LCF_ISTACK2_SIZE);
LCF_USTACK2_OFFSET = (LCF_ISTACK2_OFFSET - 256 - LCF_USTACK2_SIZE);

LCF_CSA1_OFFSET =    (LCF_DSPR1_SIZE - 1k - LCF_CSA1_SIZE);
LCF_ISTACK1_OFFSET = (LCF_CSA1_OFFSET - 256 - LCF_ISTACK1_SIZE);
LCF_USTACK1_OFFSET = (LCF_ISTACK1_OFFSET - 256 - LCF_USTACK1_SIZE);

LCF_CSA0_OFFSET =    (LCF_DSPR0_SIZE - 1k - LCF_CSA0_SIZE);
LCF_ISTACK0_OFFSET = (LCF_CSA0_OFFSET - 256 - LCF_ISTACK0_SIZE);
LCF_USTACK0_OFFSET = (LCF_ISTACK0_OFFSET - 256 - LCF_USTACK0_SIZE);

LCF_HEAP0_OFFSET =   (LCF_USTACK0_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP1_OFFSET =   (LCF_USTACK1_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP2_OFFSET =   (LCF_USTACK2_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP3_OFFSET =   (LCF_USTACK3_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP4_OFFSET =   (LCF_USTACK4_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP5_OFFSET =   (LCF_USTACK5_OFFSET - LCF_HEAP_SIZE);

LCF_INTVEC0_START = 0x802FE000;
LCF_INTVEC1_START = 0x805FE000;
LCF_INTVEC2_START = 0x808FE000;
LCF_INTVEC3_START = 0x80BFE000;
LCF_INTVEC4_START = 0x80EFE000;
LCF_INTVEC5_START = 0x80FFE000;

__INTTAB_CPU0 = LCF_INTVEC0_START;
__INTTAB_CPU1 = LCF_INTVEC1_START;
__INTTAB_CPU2 = LCF_INTVEC2_START;
__INTTAB_CPU3 = LCF_INTVEC3_START;
__INTTAB_CPU4 = LCF_INTVEC4_START;
__INTTAB_CPU5 = LCF_INTVEC5_START;

LCF_TRAPVEC0_START = 0x80000100;
LCF_TRAPVEC1_START = 0x80300000;
LCF_TRAPVEC2_START = 0x80600000;
LCF_TRAPVEC3_START = 0x80900000;
LCF_TRAPVEC4_START = 0x80C00000;
LCF_TRAPVEC5_START = 0x80F00000;

LCF_STARTPTR_CPU0 = 0x80000000;
LCF_STARTPTR_CPU1 = 0x80300100;
LCF_STARTPTR_CPU2 = 0x80600100;
LCF_STARTPTR_CPU3 = 0x80900100;
LCF_STARTPTR_CPU4 = 0x80C00100;
LCF_STARTPTR_CPU5 = 0x80F00100;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
LCF_STARTPTR_NC_CPU1 = 0xA0300100;
LCF_STARTPTR_NC_CPU2 = 0xA0600100;
LCF_STARTPTR_NC_CPU3 = 0xA0900100;
LCF_STARTPTR_NC_CPU4 = 0xA0C00100;
LCF_STARTPTR_NC_CPU5 = 0xA0F00100;

RESET = LCF_STARTPTR_NC_CPU0;

MEMORY
{
    dsram5: org = 0x10000000 + 100, len = 96K - 100 /* Workaround for segment overlap problem*/
    psram5: org = 0x10100000, len = 64K
    
    dsram4: org = 0x30000000 + 100, len = 96K - 100 /* Workaround for segment overlap problem*/
    psram4: org = 0x30100000, len = 64K
    
    dsram3: org = 0x40000000 + 100, len = 96K - 100 /* Workaround for segment overlap problem*/
    psram3: org = 0x40100000, len = 64K
    
    dsram2: org = 0x50000000 + 100, len = 96K - 100 /* Workaround for segment overlap problem*/
    psram2: org = 0x50100000, len = 64K
    
    dsram1: org = 0x60000000 + 100, len = 240K - 100 /* Workaround for segment overlap problem*/
    psram1: org = 0x60100000, len = 64K
    
    dsram0: org = 0x70000000 + 100, len = 240K - 100 /* Workaround for segment overlap problem*/
    
    psram0: org = 0x70100000, len = 64K
    psram_local: org = 0xc0000000, len = 64K
    
    pfls0: org = 0x80000000, len = 3M
    pfls0_nc: org = 0xa0000000, len = 3M
    
    pfls1: org = 0x80300000, len = 3M
    pfls1_nc: org = 0xa0300000, len = 3M
    
    pfls2: org = 0x80600000, len = 3M
    pfls2_nc: org = 0xa0600000, len = 3M
    
    pfls3: org = 0x80900000, len = 3M
    pfls3_nc: org = 0xa0900000, len = 3M
    
    pfls4: org = 0x80c00000, len = 3M
    pfls4_nc: org = 0xa0c00000, len = 3M
    
    pfls5: org = 0x80f00000, len = 1M
    pfls5_nc: org = 0xa0f00000, len = 1M
    
    dfls0: org = 0xaf000000, len = 1M
    
    ucb: org = 0xaf400000, len = 24K
    
    cpu0_dlmu: org = 0x90000000, len = 64K
    cpu0_dlmu_nc: org = 0xb0000000, len = 64K
    
    cpu1_dlmu: org = 0x90010000, len = 64K
    cpu1_dlmu_nc: org = 0xb0010000, len = 64K
    
    cpu2_dlmu: org = 0x90020000, len = 64K
    cpu2_dlmu_nc: org = 0xb0020000, len = 64K
    
    cpu3_dlmu: org = 0x90030000, len = 64K
    cpu3_dlmu_nc: org = 0xb0030000, len = 64K
    
    lmuram: org = 0x90040000, len = 768K
    lmuram_nc: org = 0xb0040000, len = 768K
    
    cpu4_dlmu: org = 0x90100000, len = 64K
    cpu4_dlmu_nc: org = 0xb0100000, len = 64K
    
    cpu5_dlmu: org = 0x90110000, len = 64K
    cpu5_dlmu_nc: org = 0xb0110000, len = 64K
    
    edmem: org = 0x99000000, len = 4M
    edmem_nc: org = 0xb9000000, len = 4M
}
SECTIONS
{
/*Sections located at absolute fixed address*/
/*Fixed memory Allocations for stack memory and CSA*/
    /*CPU5 Stack and CSA defines*/
    CPU5.ustack BIND(LCF_DSPR5_START + LCF_USTACK5_OFFSET) :
    { __USTACK5_END = . ;    . = . + LCF_USTACK5_SIZE;    __USTACK5 = . ; }
    
    CPU5.istack BIND(LCF_DSPR5_START + LCF_ISTACK5_OFFSET):
    { __ISTACK5_END = . ;    . = . + LCF_ISTACK5_SIZE;    __ISTACK5 = . ; }
    
    CPU5.csa BIND(LCF_DSPR5_START + LCF_CSA5_OFFSET):
    { __CSA5 = . ;    . = . + LCF_CSA5_SIZE;    __CSA5_END = . ; }
    
    /*CPU4 Stack and CSA defines*/
    CPU4.ustack BIND(LCF_DSPR4_START + LCF_USTACK4_OFFSET) :
    { __USTACK4_END = . ;    . = . + LCF_USTACK4_SIZE;    __USTACK4 = . ; }
    
    CPU4.istack BIND(LCF_DSPR4_START + LCF_ISTACK4_OFFSET):
    { __ISTACK4_END = . ;    . = . + LCF_ISTACK4_SIZE;    __ISTACK4 = . ; }
    
    CPU4.csa BIND(LCF_DSPR4_START + LCF_CSA4_OFFSET):
    { __CSA4 = . ;    . = . + LCF_CSA4_SIZE;    __CSA4_END = . ; }
    
    /*CPU3 Stack and CSA defines*/
    CPU3.ustack BIND(LCF_DSPR3_START + LCF_USTACK3_OFFSET) :
    { __USTACK3_END = . ;    . = . + LCF_USTACK3_SIZE;    __USTACK3 = . ; }
    
    CPU3.istack BIND(LCF_DSPR3_START + LCF_ISTACK3_OFFSET):
    { __ISTACK3_END = . ;    . = . + LCF_ISTACK3_SIZE;    __ISTACK3 = . ; }
    
    CPU3.csa BIND(LCF_DSPR3_START + LCF_CSA3_OFFSET):
    { __CSA3 = . ;    . = . + LCF_CSA3_SIZE;    __CSA3_END = . ; }
    
    /*CPU2 Stack and CSA defines*/
    CPU2.ustack BIND(LCF_DSPR2_START + LCF_USTACK2_OFFSET) :
    { __USTACK2_END = . ;    . = . + LCF_USTACK2_SIZE;    __USTACK2 = . ; }
    
    CPU2.istack BIND(LCF_DSPR2_START + LCF_ISTACK2_OFFSET):
    { __ISTACK2_END = . ;    . = . + LCF_ISTACK2_SIZE;    __ISTACK2 = . ; }
    
    CPU2.csa BIND(LCF_DSPR2_START + LCF_CSA2_OFFSET):
    { __CSA2 = . ;    . = . + LCF_CSA2_SIZE;    __CSA2_END = . ; }
    
    /*CPU1 Stack and CSA defines*/
    CPU1.ustack BIND(LCF_DSPR1_START + LCF_USTACK1_OFFSET) :
    { __USTACK1_END = . ;    . = . + LCF_USTACK1_SIZE;    __USTACK1 = . ; }
    
    CPU1.istack BIND(LCF_DSPR1_START + LCF_ISTACK1_OFFSET):
    { __ISTACK1_END = . ;    . = . + LCF_ISTACK1_SIZE;    __ISTACK1 = . ; }
    
    CPU1.csa BIND(LCF_DSPR1_START + LCF_CSA1_OFFSET):
    { __CSA1 = . ;    . = . + LCF_CSA1_SIZE;    __CSA1_END = . ; }
    
    /*CPU0 Stack and CSA defines*/
    CPU0.ustack BIND(LCF_DSPR0_START + LCF_USTACK0_OFFSET) :
    { __USTACK0_END = . ;    . = . + LCF_USTACK0_SIZE;    __USTACK0 = . ; }
    
    CPU0.istack BIND(LCF_DSPR0_START + LCF_ISTACK0_OFFSET):
    { __ISTACK0_END = . ;    . = . + LCF_ISTACK0_SIZE;    __ISTACK0 = . ; }
    
    CPU0.csa BIND(LCF_DSPR0_START + LCF_CSA0_OFFSET):
    { __CSA0 = . ;    . = . + LCF_CSA0_SIZE;    __CSA0_END = . ; }
    
    __SP_END = __USTACK0_END;

    /*Fixed memory Allocations for _START*/
    .start_tc0 (TEXT) LOAD(LCF_STARTPTR_CPU0) BIND(LCF_STARTPTR_NC_CPU0) : { __ENABLE_INDIVIDUAL_C_INIT_CPU0 = 0; KEEP (*(.start)) .= 0xA0000020; } =0x800 > pfls0_nc
    .interface_const (CONST) BIND(0x80000020) : { __IF_CONST = .; KEEP (*(.interface_const)) } > pfls0
    
    /*Fixed memory Allocations for Trap Vector Table*/
    .traptab_tc0 (TEXT) BIND(LCF_TRAPVEC0_START) : { __TRAPTAB_CPU0 = .; KEEP (*(.traptab_cpu0)) .= ALIGN(0x100); } > pfls0
    .traptab_tc1 (TEXT) BIND(LCF_TRAPVEC1_START) : { __TRAPTAB_CPU1 = .; KEEP (*(.traptab_cpu1)) .= ALIGN(0x100); } > pfls1
    .traptab_tc2 (TEXT) BIND(LCF_TRAPVEC2_START) : { __TRAPTAB_CPU2 = .; KEEP (*(.traptab_cpu2)) .= ALIGN(0x100); } > pfls2
    .traptab_tc3 (TEXT) BIND(LCF_TRAPVEC3_START) : { __TRAPTAB_CPU3 = .; KEEP (*(.traptab_cpu3)) .= ALIGN(0x100); } > pfls3
    .traptab_tc4 (TEXT) BIND(LCF_TRAPVEC4_START) : { __TRAPTAB_CPU4 = .; KEEP (*(.traptab_cpu4)) .= ALIGN(0x100); } > pfls4
    .traptab_tc5 (TEXT) BIND(LCF_TRAPVEC5_START) : { __TRAPTAB_CPU5 = .; KEEP (*(.traptab_cpu5)) .= ALIGN(0x100); } > pfls5
    
    /*Fixed memory Allocations for _START CPU1 to 5*/
    .start_tc1 (TEXT) LOAD(LCF_STARTPTR_CPU1) BIND(LCF_STARTPTR_NC_CPU1) : { __ENABLE_INDIVIDUAL_C_INIT_CPU1 = 0; KEEP (*(.start_cpu1)) } =0x800 > pfls1_nc
    .start_tc2 (TEXT) LOAD(LCF_STARTPTR_CPU2) BIND(LCF_STARTPTR_NC_CPU2) : { __ENABLE_INDIVIDUAL_C_INIT_CPU2 = 0; KEEP (*(.start_cpu2)) } =0x800 > pfls2_nc
    .start_tc3 (TEXT) LOAD(LCF_STARTPTR_CPU3) BIND(LCF_STARTPTR_NC_CPU3) : { __ENABLE_INDIVIDUAL_C_INIT_CPU3 = 0; KEEP (*(.start_cpu3)) } =0x800 > pfls3_nc
    .start_tc4 (TEXT) LOAD(LCF_STARTPTR_CPU4) BIND(LCF_STARTPTR_NC_CPU4) : { __ENABLE_INDIVIDUAL_C_INIT_CPU4 = 0; KEEP (*(.start_cpu4)) } =0x800 > pfls4_nc
    .start_tc5 (TEXT) LOAD(LCF_STARTPTR_CPU5) BIND(LCF_STARTPTR_NC_CPU5) : { __ENABLE_INDIVIDUAL_C_INIT_CPU5 = 0; KEEP (*(.start_cpu5)) } =0x800 > pfls5_nc
    __START0 = LCF_STARTPTR_NC_CPU0;
    __START1 = LCF_STARTPTR_NC_CPU1;
    __START2 = LCF_STARTPTR_NC_CPU2;
    __START3 = LCF_STARTPTR_NC_CPU3;
    __START4 = LCF_STARTPTR_NC_CPU4;
    __START5 = LCF_STARTPTR_NC_CPU5;
    
    /*Fixed memory Allocations for BMHD*/
    .bmhd_0_org 0xaf400000 (CONST) : { KEEP(*(.bmhd_0_orig)) } > ucb
    .bmhd_1_org 0xaf400200 (CONST) : { KEEP(*(.bmhd_1_orig)) } > ucb
    .bmhd_2_org 0xaf400400 (CONST) : { KEEP(*(.bmhd_2_orig)) } > ucb
    .bmhd_3_org 0xaf400600 (CONST) : { KEEP(*(.bmhd_3_orig)) } > ucb
    .ucb_reserved 0xaf400800 (CONST) : { } > ucb
    .bmhd_0_copy 0xaf401000 (CONST) : { KEEP(*(.bmhd_0_copy)) } > ucb
    .bmhd_1_copy 0xaf401200 (CONST) : { KEEP(*(.bmhd_1_copy)) } > ucb
    .bmhd_2_copy 0xaf401400 (CONST) : { KEEP(*(.bmhd_2_copy)) } > ucb
    .bmhd_3_copy 0xaf401600 (CONST) : { KEEP(*(.bmhd_3_copy)) } > ucb
    
    /*Near Abbsolute Addressable Data Sections*/
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc5 (DATA) :
        {
            "*Ifx_Ssw_Tc5.*" (.zdata)
            "*Cpu5_Main.*" (.zdata)
            *(.zdata_cpu5)
        }
        .zbss_tc5 (BSS) :
        {
            "*Ifx_Ssw_Tc5.*" (.zbss)
            "*Cpu5_Main.*" (.zbss)
            *(.zbss_cpu5)
        }
    } > dsram5
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc4 (DATA) :
        {
            "*Ifx_Ssw_Tc4.*" (.zdata)
            "*Cpu4_Main.*" (.zdata)
            *(.zdata_cpu4)
        }
        .zbss_tc4 (BSS) :
        {
            "*Ifx_Ssw_Tc4.*" (.zbss)
            "*Cpu4_Main.*" (.zbss)
            *(.zbss_cpu4)
        }
    } > dsram4
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc3 (DATA) :
        {
            "*Ifx_Ssw_Tc3.*" (.zdata)
            "*Cpu3_Main.*" (.zdata)
            *(.zdata_cpu3)
        }
        .zbss_tc3 (BSS) :
        {
            "*Ifx_Ssw_Tc3.*" (.zbss)
            "*Cpu3_Main.*" (.zbss)
            *(.zbss_cpu3)
        }
    } > dsram3
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc2 (DATA) :
        {
            "*Ifx_Ssw_Tc2.*" (.zdata)
            "*Cpu2_Main.*" (.zdata)
            *(.zdata_cpu2)
        }
        .zbss_tc2 (BSS) :
        {
            "*Ifx_Ssw_Tc2.*" (.zbss)
            "*Cpu2_Main.*" (.zbss)
            *(.zbss_cpu2)
        }
    } > dsram2
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc1 (DATA) :
        {
            "*Ifx_Ssw_Tc1.*" (.zdata)
            "*Cpu1_Main.*" (.zdata)
            *(.zdata_cpu1)
        }
        .zbss_tc1 (BSS) :
        {
            "*Ifx_Ssw_Tc1.*" (.zbss)
            "*Cpu1_Main.*" (.zbss)
            *(.zbss_cpu1)
        }
    } > dsram1
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata_tc0 (DATA) :
        {
            "*Ifx_Ssw_Tc0.*" (.zdata)
            "*Cpu0_Main.*" (.zdata)
            *(.zdata_cpu0)
        }
        .zbss_tc0 (BSS) :
        {
            "*Ifx_Ssw_Tc0.*" (.zbss)
            "*Cpu0_Main.*" (.zbss)
            *(.zbss_cpu0)
        }
    } > dsram0
    
    /*Near Absolute Data, selectable by toolchain*/
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .zdata (DATA) :
        {
            *(.zdata.dsprInit.cpu0.32bit)
            *(.zdata.dsprInit.cpu0.16bit)
            *(.zdata.dsprInit.cpu0.8bit)
            *(.zdata)
        }
        
        .zdata_powerOn (DATA) :
        {
            *(.zdata.dsprPowerOnInit.cpu0.32bit)
            *(.zdata.dsprPowerOnInit.cpu0.16bit)
            *(.zdata.dsprPowerOnInit.cpu0.8bit)
        }
        
        .zbss (BSS) :
        {
            *(.zbss.dsprClearOnInit.cpu0.32bit)
            *(.zbss.dsprClearOnInit.cpu0.16bit)
            *(.zbss.dsprClearOnInit.cpu0.8bit)
            *(.zbss)
        }
        
        .zbss_powerOn (BSS) :
        {
            *(.zbss.dsprPowerOnClear.cpu0.32bit)
            *(.zbss.dsprPowerOnClear.cpu0.16bit)
            *(.zbss.dsprPowerOnClear.cpu0.8bit)
        }
        
        .zbss_noClear (BSS) :
        {
            *(.zbss.dsprNoInit.cpu0.32bit)
            *(.zbss.dsprNoInit.cpu0.16bit)
            *(.zbss.dsprNoInit.cpu0.8bit)
        }
    /*Un comment one of the below statements to enable CpuX DMI RAM to hold global variables*/
    } > dsram0
/*    } > dsram1*/
/*    } > dsram2*/
/*    } > dsram3*/
/*    } > dsram4*/
/*    } > dsram5*/
    
    /*Relative A0/A1/A8/A9 Addressable Sections*/
    /*Relative A0 Addressable Data, selectable with patterns and user defined sections*/
    /*Note: A0 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A0 Addressable Data, selectable by toolchain*/
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .sdata (DATA) :
        {
            *(.sdata)
        }
        
        .sbss (BSS) :
        {
            *(.sbss)
        }
        
        _SMALL_DATA_ = SIZEOF(.sdata) ? ADDR(.sdata) : (ADDR(.sdata) & 0xF0000000) + 32k ;
        __A0_MEM = _SMALL_DATA_;
    /*Un comment one of the below statements to enable CpuX DMI RAM to hold global variables*/
    } > dsram0
/*    } > dsram1*/
/*    } > dsram2*/
/*    } > dsram3*/
/*    } > dsram4*/
/*    } > dsram5*/

    /*Relative A1 Addressable Const, selectable with patterns and user defined sections*/
    /*Note: A1 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A1 Addressable Const, selectable by toolchain*/
    GROUP :
    {
        .zrodata (CONST) :
        {
            *Ifx_Ssw_Tc0.* (.zrodata)
            *Ifx_Ssw_Tc1.* (.zrodata)
            *Ifx_Ssw_Tc2.* (.zrodata)
            *Ifx_Ssw_Tc3.* (.zrodata)
            *Ifx_Ssw_Tc4.* (.zrodata)
            *Ifx_Ssw_Tc5.* (.zrodata)
            *Cpu0_Main.* (.zrodata)
            *Cpu1_Main.* (.zrodata)
            *Cpu2_Main.* (.zrodata)
            *Cpu3_Main.* (.zrodata)
            *Cpu4_Main.* (.zrodata)
            *Cpu5_Main.* (.zrodata)
            *(.zrodata.const.cpu0.32bit)
            *(.zrodata.const.cpu0.16bit)
            *(.zrodata.const.cpu0.8bit)
            *(.zrodata.config.cpu0.32bit)
            *(.zrodata.config.cpu0.16bit)
            *(.zrodata.config.cpu0.8bit)
            *(.zrodata_cpu0)
            *(.zrodata_cpu1)
            *(.zrodata_cpu2)
            *(.zrodata_cpu3)
            *(.zrodata_cpu4)
            *(.zrodata_cpu5)
            *(.zrodata)
        }
        
        .srodata (CONST) :
        {
            *(.srodata)
            *(.ldata)
            *(.lbss)    /*Workaround to get rid of linker warning for external const definitions*/
        }
        _LITERAL_DATA_ = SIZEOF(.srodata) ? ADDR(.srodata) : (ADDR(.srodata) & 0xF0000000) + 32k ;
        __A1_MEM = _LITERAL_DATA_;
    /*Un comment one of the below statements to enable CpuX specific Pfls to hold global constants*/
    } > pfls0
/*    } > pfls1*/
/*    } > pfls2*/
/*    } > pfls3*/
/*    } > pfls4*/
/*    } > pfls5*/

    /*LMU memory sections*/    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU Near Sections*/
        .zlmudata (DATA) :
        {
            *(.zlmudata)
        }
        
        .zlmubss (BSS) :
        {
            *(.zlmubss)
        }
        
        /*DLMU0 Sections*/
        CPU0.lmudata (DATA) :
        {
            *(.lmudata_cpu0)
        }
        CPU0.lmubss :
        {
            *(.lmubss_cpu0)    
        }
    } > cpu0_dlmu
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU1 Sections*/
        CPU1.lmudata (DATA) :
        {
            *(.lmudata_cpu1)
        }
        CPU1.lmubss :
        {
            *(.lmubss_cpu1)    
        }
    } > cpu1_dlmu
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU2 Sections*/
        CPU2.lmudata (DATA) :
        {
            *(.lmudata_cpu2)
        }
        CPU2.lmubss :
        {
            *(.lmubss_cpu2)    
        }
    } > cpu2_dlmu
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU3 Sections*/
        CPU3.lmudata (DATA) :
        {
            *(.lmudata_cpu3)
        }
        CPU3.lmubss :
        {
            *(.lmubss_cpu3)    
        }
    } > cpu3_dlmu
    
    /*Relative A9 Addressable Data, selectable with patterns and user defined sections*/
    GROUP LOAD(> pfls0) COPYTABLE: 
    {            
        .a9sdata (DATA) :
        {
            *(.a9sdata)
        }
        
        .a9sbss (BSS) :
        {
            *(.a9sbss)
        }
        __A9_MEM = SIZEOF(.a9sdata) > 0 ? ADDR(.a9sdata) : SIZEOF(.a9sbss) > 0 ? ADDR(.a9sbss): (ADDR(.a9sdata) & 0xF0000000) + 32k ;
    } > lmuram
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .lmudata (DATA) :
        {
            *(.lmudata)
        }
        
        .lmubss (BSS) :
        {
            *(.lmubss)
        }
    } > lmuram
        
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU4 Sections*/
        CPU4.lmudata (DATA) :
        {
            *(.lmudata_cpu4)
        }
        CPU4.lmubss :
        {
            *(.lmubss_cpu4)
        }
    } > cpu4_dlmu
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        /*DLMU5 Sections*/
        CPU5.lmudata (DATA) :
        {
            *(.lmudata_cpu5)
        }
        CPU5.lmubss :
        {
            *(.lmubss_cpu5)
        }
    } > cpu5_dlmu
    
    /*Relative A8 Addressable Const, selectable with patterns and user defined sections*/
    GROUP :
    {
        .rodata_a8 :
        {
            *(.rodata_a8)
        }
    /*Un comment one of the below statements to enable CpuX specific Pfls to hold global constants*/
    } > pfls0
/*    } > pfls1*/
/*    } > pfls2*/
/*    } > pfls3*/
/*    } > pfls4*/
/*    } > pfls5*/
    
    __A8_MEM = SIZEOF(.rodata_a8) ? ADDR(.rodata_a8) : (ADDR(.rodata_a8) & 0xF0000000) + 32k ;
    
    /*Far Data / Far Const Sections, selectable with patterns and user defined sections*/
    /*Far Data Sections, selectable with patterns and user defined sections*/
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU5.data (DATA) :
        {
            "*Ifx_Ssw_Tc5.*" (.data)
            "*Cpu5_Main.*" (.data)
            *(.data_cpu5)
        }
        CPU5.bss (BSS) :
        {
            "*Ifx_Ssw_Tc5.*" (.bss)
            "*Cpu5_Main.*" (.bss)
            *(.bss_cpu5)
        }
    } > dsram5

    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU4.data (DATA) :
        {
            "*Ifx_Ssw_Tc4.*" (.data)
            "*Cpu4_Main.*" (.data)
            *(.data_cpu4)
        }
        CPU4.bss (BSS) :
        {
            "*Ifx_Ssw_Tc4.*" (.bss)
            "*Cpu4_Main.*" (.bss)
            *(.bss_cpu4)
        }
    } > dsram4
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU3.data (DATA) :
        {
            "*Ifx_Ssw_Tc3.*" (.data)
            "*Cpu3_Main.*" (.data)
            *(.data_cpu3)
        }
        CPU3.bss (BSS) :
        {
            "*Ifx_Ssw_Tc3.*" (.bss)
            "*Cpu3_Main.*" (.bss)
            *(.bss_cpu3)
        }
    } > dsram3
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU2.data (DATA) :
        {
            "*Ifx_Ssw_Tc2.*" (.data)
            "*Cpu2_Main.*" (.data)
            *(.data_cpu2)
        }
        CPU2.bss (BSS) :
        {
            "*Ifx_Ssw_Tc2.*" (.bss)
            "*Cpu2_Main.*" (.bss)
            *(.bss_cpu2)
        }
    } > dsram2
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU1.data (DATA) :
        {
            "*Ifx_Ssw_Tc1.*" (.data)
            "*Cpu1_Main.*" (.data)
            *(.data_cpu1)
        }
        CPU1.bss (BSS) :
        {
            "*Ifx_Ssw_Tc1.*" (.bss)
            "*Cpu1_Main.*" (.bss)
            *(.bss_cpu1)
        }
    } > dsram1
    
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        CPU0.data (DATA) :
        {
            "*Ifx_Ssw_Tc0.*" (.data)
            "*Cpu0_Main.*" (.data)
            *(.data_cpu0)
        }
        CPU0.bss (BSS) :
        {
            "*Ifx_Ssw_Tc0.*" (.bss)
            "*Cpu0_Main.*" (.bss)
            *(.bss_cpu0)
        }
    } > dsram0
    
    /*Far Data Sections, selectable by toolchain*/
    GROUP LOAD(> pfls0) COPYTABLE :
    {
        .data (DATA) :
        {
            *(.data.farDsprInit.cpu0.32bit)
            *(.data.farDsprInit.cpu0.16bit)
            *(.data.farDsprInit.cpu0.8bit)
            *(.data)
        }
        
        .bss (BSS) :
        {
            *(.bss.farDsprClearOnInit.cpu0.32bit)
            *(.bss.farDsprClearOnInit.cpu0.16bit)
            *(.bss.farDsprClearOnInit.cpu0.8bit)
            *(.bss)
        }
        
        .bss_noClear (BSS) :
        {
            *(.bss.farDsprNoInit.cpu0.32bit)
            *(.bss.farDsprNoInit.cpu0.16bit)
            *(.bss.farDsprNoInit.cpu0.8bit)
        }
        
        .heap  :
        {
            . = ALIGN(4);
            __HEAP = .;
            __HEAP_START = .;
            __HEAP_END = . + LCF_HEAP_SIZE;
        }
    /*Un comment one of the below statements to enable CpuX DMI RAM to hold global variables*/
    } > dsram0
/*    } > dsram1*/
/*    } > dsram2*/
/*    } > dsram3*/
/*    } > dsram4*/
/*    } > dsram5*/
    
    /*Far Const Sections, selectable with patterns and user defined sections*/
    /*CPU0 Const Sections*/
    CPU0.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc0.*" (.rodata)
        "*Cpu0_Main.*" (.rodata)
        *(.rodata_cpu0)
    } > pfls0

    /*CPU1 Const Sections*/
    CPU1.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc1.*" (.rodata)
        "*Cpu1_Main.*" (.rodata)
        *(.rodata_cpu1)
    } > pfls1

    /*CPU2 Const Sections*/
    CPU2.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc2.*" (.rodata)
        "*Cpu2_Main.*" (.rodata)
        *(.rodata_cpu2)
    } > pfls2

    /*CPU3 Const Sections*/
    CPU3.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc3.*" (.rodata)
        "*Cpu3_Main.*" (.rodata)
        *(.rodata_cpu3)
    } > pfls3
    
    /*CPU4 Const Sections*/
    CPU4.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc4.*" (.rodata)
        "*Cpu4_Main.*" (.rodata)
        *(.rodata_cpu4)
    } > pfls4
    
    /*CPU5 Const Sections*/
    CPU5.rodata (CONST) :
    {
        "*Ifx_Ssw_Tc5.*" (.rodata)
        "*Cpu5_Main.*" (.rodata)
        *(.rodata_cpu5)
    } > pfls5
    
    /*Far Const Sections, selectable by toolchain*/
    GROUP :
    {
        .rodata (CONST) :
        {
            *(.rodata)
            *(.rodata.farConst.cpu0.32bit)
            *(.rodata.farConst.cpu0.16bit)
            *(.rodata.farConst.cpu0.8bit)
        }
        
        .copytable (CONST) :
        {
            __DATA_ROM = .;
        }
    /*Un comment one of the below statements to enable CpuX pfls to hold global constants*/
    } > pfls0
/*    } > pfls1*/
/*    } > pfls2*/
/*    } > pfls3*/
/*    } > pfls4*/
/*    } > pfls5*/

    /*Code selections*/
    /*Code Sections, selectable with patterns and user defined sections*/
    /*CPU0 Code Sections*/
    CPU0.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc0.*" (.text)
        "*Cpu0_Main.*" (.text)
        *(.text_cpu0)
    } > pfls0
    
    CPU0.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu0)
        *(.cpu0_psram)
    } > psram0

    /*CPU1 Code Sections*/
    CPU1.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc1.*" (.text)
        "*Cpu1_Main.*" (.text)
        *(.text_cpu1)
    } > pfls1
    
    CPU1.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu1)
        *(.cpu1_psram)
    } > psram1
    
    /*CPU2 Code Sections*/
    CPU2.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc2.*" (.text)
        "*Cpu2_Main.*" (.text)
        *(.text_cpu2)
    } > pfls2
    
    CPU2.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu2)
        *(.cpu2_psram)
    } > psram2
    
    /*CPU3 Code Sections*/
    CPU3.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc3.*" (.text)
        "*Cpu3_Main.*" (.text)
        *(.text_cpu3)
    } > pfls3
    
    CPU3.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu3)
        *(.cpu3_psram)
    } > psram3
    
    /*CPU4 Code Sections*/
    CPU4.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc4.*" (.text)
        "*Cpu4_Main.*" (.text)
        *(.text_cpu4)
    } > pfls4
    
    CPU4.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu4)
        *(.cpu4_psram)
    } > psram4
    
    /*CPU5 Code Sections*/
    CPU5.text (TEXT) :
    {
        . = ALIGN(2);
        "*Ifx_Ssw_Tc5.*" (.text)
        "*Cpu5_Main.*" (.text)
        *(.text_cpu5)
    } > pfls5
    
    CPU5.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu5)
        *(.cpu5_psram)
    } > psram5

    /*Code Sections, selectable by toolchain*/
    GROUP :
    {
        .text (TEXT) :
        {
            . = ALIGN(2);
            *(.text)
            *(.text.fast.pfls.cpu0)
            *(.text.slow.pfls.cpu0)
            *(.text.5ms.pfls.cpu0)
            *(.text.10ms.pfls.cpu0)
            *(.text.callout.pfls.cpu0)
            *(.frame_info)
            *(.init)
            *(.fini)
        }
        
        .ctors (CONST) ALIGN(4) :
        {
            ctordtor.o(.ctors)
            *(.ctors)
        }
        .dtors (CONST) ALIGN(4) :
        {
            ctordtor.o(.dtors)
            *(.dtors)
        }
    /*Un comment one of the below statements to enable CpuX DMI RAM to hold functions*/
    } > pfls0
/*    } > pfls1*/
/*    } > pfls2*/
/*    } > pfls3*/
/*    } > pfls4*/
/*    } > pfls5*/
    
    /*CPU0 Interrupt Vector Table*/
    .inttab_tc0_000 (TEXT) BIND(__INTTAB_CPU0 + 0x0000) : {KEEP (*(.inttab0.intvec.0  )) } > pfls0
    .inttab_tc0_001 (TEXT) BIND(__INTTAB_CPU0 + 0x0020) : {KEEP (*(.inttab0.intvec.1  )) } > pfls0
    .inttab_tc0_002 (TEXT) BIND(__INTTAB_CPU0 + 0x0040) : {KEEP (*(.inttab0.intvec.2  )) } > pfls0
    .inttab_tc0_003 (TEXT) BIND(__INTTAB_CPU0 + 0x0060) : {KEEP (*(.inttab0.intvec.3  )) } > pfls0
    .inttab_tc0_004 (TEXT) BIND(__INTTAB_CPU0 + 0x0080) : {KEEP (*(.inttab0.intvec.4  )) } > pfls0
    .inttab_tc0_005 (TEXT) BIND(__INTTAB_CPU0 + 0x00A0) : {KEEP (*(.inttab0.intvec.5  )) } > pfls0
    .inttab_tc0_006 (TEXT) BIND(__INTTAB_CPU0 + 0x00C0) : {KEEP (*(.inttab0.intvec.6  )) } > pfls0
    .inttab_tc0_007 (TEXT) BIND(__INTTAB_CPU0 + 0x00E0) : {KEEP (*(.inttab0.intvec.7  )) } > pfls0
    .inttab_tc0_008 (TEXT) BIND(__INTTAB_CPU0 + 0x0100) : {KEEP (*(.inttab0.intvec.8  )) } > pfls0
    .inttab_tc0_009 (TEXT) BIND(__INTTAB_CPU0 + 0x0120) : {KEEP (*(.inttab0.intvec.9  )) } > pfls0
    .inttab_tc0_00A (TEXT) BIND(__INTTAB_CPU0 + 0x0140) : {KEEP (*(.inttab0.intvec.10 )) } > pfls0
    .inttab_tc0_00B (TEXT) BIND(__INTTAB_CPU0 + 0x0160) : {KEEP (*(.inttab0.intvec.11 )) } > pfls0
    .inttab_tc0_00C (TEXT) BIND(__INTTAB_CPU0 + 0x0180) : {KEEP (*(.inttab0.intvec.12 )) } > pfls0
    .inttab_tc0_00D (TEXT) BIND(__INTTAB_CPU0 + 0x01A0) : {KEEP (*(.inttab0.intvec.13 )) } > pfls0
    .inttab_tc0_00E (TEXT) BIND(__INTTAB_CPU0 + 0x01C0) : {KEEP (*(.inttab0.intvec.14 )) } > pfls0
    .inttab_tc0_00F (TEXT) BIND(__INTTAB_CPU0 + 0x01E0) : {KEEP (*(.inttab0.intvec.15 )) } > pfls0
    .inttab_tc0_010 (TEXT) BIND(__INTTAB_CPU0 + 0x0200) : {KEEP (*(.inttab0.intvec.16 )) } > pfls0
    .inttab_tc0_011 (TEXT) BIND(__INTTAB_CPU0 + 0x0220) : {KEEP (*(.inttab0.intvec.17 )) } > pfls0
    .inttab_tc0_012 (TEXT) BIND(__INTTAB_CPU0 + 0x0240) : {KEEP (*(.inttab0.intvec.18 )) } > pfls0
    .inttab_tc0_013 (TEXT) BIND(__INTTAB_CPU0 + 0x0260) : {KEEP (*(.inttab0.intvec.19 )) } > pfls0
    .inttab_tc0_014 (TEXT) BIND(__INTTAB_CPU0 + 0x0280) : {KEEP (*(.inttab0.intvec.20 )) } > pfls0
    .inttab_tc0_015 (TEXT) BIND(__INTTAB_CPU0 + 0x02A0) : {KEEP (*(.inttab0.intvec.21 )) } > pfls0
    .inttab_tc0_016 (TEXT) BIND(__INTTAB_CPU0 + 0x02C0) : {KEEP (*(.inttab0.intvec.22 )) } > pfls0
    .inttab_tc0_017 (TEXT) BIND(__INTTAB_CPU0 + 0x02E0) : {KEEP (*(.inttab0.intvec.23 )) } > pfls0
    .inttab_tc0_018 (TEXT) BIND(__INTTAB_CPU0 + 0x0300) : {KEEP (*(.inttab0.intvec.24 )) } > pfls0
    .inttab_tc0_019 (TEXT) BIND(__INTTAB_CPU0 + 0x0320) : {KEEP (*(.inttab0.intvec.25 )) } > pfls0
    .inttab_tc0_01A (TEXT) BIND(__INTTAB_CPU0 + 0x0340) : {KEEP (*(.inttab0.intvec.26 )) } > pfls0
    .inttab_tc0_01B (TEXT) BIND(__INTTAB_CPU0 + 0x0360) : {KEEP (*(.inttab0.intvec.27 )) } > pfls0
    .inttab_tc0_01C (TEXT) BIND(__INTTAB_CPU0 + 0x0380) : {KEEP (*(.inttab0.intvec.28 )) } > pfls0
    .inttab_tc0_01D (TEXT) BIND(__INTTAB_CPU0 + 0x03A0) : {KEEP (*(.inttab0.intvec.29 )) } > pfls0
    .inttab_tc0_01E (TEXT) BIND(__INTTAB_CPU0 + 0x03C0) : {KEEP (*(.inttab0.intvec.30 )) } > pfls0
    .inttab_tc0_01F (TEXT) BIND(__INTTAB_CPU0 + 0x03E0) : {KEEP (*(.inttab0.intvec.31 )) } > pfls0
    .inttab_tc0_020 (TEXT) BIND(__INTTAB_CPU0 + 0x0400) : {KEEP (*(.inttab0.intvec.32 )) } > pfls0
    .inttab_tc0_021 (TEXT) BIND(__INTTAB_CPU0 + 0x0420) : {KEEP (*(.inttab0.intvec.33 )) } > pfls0
    .inttab_tc0_022 (TEXT) BIND(__INTTAB_CPU0 + 0x0440) : {KEEP (*(.inttab0.intvec.34 )) } > pfls0
    .inttab_tc0_023 (TEXT) BIND(__INTTAB_CPU0 + 0x0460) : {KEEP (*(.inttab0.intvec.35 )) } > pfls0
    .inttab_tc0_024 (TEXT) BIND(__INTTAB_CPU0 + 0x0480) : {KEEP (*(.inttab0.intvec.36 )) } > pfls0
    .inttab_tc0_025 (TEXT) BIND(__INTTAB_CPU0 + 0x04A0) : {KEEP (*(.inttab0.intvec.37 )) } > pfls0
    .inttab_tc0_026 (TEXT) BIND(__INTTAB_CPU0 + 0x04C0) : {KEEP (*(.inttab0.intvec.38 )) } > pfls0
    .inttab_tc0_027 (TEXT) BIND(__INTTAB_CPU0 + 0x04E0) : {KEEP (*(.inttab0.intvec.39 )) } > pfls0
    .inttab_tc0_028 (TEXT) BIND(__INTTAB_CPU0 + 0x0500) : {KEEP (*(.inttab0.intvec.40 )) } > pfls0
    .inttab_tc0_029 (TEXT) BIND(__INTTAB_CPU0 + 0x0520) : {KEEP (*(.inttab0.intvec.41 )) } > pfls0
    .inttab_tc0_02A (TEXT) BIND(__INTTAB_CPU0 + 0x0540) : {KEEP (*(.inttab0.intvec.42 )) } > pfls0
    .inttab_tc0_02B (TEXT) BIND(__INTTAB_CPU0 + 0x0560) : {KEEP (*(.inttab0.intvec.43 )) } > pfls0
    .inttab_tc0_02C (TEXT) BIND(__INTTAB_CPU0 + 0x0580) : {KEEP (*(.inttab0.intvec.44 )) } > pfls0
    .inttab_tc0_02D (TEXT) BIND(__INTTAB_CPU0 + 0x05A0) : {KEEP (*(.inttab0.intvec.45 )) } > pfls0
    .inttab_tc0_02E (TEXT) BIND(__INTTAB_CPU0 + 0x05C0) : {KEEP (*(.inttab0.intvec.46 )) } > pfls0
    .inttab_tc0_02F (TEXT) BIND(__INTTAB_CPU0 + 0x05E0) : {KEEP (*(.inttab0.intvec.47 )) } > pfls0
    .inttab_tc0_030 (TEXT) BIND(__INTTAB_CPU0 + 0x0600) : {KEEP (*(.inttab0.intvec.48 )) } > pfls0
    .inttab_tc0_031 (TEXT) BIND(__INTTAB_CPU0 + 0x0620) : {KEEP (*(.inttab0.intvec.49 )) } > pfls0
    .inttab_tc0_032 (TEXT) BIND(__INTTAB_CPU0 + 0x0640) : {KEEP (*(.inttab0.intvec.50 )) } > pfls0
    .inttab_tc0_033 (TEXT) BIND(__INTTAB_CPU0 + 0x0660) : {KEEP (*(.inttab0.intvec.51 )) } > pfls0
    .inttab_tc0_034 (TEXT) BIND(__INTTAB_CPU0 + 0x0680) : {KEEP (*(.inttab0.intvec.52 )) } > pfls0
    .inttab_tc0_035 (TEXT) BIND(__INTTAB_CPU0 + 0x06A0) : {KEEP (*(.inttab0.intvec.53 )) } > pfls0
    .inttab_tc0_036 (TEXT) BIND(__INTTAB_CPU0 + 0x06C0) : {KEEP (*(.inttab0.intvec.54 )) } > pfls0
    .inttab_tc0_037 (TEXT) BIND(__INTTAB_CPU0 + 0x06E0) : {KEEP (*(.inttab0.intvec.55 )) } > pfls0
    .inttab_tc0_038 (TEXT) BIND(__INTTAB_CPU0 + 0x0700) : {KEEP (*(.inttab0.intvec.56 )) } > pfls0
    .inttab_tc0_039 (TEXT) BIND(__INTTAB_CPU0 + 0x0720) : {KEEP (*(.inttab0.intvec.57 )) } > pfls0
    .inttab_tc0_03A (TEXT) BIND(__INTTAB_CPU0 + 0x0740) : {KEEP (*(.inttab0.intvec.58 )) } > pfls0
    .inttab_tc0_03B (TEXT) BIND(__INTTAB_CPU0 + 0x0760) : {KEEP (*(.inttab0.intvec.59 )) } > pfls0
    .inttab_tc0_03C (TEXT) BIND(__INTTAB_CPU0 + 0x0780) : {KEEP (*(.inttab0.intvec.60 )) } > pfls0
    .inttab_tc0_03D (TEXT) BIND(__INTTAB_CPU0 + 0x07A0) : {KEEP (*(.inttab0.intvec.61 )) } > pfls0
    .inttab_tc0_03E (TEXT) BIND(__INTTAB_CPU0 + 0x07C0) : {KEEP (*(.inttab0.intvec.62 )) } > pfls0
    .inttab_tc0_03F (TEXT) BIND(__INTTAB_CPU0 + 0x07E0) : {KEEP (*(.inttab0.intvec.63 )) } > pfls0
    .inttab_tc0_040 (TEXT) BIND(__INTTAB_CPU0 + 0x0800) : {KEEP (*(.inttab0.intvec.64 )) } > pfls0
    .inttab_tc0_041 (TEXT) BIND(__INTTAB_CPU0 + 0x0820) : {KEEP (*(.inttab0.intvec.65 )) } > pfls0
    .inttab_tc0_042 (TEXT) BIND(__INTTAB_CPU0 + 0x0840) : {KEEP (*(.inttab0.intvec.66 )) } > pfls0
    .inttab_tc0_043 (TEXT) BIND(__INTTAB_CPU0 + 0x0860) : {KEEP (*(.inttab0.intvec.67 )) } > pfls0
    .inttab_tc0_044 (TEXT) BIND(__INTTAB_CPU0 + 0x0880) : {KEEP (*(.inttab0.intvec.68 )) } > pfls0
    .inttab_tc0_045 (TEXT) BIND(__INTTAB_CPU0 + 0x08A0) : {KEEP (*(.inttab0.intvec.69 )) } > pfls0
    .inttab_tc0_046 (TEXT) BIND(__INTTAB_CPU0 + 0x08C0) : {KEEP (*(.inttab0.intvec.70 )) } > pfls0
    .inttab_tc0_047 (TEXT) BIND(__INTTAB_CPU0 + 0x08E0) : {KEEP (*(.inttab0.intvec.71 )) } > pfls0
    .inttab_tc0_048 (TEXT) BIND(__INTTAB_CPU0 + 0x0900) : {KEEP (*(.inttab0.intvec.72 )) } > pfls0
    .inttab_tc0_049 (TEXT) BIND(__INTTAB_CPU0 + 0x0920) : {KEEP (*(.inttab0.intvec.73 )) } > pfls0
    .inttab_tc0_04A (TEXT) BIND(__INTTAB_CPU0 + 0x0940) : {KEEP (*(.inttab0.intvec.74 )) } > pfls0
    .inttab_tc0_04B (TEXT) BIND(__INTTAB_CPU0 + 0x0960) : {KEEP (*(.inttab0.intvec.75 )) } > pfls0
    .inttab_tc0_04C (TEXT) BIND(__INTTAB_CPU0 + 0x0980) : {KEEP (*(.inttab0.intvec.76 )) } > pfls0
    .inttab_tc0_04D (TEXT) BIND(__INTTAB_CPU0 + 0x09A0) : {KEEP (*(.inttab0.intvec.77 )) } > pfls0
    .inttab_tc0_04E (TEXT) BIND(__INTTAB_CPU0 + 0x09C0) : {KEEP (*(.inttab0.intvec.78 )) } > pfls0
    .inttab_tc0_04F (TEXT) BIND(__INTTAB_CPU0 + 0x09E0) : {KEEP (*(.inttab0.intvec.79 )) } > pfls0
    .inttab_tc0_050 (TEXT) BIND(__INTTAB_CPU0 + 0x0A00) : {KEEP (*(.inttab0.intvec.80 )) } > pfls0
    .inttab_tc0_051 (TEXT) BIND(__INTTAB_CPU0 + 0x0A20) : {KEEP (*(.inttab0.intvec.81 )) } > pfls0
    .inttab_tc0_052 (TEXT) BIND(__INTTAB_CPU0 + 0x0A40) : {KEEP (*(.inttab0.intvec.82 )) } > pfls0
    .inttab_tc0_053 (TEXT) BIND(__INTTAB_CPU0 + 0x0A60) : {KEEP (*(.inttab0.intvec.83 )) } > pfls0
    .inttab_tc0_054 (TEXT) BIND(__INTTAB_CPU0 + 0x0A80) : {KEEP (*(.inttab0.intvec.84 )) } > pfls0
    .inttab_tc0_055 (TEXT) BIND(__INTTAB_CPU0 + 0x0AA0) : {KEEP (*(.inttab0.intvec.85 )) } > pfls0
    .inttab_tc0_056 (TEXT) BIND(__INTTAB_CPU0 + 0x0AC0) : {KEEP (*(.inttab0.intvec.86 )) } > pfls0
    .inttab_tc0_057 (TEXT) BIND(__INTTAB_CPU0 + 0x0AE0) : {KEEP (*(.inttab0.intvec.87 )) } > pfls0
    .inttab_tc0_058 (TEXT) BIND(__INTTAB_CPU0 + 0x0B00) : {KEEP (*(.inttab0.intvec.88 )) } > pfls0
    .inttab_tc0_059 (TEXT) BIND(__INTTAB_CPU0 + 0x0B20) : {KEEP (*(.inttab0.intvec.89 )) } > pfls0
    .inttab_tc0_05A (TEXT) BIND(__INTTAB_CPU0 + 0x0B40) : {KEEP (*(.inttab0.intvec.90 )) } > pfls0
    .inttab_tc0_05B (TEXT) BIND(__INTTAB_CPU0 + 0x0B60) : {KEEP (*(.inttab0.intvec.91 )) } > pfls0
    .inttab_tc0_05C (TEXT) BIND(__INTTAB_CPU0 + 0x0B80) : {KEEP (*(.inttab0.intvec.92 )) } > pfls0
    .inttab_tc0_05D (TEXT) BIND(__INTTAB_CPU0 + 0x0BA0) : {KEEP (*(.inttab0.intvec.93 )) } > pfls0
    .inttab_tc0_05E (TEXT) BIND(__INTTAB_CPU0 + 0x0BC0) : {KEEP (*(.inttab0.intvec.94 )) } > pfls0
    .inttab_tc0_05F (TEXT) BIND(__INTTAB_CPU0 + 0x0BE0) : {KEEP (*(.inttab0.intvec.95 )) } > pfls0
    .inttab_tc0_060 (TEXT) BIND(__INTTAB_CPU0 + 0x0C00) : {KEEP (*(.inttab0.intvec.96 )) } > pfls0
    .inttab_tc0_061 (TEXT) BIND(__INTTAB_CPU0 + 0x0C20) : {KEEP (*(.inttab0.intvec.97 )) } > pfls0
    .inttab_tc0_062 (TEXT) BIND(__INTTAB_CPU0 + 0x0C40) : {KEEP (*(.inttab0.intvec.98 )) } > pfls0
    .inttab_tc0_063 (TEXT) BIND(__INTTAB_CPU0 + 0x0C60) : {KEEP (*(.inttab0.intvec.99 )) } > pfls0
    .inttab_tc0_064 (TEXT) BIND(__INTTAB_CPU0 + 0x0C80) : {KEEP (*(.inttab0.intvec.100)) } > pfls0
    .inttab_tc0_065 (TEXT) BIND(__INTTAB_CPU0 + 0x0CA0) : {KEEP (*(.inttab0.intvec.101)) } > pfls0
    .inttab_tc0_066 (TEXT) BIND(__INTTAB_CPU0 + 0x0CC0) : {KEEP (*(.inttab0.intvec.102)) } > pfls0
    .inttab_tc0_067 (TEXT) BIND(__INTTAB_CPU0 + 0x0CE0) : {KEEP (*(.inttab0.intvec.103)) } > pfls0
    .inttab_tc0_068 (TEXT) BIND(__INTTAB_CPU0 + 0x0D00) : {KEEP (*(.inttab0.intvec.104)) } > pfls0
    .inttab_tc0_069 (TEXT) BIND(__INTTAB_CPU0 + 0x0D20) : {KEEP (*(.inttab0.intvec.105)) } > pfls0
    .inttab_tc0_06A (TEXT) BIND(__INTTAB_CPU0 + 0x0D40) : {KEEP (*(.inttab0.intvec.106)) } > pfls0
    .inttab_tc0_06B (TEXT) BIND(__INTTAB_CPU0 + 0x0D60) : {KEEP (*(.inttab0.intvec.107)) } > pfls0
    .inttab_tc0_06C (TEXT) BIND(__INTTAB_CPU0 + 0x0D80) : {KEEP (*(.inttab0.intvec.108)) } > pfls0
    .inttab_tc0_06D (TEXT) BIND(__INTTAB_CPU0 + 0x0DA0) : {KEEP (*(.inttab0.intvec.109)) } > pfls0
    .inttab_tc0_06E (TEXT) BIND(__INTTAB_CPU0 + 0x0DC0) : {KEEP (*(.inttab0.intvec.110)) } > pfls0
    .inttab_tc0_06F (TEXT) BIND(__INTTAB_CPU0 + 0x0DE0) : {KEEP (*(.inttab0.intvec.111)) } > pfls0
    .inttab_tc0_070 (TEXT) BIND(__INTTAB_CPU0 + 0x0E00) : {KEEP (*(.inttab0.intvec.112)) } > pfls0
    .inttab_tc0_071 (TEXT) BIND(__INTTAB_CPU0 + 0x0E20) : {KEEP (*(.inttab0.intvec.113)) } > pfls0
    .inttab_tc0_072 (TEXT) BIND(__INTTAB_CPU0 + 0x0E40) : {KEEP (*(.inttab0.intvec.114)) } > pfls0
    .inttab_tc0_073 (TEXT) BIND(__INTTAB_CPU0 + 0x0E60) : {KEEP (*(.inttab0.intvec.115)) } > pfls0
    .inttab_tc0_074 (TEXT) BIND(__INTTAB_CPU0 + 0x0E80) : {KEEP (*(.inttab0.intvec.116)) } > pfls0
    .inttab_tc0_075 (TEXT) BIND(__INTTAB_CPU0 + 0x0EA0) : {KEEP (*(.inttab0.intvec.117)) } > pfls0
    .inttab_tc0_076 (TEXT) BIND(__INTTAB_CPU0 + 0x0EC0) : {KEEP (*(.inttab0.intvec.118)) } > pfls0
    .inttab_tc0_077 (TEXT) BIND(__INTTAB_CPU0 + 0x0EE0) : {KEEP (*(.inttab0.intvec.119)) } > pfls0
    .inttab_tc0_078 (TEXT) BIND(__INTTAB_CPU0 + 0x0F00) : {KEEP (*(.inttab0.intvec.120)) } > pfls0
    .inttab_tc0_079 (TEXT) BIND(__INTTAB_CPU0 + 0x0F20) : {KEEP (*(.inttab0.intvec.121)) } > pfls0
    .inttab_tc0_07A (TEXT) BIND(__INTTAB_CPU0 + 0x0F40) : {KEEP (*(.inttab0.intvec.122)) } > pfls0
    .inttab_tc0_07B (TEXT) BIND(__INTTAB_CPU0 + 0x0F60) : {KEEP (*(.inttab0.intvec.123)) } > pfls0
    .inttab_tc0_07C (TEXT) BIND(__INTTAB_CPU0 + 0x0F80) : {KEEP (*(.inttab0.intvec.124)) } > pfls0
    .inttab_tc0_07D (TEXT) BIND(__INTTAB_CPU0 + 0x0FA0) : {KEEP (*(.inttab0.intvec.125)) } > pfls0
    .inttab_tc0_07E (TEXT) BIND(__INTTAB_CPU0 + 0x0FC0) : {KEEP (*(.inttab0.intvec.126)) } > pfls0
    .inttab_tc0_07F (TEXT) BIND(__INTTAB_CPU0 + 0x0FE0) : {KEEP (*(.inttab0.intvec.127)) } > pfls0
    .inttab_tc0_080 (TEXT) BIND(__INTTAB_CPU0 + 0x1000) : {KEEP (*(.inttab0.intvec.128)) } > pfls0
    .inttab_tc0_081 (TEXT) BIND(__INTTAB_CPU0 + 0x1020) : {KEEP (*(.inttab0.intvec.129)) } > pfls0
    .inttab_tc0_082 (TEXT) BIND(__INTTAB_CPU0 + 0x1040) : {KEEP (*(.inttab0.intvec.130)) } > pfls0
    .inttab_tc0_083 (TEXT) BIND(__INTTAB_CPU0 + 0x1060) : {KEEP (*(.inttab0.intvec.131)) } > pfls0
    .inttab_tc0_084 (TEXT) BIND(__INTTAB_CPU0 + 0x1080) : {KEEP (*(.inttab0.intvec.132)) } > pfls0
    .inttab_tc0_085 (TEXT) BIND(__INTTAB_CPU0 + 0x10A0) : {KEEP (*(.inttab0.intvec.133)) } > pfls0
    .inttab_tc0_086 (TEXT) BIND(__INTTAB_CPU0 + 0x10C0) : {KEEP (*(.inttab0.intvec.134)) } > pfls0
    .inttab_tc0_087 (TEXT) BIND(__INTTAB_CPU0 + 0x10E0) : {KEEP (*(.inttab0.intvec.135)) } > pfls0
    .inttab_tc0_088 (TEXT) BIND(__INTTAB_CPU0 + 0x1100) : {KEEP (*(.inttab0.intvec.136)) } > pfls0
    .inttab_tc0_089 (TEXT) BIND(__INTTAB_CPU0 + 0x1120) : {KEEP (*(.inttab0.intvec.137)) } > pfls0
    .inttab_tc0_08A (TEXT) BIND(__INTTAB_CPU0 + 0x1140) : {KEEP (*(.inttab0.intvec.138)) } > pfls0
    .inttab_tc0_08B (TEXT) BIND(__INTTAB_CPU0 + 0x1160) : {KEEP (*(.inttab0.intvec.139)) } > pfls0
    .inttab_tc0_08C (TEXT) BIND(__INTTAB_CPU0 + 0x1180) : {KEEP (*(.inttab0.intvec.140)) } > pfls0
    .inttab_tc0_08D (TEXT) BIND(__INTTAB_CPU0 + 0x11A0) : {KEEP (*(.inttab0.intvec.141)) } > pfls0
    .inttab_tc0_08E (TEXT) BIND(__INTTAB_CPU0 + 0x11C0) : {KEEP (*(.inttab0.intvec.142)) } > pfls0
    .inttab_tc0_08F (TEXT) BIND(__INTTAB_CPU0 + 0x11E0) : {KEEP (*(.inttab0.intvec.143)) } > pfls0
    .inttab_tc0_090 (TEXT) BIND(__INTTAB_CPU0 + 0x1200) : {KEEP (*(.inttab0.intvec.144)) } > pfls0
    .inttab_tc0_091 (TEXT) BIND(__INTTAB_CPU0 + 0x1220) : {KEEP (*(.inttab0.intvec.145)) } > pfls0
    .inttab_tc0_092 (TEXT) BIND(__INTTAB_CPU0 + 0x1240) : {KEEP (*(.inttab0.intvec.146)) } > pfls0
    .inttab_tc0_093 (TEXT) BIND(__INTTAB_CPU0 + 0x1260) : {KEEP (*(.inttab0.intvec.147)) } > pfls0
    .inttab_tc0_094 (TEXT) BIND(__INTTAB_CPU0 + 0x1280) : {KEEP (*(.inttab0.intvec.148)) } > pfls0
    .inttab_tc0_095 (TEXT) BIND(__INTTAB_CPU0 + 0x12A0) : {KEEP (*(.inttab0.intvec.149)) } > pfls0
    .inttab_tc0_096 (TEXT) BIND(__INTTAB_CPU0 + 0x12C0) : {KEEP (*(.inttab0.intvec.150)) } > pfls0
    .inttab_tc0_097 (TEXT) BIND(__INTTAB_CPU0 + 0x12E0) : {KEEP (*(.inttab0.intvec.151)) } > pfls0
    .inttab_tc0_098 (TEXT) BIND(__INTTAB_CPU0 + 0x1300) : {KEEP (*(.inttab0.intvec.152)) } > pfls0
    .inttab_tc0_099 (TEXT) BIND(__INTTAB_CPU0 + 0x1320) : {KEEP (*(.inttab0.intvec.153)) } > pfls0
    .inttab_tc0_09A (TEXT) BIND(__INTTAB_CPU0 + 0x1340) : {KEEP (*(.inttab0.intvec.154)) } > pfls0
    .inttab_tc0_09B (TEXT) BIND(__INTTAB_CPU0 + 0x1360) : {KEEP (*(.inttab0.intvec.155)) } > pfls0
    .inttab_tc0_09C (TEXT) BIND(__INTTAB_CPU0 + 0x1380) : {KEEP (*(.inttab0.intvec.156)) } > pfls0
    .inttab_tc0_09D (TEXT) BIND(__INTTAB_CPU0 + 0x13A0) : {KEEP (*(.inttab0.intvec.157)) } > pfls0
    .inttab_tc0_09E (TEXT) BIND(__INTTAB_CPU0 + 0x13C0) : {KEEP (*(.inttab0.intvec.158)) } > pfls0
    .inttab_tc0_09F (TEXT) BIND(__INTTAB_CPU0 + 0x13E0) : {KEEP (*(.inttab0.intvec.159)) } > pfls0
    .inttab_tc0_0A0 (TEXT) BIND(__INTTAB_CPU0 + 0x1400) : {KEEP (*(.inttab0.intvec.160)) } > pfls0
    .inttab_tc0_0A1 (TEXT) BIND(__INTTAB_CPU0 + 0x1420) : {KEEP (*(.inttab0.intvec.161)) } > pfls0
    .inttab_tc0_0A2 (TEXT) BIND(__INTTAB_CPU0 + 0x1440) : {KEEP (*(.inttab0.intvec.162)) } > pfls0
    .inttab_tc0_0A3 (TEXT) BIND(__INTTAB_CPU0 + 0x1460) : {KEEP (*(.inttab0.intvec.163)) } > pfls0
    .inttab_tc0_0A4 (TEXT) BIND(__INTTAB_CPU0 + 0x1480) : {KEEP (*(.inttab0.intvec.164)) } > pfls0
    .inttab_tc0_0A5 (TEXT) BIND(__INTTAB_CPU0 + 0x14A0) : {KEEP (*(.inttab0.intvec.165)) } > pfls0
    .inttab_tc0_0A6 (TEXT) BIND(__INTTAB_CPU0 + 0x14C0) : {KEEP (*(.inttab0.intvec.166)) } > pfls0
    .inttab_tc0_0A7 (TEXT) BIND(__INTTAB_CPU0 + 0x14E0) : {KEEP (*(.inttab0.intvec.167)) } > pfls0
    .inttab_tc0_0A8 (TEXT) BIND(__INTTAB_CPU0 + 0x1500) : {KEEP (*(.inttab0.intvec.168)) } > pfls0
    .inttab_tc0_0A9 (TEXT) BIND(__INTTAB_CPU0 + 0x1520) : {KEEP (*(.inttab0.intvec.169)) } > pfls0
    .inttab_tc0_0AA (TEXT) BIND(__INTTAB_CPU0 + 0x1540) : {KEEP (*(.inttab0.intvec.170)) } > pfls0
    .inttab_tc0_0AB (TEXT) BIND(__INTTAB_CPU0 + 0x1560) : {KEEP (*(.inttab0.intvec.171)) } > pfls0
    .inttab_tc0_0AC (TEXT) BIND(__INTTAB_CPU0 + 0x1580) : {KEEP (*(.inttab0.intvec.172)) } > pfls0
    .inttab_tc0_0AD (TEXT) BIND(__INTTAB_CPU0 + 0x15A0) : {KEEP (*(.inttab0.intvec.173)) } > pfls0
    .inttab_tc0_0AE (TEXT) BIND(__INTTAB_CPU0 + 0x15C0) : {KEEP (*(.inttab0.intvec.174)) } > pfls0
    .inttab_tc0_0AF (TEXT) BIND(__INTTAB_CPU0 + 0x15E0) : {KEEP (*(.inttab0.intvec.175)) } > pfls0
    .inttab_tc0_0B0 (TEXT) BIND(__INTTAB_CPU0 + 0x1600) : {KEEP (*(.inttab0.intvec.176)) } > pfls0
    .inttab_tc0_0B1 (TEXT) BIND(__INTTAB_CPU0 + 0x1620) : {KEEP (*(.inttab0.intvec.177)) } > pfls0
    .inttab_tc0_0B2 (TEXT) BIND(__INTTAB_CPU0 + 0x1640) : {KEEP (*(.inttab0.intvec.178)) } > pfls0
    .inttab_tc0_0B3 (TEXT) BIND(__INTTAB_CPU0 + 0x1660) : {KEEP (*(.inttab0.intvec.179)) } > pfls0
    .inttab_tc0_0B4 (TEXT) BIND(__INTTAB_CPU0 + 0x1680) : {KEEP (*(.inttab0.intvec.180)) } > pfls0
    .inttab_tc0_0B5 (TEXT) BIND(__INTTAB_CPU0 + 0x16A0) : {KEEP (*(.inttab0.intvec.181)) } > pfls0
    .inttab_tc0_0B6 (TEXT) BIND(__INTTAB_CPU0 + 0x16C0) : {KEEP (*(.inttab0.intvec.182)) } > pfls0
    .inttab_tc0_0B7 (TEXT) BIND(__INTTAB_CPU0 + 0x16E0) : {KEEP (*(.inttab0.intvec.183)) } > pfls0
    .inttab_tc0_0B8 (TEXT) BIND(__INTTAB_CPU0 + 0x1700) : {KEEP (*(.inttab0.intvec.184)) } > pfls0
    .inttab_tc0_0B9 (TEXT) BIND(__INTTAB_CPU0 + 0x1720) : {KEEP (*(.inttab0.intvec.185)) } > pfls0
    .inttab_tc0_0BA (TEXT) BIND(__INTTAB_CPU0 + 0x1740) : {KEEP (*(.inttab0.intvec.186)) } > pfls0
    .inttab_tc0_0BB (TEXT) BIND(__INTTAB_CPU0 + 0x1760) : {KEEP (*(.inttab0.intvec.187)) } > pfls0
    .inttab_tc0_0BC (TEXT) BIND(__INTTAB_CPU0 + 0x1780) : {KEEP (*(.inttab0.intvec.188)) } > pfls0
    .inttab_tc0_0BD (TEXT) BIND(__INTTAB_CPU0 + 0x17A0) : {KEEP (*(.inttab0.intvec.189)) } > pfls0
    .inttab_tc0_0BE (TEXT) BIND(__INTTAB_CPU0 + 0x17C0) : {KEEP (*(.inttab0.intvec.190)) } > pfls0
    .inttab_tc0_0BF (TEXT) BIND(__INTTAB_CPU0 + 0x17E0) : {KEEP (*(.inttab0.intvec.191)) } > pfls0
    .inttab_tc0_0C0 (TEXT) BIND(__INTTAB_CPU0 + 0x1800) : {KEEP (*(.inttab0.intvec.192)) } > pfls0
    .inttab_tc0_0C1 (TEXT) BIND(__INTTAB_CPU0 + 0x1820) : {KEEP (*(.inttab0.intvec.193)) } > pfls0
    .inttab_tc0_0C2 (TEXT) BIND(__INTTAB_CPU0 + 0x1840) : {KEEP (*(.inttab0.intvec.194)) } > pfls0
    .inttab_tc0_0C3 (TEXT) BIND(__INTTAB_CPU0 + 0x1860) : {KEEP (*(.inttab0.intvec.195)) } > pfls0
    .inttab_tc0_0C4 (TEXT) BIND(__INTTAB_CPU0 + 0x1880) : {KEEP (*(.inttab0.intvec.196)) } > pfls0
    .inttab_tc0_0C5 (TEXT) BIND(__INTTAB_CPU0 + 0x18A0) : {KEEP (*(.inttab0.intvec.197)) } > pfls0
    .inttab_tc0_0C6 (TEXT) BIND(__INTTAB_CPU0 + 0x18C0) : {KEEP (*(.inttab0.intvec.198)) } > pfls0
    .inttab_tc0_0C7 (TEXT) BIND(__INTTAB_CPU0 + 0x18E0) : {KEEP (*(.inttab0.intvec.199)) } > pfls0
    .inttab_tc0_0C8 (TEXT) BIND(__INTTAB_CPU0 + 0x1900) : {KEEP (*(.inttab0.intvec.200)) } > pfls0
    .inttab_tc0_0C9 (TEXT) BIND(__INTTAB_CPU0 + 0x1920) : {KEEP (*(.inttab0.intvec.201)) } > pfls0
    .inttab_tc0_0CA (TEXT) BIND(__INTTAB_CPU0 + 0x1940) : {KEEP (*(.inttab0.intvec.202)) } > pfls0
    .inttab_tc0_0CB (TEXT) BIND(__INTTAB_CPU0 + 0x1960) : {KEEP (*(.inttab0.intvec.203)) } > pfls0
    .inttab_tc0_0CC (TEXT) BIND(__INTTAB_CPU0 + 0x1980) : {KEEP (*(.inttab0.intvec.204)) } > pfls0
    .inttab_tc0_0CD (TEXT) BIND(__INTTAB_CPU0 + 0x19A0) : {KEEP (*(.inttab0.intvec.205)) } > pfls0
    .inttab_tc0_0CE (TEXT) BIND(__INTTAB_CPU0 + 0x19C0) : {KEEP (*(.inttab0.intvec.206)) } > pfls0
    .inttab_tc0_0CF (TEXT) BIND(__INTTAB_CPU0 + 0x19E0) : {KEEP (*(.inttab0.intvec.207)) } > pfls0
    .inttab_tc0_0D0 (TEXT) BIND(__INTTAB_CPU0 + 0x1A00) : {KEEP (*(.inttab0.intvec.208)) } > pfls0
    .inttab_tc0_0D1 (TEXT) BIND(__INTTAB_CPU0 + 0x1A20) : {KEEP (*(.inttab0.intvec.209)) } > pfls0
    .inttab_tc0_0D2 (TEXT) BIND(__INTTAB_CPU0 + 0x1A40) : {KEEP (*(.inttab0.intvec.210)) } > pfls0
    .inttab_tc0_0D3 (TEXT) BIND(__INTTAB_CPU0 + 0x1A60) : {KEEP (*(.inttab0.intvec.211)) } > pfls0
    .inttab_tc0_0D4 (TEXT) BIND(__INTTAB_CPU0 + 0x1A80) : {KEEP (*(.inttab0.intvec.212)) } > pfls0
    .inttab_tc0_0D5 (TEXT) BIND(__INTTAB_CPU0 + 0x1AA0) : {KEEP (*(.inttab0.intvec.213)) } > pfls0
    .inttab_tc0_0D6 (TEXT) BIND(__INTTAB_CPU0 + 0x1AC0) : {KEEP (*(.inttab0.intvec.214)) } > pfls0
    .inttab_tc0_0D7 (TEXT) BIND(__INTTAB_CPU0 + 0x1AE0) : {KEEP (*(.inttab0.intvec.215)) } > pfls0
    .inttab_tc0_0D8 (TEXT) BIND(__INTTAB_CPU0 + 0x1B00) : {KEEP (*(.inttab0.intvec.216)) } > pfls0
    .inttab_tc0_0D9 (TEXT) BIND(__INTTAB_CPU0 + 0x1B20) : {KEEP (*(.inttab0.intvec.217)) } > pfls0
    .inttab_tc0_0DA (TEXT) BIND(__INTTAB_CPU0 + 0x1B40) : {KEEP (*(.inttab0.intvec.218)) } > pfls0
    .inttab_tc0_0DB (TEXT) BIND(__INTTAB_CPU0 + 0x1B60) : {KEEP (*(.inttab0.intvec.219)) } > pfls0
    .inttab_tc0_0DC (TEXT) BIND(__INTTAB_CPU0 + 0x1B80) : {KEEP (*(.inttab0.intvec.220)) } > pfls0
    .inttab_tc0_0DD (TEXT) BIND(__INTTAB_CPU0 + 0x1BA0) : {KEEP (*(.inttab0.intvec.221)) } > pfls0
    .inttab_tc0_0DE (TEXT) BIND(__INTTAB_CPU0 + 0x1BC0) : {KEEP (*(.inttab0.intvec.222)) } > pfls0
    .inttab_tc0_0DF (TEXT) BIND(__INTTAB_CPU0 + 0x1BE0) : {KEEP (*(.inttab0.intvec.223)) } > pfls0
    .inttab_tc0_0E0 (TEXT) BIND(__INTTAB_CPU0 + 0x1C00) : {KEEP (*(.inttab0.intvec.224)) } > pfls0
    .inttab_tc0_0E1 (TEXT) BIND(__INTTAB_CPU0 + 0x1C20) : {KEEP (*(.inttab0.intvec.225)) } > pfls0
    .inttab_tc0_0E2 (TEXT) BIND(__INTTAB_CPU0 + 0x1C40) : {KEEP (*(.inttab0.intvec.226)) } > pfls0
    .inttab_tc0_0E3 (TEXT) BIND(__INTTAB_CPU0 + 0x1C60) : {KEEP (*(.inttab0.intvec.227)) } > pfls0
    .inttab_tc0_0E4 (TEXT) BIND(__INTTAB_CPU0 + 0x1C80) : {KEEP (*(.inttab0.intvec.228)) } > pfls0
    .inttab_tc0_0E5 (TEXT) BIND(__INTTAB_CPU0 + 0x1CA0) : {KEEP (*(.inttab0.intvec.229)) } > pfls0
    .inttab_tc0_0E6 (TEXT) BIND(__INTTAB_CPU0 + 0x1CC0) : {KEEP (*(.inttab0.intvec.230)) } > pfls0
    .inttab_tc0_0E7 (TEXT) BIND(__INTTAB_CPU0 + 0x1CE0) : {KEEP (*(.inttab0.intvec.231)) } > pfls0
    .inttab_tc0_0E8 (TEXT) BIND(__INTTAB_CPU0 + 0x1D00) : {KEEP (*(.inttab0.intvec.232)) } > pfls0
    .inttab_tc0_0E9 (TEXT) BIND(__INTTAB_CPU0 + 0x1D20) : {KEEP (*(.inttab0.intvec.233)) } > pfls0
    .inttab_tc0_0EA (TEXT) BIND(__INTTAB_CPU0 + 0x1D40) : {KEEP (*(.inttab0.intvec.234)) } > pfls0
    .inttab_tc0_0EB (TEXT) BIND(__INTTAB_CPU0 + 0x1D60) : {KEEP (*(.inttab0.intvec.235)) } > pfls0
    .inttab_tc0_0EC (TEXT) BIND(__INTTAB_CPU0 + 0x1D80) : {KEEP (*(.inttab0.intvec.236)) } > pfls0
    .inttab_tc0_0ED (TEXT) BIND(__INTTAB_CPU0 + 0x1DA0) : {KEEP (*(.inttab0.intvec.237)) } > pfls0
    .inttab_tc0_0EE (TEXT) BIND(__INTTAB_CPU0 + 0x1DC0) : {KEEP (*(.inttab0.intvec.238)) } > pfls0
    .inttab_tc0_0EF (TEXT) BIND(__INTTAB_CPU0 + 0x1DE0) : {KEEP (*(.inttab0.intvec.239)) } > pfls0
    .inttab_tc0_0F0 (TEXT) BIND(__INTTAB_CPU0 + 0x1E00) : {KEEP (*(.inttab0.intvec.240)) } > pfls0
    .inttab_tc0_0F1 (TEXT) BIND(__INTTAB_CPU0 + 0x1E20) : {KEEP (*(.inttab0.intvec.241)) } > pfls0
    .inttab_tc0_0F2 (TEXT) BIND(__INTTAB_CPU0 + 0x1E40) : {KEEP (*(.inttab0.intvec.242)) } > pfls0
    .inttab_tc0_0F3 (TEXT) BIND(__INTTAB_CPU0 + 0x1E60) : {KEEP (*(.inttab0.intvec.243)) } > pfls0
    .inttab_tc0_0F4 (TEXT) BIND(__INTTAB_CPU0 + 0x1E80) : {KEEP (*(.inttab0.intvec.244)) } > pfls0
    .inttab_tc0_0F5 (TEXT) BIND(__INTTAB_CPU0 + 0x1EA0) : {KEEP (*(.inttab0.intvec.245)) } > pfls0
    .inttab_tc0_0F6 (TEXT) BIND(__INTTAB_CPU0 + 0x1EC0) : {KEEP (*(.inttab0.intvec.246)) } > pfls0
    .inttab_tc0_0F7 (TEXT) BIND(__INTTAB_CPU0 + 0x1EE0) : {KEEP (*(.inttab0.intvec.247)) } > pfls0
    .inttab_tc0_0F8 (TEXT) BIND(__INTTAB_CPU0 + 0x1F00) : {KEEP (*(.inttab0.intvec.248)) } > pfls0
    .inttab_tc0_0F9 (TEXT) BIND(__INTTAB_CPU0 + 0x1F20) : {KEEP (*(.inttab0.intvec.249)) } > pfls0
    .inttab_tc0_0FA (TEXT) BIND(__INTTAB_CPU0 + 0x1F40) : {KEEP (*(.inttab0.intvec.250)) } > pfls0
    .inttab_tc0_0FB (TEXT) BIND(__INTTAB_CPU0 + 0x1F60) : {KEEP (*(.inttab0.intvec.251)) } > pfls0
    .inttab_tc0_0FC (TEXT) BIND(__INTTAB_CPU0 + 0x1F80) : {KEEP (*(.inttab0.intvec.252)) } > pfls0
    .inttab_tc0_0FD (TEXT) BIND(__INTTAB_CPU0 + 0x1FA0) : {KEEP (*(.inttab0.intvec.253)) } > pfls0
    .inttab_tc0_0FE (TEXT) BIND(__INTTAB_CPU0 + 0x1FC0) : {KEEP (*(.inttab0.intvec.254)) } > pfls0
    .inttab_tc0_0FF (TEXT) BIND(__INTTAB_CPU0 + 0x1FE0) : {KEEP (*(.inttab0.intvec.255)) } > pfls0

    /*CPU1 Interrupt Vector Table*/
    .inttab_tc1_000 (TEXT) BIND(__INTTAB_CPU1 + 0x0000) : {KEEP (*(.inttab1.intvec.0  )) } > pfls1
    .inttab_tc1_001 (TEXT) BIND(__INTTAB_CPU1 + 0x0020) : {KEEP (*(.inttab1.intvec.1  )) } > pfls1
    .inttab_tc1_002 (TEXT) BIND(__INTTAB_CPU1 + 0x0040) : {KEEP (*(.inttab1.intvec.2  )) } > pfls1
    .inttab_tc1_003 (TEXT) BIND(__INTTAB_CPU1 + 0x0060) : {KEEP (*(.inttab1.intvec.3  )) } > pfls1
    .inttab_tc1_004 (TEXT) BIND(__INTTAB_CPU1 + 0x0080) : {KEEP (*(.inttab1.intvec.4  )) } > pfls1
    .inttab_tc1_005 (TEXT) BIND(__INTTAB_CPU1 + 0x00A0) : {KEEP (*(.inttab1.intvec.5  )) } > pfls1
    .inttab_tc1_006 (TEXT) BIND(__INTTAB_CPU1 + 0x00C0) : {KEEP (*(.inttab1.intvec.6  )) } > pfls1
    .inttab_tc1_007 (TEXT) BIND(__INTTAB_CPU1 + 0x00E0) : {KEEP (*(.inttab1.intvec.7  )) } > pfls1
    .inttab_tc1_008 (TEXT) BIND(__INTTAB_CPU1 + 0x0100) : {KEEP (*(.inttab1.intvec.8  )) } > pfls1
    .inttab_tc1_009 (TEXT) BIND(__INTTAB_CPU1 + 0x0120) : {KEEP (*(.inttab1.intvec.9  )) } > pfls1
    .inttab_tc1_00A (TEXT) BIND(__INTTAB_CPU1 + 0x0140) : {KEEP (*(.inttab1.intvec.10 )) } > pfls1
    .inttab_tc1_00B (TEXT) BIND(__INTTAB_CPU1 + 0x0160) : {KEEP (*(.inttab1.intvec.11 )) } > pfls1
    .inttab_tc1_00C (TEXT) BIND(__INTTAB_CPU1 + 0x0180) : {KEEP (*(.inttab1.intvec.12 )) } > pfls1
    .inttab_tc1_00D (TEXT) BIND(__INTTAB_CPU1 + 0x01A0) : {KEEP (*(.inttab1.intvec.13 )) } > pfls1
    .inttab_tc1_00E (TEXT) BIND(__INTTAB_CPU1 + 0x01C0) : {KEEP (*(.inttab1.intvec.14 )) } > pfls1
    .inttab_tc1_00F (TEXT) BIND(__INTTAB_CPU1 + 0x01E0) : {KEEP (*(.inttab1.intvec.15 )) } > pfls1
    .inttab_tc1_010 (TEXT) BIND(__INTTAB_CPU1 + 0x0200) : {KEEP (*(.inttab1.intvec.16 )) } > pfls1
    .inttab_tc1_011 (TEXT) BIND(__INTTAB_CPU1 + 0x0220) : {KEEP (*(.inttab1.intvec.17 )) } > pfls1
    .inttab_tc1_012 (TEXT) BIND(__INTTAB_CPU1 + 0x0240) : {KEEP (*(.inttab1.intvec.18 )) } > pfls1
    .inttab_tc1_013 (TEXT) BIND(__INTTAB_CPU1 + 0x0260) : {KEEP (*(.inttab1.intvec.19 )) } > pfls1
    .inttab_tc1_014 (TEXT) BIND(__INTTAB_CPU1 + 0x0280) : {KEEP (*(.inttab1.intvec.20 )) } > pfls1
    .inttab_tc1_015 (TEXT) BIND(__INTTAB_CPU1 + 0x02A0) : {KEEP (*(.inttab1.intvec.21 )) } > pfls1
    .inttab_tc1_016 (TEXT) BIND(__INTTAB_CPU1 + 0x02C0) : {KEEP (*(.inttab1.intvec.22 )) } > pfls1
    .inttab_tc1_017 (TEXT) BIND(__INTTAB_CPU1 + 0x02E0) : {KEEP (*(.inttab1.intvec.23 )) } > pfls1
    .inttab_tc1_018 (TEXT) BIND(__INTTAB_CPU1 + 0x0300) : {KEEP (*(.inttab1.intvec.24 )) } > pfls1
    .inttab_tc1_019 (TEXT) BIND(__INTTAB_CPU1 + 0x0320) : {KEEP (*(.inttab1.intvec.25 )) } > pfls1
    .inttab_tc1_01A (TEXT) BIND(__INTTAB_CPU1 + 0x0340) : {KEEP (*(.inttab1.intvec.26 )) } > pfls1
    .inttab_tc1_01B (TEXT) BIND(__INTTAB_CPU1 + 0x0360) : {KEEP (*(.inttab1.intvec.27 )) } > pfls1
    .inttab_tc1_01C (TEXT) BIND(__INTTAB_CPU1 + 0x0380) : {KEEP (*(.inttab1.intvec.28 )) } > pfls1
    .inttab_tc1_01D (TEXT) BIND(__INTTAB_CPU1 + 0x03A0) : {KEEP (*(.inttab1.intvec.29 )) } > pfls1
    .inttab_tc1_01E (TEXT) BIND(__INTTAB_CPU1 + 0x03C0) : {KEEP (*(.inttab1.intvec.30 )) } > pfls1
    .inttab_tc1_01F (TEXT) BIND(__INTTAB_CPU1 + 0x03E0) : {KEEP (*(.inttab1.intvec.31 )) } > pfls1
    .inttab_tc1_020 (TEXT) BIND(__INTTAB_CPU1 + 0x0400) : {KEEP (*(.inttab1.intvec.32 )) } > pfls1
    .inttab_tc1_021 (TEXT) BIND(__INTTAB_CPU1 + 0x0420) : {KEEP (*(.inttab1.intvec.33 )) } > pfls1
    .inttab_tc1_022 (TEXT) BIND(__INTTAB_CPU1 + 0x0440) : {KEEP (*(.inttab1.intvec.34 )) } > pfls1
    .inttab_tc1_023 (TEXT) BIND(__INTTAB_CPU1 + 0x0460) : {KEEP (*(.inttab1.intvec.35 )) } > pfls1
    .inttab_tc1_024 (TEXT) BIND(__INTTAB_CPU1 + 0x0480) : {KEEP (*(.inttab1.intvec.36 )) } > pfls1
    .inttab_tc1_025 (TEXT) BIND(__INTTAB_CPU1 + 0x04A0) : {KEEP (*(.inttab1.intvec.37 )) } > pfls1
    .inttab_tc1_026 (TEXT) BIND(__INTTAB_CPU1 + 0x04C0) : {KEEP (*(.inttab1.intvec.38 )) } > pfls1
    .inttab_tc1_027 (TEXT) BIND(__INTTAB_CPU1 + 0x04E0) : {KEEP (*(.inttab1.intvec.39 )) } > pfls1
    .inttab_tc1_028 (TEXT) BIND(__INTTAB_CPU1 + 0x0500) : {KEEP (*(.inttab1.intvec.40 )) } > pfls1
    .inttab_tc1_029 (TEXT) BIND(__INTTAB_CPU1 + 0x0520) : {KEEP (*(.inttab1.intvec.41 )) } > pfls1
    .inttab_tc1_02A (TEXT) BIND(__INTTAB_CPU1 + 0x0540) : {KEEP (*(.inttab1.intvec.42 )) } > pfls1
    .inttab_tc1_02B (TEXT) BIND(__INTTAB_CPU1 + 0x0560) : {KEEP (*(.inttab1.intvec.43 )) } > pfls1
    .inttab_tc1_02C (TEXT) BIND(__INTTAB_CPU1 + 0x0580) : {KEEP (*(.inttab1.intvec.44 )) } > pfls1
    .inttab_tc1_02D (TEXT) BIND(__INTTAB_CPU1 + 0x05A0) : {KEEP (*(.inttab1.intvec.45 )) } > pfls1
    .inttab_tc1_02E (TEXT) BIND(__INTTAB_CPU1 + 0x05C0) : {KEEP (*(.inttab1.intvec.46 )) } > pfls1
    .inttab_tc1_02F (TEXT) BIND(__INTTAB_CPU1 + 0x05E0) : {KEEP (*(.inttab1.intvec.47 )) } > pfls1
    .inttab_tc1_030 (TEXT) BIND(__INTTAB_CPU1 + 0x0600) : {KEEP (*(.inttab1.intvec.48 )) } > pfls1
    .inttab_tc1_031 (TEXT) BIND(__INTTAB_CPU1 + 0x0620) : {KEEP (*(.inttab1.intvec.49 )) } > pfls1
    .inttab_tc1_032 (TEXT) BIND(__INTTAB_CPU1 + 0x0640) : {KEEP (*(.inttab1.intvec.50 )) } > pfls1
    .inttab_tc1_033 (TEXT) BIND(__INTTAB_CPU1 + 0x0660) : {KEEP (*(.inttab1.intvec.51 )) } > pfls1
    .inttab_tc1_034 (TEXT) BIND(__INTTAB_CPU1 + 0x0680) : {KEEP (*(.inttab1.intvec.52 )) } > pfls1
    .inttab_tc1_035 (TEXT) BIND(__INTTAB_CPU1 + 0x06A0) : {KEEP (*(.inttab1.intvec.53 )) } > pfls1
    .inttab_tc1_036 (TEXT) BIND(__INTTAB_CPU1 + 0x06C0) : {KEEP (*(.inttab1.intvec.54 )) } > pfls1
    .inttab_tc1_037 (TEXT) BIND(__INTTAB_CPU1 + 0x06E0) : {KEEP (*(.inttab1.intvec.55 )) } > pfls1
    .inttab_tc1_038 (TEXT) BIND(__INTTAB_CPU1 + 0x0700) : {KEEP (*(.inttab1.intvec.56 )) } > pfls1
    .inttab_tc1_039 (TEXT) BIND(__INTTAB_CPU1 + 0x0720) : {KEEP (*(.inttab1.intvec.57 )) } > pfls1
    .inttab_tc1_03A (TEXT) BIND(__INTTAB_CPU1 + 0x0740) : {KEEP (*(.inttab1.intvec.58 )) } > pfls1
    .inttab_tc1_03B (TEXT) BIND(__INTTAB_CPU1 + 0x0760) : {KEEP (*(.inttab1.intvec.59 )) } > pfls1
    .inttab_tc1_03C (TEXT) BIND(__INTTAB_CPU1 + 0x0780) : {KEEP (*(.inttab1.intvec.60 )) } > pfls1
    .inttab_tc1_03D (TEXT) BIND(__INTTAB_CPU1 + 0x07A0) : {KEEP (*(.inttab1.intvec.61 )) } > pfls1
    .inttab_tc1_03E (TEXT) BIND(__INTTAB_CPU1 + 0x07C0) : {KEEP (*(.inttab1.intvec.62 )) } > pfls1
    .inttab_tc1_03F (TEXT) BIND(__INTTAB_CPU1 + 0x07E0) : {KEEP (*(.inttab1.intvec.63 )) } > pfls1
    .inttab_tc1_040 (TEXT) BIND(__INTTAB_CPU1 + 0x0800) : {KEEP (*(.inttab1.intvec.64 )) } > pfls1
    .inttab_tc1_041 (TEXT) BIND(__INTTAB_CPU1 + 0x0820) : {KEEP (*(.inttab1.intvec.65 )) } > pfls1
    .inttab_tc1_042 (TEXT) BIND(__INTTAB_CPU1 + 0x0840) : {KEEP (*(.inttab1.intvec.66 )) } > pfls1
    .inttab_tc1_043 (TEXT) BIND(__INTTAB_CPU1 + 0x0860) : {KEEP (*(.inttab1.intvec.67 )) } > pfls1
    .inttab_tc1_044 (TEXT) BIND(__INTTAB_CPU1 + 0x0880) : {KEEP (*(.inttab1.intvec.68 )) } > pfls1
    .inttab_tc1_045 (TEXT) BIND(__INTTAB_CPU1 + 0x08A0) : {KEEP (*(.inttab1.intvec.69 )) } > pfls1
    .inttab_tc1_046 (TEXT) BIND(__INTTAB_CPU1 + 0x08C0) : {KEEP (*(.inttab1.intvec.70 )) } > pfls1
    .inttab_tc1_047 (TEXT) BIND(__INTTAB_CPU1 + 0x08E0) : {KEEP (*(.inttab1.intvec.71 )) } > pfls1
    .inttab_tc1_048 (TEXT) BIND(__INTTAB_CPU1 + 0x0900) : {KEEP (*(.inttab1.intvec.72 )) } > pfls1
    .inttab_tc1_049 (TEXT) BIND(__INTTAB_CPU1 + 0x0920) : {KEEP (*(.inttab1.intvec.73 )) } > pfls1
    .inttab_tc1_04A (TEXT) BIND(__INTTAB_CPU1 + 0x0940) : {KEEP (*(.inttab1.intvec.74 )) } > pfls1
    .inttab_tc1_04B (TEXT) BIND(__INTTAB_CPU1 + 0x0960) : {KEEP (*(.inttab1.intvec.75 )) } > pfls1
    .inttab_tc1_04C (TEXT) BIND(__INTTAB_CPU1 + 0x0980) : {KEEP (*(.inttab1.intvec.76 )) } > pfls1
    .inttab_tc1_04D (TEXT) BIND(__INTTAB_CPU1 + 0x09A0) : {KEEP (*(.inttab1.intvec.77 )) } > pfls1
    .inttab_tc1_04E (TEXT) BIND(__INTTAB_CPU1 + 0x09C0) : {KEEP (*(.inttab1.intvec.78 )) } > pfls1
    .inttab_tc1_04F (TEXT) BIND(__INTTAB_CPU1 + 0x09E0) : {KEEP (*(.inttab1.intvec.79 )) } > pfls1
    .inttab_tc1_050 (TEXT) BIND(__INTTAB_CPU1 + 0x0A00) : {KEEP (*(.inttab1.intvec.80 )) } > pfls1
    .inttab_tc1_051 (TEXT) BIND(__INTTAB_CPU1 + 0x0A20) : {KEEP (*(.inttab1.intvec.81 )) } > pfls1
    .inttab_tc1_052 (TEXT) BIND(__INTTAB_CPU1 + 0x0A40) : {KEEP (*(.inttab1.intvec.82 )) } > pfls1
    .inttab_tc1_053 (TEXT) BIND(__INTTAB_CPU1 + 0x0A60) : {KEEP (*(.inttab1.intvec.83 )) } > pfls1
    .inttab_tc1_054 (TEXT) BIND(__INTTAB_CPU1 + 0x0A80) : {KEEP (*(.inttab1.intvec.84 )) } > pfls1
    .inttab_tc1_055 (TEXT) BIND(__INTTAB_CPU1 + 0x0AA0) : {KEEP (*(.inttab1.intvec.85 )) } > pfls1
    .inttab_tc1_056 (TEXT) BIND(__INTTAB_CPU1 + 0x0AC0) : {KEEP (*(.inttab1.intvec.86 )) } > pfls1
    .inttab_tc1_057 (TEXT) BIND(__INTTAB_CPU1 + 0x0AE0) : {KEEP (*(.inttab1.intvec.87 )) } > pfls1
    .inttab_tc1_058 (TEXT) BIND(__INTTAB_CPU1 + 0x0B00) : {KEEP (*(.inttab1.intvec.88 )) } > pfls1
    .inttab_tc1_059 (TEXT) BIND(__INTTAB_CPU1 + 0x0B20) : {KEEP (*(.inttab1.intvec.89 )) } > pfls1
    .inttab_tc1_05A (TEXT) BIND(__INTTAB_CPU1 + 0x0B40) : {KEEP (*(.inttab1.intvec.90 )) } > pfls1
    .inttab_tc1_05B (TEXT) BIND(__INTTAB_CPU1 + 0x0B60) : {KEEP (*(.inttab1.intvec.91 )) } > pfls1
    .inttab_tc1_05C (TEXT) BIND(__INTTAB_CPU1 + 0x0B80) : {KEEP (*(.inttab1.intvec.92 )) } > pfls1
    .inttab_tc1_05D (TEXT) BIND(__INTTAB_CPU1 + 0x0BA0) : {KEEP (*(.inttab1.intvec.93 )) } > pfls1
    .inttab_tc1_05E (TEXT) BIND(__INTTAB_CPU1 + 0x0BC0) : {KEEP (*(.inttab1.intvec.94 )) } > pfls1
    .inttab_tc1_05F (TEXT) BIND(__INTTAB_CPU1 + 0x0BE0) : {KEEP (*(.inttab1.intvec.95 )) } > pfls1
    .inttab_tc1_060 (TEXT) BIND(__INTTAB_CPU1 + 0x0C00) : {KEEP (*(.inttab1.intvec.96 )) } > pfls1
    .inttab_tc1_061 (TEXT) BIND(__INTTAB_CPU1 + 0x0C20) : {KEEP (*(.inttab1.intvec.97 )) } > pfls1
    .inttab_tc1_062 (TEXT) BIND(__INTTAB_CPU1 + 0x0C40) : {KEEP (*(.inttab1.intvec.98 )) } > pfls1
    .inttab_tc1_063 (TEXT) BIND(__INTTAB_CPU1 + 0x0C60) : {KEEP (*(.inttab1.intvec.99 )) } > pfls1
    .inttab_tc1_064 (TEXT) BIND(__INTTAB_CPU1 + 0x0C80) : {KEEP (*(.inttab1.intvec.100)) } > pfls1
    .inttab_tc1_065 (TEXT) BIND(__INTTAB_CPU1 + 0x0CA0) : {KEEP (*(.inttab1.intvec.101)) } > pfls1
    .inttab_tc1_066 (TEXT) BIND(__INTTAB_CPU1 + 0x0CC0) : {KEEP (*(.inttab1.intvec.102)) } > pfls1
    .inttab_tc1_067 (TEXT) BIND(__INTTAB_CPU1 + 0x0CE0) : {KEEP (*(.inttab1.intvec.103)) } > pfls1
    .inttab_tc1_068 (TEXT) BIND(__INTTAB_CPU1 + 0x0D00) : {KEEP (*(.inttab1.intvec.104)) } > pfls1
    .inttab_tc1_069 (TEXT) BIND(__INTTAB_CPU1 + 0x0D20) : {KEEP (*(.inttab1.intvec.105)) } > pfls1
    .inttab_tc1_06A (TEXT) BIND(__INTTAB_CPU1 + 0x0D40) : {KEEP (*(.inttab1.intvec.106)) } > pfls1
    .inttab_tc1_06B (TEXT) BIND(__INTTAB_CPU1 + 0x0D60) : {KEEP (*(.inttab1.intvec.107)) } > pfls1
    .inttab_tc1_06C (TEXT) BIND(__INTTAB_CPU1 + 0x0D80) : {KEEP (*(.inttab1.intvec.108)) } > pfls1
    .inttab_tc1_06D (TEXT) BIND(__INTTAB_CPU1 + 0x0DA0) : {KEEP (*(.inttab1.intvec.109)) } > pfls1
    .inttab_tc1_06E (TEXT) BIND(__INTTAB_CPU1 + 0x0DC0) : {KEEP (*(.inttab1.intvec.110)) } > pfls1
    .inttab_tc1_06F (TEXT) BIND(__INTTAB_CPU1 + 0x0DE0) : {KEEP (*(.inttab1.intvec.111)) } > pfls1
    .inttab_tc1_070 (TEXT) BIND(__INTTAB_CPU1 + 0x0E00) : {KEEP (*(.inttab1.intvec.112)) } > pfls1
    .inttab_tc1_071 (TEXT) BIND(__INTTAB_CPU1 + 0x0E20) : {KEEP (*(.inttab1.intvec.113)) } > pfls1
    .inttab_tc1_072 (TEXT) BIND(__INTTAB_CPU1 + 0x0E40) : {KEEP (*(.inttab1.intvec.114)) } > pfls1
    .inttab_tc1_073 (TEXT) BIND(__INTTAB_CPU1 + 0x0E60) : {KEEP (*(.inttab1.intvec.115)) } > pfls1
    .inttab_tc1_074 (TEXT) BIND(__INTTAB_CPU1 + 0x0E80) : {KEEP (*(.inttab1.intvec.116)) } > pfls1
    .inttab_tc1_075 (TEXT) BIND(__INTTAB_CPU1 + 0x0EA0) : {KEEP (*(.inttab1.intvec.117)) } > pfls1
    .inttab_tc1_076 (TEXT) BIND(__INTTAB_CPU1 + 0x0EC0) : {KEEP (*(.inttab1.intvec.118)) } > pfls1
    .inttab_tc1_077 (TEXT) BIND(__INTTAB_CPU1 + 0x0EE0) : {KEEP (*(.inttab1.intvec.119)) } > pfls1
    .inttab_tc1_078 (TEXT) BIND(__INTTAB_CPU1 + 0x0F00) : {KEEP (*(.inttab1.intvec.120)) } > pfls1
    .inttab_tc1_079 (TEXT) BIND(__INTTAB_CPU1 + 0x0F20) : {KEEP (*(.inttab1.intvec.121)) } > pfls1
    .inttab_tc1_07A (TEXT) BIND(__INTTAB_CPU1 + 0x0F40) : {KEEP (*(.inttab1.intvec.122)) } > pfls1
    .inttab_tc1_07B (TEXT) BIND(__INTTAB_CPU1 + 0x0F60) : {KEEP (*(.inttab1.intvec.123)) } > pfls1
    .inttab_tc1_07C (TEXT) BIND(__INTTAB_CPU1 + 0x0F80) : {KEEP (*(.inttab1.intvec.124)) } > pfls1
    .inttab_tc1_07D (TEXT) BIND(__INTTAB_CPU1 + 0x0FA0) : {KEEP (*(.inttab1.intvec.125)) } > pfls1
    .inttab_tc1_07E (TEXT) BIND(__INTTAB_CPU1 + 0x0FC0) : {KEEP (*(.inttab1.intvec.126)) } > pfls1
    .inttab_tc1_07F (TEXT) BIND(__INTTAB_CPU1 + 0x0FE0) : {KEEP (*(.inttab1.intvec.127)) } > pfls1
    .inttab_tc1_080 (TEXT) BIND(__INTTAB_CPU1 + 0x1000) : {KEEP (*(.inttab1.intvec.128)) } > pfls1
    .inttab_tc1_081 (TEXT) BIND(__INTTAB_CPU1 + 0x1020) : {KEEP (*(.inttab1.intvec.129)) } > pfls1
    .inttab_tc1_082 (TEXT) BIND(__INTTAB_CPU1 + 0x1040) : {KEEP (*(.inttab1.intvec.130)) } > pfls1
    .inttab_tc1_083 (TEXT) BIND(__INTTAB_CPU1 + 0x1060) : {KEEP (*(.inttab1.intvec.131)) } > pfls1
    .inttab_tc1_084 (TEXT) BIND(__INTTAB_CPU1 + 0x1080) : {KEEP (*(.inttab1.intvec.132)) } > pfls1
    .inttab_tc1_085 (TEXT) BIND(__INTTAB_CPU1 + 0x10A0) : {KEEP (*(.inttab1.intvec.133)) } > pfls1
    .inttab_tc1_086 (TEXT) BIND(__INTTAB_CPU1 + 0x10C0) : {KEEP (*(.inttab1.intvec.134)) } > pfls1
    .inttab_tc1_087 (TEXT) BIND(__INTTAB_CPU1 + 0x10E0) : {KEEP (*(.inttab1.intvec.135)) } > pfls1
    .inttab_tc1_088 (TEXT) BIND(__INTTAB_CPU1 + 0x1100) : {KEEP (*(.inttab1.intvec.136)) } > pfls1
    .inttab_tc1_089 (TEXT) BIND(__INTTAB_CPU1 + 0x1120) : {KEEP (*(.inttab1.intvec.137)) } > pfls1
    .inttab_tc1_08A (TEXT) BIND(__INTTAB_CPU1 + 0x1140) : {KEEP (*(.inttab1.intvec.138)) } > pfls1
    .inttab_tc1_08B (TEXT) BIND(__INTTAB_CPU1 + 0x1160) : {KEEP (*(.inttab1.intvec.139)) } > pfls1
    .inttab_tc1_08C (TEXT) BIND(__INTTAB_CPU1 + 0x1180) : {KEEP (*(.inttab1.intvec.140)) } > pfls1
    .inttab_tc1_08D (TEXT) BIND(__INTTAB_CPU1 + 0x11A0) : {KEEP (*(.inttab1.intvec.141)) } > pfls1
    .inttab_tc1_08E (TEXT) BIND(__INTTAB_CPU1 + 0x11C0) : {KEEP (*(.inttab1.intvec.142)) } > pfls1
    .inttab_tc1_08F (TEXT) BIND(__INTTAB_CPU1 + 0x11E0) : {KEEP (*(.inttab1.intvec.143)) } > pfls1
    .inttab_tc1_090 (TEXT) BIND(__INTTAB_CPU1 + 0x1200) : {KEEP (*(.inttab1.intvec.144)) } > pfls1
    .inttab_tc1_091 (TEXT) BIND(__INTTAB_CPU1 + 0x1220) : {KEEP (*(.inttab1.intvec.145)) } > pfls1
    .inttab_tc1_092 (TEXT) BIND(__INTTAB_CPU1 + 0x1240) : {KEEP (*(.inttab1.intvec.146)) } > pfls1
    .inttab_tc1_093 (TEXT) BIND(__INTTAB_CPU1 + 0x1260) : {KEEP (*(.inttab1.intvec.147)) } > pfls1
    .inttab_tc1_094 (TEXT) BIND(__INTTAB_CPU1 + 0x1280) : {KEEP (*(.inttab1.intvec.148)) } > pfls1
    .inttab_tc1_095 (TEXT) BIND(__INTTAB_CPU1 + 0x12A0) : {KEEP (*(.inttab1.intvec.149)) } > pfls1
    .inttab_tc1_096 (TEXT) BIND(__INTTAB_CPU1 + 0x12C0) : {KEEP (*(.inttab1.intvec.150)) } > pfls1
    .inttab_tc1_097 (TEXT) BIND(__INTTAB_CPU1 + 0x12E0) : {KEEP (*(.inttab1.intvec.151)) } > pfls1
    .inttab_tc1_098 (TEXT) BIND(__INTTAB_CPU1 + 0x1300) : {KEEP (*(.inttab1.intvec.152)) } > pfls1
    .inttab_tc1_099 (TEXT) BIND(__INTTAB_CPU1 + 0x1320) : {KEEP (*(.inttab1.intvec.153)) } > pfls1
    .inttab_tc1_09A (TEXT) BIND(__INTTAB_CPU1 + 0x1340) : {KEEP (*(.inttab1.intvec.154)) } > pfls1
    .inttab_tc1_09B (TEXT) BIND(__INTTAB_CPU1 + 0x1360) : {KEEP (*(.inttab1.intvec.155)) } > pfls1
    .inttab_tc1_09C (TEXT) BIND(__INTTAB_CPU1 + 0x1380) : {KEEP (*(.inttab1.intvec.156)) } > pfls1
    .inttab_tc1_09D (TEXT) BIND(__INTTAB_CPU1 + 0x13A0) : {KEEP (*(.inttab1.intvec.157)) } > pfls1
    .inttab_tc1_09E (TEXT) BIND(__INTTAB_CPU1 + 0x13C0) : {KEEP (*(.inttab1.intvec.158)) } > pfls1
    .inttab_tc1_09F (TEXT) BIND(__INTTAB_CPU1 + 0x13E0) : {KEEP (*(.inttab1.intvec.159)) } > pfls1
    .inttab_tc1_0A0 (TEXT) BIND(__INTTAB_CPU1 + 0x1400) : {KEEP (*(.inttab1.intvec.160)) } > pfls1
    .inttab_tc1_0A1 (TEXT) BIND(__INTTAB_CPU1 + 0x1420) : {KEEP (*(.inttab1.intvec.161)) } > pfls1
    .inttab_tc1_0A2 (TEXT) BIND(__INTTAB_CPU1 + 0x1440) : {KEEP (*(.inttab1.intvec.162)) } > pfls1
    .inttab_tc1_0A3 (TEXT) BIND(__INTTAB_CPU1 + 0x1460) : {KEEP (*(.inttab1.intvec.163)) } > pfls1
    .inttab_tc1_0A4 (TEXT) BIND(__INTTAB_CPU1 + 0x1480) : {KEEP (*(.inttab1.intvec.164)) } > pfls1
    .inttab_tc1_0A5 (TEXT) BIND(__INTTAB_CPU1 + 0x14A0) : {KEEP (*(.inttab1.intvec.165)) } > pfls1
    .inttab_tc1_0A6 (TEXT) BIND(__INTTAB_CPU1 + 0x14C0) : {KEEP (*(.inttab1.intvec.166)) } > pfls1
    .inttab_tc1_0A7 (TEXT) BIND(__INTTAB_CPU1 + 0x14E0) : {KEEP (*(.inttab1.intvec.167)) } > pfls1
    .inttab_tc1_0A8 (TEXT) BIND(__INTTAB_CPU1 + 0x1500) : {KEEP (*(.inttab1.intvec.168)) } > pfls1
    .inttab_tc1_0A9 (TEXT) BIND(__INTTAB_CPU1 + 0x1520) : {KEEP (*(.inttab1.intvec.169)) } > pfls1
    .inttab_tc1_0AA (TEXT) BIND(__INTTAB_CPU1 + 0x1540) : {KEEP (*(.inttab1.intvec.170)) } > pfls1
    .inttab_tc1_0AB (TEXT) BIND(__INTTAB_CPU1 + 0x1560) : {KEEP (*(.inttab1.intvec.171)) } > pfls1
    .inttab_tc1_0AC (TEXT) BIND(__INTTAB_CPU1 + 0x1580) : {KEEP (*(.inttab1.intvec.172)) } > pfls1
    .inttab_tc1_0AD (TEXT) BIND(__INTTAB_CPU1 + 0x15A0) : {KEEP (*(.inttab1.intvec.173)) } > pfls1
    .inttab_tc1_0AE (TEXT) BIND(__INTTAB_CPU1 + 0x15C0) : {KEEP (*(.inttab1.intvec.174)) } > pfls1
    .inttab_tc1_0AF (TEXT) BIND(__INTTAB_CPU1 + 0x15E0) : {KEEP (*(.inttab1.intvec.175)) } > pfls1
    .inttab_tc1_0B0 (TEXT) BIND(__INTTAB_CPU1 + 0x1600) : {KEEP (*(.inttab1.intvec.176)) } > pfls1
    .inttab_tc1_0B1 (TEXT) BIND(__INTTAB_CPU1 + 0x1620) : {KEEP (*(.inttab1.intvec.177)) } > pfls1
    .inttab_tc1_0B2 (TEXT) BIND(__INTTAB_CPU1 + 0x1640) : {KEEP (*(.inttab1.intvec.178)) } > pfls1
    .inttab_tc1_0B3 (TEXT) BIND(__INTTAB_CPU1 + 0x1660) : {KEEP (*(.inttab1.intvec.179)) } > pfls1
    .inttab_tc1_0B4 (TEXT) BIND(__INTTAB_CPU1 + 0x1680) : {KEEP (*(.inttab1.intvec.180)) } > pfls1
    .inttab_tc1_0B5 (TEXT) BIND(__INTTAB_CPU1 + 0x16A0) : {KEEP (*(.inttab1.intvec.181)) } > pfls1
    .inttab_tc1_0B6 (TEXT) BIND(__INTTAB_CPU1 + 0x16C0) : {KEEP (*(.inttab1.intvec.182)) } > pfls1
    .inttab_tc1_0B7 (TEXT) BIND(__INTTAB_CPU1 + 0x16E0) : {KEEP (*(.inttab1.intvec.183)) } > pfls1
    .inttab_tc1_0B8 (TEXT) BIND(__INTTAB_CPU1 + 0x1700) : {KEEP (*(.inttab1.intvec.184)) } > pfls1
    .inttab_tc1_0B9 (TEXT) BIND(__INTTAB_CPU1 + 0x1720) : {KEEP (*(.inttab1.intvec.185)) } > pfls1
    .inttab_tc1_0BA (TEXT) BIND(__INTTAB_CPU1 + 0x1740) : {KEEP (*(.inttab1.intvec.186)) } > pfls1
    .inttab_tc1_0BB (TEXT) BIND(__INTTAB_CPU1 + 0x1760) : {KEEP (*(.inttab1.intvec.187)) } > pfls1
    .inttab_tc1_0BC (TEXT) BIND(__INTTAB_CPU1 + 0x1780) : {KEEP (*(.inttab1.intvec.188)) } > pfls1
    .inttab_tc1_0BD (TEXT) BIND(__INTTAB_CPU1 + 0x17A0) : {KEEP (*(.inttab1.intvec.189)) } > pfls1
    .inttab_tc1_0BE (TEXT) BIND(__INTTAB_CPU1 + 0x17C0) : {KEEP (*(.inttab1.intvec.190)) } > pfls1
    .inttab_tc1_0BF (TEXT) BIND(__INTTAB_CPU1 + 0x17E0) : {KEEP (*(.inttab1.intvec.191)) } > pfls1
    .inttab_tc1_0C0 (TEXT) BIND(__INTTAB_CPU1 + 0x1800) : {KEEP (*(.inttab1.intvec.192)) } > pfls1
    .inttab_tc1_0C1 (TEXT) BIND(__INTTAB_CPU1 + 0x1820) : {KEEP (*(.inttab1.intvec.193)) } > pfls1
    .inttab_tc1_0C2 (TEXT) BIND(__INTTAB_CPU1 + 0x1840) : {KEEP (*(.inttab1.intvec.194)) } > pfls1
    .inttab_tc1_0C3 (TEXT) BIND(__INTTAB_CPU1 + 0x1860) : {KEEP (*(.inttab1.intvec.195)) } > pfls1
    .inttab_tc1_0C4 (TEXT) BIND(__INTTAB_CPU1 + 0x1880) : {KEEP (*(.inttab1.intvec.196)) } > pfls1
    .inttab_tc1_0C5 (TEXT) BIND(__INTTAB_CPU1 + 0x18A0) : {KEEP (*(.inttab1.intvec.197)) } > pfls1
    .inttab_tc1_0C6 (TEXT) BIND(__INTTAB_CPU1 + 0x18C0) : {KEEP (*(.inttab1.intvec.198)) } > pfls1
    .inttab_tc1_0C7 (TEXT) BIND(__INTTAB_CPU1 + 0x18E0) : {KEEP (*(.inttab1.intvec.199)) } > pfls1
    .inttab_tc1_0C8 (TEXT) BIND(__INTTAB_CPU1 + 0x1900) : {KEEP (*(.inttab1.intvec.200)) } > pfls1
    .inttab_tc1_0C9 (TEXT) BIND(__INTTAB_CPU1 + 0x1920) : {KEEP (*(.inttab1.intvec.201)) } > pfls1
    .inttab_tc1_0CA (TEXT) BIND(__INTTAB_CPU1 + 0x1940) : {KEEP (*(.inttab1.intvec.202)) } > pfls1
    .inttab_tc1_0CB (TEXT) BIND(__INTTAB_CPU1 + 0x1960) : {KEEP (*(.inttab1.intvec.203)) } > pfls1
    .inttab_tc1_0CC (TEXT) BIND(__INTTAB_CPU1 + 0x1980) : {KEEP (*(.inttab1.intvec.204)) } > pfls1
    .inttab_tc1_0CD (TEXT) BIND(__INTTAB_CPU1 + 0x19A0) : {KEEP (*(.inttab1.intvec.205)) } > pfls1
    .inttab_tc1_0CE (TEXT) BIND(__INTTAB_CPU1 + 0x19C0) : {KEEP (*(.inttab1.intvec.206)) } > pfls1
    .inttab_tc1_0CF (TEXT) BIND(__INTTAB_CPU1 + 0x19E0) : {KEEP (*(.inttab1.intvec.207)) } > pfls1
    .inttab_tc1_0D0 (TEXT) BIND(__INTTAB_CPU1 + 0x1A00) : {KEEP (*(.inttab1.intvec.208)) } > pfls1
    .inttab_tc1_0D1 (TEXT) BIND(__INTTAB_CPU1 + 0x1A20) : {KEEP (*(.inttab1.intvec.209)) } > pfls1
    .inttab_tc1_0D2 (TEXT) BIND(__INTTAB_CPU1 + 0x1A40) : {KEEP (*(.inttab1.intvec.210)) } > pfls1
    .inttab_tc1_0D3 (TEXT) BIND(__INTTAB_CPU1 + 0x1A60) : {KEEP (*(.inttab1.intvec.211)) } > pfls1
    .inttab_tc1_0D4 (TEXT) BIND(__INTTAB_CPU1 + 0x1A80) : {KEEP (*(.inttab1.intvec.212)) } > pfls1
    .inttab_tc1_0D5 (TEXT) BIND(__INTTAB_CPU1 + 0x1AA0) : {KEEP (*(.inttab1.intvec.213)) } > pfls1
    .inttab_tc1_0D6 (TEXT) BIND(__INTTAB_CPU1 + 0x1AC0) : {KEEP (*(.inttab1.intvec.214)) } > pfls1
    .inttab_tc1_0D7 (TEXT) BIND(__INTTAB_CPU1 + 0x1AE0) : {KEEP (*(.inttab1.intvec.215)) } > pfls1
    .inttab_tc1_0D8 (TEXT) BIND(__INTTAB_CPU1 + 0x1B00) : {KEEP (*(.inttab1.intvec.216)) } > pfls1
    .inttab_tc1_0D9 (TEXT) BIND(__INTTAB_CPU1 + 0x1B20) : {KEEP (*(.inttab1.intvec.217)) } > pfls1
    .inttab_tc1_0DA (TEXT) BIND(__INTTAB_CPU1 + 0x1B40) : {KEEP (*(.inttab1.intvec.218)) } > pfls1
    .inttab_tc1_0DB (TEXT) BIND(__INTTAB_CPU1 + 0x1B60) : {KEEP (*(.inttab1.intvec.219)) } > pfls1
    .inttab_tc1_0DC (TEXT) BIND(__INTTAB_CPU1 + 0x1B80) : {KEEP (*(.inttab1.intvec.220)) } > pfls1
    .inttab_tc1_0DD (TEXT) BIND(__INTTAB_CPU1 + 0x1BA0) : {KEEP (*(.inttab1.intvec.221)) } > pfls1
    .inttab_tc1_0DE (TEXT) BIND(__INTTAB_CPU1 + 0x1BC0) : {KEEP (*(.inttab1.intvec.222)) } > pfls1
    .inttab_tc1_0DF (TEXT) BIND(__INTTAB_CPU1 + 0x1BE0) : {KEEP (*(.inttab1.intvec.223)) } > pfls1
    .inttab_tc1_0E0 (TEXT) BIND(__INTTAB_CPU1 + 0x1C00) : {KEEP (*(.inttab1.intvec.224)) } > pfls1
    .inttab_tc1_0E1 (TEXT) BIND(__INTTAB_CPU1 + 0x1C20) : {KEEP (*(.inttab1.intvec.225)) } > pfls1
    .inttab_tc1_0E2 (TEXT) BIND(__INTTAB_CPU1 + 0x1C40) : {KEEP (*(.inttab1.intvec.226)) } > pfls1
    .inttab_tc1_0E3 (TEXT) BIND(__INTTAB_CPU1 + 0x1C60) : {KEEP (*(.inttab1.intvec.227)) } > pfls1
    .inttab_tc1_0E4 (TEXT) BIND(__INTTAB_CPU1 + 0x1C80) : {KEEP (*(.inttab1.intvec.228)) } > pfls1
    .inttab_tc1_0E5 (TEXT) BIND(__INTTAB_CPU1 + 0x1CA0) : {KEEP (*(.inttab1.intvec.229)) } > pfls1
    .inttab_tc1_0E6 (TEXT) BIND(__INTTAB_CPU1 + 0x1CC0) : {KEEP (*(.inttab1.intvec.230)) } > pfls1
    .inttab_tc1_0E7 (TEXT) BIND(__INTTAB_CPU1 + 0x1CE0) : {KEEP (*(.inttab1.intvec.231)) } > pfls1
    .inttab_tc1_0E8 (TEXT) BIND(__INTTAB_CPU1 + 0x1D00) : {KEEP (*(.inttab1.intvec.232)) } > pfls1
    .inttab_tc1_0E9 (TEXT) BIND(__INTTAB_CPU1 + 0x1D20) : {KEEP (*(.inttab1.intvec.233)) } > pfls1
    .inttab_tc1_0EA (TEXT) BIND(__INTTAB_CPU1 + 0x1D40) : {KEEP (*(.inttab1.intvec.234)) } > pfls1
    .inttab_tc1_0EB (TEXT) BIND(__INTTAB_CPU1 + 0x1D60) : {KEEP (*(.inttab1.intvec.235)) } > pfls1
    .inttab_tc1_0EC (TEXT) BIND(__INTTAB_CPU1 + 0x1D80) : {KEEP (*(.inttab1.intvec.236)) } > pfls1
    .inttab_tc1_0ED (TEXT) BIND(__INTTAB_CPU1 + 0x1DA0) : {KEEP (*(.inttab1.intvec.237)) } > pfls1
    .inttab_tc1_0EE (TEXT) BIND(__INTTAB_CPU1 + 0x1DC0) : {KEEP (*(.inttab1.intvec.238)) } > pfls1
    .inttab_tc1_0EF (TEXT) BIND(__INTTAB_CPU1 + 0x1DE0) : {KEEP (*(.inttab1.intvec.239)) } > pfls1
    .inttab_tc1_0F0 (TEXT) BIND(__INTTAB_CPU1 + 0x1E00) : {KEEP (*(.inttab1.intvec.240)) } > pfls1
    .inttab_tc1_0F1 (TEXT) BIND(__INTTAB_CPU1 + 0x1E20) : {KEEP (*(.inttab1.intvec.241)) } > pfls1
    .inttab_tc1_0F2 (TEXT) BIND(__INTTAB_CPU1 + 0x1E40) : {KEEP (*(.inttab1.intvec.242)) } > pfls1
    .inttab_tc1_0F3 (TEXT) BIND(__INTTAB_CPU1 + 0x1E60) : {KEEP (*(.inttab1.intvec.243)) } > pfls1
    .inttab_tc1_0F4 (TEXT) BIND(__INTTAB_CPU1 + 0x1E80) : {KEEP (*(.inttab1.intvec.244)) } > pfls1
    .inttab_tc1_0F5 (TEXT) BIND(__INTTAB_CPU1 + 0x1EA0) : {KEEP (*(.inttab1.intvec.245)) } > pfls1
    .inttab_tc1_0F6 (TEXT) BIND(__INTTAB_CPU1 + 0x1EC0) : {KEEP (*(.inttab1.intvec.246)) } > pfls1
    .inttab_tc1_0F7 (TEXT) BIND(__INTTAB_CPU1 + 0x1EE0) : {KEEP (*(.inttab1.intvec.247)) } > pfls1
    .inttab_tc1_0F8 (TEXT) BIND(__INTTAB_CPU1 + 0x1F00) : {KEEP (*(.inttab1.intvec.248)) } > pfls1
    .inttab_tc1_0F9 (TEXT) BIND(__INTTAB_CPU1 + 0x1F20) : {KEEP (*(.inttab1.intvec.249)) } > pfls1
    .inttab_tc1_0FA (TEXT) BIND(__INTTAB_CPU1 + 0x1F40) : {KEEP (*(.inttab1.intvec.250)) } > pfls1
    .inttab_tc1_0FB (TEXT) BIND(__INTTAB_CPU1 + 0x1F60) : {KEEP (*(.inttab1.intvec.251)) } > pfls1
    .inttab_tc1_0FC (TEXT) BIND(__INTTAB_CPU1 + 0x1F80) : {KEEP (*(.inttab1.intvec.252)) } > pfls1
    .inttab_tc1_0FD (TEXT) BIND(__INTTAB_CPU1 + 0x1FA0) : {KEEP (*(.inttab1.intvec.253)) } > pfls1
    .inttab_tc1_0FE (TEXT) BIND(__INTTAB_CPU1 + 0x1FC0) : {KEEP (*(.inttab1.intvec.254)) } > pfls1
    .inttab_tc1_0FF (TEXT) BIND(__INTTAB_CPU1 + 0x1FE0) : {KEEP (*(.inttab1.intvec.255)) } > pfls1

    /*CPU2 Interrupt Vector Table*/
    .inttab_tc2_000 (TEXT) BIND(__INTTAB_CPU2 + 0x0000) : {KEEP (*(.inttab2.intvec.0  )) } > pfls2
    .inttab_tc2_001 (TEXT) BIND(__INTTAB_CPU2 + 0x0020) : {KEEP (*(.inttab2.intvec.1  )) } > pfls2
    .inttab_tc2_002 (TEXT) BIND(__INTTAB_CPU2 + 0x0040) : {KEEP (*(.inttab2.intvec.2  )) } > pfls2
    .inttab_tc2_003 (TEXT) BIND(__INTTAB_CPU2 + 0x0060) : {KEEP (*(.inttab2.intvec.3  )) } > pfls2
    .inttab_tc2_004 (TEXT) BIND(__INTTAB_CPU2 + 0x0080) : {KEEP (*(.inttab2.intvec.4  )) } > pfls2
    .inttab_tc2_005 (TEXT) BIND(__INTTAB_CPU2 + 0x00A0) : {KEEP (*(.inttab2.intvec.5  )) } > pfls2
    .inttab_tc2_006 (TEXT) BIND(__INTTAB_CPU2 + 0x00C0) : {KEEP (*(.inttab2.intvec.6  )) } > pfls2
    .inttab_tc2_007 (TEXT) BIND(__INTTAB_CPU2 + 0x00E0) : {KEEP (*(.inttab2.intvec.7  )) } > pfls2
    .inttab_tc2_008 (TEXT) BIND(__INTTAB_CPU2 + 0x0100) : {KEEP (*(.inttab2.intvec.8  )) } > pfls2
    .inttab_tc2_009 (TEXT) BIND(__INTTAB_CPU2 + 0x0120) : {KEEP (*(.inttab2.intvec.9  )) } > pfls2
    .inttab_tc2_00A (TEXT) BIND(__INTTAB_CPU2 + 0x0140) : {KEEP (*(.inttab2.intvec.10 )) } > pfls2
    .inttab_tc2_00B (TEXT) BIND(__INTTAB_CPU2 + 0x0160) : {KEEP (*(.inttab2.intvec.11 )) } > pfls2
    .inttab_tc2_00C (TEXT) BIND(__INTTAB_CPU2 + 0x0180) : {KEEP (*(.inttab2.intvec.12 )) } > pfls2
    .inttab_tc2_00D (TEXT) BIND(__INTTAB_CPU2 + 0x01A0) : {KEEP (*(.inttab2.intvec.13 )) } > pfls2
    .inttab_tc2_00E (TEXT) BIND(__INTTAB_CPU2 + 0x01C0) : {KEEP (*(.inttab2.intvec.14 )) } > pfls2
    .inttab_tc2_00F (TEXT) BIND(__INTTAB_CPU2 + 0x01E0) : {KEEP (*(.inttab2.intvec.15 )) } > pfls2
    .inttab_tc2_010 (TEXT) BIND(__INTTAB_CPU2 + 0x0200) : {KEEP (*(.inttab2.intvec.16 )) } > pfls2
    .inttab_tc2_011 (TEXT) BIND(__INTTAB_CPU2 + 0x0220) : {KEEP (*(.inttab2.intvec.17 )) } > pfls2
    .inttab_tc2_012 (TEXT) BIND(__INTTAB_CPU2 + 0x0240) : {KEEP (*(.inttab2.intvec.18 )) } > pfls2
    .inttab_tc2_013 (TEXT) BIND(__INTTAB_CPU2 + 0x0260) : {KEEP (*(.inttab2.intvec.19 )) } > pfls2
    .inttab_tc2_014 (TEXT) BIND(__INTTAB_CPU2 + 0x0280) : {KEEP (*(.inttab2.intvec.20 )) } > pfls2
    .inttab_tc2_015 (TEXT) BIND(__INTTAB_CPU2 + 0x02A0) : {KEEP (*(.inttab2.intvec.21 )) } > pfls2
    .inttab_tc2_016 (TEXT) BIND(__INTTAB_CPU2 + 0x02C0) : {KEEP (*(.inttab2.intvec.22 )) } > pfls2
    .inttab_tc2_017 (TEXT) BIND(__INTTAB_CPU2 + 0x02E0) : {KEEP (*(.inttab2.intvec.23 )) } > pfls2
    .inttab_tc2_018 (TEXT) BIND(__INTTAB_CPU2 + 0x0300) : {KEEP (*(.inttab2.intvec.24 )) } > pfls2
    .inttab_tc2_019 (TEXT) BIND(__INTTAB_CPU2 + 0x0320) : {KEEP (*(.inttab2.intvec.25 )) } > pfls2
    .inttab_tc2_01A (TEXT) BIND(__INTTAB_CPU2 + 0x0340) : {KEEP (*(.inttab2.intvec.26 )) } > pfls2
    .inttab_tc2_01B (TEXT) BIND(__INTTAB_CPU2 + 0x0360) : {KEEP (*(.inttab2.intvec.27 )) } > pfls2
    .inttab_tc2_01C (TEXT) BIND(__INTTAB_CPU2 + 0x0380) : {KEEP (*(.inttab2.intvec.28 )) } > pfls2
    .inttab_tc2_01D (TEXT) BIND(__INTTAB_CPU2 + 0x03A0) : {KEEP (*(.inttab2.intvec.29 )) } > pfls2
    .inttab_tc2_01E (TEXT) BIND(__INTTAB_CPU2 + 0x03C0) : {KEEP (*(.inttab2.intvec.30 )) } > pfls2
    .inttab_tc2_01F (TEXT) BIND(__INTTAB_CPU2 + 0x03E0) : {KEEP (*(.inttab2.intvec.31 )) } > pfls2
    .inttab_tc2_020 (TEXT) BIND(__INTTAB_CPU2 + 0x0400) : {KEEP (*(.inttab2.intvec.32 )) } > pfls2
    .inttab_tc2_021 (TEXT) BIND(__INTTAB_CPU2 + 0x0420) : {KEEP (*(.inttab2.intvec.33 )) } > pfls2
    .inttab_tc2_022 (TEXT) BIND(__INTTAB_CPU2 + 0x0440) : {KEEP (*(.inttab2.intvec.34 )) } > pfls2
    .inttab_tc2_023 (TEXT) BIND(__INTTAB_CPU2 + 0x0460) : {KEEP (*(.inttab2.intvec.35 )) } > pfls2
    .inttab_tc2_024 (TEXT) BIND(__INTTAB_CPU2 + 0x0480) : {KEEP (*(.inttab2.intvec.36 )) } > pfls2
    .inttab_tc2_025 (TEXT) BIND(__INTTAB_CPU2 + 0x04A0) : {KEEP (*(.inttab2.intvec.37 )) } > pfls2
    .inttab_tc2_026 (TEXT) BIND(__INTTAB_CPU2 + 0x04C0) : {KEEP (*(.inttab2.intvec.38 )) } > pfls2
    .inttab_tc2_027 (TEXT) BIND(__INTTAB_CPU2 + 0x04E0) : {KEEP (*(.inttab2.intvec.39 )) } > pfls2
    .inttab_tc2_028 (TEXT) BIND(__INTTAB_CPU2 + 0x0500) : {KEEP (*(.inttab2.intvec.40 )) } > pfls2
    .inttab_tc2_029 (TEXT) BIND(__INTTAB_CPU2 + 0x0520) : {KEEP (*(.inttab2.intvec.41 )) } > pfls2
    .inttab_tc2_02A (TEXT) BIND(__INTTAB_CPU2 + 0x0540) : {KEEP (*(.inttab2.intvec.42 )) } > pfls2
    .inttab_tc2_02B (TEXT) BIND(__INTTAB_CPU2 + 0x0560) : {KEEP (*(.inttab2.intvec.43 )) } > pfls2
    .inttab_tc2_02C (TEXT) BIND(__INTTAB_CPU2 + 0x0580) : {KEEP (*(.inttab2.intvec.44 )) } > pfls2
    .inttab_tc2_02D (TEXT) BIND(__INTTAB_CPU2 + 0x05A0) : {KEEP (*(.inttab2.intvec.45 )) } > pfls2
    .inttab_tc2_02E (TEXT) BIND(__INTTAB_CPU2 + 0x05C0) : {KEEP (*(.inttab2.intvec.46 )) } > pfls2
    .inttab_tc2_02F (TEXT) BIND(__INTTAB_CPU2 + 0x05E0) : {KEEP (*(.inttab2.intvec.47 )) } > pfls2
    .inttab_tc2_030 (TEXT) BIND(__INTTAB_CPU2 + 0x0600) : {KEEP (*(.inttab2.intvec.48 )) } > pfls2
    .inttab_tc2_031 (TEXT) BIND(__INTTAB_CPU2 + 0x0620) : {KEEP (*(.inttab2.intvec.49 )) } > pfls2
    .inttab_tc2_032 (TEXT) BIND(__INTTAB_CPU2 + 0x0640) : {KEEP (*(.inttab2.intvec.50 )) } > pfls2
    .inttab_tc2_033 (TEXT) BIND(__INTTAB_CPU2 + 0x0660) : {KEEP (*(.inttab2.intvec.51 )) } > pfls2
    .inttab_tc2_034 (TEXT) BIND(__INTTAB_CPU2 + 0x0680) : {KEEP (*(.inttab2.intvec.52 )) } > pfls2
    .inttab_tc2_035 (TEXT) BIND(__INTTAB_CPU2 + 0x06A0) : {KEEP (*(.inttab2.intvec.53 )) } > pfls2
    .inttab_tc2_036 (TEXT) BIND(__INTTAB_CPU2 + 0x06C0) : {KEEP (*(.inttab2.intvec.54 )) } > pfls2
    .inttab_tc2_037 (TEXT) BIND(__INTTAB_CPU2 + 0x06E0) : {KEEP (*(.inttab2.intvec.55 )) } > pfls2
    .inttab_tc2_038 (TEXT) BIND(__INTTAB_CPU2 + 0x0700) : {KEEP (*(.inttab2.intvec.56 )) } > pfls2
    .inttab_tc2_039 (TEXT) BIND(__INTTAB_CPU2 + 0x0720) : {KEEP (*(.inttab2.intvec.57 )) } > pfls2
    .inttab_tc2_03A (TEXT) BIND(__INTTAB_CPU2 + 0x0740) : {KEEP (*(.inttab2.intvec.58 )) } > pfls2
    .inttab_tc2_03B (TEXT) BIND(__INTTAB_CPU2 + 0x0760) : {KEEP (*(.inttab2.intvec.59 )) } > pfls2
    .inttab_tc2_03C (TEXT) BIND(__INTTAB_CPU2 + 0x0780) : {KEEP (*(.inttab2.intvec.60 )) } > pfls2
    .inttab_tc2_03D (TEXT) BIND(__INTTAB_CPU2 + 0x07A0) : {KEEP (*(.inttab2.intvec.61 )) } > pfls2
    .inttab_tc2_03E (TEXT) BIND(__INTTAB_CPU2 + 0x07C0) : {KEEP (*(.inttab2.intvec.62 )) } > pfls2
    .inttab_tc2_03F (TEXT) BIND(__INTTAB_CPU2 + 0x07E0) : {KEEP (*(.inttab2.intvec.63 )) } > pfls2
    .inttab_tc2_040 (TEXT) BIND(__INTTAB_CPU2 + 0x0800) : {KEEP (*(.inttab2.intvec.64 )) } > pfls2
    .inttab_tc2_041 (TEXT) BIND(__INTTAB_CPU2 + 0x0820) : {KEEP (*(.inttab2.intvec.65 )) } > pfls2
    .inttab_tc2_042 (TEXT) BIND(__INTTAB_CPU2 + 0x0840) : {KEEP (*(.inttab2.intvec.66 )) } > pfls2
    .inttab_tc2_043 (TEXT) BIND(__INTTAB_CPU2 + 0x0860) : {KEEP (*(.inttab2.intvec.67 )) } > pfls2
    .inttab_tc2_044 (TEXT) BIND(__INTTAB_CPU2 + 0x0880) : {KEEP (*(.inttab2.intvec.68 )) } > pfls2
    .inttab_tc2_045 (TEXT) BIND(__INTTAB_CPU2 + 0x08A0) : {KEEP (*(.inttab2.intvec.69 )) } > pfls2
    .inttab_tc2_046 (TEXT) BIND(__INTTAB_CPU2 + 0x08C0) : {KEEP (*(.inttab2.intvec.70 )) } > pfls2
    .inttab_tc2_047 (TEXT) BIND(__INTTAB_CPU2 + 0x08E0) : {KEEP (*(.inttab2.intvec.71 )) } > pfls2
    .inttab_tc2_048 (TEXT) BIND(__INTTAB_CPU2 + 0x0900) : {KEEP (*(.inttab2.intvec.72 )) } > pfls2
    .inttab_tc2_049 (TEXT) BIND(__INTTAB_CPU2 + 0x0920) : {KEEP (*(.inttab2.intvec.73 )) } > pfls2
    .inttab_tc2_04A (TEXT) BIND(__INTTAB_CPU2 + 0x0940) : {KEEP (*(.inttab2.intvec.74 )) } > pfls2
    .inttab_tc2_04B (TEXT) BIND(__INTTAB_CPU2 + 0x0960) : {KEEP (*(.inttab2.intvec.75 )) } > pfls2
    .inttab_tc2_04C (TEXT) BIND(__INTTAB_CPU2 + 0x0980) : {KEEP (*(.inttab2.intvec.76 )) } > pfls2
    .inttab_tc2_04D (TEXT) BIND(__INTTAB_CPU2 + 0x09A0) : {KEEP (*(.inttab2.intvec.77 )) } > pfls2
    .inttab_tc2_04E (TEXT) BIND(__INTTAB_CPU2 + 0x09C0) : {KEEP (*(.inttab2.intvec.78 )) } > pfls2
    .inttab_tc2_04F (TEXT) BIND(__INTTAB_CPU2 + 0x09E0) : {KEEP (*(.inttab2.intvec.79 )) } > pfls2
    .inttab_tc2_050 (TEXT) BIND(__INTTAB_CPU2 + 0x0A00) : {KEEP (*(.inttab2.intvec.80 )) } > pfls2
    .inttab_tc2_051 (TEXT) BIND(__INTTAB_CPU2 + 0x0A20) : {KEEP (*(.inttab2.intvec.81 )) } > pfls2
    .inttab_tc2_052 (TEXT) BIND(__INTTAB_CPU2 + 0x0A40) : {KEEP (*(.inttab2.intvec.82 )) } > pfls2
    .inttab_tc2_053 (TEXT) BIND(__INTTAB_CPU2 + 0x0A60) : {KEEP (*(.inttab2.intvec.83 )) } > pfls2
    .inttab_tc2_054 (TEXT) BIND(__INTTAB_CPU2 + 0x0A80) : {KEEP (*(.inttab2.intvec.84 )) } > pfls2
    .inttab_tc2_055 (TEXT) BIND(__INTTAB_CPU2 + 0x0AA0) : {KEEP (*(.inttab2.intvec.85 )) } > pfls2
    .inttab_tc2_056 (TEXT) BIND(__INTTAB_CPU2 + 0x0AC0) : {KEEP (*(.inttab2.intvec.86 )) } > pfls2
    .inttab_tc2_057 (TEXT) BIND(__INTTAB_CPU2 + 0x0AE0) : {KEEP (*(.inttab2.intvec.87 )) } > pfls2
    .inttab_tc2_058 (TEXT) BIND(__INTTAB_CPU2 + 0x0B00) : {KEEP (*(.inttab2.intvec.88 )) } > pfls2
    .inttab_tc2_059 (TEXT) BIND(__INTTAB_CPU2 + 0x0B20) : {KEEP (*(.inttab2.intvec.89 )) } > pfls2
    .inttab_tc2_05A (TEXT) BIND(__INTTAB_CPU2 + 0x0B40) : {KEEP (*(.inttab2.intvec.90 )) } > pfls2
    .inttab_tc2_05B (TEXT) BIND(__INTTAB_CPU2 + 0x0B60) : {KEEP (*(.inttab2.intvec.91 )) } > pfls2
    .inttab_tc2_05C (TEXT) BIND(__INTTAB_CPU2 + 0x0B80) : {KEEP (*(.inttab2.intvec.92 )) } > pfls2
    .inttab_tc2_05D (TEXT) BIND(__INTTAB_CPU2 + 0x0BA0) : {KEEP (*(.inttab2.intvec.93 )) } > pfls2
    .inttab_tc2_05E (TEXT) BIND(__INTTAB_CPU2 + 0x0BC0) : {KEEP (*(.inttab2.intvec.94 )) } > pfls2
    .inttab_tc2_05F (TEXT) BIND(__INTTAB_CPU2 + 0x0BE0) : {KEEP (*(.inttab2.intvec.95 )) } > pfls2
    .inttab_tc2_060 (TEXT) BIND(__INTTAB_CPU2 + 0x0C00) : {KEEP (*(.inttab2.intvec.96 )) } > pfls2
    .inttab_tc2_061 (TEXT) BIND(__INTTAB_CPU2 + 0x0C20) : {KEEP (*(.inttab2.intvec.97 )) } > pfls2
    .inttab_tc2_062 (TEXT) BIND(__INTTAB_CPU2 + 0x0C40) : {KEEP (*(.inttab2.intvec.98 )) } > pfls2
    .inttab_tc2_063 (TEXT) BIND(__INTTAB_CPU2 + 0x0C60) : {KEEP (*(.inttab2.intvec.99 )) } > pfls2
    .inttab_tc2_064 (TEXT) BIND(__INTTAB_CPU2 + 0x0C80) : {KEEP (*(.inttab2.intvec.100)) } > pfls2
    .inttab_tc2_065 (TEXT) BIND(__INTTAB_CPU2 + 0x0CA0) : {KEEP (*(.inttab2.intvec.101)) } > pfls2
    .inttab_tc2_066 (TEXT) BIND(__INTTAB_CPU2 + 0x0CC0) : {KEEP (*(.inttab2.intvec.102)) } > pfls2
    .inttab_tc2_067 (TEXT) BIND(__INTTAB_CPU2 + 0x0CE0) : {KEEP (*(.inttab2.intvec.103)) } > pfls2
    .inttab_tc2_068 (TEXT) BIND(__INTTAB_CPU2 + 0x0D00) : {KEEP (*(.inttab2.intvec.104)) } > pfls2
    .inttab_tc2_069 (TEXT) BIND(__INTTAB_CPU2 + 0x0D20) : {KEEP (*(.inttab2.intvec.105)) } > pfls2
    .inttab_tc2_06A (TEXT) BIND(__INTTAB_CPU2 + 0x0D40) : {KEEP (*(.inttab2.intvec.106)) } > pfls2
    .inttab_tc2_06B (TEXT) BIND(__INTTAB_CPU2 + 0x0D60) : {KEEP (*(.inttab2.intvec.107)) } > pfls2
    .inttab_tc2_06C (TEXT) BIND(__INTTAB_CPU2 + 0x0D80) : {KEEP (*(.inttab2.intvec.108)) } > pfls2
    .inttab_tc2_06D (TEXT) BIND(__INTTAB_CPU2 + 0x0DA0) : {KEEP (*(.inttab2.intvec.109)) } > pfls2
    .inttab_tc2_06E (TEXT) BIND(__INTTAB_CPU2 + 0x0DC0) : {KEEP (*(.inttab2.intvec.110)) } > pfls2
    .inttab_tc2_06F (TEXT) BIND(__INTTAB_CPU2 + 0x0DE0) : {KEEP (*(.inttab2.intvec.111)) } > pfls2
    .inttab_tc2_070 (TEXT) BIND(__INTTAB_CPU2 + 0x0E00) : {KEEP (*(.inttab2.intvec.112)) } > pfls2
    .inttab_tc2_071 (TEXT) BIND(__INTTAB_CPU2 + 0x0E20) : {KEEP (*(.inttab2.intvec.113)) } > pfls2
    .inttab_tc2_072 (TEXT) BIND(__INTTAB_CPU2 + 0x0E40) : {KEEP (*(.inttab2.intvec.114)) } > pfls2
    .inttab_tc2_073 (TEXT) BIND(__INTTAB_CPU2 + 0x0E60) : {KEEP (*(.inttab2.intvec.115)) } > pfls2
    .inttab_tc2_074 (TEXT) BIND(__INTTAB_CPU2 + 0x0E80) : {KEEP (*(.inttab2.intvec.116)) } > pfls2
    .inttab_tc2_075 (TEXT) BIND(__INTTAB_CPU2 + 0x0EA0) : {KEEP (*(.inttab2.intvec.117)) } > pfls2
    .inttab_tc2_076 (TEXT) BIND(__INTTAB_CPU2 + 0x0EC0) : {KEEP (*(.inttab2.intvec.118)) } > pfls2
    .inttab_tc2_077 (TEXT) BIND(__INTTAB_CPU2 + 0x0EE0) : {KEEP (*(.inttab2.intvec.119)) } > pfls2
    .inttab_tc2_078 (TEXT) BIND(__INTTAB_CPU2 + 0x0F00) : {KEEP (*(.inttab2.intvec.120)) } > pfls2
    .inttab_tc2_079 (TEXT) BIND(__INTTAB_CPU2 + 0x0F20) : {KEEP (*(.inttab2.intvec.121)) } > pfls2
    .inttab_tc2_07A (TEXT) BIND(__INTTAB_CPU2 + 0x0F40) : {KEEP (*(.inttab2.intvec.122)) } > pfls2
    .inttab_tc2_07B (TEXT) BIND(__INTTAB_CPU2 + 0x0F60) : {KEEP (*(.inttab2.intvec.123)) } > pfls2
    .inttab_tc2_07C (TEXT) BIND(__INTTAB_CPU2 + 0x0F80) : {KEEP (*(.inttab2.intvec.124)) } > pfls2
    .inttab_tc2_07D (TEXT) BIND(__INTTAB_CPU2 + 0x0FA0) : {KEEP (*(.inttab2.intvec.125)) } > pfls2
    .inttab_tc2_07E (TEXT) BIND(__INTTAB_CPU2 + 0x0FC0) : {KEEP (*(.inttab2.intvec.126)) } > pfls2
    .inttab_tc2_07F (TEXT) BIND(__INTTAB_CPU2 + 0x0FE0) : {KEEP (*(.inttab2.intvec.127)) } > pfls2
    .inttab_tc2_080 (TEXT) BIND(__INTTAB_CPU2 + 0x1000) : {KEEP (*(.inttab2.intvec.128)) } > pfls2
    .inttab_tc2_081 (TEXT) BIND(__INTTAB_CPU2 + 0x1020) : {KEEP (*(.inttab2.intvec.129)) } > pfls2
    .inttab_tc2_082 (TEXT) BIND(__INTTAB_CPU2 + 0x1040) : {KEEP (*(.inttab2.intvec.130)) } > pfls2
    .inttab_tc2_083 (TEXT) BIND(__INTTAB_CPU2 + 0x1060) : {KEEP (*(.inttab2.intvec.131)) } > pfls2
    .inttab_tc2_084 (TEXT) BIND(__INTTAB_CPU2 + 0x1080) : {KEEP (*(.inttab2.intvec.132)) } > pfls2
    .inttab_tc2_085 (TEXT) BIND(__INTTAB_CPU2 + 0x10A0) : {KEEP (*(.inttab2.intvec.133)) } > pfls2
    .inttab_tc2_086 (TEXT) BIND(__INTTAB_CPU2 + 0x10C0) : {KEEP (*(.inttab2.intvec.134)) } > pfls2
    .inttab_tc2_087 (TEXT) BIND(__INTTAB_CPU2 + 0x10E0) : {KEEP (*(.inttab2.intvec.135)) } > pfls2
    .inttab_tc2_088 (TEXT) BIND(__INTTAB_CPU2 + 0x1100) : {KEEP (*(.inttab2.intvec.136)) } > pfls2
    .inttab_tc2_089 (TEXT) BIND(__INTTAB_CPU2 + 0x1120) : {KEEP (*(.inttab2.intvec.137)) } > pfls2
    .inttab_tc2_08A (TEXT) BIND(__INTTAB_CPU2 + 0x1140) : {KEEP (*(.inttab2.intvec.138)) } > pfls2
    .inttab_tc2_08B (TEXT) BIND(__INTTAB_CPU2 + 0x1160) : {KEEP (*(.inttab2.intvec.139)) } > pfls2
    .inttab_tc2_08C (TEXT) BIND(__INTTAB_CPU2 + 0x1180) : {KEEP (*(.inttab2.intvec.140)) } > pfls2
    .inttab_tc2_08D (TEXT) BIND(__INTTAB_CPU2 + 0x11A0) : {KEEP (*(.inttab2.intvec.141)) } > pfls2
    .inttab_tc2_08E (TEXT) BIND(__INTTAB_CPU2 + 0x11C0) : {KEEP (*(.inttab2.intvec.142)) } > pfls2
    .inttab_tc2_08F (TEXT) BIND(__INTTAB_CPU2 + 0x11E0) : {KEEP (*(.inttab2.intvec.143)) } > pfls2
    .inttab_tc2_090 (TEXT) BIND(__INTTAB_CPU2 + 0x1200) : {KEEP (*(.inttab2.intvec.144)) } > pfls2
    .inttab_tc2_091 (TEXT) BIND(__INTTAB_CPU2 + 0x1220) : {KEEP (*(.inttab2.intvec.145)) } > pfls2
    .inttab_tc2_092 (TEXT) BIND(__INTTAB_CPU2 + 0x1240) : {KEEP (*(.inttab2.intvec.146)) } > pfls2
    .inttab_tc2_093 (TEXT) BIND(__INTTAB_CPU2 + 0x1260) : {KEEP (*(.inttab2.intvec.147)) } > pfls2
    .inttab_tc2_094 (TEXT) BIND(__INTTAB_CPU2 + 0x1280) : {KEEP (*(.inttab2.intvec.148)) } > pfls2
    .inttab_tc2_095 (TEXT) BIND(__INTTAB_CPU2 + 0x12A0) : {KEEP (*(.inttab2.intvec.149)) } > pfls2
    .inttab_tc2_096 (TEXT) BIND(__INTTAB_CPU2 + 0x12C0) : {KEEP (*(.inttab2.intvec.150)) } > pfls2
    .inttab_tc2_097 (TEXT) BIND(__INTTAB_CPU2 + 0x12E0) : {KEEP (*(.inttab2.intvec.151)) } > pfls2
    .inttab_tc2_098 (TEXT) BIND(__INTTAB_CPU2 + 0x1300) : {KEEP (*(.inttab2.intvec.152)) } > pfls2
    .inttab_tc2_099 (TEXT) BIND(__INTTAB_CPU2 + 0x1320) : {KEEP (*(.inttab2.intvec.153)) } > pfls2
    .inttab_tc2_09A (TEXT) BIND(__INTTAB_CPU2 + 0x1340) : {KEEP (*(.inttab2.intvec.154)) } > pfls2
    .inttab_tc2_09B (TEXT) BIND(__INTTAB_CPU2 + 0x1360) : {KEEP (*(.inttab2.intvec.155)) } > pfls2
    .inttab_tc2_09C (TEXT) BIND(__INTTAB_CPU2 + 0x1380) : {KEEP (*(.inttab2.intvec.156)) } > pfls2
    .inttab_tc2_09D (TEXT) BIND(__INTTAB_CPU2 + 0x13A0) : {KEEP (*(.inttab2.intvec.157)) } > pfls2
    .inttab_tc2_09E (TEXT) BIND(__INTTAB_CPU2 + 0x13C0) : {KEEP (*(.inttab2.intvec.158)) } > pfls2
    .inttab_tc2_09F (TEXT) BIND(__INTTAB_CPU2 + 0x13E0) : {KEEP (*(.inttab2.intvec.159)) } > pfls2
    .inttab_tc2_0A0 (TEXT) BIND(__INTTAB_CPU2 + 0x1400) : {KEEP (*(.inttab2.intvec.160)) } > pfls2
    .inttab_tc2_0A1 (TEXT) BIND(__INTTAB_CPU2 + 0x1420) : {KEEP (*(.inttab2.intvec.161)) } > pfls2
    .inttab_tc2_0A2 (TEXT) BIND(__INTTAB_CPU2 + 0x1440) : {KEEP (*(.inttab2.intvec.162)) } > pfls2
    .inttab_tc2_0A3 (TEXT) BIND(__INTTAB_CPU2 + 0x1460) : {KEEP (*(.inttab2.intvec.163)) } > pfls2
    .inttab_tc2_0A4 (TEXT) BIND(__INTTAB_CPU2 + 0x1480) : {KEEP (*(.inttab2.intvec.164)) } > pfls2
    .inttab_tc2_0A5 (TEXT) BIND(__INTTAB_CPU2 + 0x14A0) : {KEEP (*(.inttab2.intvec.165)) } > pfls2
    .inttab_tc2_0A6 (TEXT) BIND(__INTTAB_CPU2 + 0x14C0) : {KEEP (*(.inttab2.intvec.166)) } > pfls2
    .inttab_tc2_0A7 (TEXT) BIND(__INTTAB_CPU2 + 0x14E0) : {KEEP (*(.inttab2.intvec.167)) } > pfls2
    .inttab_tc2_0A8 (TEXT) BIND(__INTTAB_CPU2 + 0x1500) : {KEEP (*(.inttab2.intvec.168)) } > pfls2
    .inttab_tc2_0A9 (TEXT) BIND(__INTTAB_CPU2 + 0x1520) : {KEEP (*(.inttab2.intvec.169)) } > pfls2
    .inttab_tc2_0AA (TEXT) BIND(__INTTAB_CPU2 + 0x1540) : {KEEP (*(.inttab2.intvec.170)) } > pfls2
    .inttab_tc2_0AB (TEXT) BIND(__INTTAB_CPU2 + 0x1560) : {KEEP (*(.inttab2.intvec.171)) } > pfls2
    .inttab_tc2_0AC (TEXT) BIND(__INTTAB_CPU2 + 0x1580) : {KEEP (*(.inttab2.intvec.172)) } > pfls2
    .inttab_tc2_0AD (TEXT) BIND(__INTTAB_CPU2 + 0x15A0) : {KEEP (*(.inttab2.intvec.173)) } > pfls2
    .inttab_tc2_0AE (TEXT) BIND(__INTTAB_CPU2 + 0x15C0) : {KEEP (*(.inttab2.intvec.174)) } > pfls2
    .inttab_tc2_0AF (TEXT) BIND(__INTTAB_CPU2 + 0x15E0) : {KEEP (*(.inttab2.intvec.175)) } > pfls2
    .inttab_tc2_0B0 (TEXT) BIND(__INTTAB_CPU2 + 0x1600) : {KEEP (*(.inttab2.intvec.176)) } > pfls2
    .inttab_tc2_0B1 (TEXT) BIND(__INTTAB_CPU2 + 0x1620) : {KEEP (*(.inttab2.intvec.177)) } > pfls2
    .inttab_tc2_0B2 (TEXT) BIND(__INTTAB_CPU2 + 0x1640) : {KEEP (*(.inttab2.intvec.178)) } > pfls2
    .inttab_tc2_0B3 (TEXT) BIND(__INTTAB_CPU2 + 0x1660) : {KEEP (*(.inttab2.intvec.179)) } > pfls2
    .inttab_tc2_0B4 (TEXT) BIND(__INTTAB_CPU2 + 0x1680) : {KEEP (*(.inttab2.intvec.180)) } > pfls2
    .inttab_tc2_0B5 (TEXT) BIND(__INTTAB_CPU2 + 0x16A0) : {KEEP (*(.inttab2.intvec.181)) } > pfls2
    .inttab_tc2_0B6 (TEXT) BIND(__INTTAB_CPU2 + 0x16C0) : {KEEP (*(.inttab2.intvec.182)) } > pfls2
    .inttab_tc2_0B7 (TEXT) BIND(__INTTAB_CPU2 + 0x16E0) : {KEEP (*(.inttab2.intvec.183)) } > pfls2
    .inttab_tc2_0B8 (TEXT) BIND(__INTTAB_CPU2 + 0x1700) : {KEEP (*(.inttab2.intvec.184)) } > pfls2
    .inttab_tc2_0B9 (TEXT) BIND(__INTTAB_CPU2 + 0x1720) : {KEEP (*(.inttab2.intvec.185)) } > pfls2
    .inttab_tc2_0BA (TEXT) BIND(__INTTAB_CPU2 + 0x1740) : {KEEP (*(.inttab2.intvec.186)) } > pfls2
    .inttab_tc2_0BB (TEXT) BIND(__INTTAB_CPU2 + 0x1760) : {KEEP (*(.inttab2.intvec.187)) } > pfls2
    .inttab_tc2_0BC (TEXT) BIND(__INTTAB_CPU2 + 0x1780) : {KEEP (*(.inttab2.intvec.188)) } > pfls2
    .inttab_tc2_0BD (TEXT) BIND(__INTTAB_CPU2 + 0x17A0) : {KEEP (*(.inttab2.intvec.189)) } > pfls2
    .inttab_tc2_0BE (TEXT) BIND(__INTTAB_CPU2 + 0x17C0) : {KEEP (*(.inttab2.intvec.190)) } > pfls2
    .inttab_tc2_0BF (TEXT) BIND(__INTTAB_CPU2 + 0x17E0) : {KEEP (*(.inttab2.intvec.191)) } > pfls2
    .inttab_tc2_0C0 (TEXT) BIND(__INTTAB_CPU2 + 0x1800) : {KEEP (*(.inttab2.intvec.192)) } > pfls2
    .inttab_tc2_0C1 (TEXT) BIND(__INTTAB_CPU2 + 0x1820) : {KEEP (*(.inttab2.intvec.193)) } > pfls2
    .inttab_tc2_0C2 (TEXT) BIND(__INTTAB_CPU2 + 0x1840) : {KEEP (*(.inttab2.intvec.194)) } > pfls2
    .inttab_tc2_0C3 (TEXT) BIND(__INTTAB_CPU2 + 0x1860) : {KEEP (*(.inttab2.intvec.195)) } > pfls2
    .inttab_tc2_0C4 (TEXT) BIND(__INTTAB_CPU2 + 0x1880) : {KEEP (*(.inttab2.intvec.196)) } > pfls2
    .inttab_tc2_0C5 (TEXT) BIND(__INTTAB_CPU2 + 0x18A0) : {KEEP (*(.inttab2.intvec.197)) } > pfls2
    .inttab_tc2_0C6 (TEXT) BIND(__INTTAB_CPU2 + 0x18C0) : {KEEP (*(.inttab2.intvec.198)) } > pfls2
    .inttab_tc2_0C7 (TEXT) BIND(__INTTAB_CPU2 + 0x18E0) : {KEEP (*(.inttab2.intvec.199)) } > pfls2
    .inttab_tc2_0C8 (TEXT) BIND(__INTTAB_CPU2 + 0x1900) : {KEEP (*(.inttab2.intvec.200)) } > pfls2
    .inttab_tc2_0C9 (TEXT) BIND(__INTTAB_CPU2 + 0x1920) : {KEEP (*(.inttab2.intvec.201)) } > pfls2
    .inttab_tc2_0CA (TEXT) BIND(__INTTAB_CPU2 + 0x1940) : {KEEP (*(.inttab2.intvec.202)) } > pfls2
    .inttab_tc2_0CB (TEXT) BIND(__INTTAB_CPU2 + 0x1960) : {KEEP (*(.inttab2.intvec.203)) } > pfls2
    .inttab_tc2_0CC (TEXT) BIND(__INTTAB_CPU2 + 0x1980) : {KEEP (*(.inttab2.intvec.204)) } > pfls2
    .inttab_tc2_0CD (TEXT) BIND(__INTTAB_CPU2 + 0x19A0) : {KEEP (*(.inttab2.intvec.205)) } > pfls2
    .inttab_tc2_0CE (TEXT) BIND(__INTTAB_CPU2 + 0x19C0) : {KEEP (*(.inttab2.intvec.206)) } > pfls2
    .inttab_tc2_0CF (TEXT) BIND(__INTTAB_CPU2 + 0x19E0) : {KEEP (*(.inttab2.intvec.207)) } > pfls2
    .inttab_tc2_0D0 (TEXT) BIND(__INTTAB_CPU2 + 0x1A00) : {KEEP (*(.inttab2.intvec.208)) } > pfls2
    .inttab_tc2_0D1 (TEXT) BIND(__INTTAB_CPU2 + 0x1A20) : {KEEP (*(.inttab2.intvec.209)) } > pfls2
    .inttab_tc2_0D2 (TEXT) BIND(__INTTAB_CPU2 + 0x1A40) : {KEEP (*(.inttab2.intvec.210)) } > pfls2
    .inttab_tc2_0D3 (TEXT) BIND(__INTTAB_CPU2 + 0x1A60) : {KEEP (*(.inttab2.intvec.211)) } > pfls2
    .inttab_tc2_0D4 (TEXT) BIND(__INTTAB_CPU2 + 0x1A80) : {KEEP (*(.inttab2.intvec.212)) } > pfls2
    .inttab_tc2_0D5 (TEXT) BIND(__INTTAB_CPU2 + 0x1AA0) : {KEEP (*(.inttab2.intvec.213)) } > pfls2
    .inttab_tc2_0D6 (TEXT) BIND(__INTTAB_CPU2 + 0x1AC0) : {KEEP (*(.inttab2.intvec.214)) } > pfls2
    .inttab_tc2_0D7 (TEXT) BIND(__INTTAB_CPU2 + 0x1AE0) : {KEEP (*(.inttab2.intvec.215)) } > pfls2
    .inttab_tc2_0D8 (TEXT) BIND(__INTTAB_CPU2 + 0x1B00) : {KEEP (*(.inttab2.intvec.216)) } > pfls2
    .inttab_tc2_0D9 (TEXT) BIND(__INTTAB_CPU2 + 0x1B20) : {KEEP (*(.inttab2.intvec.217)) } > pfls2
    .inttab_tc2_0DA (TEXT) BIND(__INTTAB_CPU2 + 0x1B40) : {KEEP (*(.inttab2.intvec.218)) } > pfls2
    .inttab_tc2_0DB (TEXT) BIND(__INTTAB_CPU2 + 0x1B60) : {KEEP (*(.inttab2.intvec.219)) } > pfls2
    .inttab_tc2_0DC (TEXT) BIND(__INTTAB_CPU2 + 0x1B80) : {KEEP (*(.inttab2.intvec.220)) } > pfls2
    .inttab_tc2_0DD (TEXT) BIND(__INTTAB_CPU2 + 0x1BA0) : {KEEP (*(.inttab2.intvec.221)) } > pfls2
    .inttab_tc2_0DE (TEXT) BIND(__INTTAB_CPU2 + 0x1BC0) : {KEEP (*(.inttab2.intvec.222)) } > pfls2
    .inttab_tc2_0DF (TEXT) BIND(__INTTAB_CPU2 + 0x1BE0) : {KEEP (*(.inttab2.intvec.223)) } > pfls2
    .inttab_tc2_0E0 (TEXT) BIND(__INTTAB_CPU2 + 0x1C00) : {KEEP (*(.inttab2.intvec.224)) } > pfls2
    .inttab_tc2_0E1 (TEXT) BIND(__INTTAB_CPU2 + 0x1C20) : {KEEP (*(.inttab2.intvec.225)) } > pfls2
    .inttab_tc2_0E2 (TEXT) BIND(__INTTAB_CPU2 + 0x1C40) : {KEEP (*(.inttab2.intvec.226)) } > pfls2
    .inttab_tc2_0E3 (TEXT) BIND(__INTTAB_CPU2 + 0x1C60) : {KEEP (*(.inttab2.intvec.227)) } > pfls2
    .inttab_tc2_0E4 (TEXT) BIND(__INTTAB_CPU2 + 0x1C80) : {KEEP (*(.inttab2.intvec.228)) } > pfls2
    .inttab_tc2_0E5 (TEXT) BIND(__INTTAB_CPU2 + 0x1CA0) : {KEEP (*(.inttab2.intvec.229)) } > pfls2
    .inttab_tc2_0E6 (TEXT) BIND(__INTTAB_CPU2 + 0x1CC0) : {KEEP (*(.inttab2.intvec.230)) } > pfls2
    .inttab_tc2_0E7 (TEXT) BIND(__INTTAB_CPU2 + 0x1CE0) : {KEEP (*(.inttab2.intvec.231)) } > pfls2
    .inttab_tc2_0E8 (TEXT) BIND(__INTTAB_CPU2 + 0x1D00) : {KEEP (*(.inttab2.intvec.232)) } > pfls2
    .inttab_tc2_0E9 (TEXT) BIND(__INTTAB_CPU2 + 0x1D20) : {KEEP (*(.inttab2.intvec.233)) } > pfls2
    .inttab_tc2_0EA (TEXT) BIND(__INTTAB_CPU2 + 0x1D40) : {KEEP (*(.inttab2.intvec.234)) } > pfls2
    .inttab_tc2_0EB (TEXT) BIND(__INTTAB_CPU2 + 0x1D60) : {KEEP (*(.inttab2.intvec.235)) } > pfls2
    .inttab_tc2_0EC (TEXT) BIND(__INTTAB_CPU2 + 0x1D80) : {KEEP (*(.inttab2.intvec.236)) } > pfls2
    .inttab_tc2_0ED (TEXT) BIND(__INTTAB_CPU2 + 0x1DA0) : {KEEP (*(.inttab2.intvec.237)) } > pfls2
    .inttab_tc2_0EE (TEXT) BIND(__INTTAB_CPU2 + 0x1DC0) : {KEEP (*(.inttab2.intvec.238)) } > pfls2
    .inttab_tc2_0EF (TEXT) BIND(__INTTAB_CPU2 + 0x1DE0) : {KEEP (*(.inttab2.intvec.239)) } > pfls2
    .inttab_tc2_0F0 (TEXT) BIND(__INTTAB_CPU2 + 0x1E00) : {KEEP (*(.inttab2.intvec.240)) } > pfls2
    .inttab_tc2_0F1 (TEXT) BIND(__INTTAB_CPU2 + 0x1E20) : {KEEP (*(.inttab2.intvec.241)) } > pfls2
    .inttab_tc2_0F2 (TEXT) BIND(__INTTAB_CPU2 + 0x1E40) : {KEEP (*(.inttab2.intvec.242)) } > pfls2
    .inttab_tc2_0F3 (TEXT) BIND(__INTTAB_CPU2 + 0x1E60) : {KEEP (*(.inttab2.intvec.243)) } > pfls2
    .inttab_tc2_0F4 (TEXT) BIND(__INTTAB_CPU2 + 0x1E80) : {KEEP (*(.inttab2.intvec.244)) } > pfls2
    .inttab_tc2_0F5 (TEXT) BIND(__INTTAB_CPU2 + 0x1EA0) : {KEEP (*(.inttab2.intvec.245)) } > pfls2
    .inttab_tc2_0F6 (TEXT) BIND(__INTTAB_CPU2 + 0x1EC0) : {KEEP (*(.inttab2.intvec.246)) } > pfls2
    .inttab_tc2_0F7 (TEXT) BIND(__INTTAB_CPU2 + 0x1EE0) : {KEEP (*(.inttab2.intvec.247)) } > pfls2
    .inttab_tc2_0F8 (TEXT) BIND(__INTTAB_CPU2 + 0x1F00) : {KEEP (*(.inttab2.intvec.248)) } > pfls2
    .inttab_tc2_0F9 (TEXT) BIND(__INTTAB_CPU2 + 0x1F20) : {KEEP (*(.inttab2.intvec.249)) } > pfls2
    .inttab_tc2_0FA (TEXT) BIND(__INTTAB_CPU2 + 0x1F40) : {KEEP (*(.inttab2.intvec.250)) } > pfls2
    .inttab_tc2_0FB (TEXT) BIND(__INTTAB_CPU2 + 0x1F60) : {KEEP (*(.inttab2.intvec.251)) } > pfls2
    .inttab_tc2_0FC (TEXT) BIND(__INTTAB_CPU2 + 0x1F80) : {KEEP (*(.inttab2.intvec.252)) } > pfls2
    .inttab_tc2_0FD (TEXT) BIND(__INTTAB_CPU2 + 0x1FA0) : {KEEP (*(.inttab2.intvec.253)) } > pfls2
    .inttab_tc2_0FE (TEXT) BIND(__INTTAB_CPU2 + 0x1FC0) : {KEEP (*(.inttab2.intvec.254)) } > pfls2
    .inttab_tc2_0FF (TEXT) BIND(__INTTAB_CPU2 + 0x1FE0) : {KEEP (*(.inttab2.intvec.255)) } > pfls2
    
    /*CPU3 Interrupt Vector Table*/
    .inttab_tc3_000 (TEXT) BIND(__INTTAB_CPU3 + 0x0000) : {KEEP (*(.inttab3.intvec.0  )) } > pfls3
    .inttab_tc3_001 (TEXT) BIND(__INTTAB_CPU3 + 0x0020) : {KEEP (*(.inttab3.intvec.1  )) } > pfls3
    .inttab_tc3_002 (TEXT) BIND(__INTTAB_CPU3 + 0x0040) : {KEEP (*(.inttab3.intvec.2  )) } > pfls3
    .inttab_tc3_003 (TEXT) BIND(__INTTAB_CPU3 + 0x0060) : {KEEP (*(.inttab3.intvec.3  )) } > pfls3
    .inttab_tc3_004 (TEXT) BIND(__INTTAB_CPU3 + 0x0080) : {KEEP (*(.inttab3.intvec.4  )) } > pfls3
    .inttab_tc3_005 (TEXT) BIND(__INTTAB_CPU3 + 0x00A0) : {KEEP (*(.inttab3.intvec.5  )) } > pfls3
    .inttab_tc3_006 (TEXT) BIND(__INTTAB_CPU3 + 0x00C0) : {KEEP (*(.inttab3.intvec.6  )) } > pfls3
    .inttab_tc3_007 (TEXT) BIND(__INTTAB_CPU3 + 0x00E0) : {KEEP (*(.inttab3.intvec.7  )) } > pfls3
    .inttab_tc3_008 (TEXT) BIND(__INTTAB_CPU3 + 0x0100) : {KEEP (*(.inttab3.intvec.8  )) } > pfls3
    .inttab_tc3_009 (TEXT) BIND(__INTTAB_CPU3 + 0x0120) : {KEEP (*(.inttab3.intvec.9  )) } > pfls3
    .inttab_tc3_00A (TEXT) BIND(__INTTAB_CPU3 + 0x0140) : {KEEP (*(.inttab3.intvec.10 )) } > pfls3
    .inttab_tc3_00B (TEXT) BIND(__INTTAB_CPU3 + 0x0160) : {KEEP (*(.inttab3.intvec.11 )) } > pfls3
    .inttab_tc3_00C (TEXT) BIND(__INTTAB_CPU3 + 0x0180) : {KEEP (*(.inttab3.intvec.12 )) } > pfls3
    .inttab_tc3_00D (TEXT) BIND(__INTTAB_CPU3 + 0x01A0) : {KEEP (*(.inttab3.intvec.13 )) } > pfls3
    .inttab_tc3_00E (TEXT) BIND(__INTTAB_CPU3 + 0x01C0) : {KEEP (*(.inttab3.intvec.14 )) } > pfls3
    .inttab_tc3_00F (TEXT) BIND(__INTTAB_CPU3 + 0x01E0) : {KEEP (*(.inttab3.intvec.15 )) } > pfls3
    .inttab_tc3_010 (TEXT) BIND(__INTTAB_CPU3 + 0x0200) : {KEEP (*(.inttab3.intvec.16 )) } > pfls3
    .inttab_tc3_011 (TEXT) BIND(__INTTAB_CPU3 + 0x0220) : {KEEP (*(.inttab3.intvec.17 )) } > pfls3
    .inttab_tc3_012 (TEXT) BIND(__INTTAB_CPU3 + 0x0240) : {KEEP (*(.inttab3.intvec.18 )) } > pfls3
    .inttab_tc3_013 (TEXT) BIND(__INTTAB_CPU3 + 0x0260) : {KEEP (*(.inttab3.intvec.19 )) } > pfls3
    .inttab_tc3_014 (TEXT) BIND(__INTTAB_CPU3 + 0x0280) : {KEEP (*(.inttab3.intvec.20 )) } > pfls3
    .inttab_tc3_015 (TEXT) BIND(__INTTAB_CPU3 + 0x02A0) : {KEEP (*(.inttab3.intvec.21 )) } > pfls3
    .inttab_tc3_016 (TEXT) BIND(__INTTAB_CPU3 + 0x02C0) : {KEEP (*(.inttab3.intvec.22 )) } > pfls3
    .inttab_tc3_017 (TEXT) BIND(__INTTAB_CPU3 + 0x02E0) : {KEEP (*(.inttab3.intvec.23 )) } > pfls3
    .inttab_tc3_018 (TEXT) BIND(__INTTAB_CPU3 + 0x0300) : {KEEP (*(.inttab3.intvec.24 )) } > pfls3
    .inttab_tc3_019 (TEXT) BIND(__INTTAB_CPU3 + 0x0320) : {KEEP (*(.inttab3.intvec.25 )) } > pfls3
    .inttab_tc3_01A (TEXT) BIND(__INTTAB_CPU3 + 0x0340) : {KEEP (*(.inttab3.intvec.26 )) } > pfls3
    .inttab_tc3_01B (TEXT) BIND(__INTTAB_CPU3 + 0x0360) : {KEEP (*(.inttab3.intvec.27 )) } > pfls3
    .inttab_tc3_01C (TEXT) BIND(__INTTAB_CPU3 + 0x0380) : {KEEP (*(.inttab3.intvec.28 )) } > pfls3
    .inttab_tc3_01D (TEXT) BIND(__INTTAB_CPU3 + 0x03A0) : {KEEP (*(.inttab3.intvec.29 )) } > pfls3
    .inttab_tc3_01E (TEXT) BIND(__INTTAB_CPU3 + 0x03C0) : {KEEP (*(.inttab3.intvec.30 )) } > pfls3
    .inttab_tc3_01F (TEXT) BIND(__INTTAB_CPU3 + 0x03E0) : {KEEP (*(.inttab3.intvec.31 )) } > pfls3
    .inttab_tc3_020 (TEXT) BIND(__INTTAB_CPU3 + 0x0400) : {KEEP (*(.inttab3.intvec.32 )) } > pfls3
    .inttab_tc3_021 (TEXT) BIND(__INTTAB_CPU3 + 0x0420) : {KEEP (*(.inttab3.intvec.33 )) } > pfls3
    .inttab_tc3_022 (TEXT) BIND(__INTTAB_CPU3 + 0x0440) : {KEEP (*(.inttab3.intvec.34 )) } > pfls3
    .inttab_tc3_023 (TEXT) BIND(__INTTAB_CPU3 + 0x0460) : {KEEP (*(.inttab3.intvec.35 )) } > pfls3
    .inttab_tc3_024 (TEXT) BIND(__INTTAB_CPU3 + 0x0480) : {KEEP (*(.inttab3.intvec.36 )) } > pfls3
    .inttab_tc3_025 (TEXT) BIND(__INTTAB_CPU3 + 0x04A0) : {KEEP (*(.inttab3.intvec.37 )) } > pfls3
    .inttab_tc3_026 (TEXT) BIND(__INTTAB_CPU3 + 0x04C0) : {KEEP (*(.inttab3.intvec.38 )) } > pfls3
    .inttab_tc3_027 (TEXT) BIND(__INTTAB_CPU3 + 0x04E0) : {KEEP (*(.inttab3.intvec.39 )) } > pfls3
    .inttab_tc3_028 (TEXT) BIND(__INTTAB_CPU3 + 0x0500) : {KEEP (*(.inttab3.intvec.40 )) } > pfls3
    .inttab_tc3_029 (TEXT) BIND(__INTTAB_CPU3 + 0x0520) : {KEEP (*(.inttab3.intvec.41 )) } > pfls3
    .inttab_tc3_02A (TEXT) BIND(__INTTAB_CPU3 + 0x0540) : {KEEP (*(.inttab3.intvec.42 )) } > pfls3
    .inttab_tc3_02B (TEXT) BIND(__INTTAB_CPU3 + 0x0560) : {KEEP (*(.inttab3.intvec.43 )) } > pfls3
    .inttab_tc3_02C (TEXT) BIND(__INTTAB_CPU3 + 0x0580) : {KEEP (*(.inttab3.intvec.44 )) } > pfls3
    .inttab_tc3_02D (TEXT) BIND(__INTTAB_CPU3 + 0x05A0) : {KEEP (*(.inttab3.intvec.45 )) } > pfls3
    .inttab_tc3_02E (TEXT) BIND(__INTTAB_CPU3 + 0x05C0) : {KEEP (*(.inttab3.intvec.46 )) } > pfls3
    .inttab_tc3_02F (TEXT) BIND(__INTTAB_CPU3 + 0x05E0) : {KEEP (*(.inttab3.intvec.47 )) } > pfls3
    .inttab_tc3_030 (TEXT) BIND(__INTTAB_CPU3 + 0x0600) : {KEEP (*(.inttab3.intvec.48 )) } > pfls3
    .inttab_tc3_031 (TEXT) BIND(__INTTAB_CPU3 + 0x0620) : {KEEP (*(.inttab3.intvec.49 )) } > pfls3
    .inttab_tc3_032 (TEXT) BIND(__INTTAB_CPU3 + 0x0640) : {KEEP (*(.inttab3.intvec.50 )) } > pfls3
    .inttab_tc3_033 (TEXT) BIND(__INTTAB_CPU3 + 0x0660) : {KEEP (*(.inttab3.intvec.51 )) } > pfls3
    .inttab_tc3_034 (TEXT) BIND(__INTTAB_CPU3 + 0x0680) : {KEEP (*(.inttab3.intvec.52 )) } > pfls3
    .inttab_tc3_035 (TEXT) BIND(__INTTAB_CPU3 + 0x06A0) : {KEEP (*(.inttab3.intvec.53 )) } > pfls3
    .inttab_tc3_036 (TEXT) BIND(__INTTAB_CPU3 + 0x06C0) : {KEEP (*(.inttab3.intvec.54 )) } > pfls3
    .inttab_tc3_037 (TEXT) BIND(__INTTAB_CPU3 + 0x06E0) : {KEEP (*(.inttab3.intvec.55 )) } > pfls3
    .inttab_tc3_038 (TEXT) BIND(__INTTAB_CPU3 + 0x0700) : {KEEP (*(.inttab3.intvec.56 )) } > pfls3
    .inttab_tc3_039 (TEXT) BIND(__INTTAB_CPU3 + 0x0720) : {KEEP (*(.inttab3.intvec.57 )) } > pfls3
    .inttab_tc3_03A (TEXT) BIND(__INTTAB_CPU3 + 0x0740) : {KEEP (*(.inttab3.intvec.58 )) } > pfls3
    .inttab_tc3_03B (TEXT) BIND(__INTTAB_CPU3 + 0x0760) : {KEEP (*(.inttab3.intvec.59 )) } > pfls3
    .inttab_tc3_03C (TEXT) BIND(__INTTAB_CPU3 + 0x0780) : {KEEP (*(.inttab3.intvec.60 )) } > pfls3
    .inttab_tc3_03D (TEXT) BIND(__INTTAB_CPU3 + 0x07A0) : {KEEP (*(.inttab3.intvec.61 )) } > pfls3
    .inttab_tc3_03E (TEXT) BIND(__INTTAB_CPU3 + 0x07C0) : {KEEP (*(.inttab3.intvec.62 )) } > pfls3
    .inttab_tc3_03F (TEXT) BIND(__INTTAB_CPU3 + 0x07E0) : {KEEP (*(.inttab3.intvec.63 )) } > pfls3
    .inttab_tc3_040 (TEXT) BIND(__INTTAB_CPU3 + 0x0800) : {KEEP (*(.inttab3.intvec.64 )) } > pfls3
    .inttab_tc3_041 (TEXT) BIND(__INTTAB_CPU3 + 0x0820) : {KEEP (*(.inttab3.intvec.65 )) } > pfls3
    .inttab_tc3_042 (TEXT) BIND(__INTTAB_CPU3 + 0x0840) : {KEEP (*(.inttab3.intvec.66 )) } > pfls3
    .inttab_tc3_043 (TEXT) BIND(__INTTAB_CPU3 + 0x0860) : {KEEP (*(.inttab3.intvec.67 )) } > pfls3
    .inttab_tc3_044 (TEXT) BIND(__INTTAB_CPU3 + 0x0880) : {KEEP (*(.inttab3.intvec.68 )) } > pfls3
    .inttab_tc3_045 (TEXT) BIND(__INTTAB_CPU3 + 0x08A0) : {KEEP (*(.inttab3.intvec.69 )) } > pfls3
    .inttab_tc3_046 (TEXT) BIND(__INTTAB_CPU3 + 0x08C0) : {KEEP (*(.inttab3.intvec.70 )) } > pfls3
    .inttab_tc3_047 (TEXT) BIND(__INTTAB_CPU3 + 0x08E0) : {KEEP (*(.inttab3.intvec.71 )) } > pfls3
    .inttab_tc3_048 (TEXT) BIND(__INTTAB_CPU3 + 0x0900) : {KEEP (*(.inttab3.intvec.72 )) } > pfls3
    .inttab_tc3_049 (TEXT) BIND(__INTTAB_CPU3 + 0x0920) : {KEEP (*(.inttab3.intvec.73 )) } > pfls3
    .inttab_tc3_04A (TEXT) BIND(__INTTAB_CPU3 + 0x0940) : {KEEP (*(.inttab3.intvec.74 )) } > pfls3
    .inttab_tc3_04B (TEXT) BIND(__INTTAB_CPU3 + 0x0960) : {KEEP (*(.inttab3.intvec.75 )) } > pfls3
    .inttab_tc3_04C (TEXT) BIND(__INTTAB_CPU3 + 0x0980) : {KEEP (*(.inttab3.intvec.76 )) } > pfls3
    .inttab_tc3_04D (TEXT) BIND(__INTTAB_CPU3 + 0x09A0) : {KEEP (*(.inttab3.intvec.77 )) } > pfls3
    .inttab_tc3_04E (TEXT) BIND(__INTTAB_CPU3 + 0x09C0) : {KEEP (*(.inttab3.intvec.78 )) } > pfls3
    .inttab_tc3_04F (TEXT) BIND(__INTTAB_CPU3 + 0x09E0) : {KEEP (*(.inttab3.intvec.79 )) } > pfls3
    .inttab_tc3_050 (TEXT) BIND(__INTTAB_CPU3 + 0x0A00) : {KEEP (*(.inttab3.intvec.80 )) } > pfls3
    .inttab_tc3_051 (TEXT) BIND(__INTTAB_CPU3 + 0x0A20) : {KEEP (*(.inttab3.intvec.81 )) } > pfls3
    .inttab_tc3_052 (TEXT) BIND(__INTTAB_CPU3 + 0x0A40) : {KEEP (*(.inttab3.intvec.82 )) } > pfls3
    .inttab_tc3_053 (TEXT) BIND(__INTTAB_CPU3 + 0x0A60) : {KEEP (*(.inttab3.intvec.83 )) } > pfls3
    .inttab_tc3_054 (TEXT) BIND(__INTTAB_CPU3 + 0x0A80) : {KEEP (*(.inttab3.intvec.84 )) } > pfls3
    .inttab_tc3_055 (TEXT) BIND(__INTTAB_CPU3 + 0x0AA0) : {KEEP (*(.inttab3.intvec.85 )) } > pfls3
    .inttab_tc3_056 (TEXT) BIND(__INTTAB_CPU3 + 0x0AC0) : {KEEP (*(.inttab3.intvec.86 )) } > pfls3
    .inttab_tc3_057 (TEXT) BIND(__INTTAB_CPU3 + 0x0AE0) : {KEEP (*(.inttab3.intvec.87 )) } > pfls3
    .inttab_tc3_058 (TEXT) BIND(__INTTAB_CPU3 + 0x0B00) : {KEEP (*(.inttab3.intvec.88 )) } > pfls3
    .inttab_tc3_059 (TEXT) BIND(__INTTAB_CPU3 + 0x0B20) : {KEEP (*(.inttab3.intvec.89 )) } > pfls3
    .inttab_tc3_05A (TEXT) BIND(__INTTAB_CPU3 + 0x0B40) : {KEEP (*(.inttab3.intvec.90 )) } > pfls3
    .inttab_tc3_05B (TEXT) BIND(__INTTAB_CPU3 + 0x0B60) : {KEEP (*(.inttab3.intvec.91 )) } > pfls3
    .inttab_tc3_05C (TEXT) BIND(__INTTAB_CPU3 + 0x0B80) : {KEEP (*(.inttab3.intvec.92 )) } > pfls3
    .inttab_tc3_05D (TEXT) BIND(__INTTAB_CPU3 + 0x0BA0) : {KEEP (*(.inttab3.intvec.93 )) } > pfls3
    .inttab_tc3_05E (TEXT) BIND(__INTTAB_CPU3 + 0x0BC0) : {KEEP (*(.inttab3.intvec.94 )) } > pfls3
    .inttab_tc3_05F (TEXT) BIND(__INTTAB_CPU3 + 0x0BE0) : {KEEP (*(.inttab3.intvec.95 )) } > pfls3
    .inttab_tc3_060 (TEXT) BIND(__INTTAB_CPU3 + 0x0C00) : {KEEP (*(.inttab3.intvec.96 )) } > pfls3
    .inttab_tc3_061 (TEXT) BIND(__INTTAB_CPU3 + 0x0C20) : {KEEP (*(.inttab3.intvec.97 )) } > pfls3
    .inttab_tc3_062 (TEXT) BIND(__INTTAB_CPU3 + 0x0C40) : {KEEP (*(.inttab3.intvec.98 )) } > pfls3
    .inttab_tc3_063 (TEXT) BIND(__INTTAB_CPU3 + 0x0C60) : {KEEP (*(.inttab3.intvec.99 )) } > pfls3
    .inttab_tc3_064 (TEXT) BIND(__INTTAB_CPU3 + 0x0C80) : {KEEP (*(.inttab3.intvec.100)) } > pfls3
    .inttab_tc3_065 (TEXT) BIND(__INTTAB_CPU3 + 0x0CA0) : {KEEP (*(.inttab3.intvec.101)) } > pfls3
    .inttab_tc3_066 (TEXT) BIND(__INTTAB_CPU3 + 0x0CC0) : {KEEP (*(.inttab3.intvec.102)) } > pfls3
    .inttab_tc3_067 (TEXT) BIND(__INTTAB_CPU3 + 0x0CE0) : {KEEP (*(.inttab3.intvec.103)) } > pfls3
    .inttab_tc3_068 (TEXT) BIND(__INTTAB_CPU3 + 0x0D00) : {KEEP (*(.inttab3.intvec.104)) } > pfls3
    .inttab_tc3_069 (TEXT) BIND(__INTTAB_CPU3 + 0x0D20) : {KEEP (*(.inttab3.intvec.105)) } > pfls3
    .inttab_tc3_06A (TEXT) BIND(__INTTAB_CPU3 + 0x0D40) : {KEEP (*(.inttab3.intvec.106)) } > pfls3
    .inttab_tc3_06B (TEXT) BIND(__INTTAB_CPU3 + 0x0D60) : {KEEP (*(.inttab3.intvec.107)) } > pfls3
    .inttab_tc3_06C (TEXT) BIND(__INTTAB_CPU3 + 0x0D80) : {KEEP (*(.inttab3.intvec.108)) } > pfls3
    .inttab_tc3_06D (TEXT) BIND(__INTTAB_CPU3 + 0x0DA0) : {KEEP (*(.inttab3.intvec.109)) } > pfls3
    .inttab_tc3_06E (TEXT) BIND(__INTTAB_CPU3 + 0x0DC0) : {KEEP (*(.inttab3.intvec.110)) } > pfls3
    .inttab_tc3_06F (TEXT) BIND(__INTTAB_CPU3 + 0x0DE0) : {KEEP (*(.inttab3.intvec.111)) } > pfls3
    .inttab_tc3_070 (TEXT) BIND(__INTTAB_CPU3 + 0x0E00) : {KEEP (*(.inttab3.intvec.112)) } > pfls3
    .inttab_tc3_071 (TEXT) BIND(__INTTAB_CPU3 + 0x0E20) : {KEEP (*(.inttab3.intvec.113)) } > pfls3
    .inttab_tc3_072 (TEXT) BIND(__INTTAB_CPU3 + 0x0E40) : {KEEP (*(.inttab3.intvec.114)) } > pfls3
    .inttab_tc3_073 (TEXT) BIND(__INTTAB_CPU3 + 0x0E60) : {KEEP (*(.inttab3.intvec.115)) } > pfls3
    .inttab_tc3_074 (TEXT) BIND(__INTTAB_CPU3 + 0x0E80) : {KEEP (*(.inttab3.intvec.116)) } > pfls3
    .inttab_tc3_075 (TEXT) BIND(__INTTAB_CPU3 + 0x0EA0) : {KEEP (*(.inttab3.intvec.117)) } > pfls3
    .inttab_tc3_076 (TEXT) BIND(__INTTAB_CPU3 + 0x0EC0) : {KEEP (*(.inttab3.intvec.118)) } > pfls3
    .inttab_tc3_077 (TEXT) BIND(__INTTAB_CPU3 + 0x0EE0) : {KEEP (*(.inttab3.intvec.119)) } > pfls3
    .inttab_tc3_078 (TEXT) BIND(__INTTAB_CPU3 + 0x0F00) : {KEEP (*(.inttab3.intvec.120)) } > pfls3
    .inttab_tc3_079 (TEXT) BIND(__INTTAB_CPU3 + 0x0F20) : {KEEP (*(.inttab3.intvec.121)) } > pfls3
    .inttab_tc3_07A (TEXT) BIND(__INTTAB_CPU3 + 0x0F40) : {KEEP (*(.inttab3.intvec.122)) } > pfls3
    .inttab_tc3_07B (TEXT) BIND(__INTTAB_CPU3 + 0x0F60) : {KEEP (*(.inttab3.intvec.123)) } > pfls3
    .inttab_tc3_07C (TEXT) BIND(__INTTAB_CPU3 + 0x0F80) : {KEEP (*(.inttab3.intvec.124)) } > pfls3
    .inttab_tc3_07D (TEXT) BIND(__INTTAB_CPU3 + 0x0FA0) : {KEEP (*(.inttab3.intvec.125)) } > pfls3
    .inttab_tc3_07E (TEXT) BIND(__INTTAB_CPU3 + 0x0FC0) : {KEEP (*(.inttab3.intvec.126)) } > pfls3
    .inttab_tc3_07F (TEXT) BIND(__INTTAB_CPU3 + 0x0FE0) : {KEEP (*(.inttab3.intvec.127)) } > pfls3
    .inttab_tc3_080 (TEXT) BIND(__INTTAB_CPU3 + 0x1000) : {KEEP (*(.inttab3.intvec.128)) } > pfls3
    .inttab_tc3_081 (TEXT) BIND(__INTTAB_CPU3 + 0x1020) : {KEEP (*(.inttab3.intvec.129)) } > pfls3
    .inttab_tc3_082 (TEXT) BIND(__INTTAB_CPU3 + 0x1040) : {KEEP (*(.inttab3.intvec.130)) } > pfls3
    .inttab_tc3_083 (TEXT) BIND(__INTTAB_CPU3 + 0x1060) : {KEEP (*(.inttab3.intvec.131)) } > pfls3
    .inttab_tc3_084 (TEXT) BIND(__INTTAB_CPU3 + 0x1080) : {KEEP (*(.inttab3.intvec.132)) } > pfls3
    .inttab_tc3_085 (TEXT) BIND(__INTTAB_CPU3 + 0x10A0) : {KEEP (*(.inttab3.intvec.133)) } > pfls3
    .inttab_tc3_086 (TEXT) BIND(__INTTAB_CPU3 + 0x10C0) : {KEEP (*(.inttab3.intvec.134)) } > pfls3
    .inttab_tc3_087 (TEXT) BIND(__INTTAB_CPU3 + 0x10E0) : {KEEP (*(.inttab3.intvec.135)) } > pfls3
    .inttab_tc3_088 (TEXT) BIND(__INTTAB_CPU3 + 0x1100) : {KEEP (*(.inttab3.intvec.136)) } > pfls3
    .inttab_tc3_089 (TEXT) BIND(__INTTAB_CPU3 + 0x1120) : {KEEP (*(.inttab3.intvec.137)) } > pfls3
    .inttab_tc3_08A (TEXT) BIND(__INTTAB_CPU3 + 0x1140) : {KEEP (*(.inttab3.intvec.138)) } > pfls3
    .inttab_tc3_08B (TEXT) BIND(__INTTAB_CPU3 + 0x1160) : {KEEP (*(.inttab3.intvec.139)) } > pfls3
    .inttab_tc3_08C (TEXT) BIND(__INTTAB_CPU3 + 0x1180) : {KEEP (*(.inttab3.intvec.140)) } > pfls3
    .inttab_tc3_08D (TEXT) BIND(__INTTAB_CPU3 + 0x11A0) : {KEEP (*(.inttab3.intvec.141)) } > pfls3
    .inttab_tc3_08E (TEXT) BIND(__INTTAB_CPU3 + 0x11C0) : {KEEP (*(.inttab3.intvec.142)) } > pfls3
    .inttab_tc3_08F (TEXT) BIND(__INTTAB_CPU3 + 0x11E0) : {KEEP (*(.inttab3.intvec.143)) } > pfls3
    .inttab_tc3_090 (TEXT) BIND(__INTTAB_CPU3 + 0x1200) : {KEEP (*(.inttab3.intvec.144)) } > pfls3
    .inttab_tc3_091 (TEXT) BIND(__INTTAB_CPU3 + 0x1220) : {KEEP (*(.inttab3.intvec.145)) } > pfls3
    .inttab_tc3_092 (TEXT) BIND(__INTTAB_CPU3 + 0x1240) : {KEEP (*(.inttab3.intvec.146)) } > pfls3
    .inttab_tc3_093 (TEXT) BIND(__INTTAB_CPU3 + 0x1260) : {KEEP (*(.inttab3.intvec.147)) } > pfls3
    .inttab_tc3_094 (TEXT) BIND(__INTTAB_CPU3 + 0x1280) : {KEEP (*(.inttab3.intvec.148)) } > pfls3
    .inttab_tc3_095 (TEXT) BIND(__INTTAB_CPU3 + 0x12A0) : {KEEP (*(.inttab3.intvec.149)) } > pfls3
    .inttab_tc3_096 (TEXT) BIND(__INTTAB_CPU3 + 0x12C0) : {KEEP (*(.inttab3.intvec.150)) } > pfls3
    .inttab_tc3_097 (TEXT) BIND(__INTTAB_CPU3 + 0x12E0) : {KEEP (*(.inttab3.intvec.151)) } > pfls3
    .inttab_tc3_098 (TEXT) BIND(__INTTAB_CPU3 + 0x1300) : {KEEP (*(.inttab3.intvec.152)) } > pfls3
    .inttab_tc3_099 (TEXT) BIND(__INTTAB_CPU3 + 0x1320) : {KEEP (*(.inttab3.intvec.153)) } > pfls3
    .inttab_tc3_09A (TEXT) BIND(__INTTAB_CPU3 + 0x1340) : {KEEP (*(.inttab3.intvec.154)) } > pfls3
    .inttab_tc3_09B (TEXT) BIND(__INTTAB_CPU3 + 0x1360) : {KEEP (*(.inttab3.intvec.155)) } > pfls3
    .inttab_tc3_09C (TEXT) BIND(__INTTAB_CPU3 + 0x1380) : {KEEP (*(.inttab3.intvec.156)) } > pfls3
    .inttab_tc3_09D (TEXT) BIND(__INTTAB_CPU3 + 0x13A0) : {KEEP (*(.inttab3.intvec.157)) } > pfls3
    .inttab_tc3_09E (TEXT) BIND(__INTTAB_CPU3 + 0x13C0) : {KEEP (*(.inttab3.intvec.158)) } > pfls3
    .inttab_tc3_09F (TEXT) BIND(__INTTAB_CPU3 + 0x13E0) : {KEEP (*(.inttab3.intvec.159)) } > pfls3
    .inttab_tc3_0A0 (TEXT) BIND(__INTTAB_CPU3 + 0x1400) : {KEEP (*(.inttab3.intvec.160)) } > pfls3
    .inttab_tc3_0A1 (TEXT) BIND(__INTTAB_CPU3 + 0x1420) : {KEEP (*(.inttab3.intvec.161)) } > pfls3
    .inttab_tc3_0A2 (TEXT) BIND(__INTTAB_CPU3 + 0x1440) : {KEEP (*(.inttab3.intvec.162)) } > pfls3
    .inttab_tc3_0A3 (TEXT) BIND(__INTTAB_CPU3 + 0x1460) : {KEEP (*(.inttab3.intvec.163)) } > pfls3
    .inttab_tc3_0A4 (TEXT) BIND(__INTTAB_CPU3 + 0x1480) : {KEEP (*(.inttab3.intvec.164)) } > pfls3
    .inttab_tc3_0A5 (TEXT) BIND(__INTTAB_CPU3 + 0x14A0) : {KEEP (*(.inttab3.intvec.165)) } > pfls3
    .inttab_tc3_0A6 (TEXT) BIND(__INTTAB_CPU3 + 0x14C0) : {KEEP (*(.inttab3.intvec.166)) } > pfls3
    .inttab_tc3_0A7 (TEXT) BIND(__INTTAB_CPU3 + 0x14E0) : {KEEP (*(.inttab3.intvec.167)) } > pfls3
    .inttab_tc3_0A8 (TEXT) BIND(__INTTAB_CPU3 + 0x1500) : {KEEP (*(.inttab3.intvec.168)) } > pfls3
    .inttab_tc3_0A9 (TEXT) BIND(__INTTAB_CPU3 + 0x1520) : {KEEP (*(.inttab3.intvec.169)) } > pfls3
    .inttab_tc3_0AA (TEXT) BIND(__INTTAB_CPU3 + 0x1540) : {KEEP (*(.inttab3.intvec.170)) } > pfls3
    .inttab_tc3_0AB (TEXT) BIND(__INTTAB_CPU3 + 0x1560) : {KEEP (*(.inttab3.intvec.171)) } > pfls3
    .inttab_tc3_0AC (TEXT) BIND(__INTTAB_CPU3 + 0x1580) : {KEEP (*(.inttab3.intvec.172)) } > pfls3
    .inttab_tc3_0AD (TEXT) BIND(__INTTAB_CPU3 + 0x15A0) : {KEEP (*(.inttab3.intvec.173)) } > pfls3
    .inttab_tc3_0AE (TEXT) BIND(__INTTAB_CPU3 + 0x15C0) : {KEEP (*(.inttab3.intvec.174)) } > pfls3
    .inttab_tc3_0AF (TEXT) BIND(__INTTAB_CPU3 + 0x15E0) : {KEEP (*(.inttab3.intvec.175)) } > pfls3
    .inttab_tc3_0B0 (TEXT) BIND(__INTTAB_CPU3 + 0x1600) : {KEEP (*(.inttab3.intvec.176)) } > pfls3
    .inttab_tc3_0B1 (TEXT) BIND(__INTTAB_CPU3 + 0x1620) : {KEEP (*(.inttab3.intvec.177)) } > pfls3
    .inttab_tc3_0B2 (TEXT) BIND(__INTTAB_CPU3 + 0x1640) : {KEEP (*(.inttab3.intvec.178)) } > pfls3
    .inttab_tc3_0B3 (TEXT) BIND(__INTTAB_CPU3 + 0x1660) : {KEEP (*(.inttab3.intvec.179)) } > pfls3
    .inttab_tc3_0B4 (TEXT) BIND(__INTTAB_CPU3 + 0x1680) : {KEEP (*(.inttab3.intvec.180)) } > pfls3
    .inttab_tc3_0B5 (TEXT) BIND(__INTTAB_CPU3 + 0x16A0) : {KEEP (*(.inttab3.intvec.181)) } > pfls3
    .inttab_tc3_0B6 (TEXT) BIND(__INTTAB_CPU3 + 0x16C0) : {KEEP (*(.inttab3.intvec.182)) } > pfls3
    .inttab_tc3_0B7 (TEXT) BIND(__INTTAB_CPU3 + 0x16E0) : {KEEP (*(.inttab3.intvec.183)) } > pfls3
    .inttab_tc3_0B8 (TEXT) BIND(__INTTAB_CPU3 + 0x1700) : {KEEP (*(.inttab3.intvec.184)) } > pfls3
    .inttab_tc3_0B9 (TEXT) BIND(__INTTAB_CPU3 + 0x1720) : {KEEP (*(.inttab3.intvec.185)) } > pfls3
    .inttab_tc3_0BA (TEXT) BIND(__INTTAB_CPU3 + 0x1740) : {KEEP (*(.inttab3.intvec.186)) } > pfls3
    .inttab_tc3_0BB (TEXT) BIND(__INTTAB_CPU3 + 0x1760) : {KEEP (*(.inttab3.intvec.187)) } > pfls3
    .inttab_tc3_0BC (TEXT) BIND(__INTTAB_CPU3 + 0x1780) : {KEEP (*(.inttab3.intvec.188)) } > pfls3
    .inttab_tc3_0BD (TEXT) BIND(__INTTAB_CPU3 + 0x17A0) : {KEEP (*(.inttab3.intvec.189)) } > pfls3
    .inttab_tc3_0BE (TEXT) BIND(__INTTAB_CPU3 + 0x17C0) : {KEEP (*(.inttab3.intvec.190)) } > pfls3
    .inttab_tc3_0BF (TEXT) BIND(__INTTAB_CPU3 + 0x17E0) : {KEEP (*(.inttab3.intvec.191)) } > pfls3
    .inttab_tc3_0C0 (TEXT) BIND(__INTTAB_CPU3 + 0x1800) : {KEEP (*(.inttab3.intvec.192)) } > pfls3
    .inttab_tc3_0C1 (TEXT) BIND(__INTTAB_CPU3 + 0x1820) : {KEEP (*(.inttab3.intvec.193)) } > pfls3
    .inttab_tc3_0C2 (TEXT) BIND(__INTTAB_CPU3 + 0x1840) : {KEEP (*(.inttab3.intvec.194)) } > pfls3
    .inttab_tc3_0C3 (TEXT) BIND(__INTTAB_CPU3 + 0x1860) : {KEEP (*(.inttab3.intvec.195)) } > pfls3
    .inttab_tc3_0C4 (TEXT) BIND(__INTTAB_CPU3 + 0x1880) : {KEEP (*(.inttab3.intvec.196)) } > pfls3
    .inttab_tc3_0C5 (TEXT) BIND(__INTTAB_CPU3 + 0x18A0) : {KEEP (*(.inttab3.intvec.197)) } > pfls3
    .inttab_tc3_0C6 (TEXT) BIND(__INTTAB_CPU3 + 0x18C0) : {KEEP (*(.inttab3.intvec.198)) } > pfls3
    .inttab_tc3_0C7 (TEXT) BIND(__INTTAB_CPU3 + 0x18E0) : {KEEP (*(.inttab3.intvec.199)) } > pfls3
    .inttab_tc3_0C8 (TEXT) BIND(__INTTAB_CPU3 + 0x1900) : {KEEP (*(.inttab3.intvec.200)) } > pfls3
    .inttab_tc3_0C9 (TEXT) BIND(__INTTAB_CPU3 + 0x1920) : {KEEP (*(.inttab3.intvec.201)) } > pfls3
    .inttab_tc3_0CA (TEXT) BIND(__INTTAB_CPU3 + 0x1940) : {KEEP (*(.inttab3.intvec.202)) } > pfls3
    .inttab_tc3_0CB (TEXT) BIND(__INTTAB_CPU3 + 0x1960) : {KEEP (*(.inttab3.intvec.203)) } > pfls3
    .inttab_tc3_0CC (TEXT) BIND(__INTTAB_CPU3 + 0x1980) : {KEEP (*(.inttab3.intvec.204)) } > pfls3
    .inttab_tc3_0CD (TEXT) BIND(__INTTAB_CPU3 + 0x19A0) : {KEEP (*(.inttab3.intvec.205)) } > pfls3
    .inttab_tc3_0CE (TEXT) BIND(__INTTAB_CPU3 + 0x19C0) : {KEEP (*(.inttab3.intvec.206)) } > pfls3
    .inttab_tc3_0CF (TEXT) BIND(__INTTAB_CPU3 + 0x19E0) : {KEEP (*(.inttab3.intvec.207)) } > pfls3
    .inttab_tc3_0D0 (TEXT) BIND(__INTTAB_CPU3 + 0x1A00) : {KEEP (*(.inttab3.intvec.208)) } > pfls3
    .inttab_tc3_0D1 (TEXT) BIND(__INTTAB_CPU3 + 0x1A20) : {KEEP (*(.inttab3.intvec.209)) } > pfls3
    .inttab_tc3_0D2 (TEXT) BIND(__INTTAB_CPU3 + 0x1A40) : {KEEP (*(.inttab3.intvec.210)) } > pfls3
    .inttab_tc3_0D3 (TEXT) BIND(__INTTAB_CPU3 + 0x1A60) : {KEEP (*(.inttab3.intvec.211)) } > pfls3
    .inttab_tc3_0D4 (TEXT) BIND(__INTTAB_CPU3 + 0x1A80) : {KEEP (*(.inttab3.intvec.212)) } > pfls3
    .inttab_tc3_0D5 (TEXT) BIND(__INTTAB_CPU3 + 0x1AA0) : {KEEP (*(.inttab3.intvec.213)) } > pfls3
    .inttab_tc3_0D6 (TEXT) BIND(__INTTAB_CPU3 + 0x1AC0) : {KEEP (*(.inttab3.intvec.214)) } > pfls3
    .inttab_tc3_0D7 (TEXT) BIND(__INTTAB_CPU3 + 0x1AE0) : {KEEP (*(.inttab3.intvec.215)) } > pfls3
    .inttab_tc3_0D8 (TEXT) BIND(__INTTAB_CPU3 + 0x1B00) : {KEEP (*(.inttab3.intvec.216)) } > pfls3
    .inttab_tc3_0D9 (TEXT) BIND(__INTTAB_CPU3 + 0x1B20) : {KEEP (*(.inttab3.intvec.217)) } > pfls3
    .inttab_tc3_0DA (TEXT) BIND(__INTTAB_CPU3 + 0x1B40) : {KEEP (*(.inttab3.intvec.218)) } > pfls3
    .inttab_tc3_0DB (TEXT) BIND(__INTTAB_CPU3 + 0x1B60) : {KEEP (*(.inttab3.intvec.219)) } > pfls3
    .inttab_tc3_0DC (TEXT) BIND(__INTTAB_CPU3 + 0x1B80) : {KEEP (*(.inttab3.intvec.220)) } > pfls3
    .inttab_tc3_0DD (TEXT) BIND(__INTTAB_CPU3 + 0x1BA0) : {KEEP (*(.inttab3.intvec.221)) } > pfls3
    .inttab_tc3_0DE (TEXT) BIND(__INTTAB_CPU3 + 0x1BC0) : {KEEP (*(.inttab3.intvec.222)) } > pfls3
    .inttab_tc3_0DF (TEXT) BIND(__INTTAB_CPU3 + 0x1BE0) : {KEEP (*(.inttab3.intvec.223)) } > pfls3
    .inttab_tc3_0E0 (TEXT) BIND(__INTTAB_CPU3 + 0x1C00) : {KEEP (*(.inttab3.intvec.224)) } > pfls3
    .inttab_tc3_0E1 (TEXT) BIND(__INTTAB_CPU3 + 0x1C20) : {KEEP (*(.inttab3.intvec.225)) } > pfls3
    .inttab_tc3_0E2 (TEXT) BIND(__INTTAB_CPU3 + 0x1C40) : {KEEP (*(.inttab3.intvec.226)) } > pfls3
    .inttab_tc3_0E3 (TEXT) BIND(__INTTAB_CPU3 + 0x1C60) : {KEEP (*(.inttab3.intvec.227)) } > pfls3
    .inttab_tc3_0E4 (TEXT) BIND(__INTTAB_CPU3 + 0x1C80) : {KEEP (*(.inttab3.intvec.228)) } > pfls3
    .inttab_tc3_0E5 (TEXT) BIND(__INTTAB_CPU3 + 0x1CA0) : {KEEP (*(.inttab3.intvec.229)) } > pfls3
    .inttab_tc3_0E6 (TEXT) BIND(__INTTAB_CPU3 + 0x1CC0) : {KEEP (*(.inttab3.intvec.230)) } > pfls3
    .inttab_tc3_0E7 (TEXT) BIND(__INTTAB_CPU3 + 0x1CE0) : {KEEP (*(.inttab3.intvec.231)) } > pfls3
    .inttab_tc3_0E8 (TEXT) BIND(__INTTAB_CPU3 + 0x1D00) : {KEEP (*(.inttab3.intvec.232)) } > pfls3
    .inttab_tc3_0E9 (TEXT) BIND(__INTTAB_CPU3 + 0x1D20) : {KEEP (*(.inttab3.intvec.233)) } > pfls3
    .inttab_tc3_0EA (TEXT) BIND(__INTTAB_CPU3 + 0x1D40) : {KEEP (*(.inttab3.intvec.234)) } > pfls3
    .inttab_tc3_0EB (TEXT) BIND(__INTTAB_CPU3 + 0x1D60) : {KEEP (*(.inttab3.intvec.235)) } > pfls3
    .inttab_tc3_0EC (TEXT) BIND(__INTTAB_CPU3 + 0x1D80) : {KEEP (*(.inttab3.intvec.236)) } > pfls3
    .inttab_tc3_0ED (TEXT) BIND(__INTTAB_CPU3 + 0x1DA0) : {KEEP (*(.inttab3.intvec.237)) } > pfls3
    .inttab_tc3_0EE (TEXT) BIND(__INTTAB_CPU3 + 0x1DC0) : {KEEP (*(.inttab3.intvec.238)) } > pfls3
    .inttab_tc3_0EF (TEXT) BIND(__INTTAB_CPU3 + 0x1DE0) : {KEEP (*(.inttab3.intvec.239)) } > pfls3
    .inttab_tc3_0F0 (TEXT) BIND(__INTTAB_CPU3 + 0x1E00) : {KEEP (*(.inttab3.intvec.240)) } > pfls3
    .inttab_tc3_0F1 (TEXT) BIND(__INTTAB_CPU3 + 0x1E20) : {KEEP (*(.inttab3.intvec.241)) } > pfls3
    .inttab_tc3_0F2 (TEXT) BIND(__INTTAB_CPU3 + 0x1E40) : {KEEP (*(.inttab3.intvec.242)) } > pfls3
    .inttab_tc3_0F3 (TEXT) BIND(__INTTAB_CPU3 + 0x1E60) : {KEEP (*(.inttab3.intvec.243)) } > pfls3
    .inttab_tc3_0F4 (TEXT) BIND(__INTTAB_CPU3 + 0x1E80) : {KEEP (*(.inttab3.intvec.244)) } > pfls3
    .inttab_tc3_0F5 (TEXT) BIND(__INTTAB_CPU3 + 0x1EA0) : {KEEP (*(.inttab3.intvec.245)) } > pfls3
    .inttab_tc3_0F6 (TEXT) BIND(__INTTAB_CPU3 + 0x1EC0) : {KEEP (*(.inttab3.intvec.246)) } > pfls3
    .inttab_tc3_0F7 (TEXT) BIND(__INTTAB_CPU3 + 0x1EE0) : {KEEP (*(.inttab3.intvec.247)) } > pfls3
    .inttab_tc3_0F8 (TEXT) BIND(__INTTAB_CPU3 + 0x1F00) : {KEEP (*(.inttab3.intvec.248)) } > pfls3
    .inttab_tc3_0F9 (TEXT) BIND(__INTTAB_CPU3 + 0x1F20) : {KEEP (*(.inttab3.intvec.249)) } > pfls3
    .inttab_tc3_0FA (TEXT) BIND(__INTTAB_CPU3 + 0x1F40) : {KEEP (*(.inttab3.intvec.250)) } > pfls3
    .inttab_tc3_0FB (TEXT) BIND(__INTTAB_CPU3 + 0x1F60) : {KEEP (*(.inttab3.intvec.251)) } > pfls3
    .inttab_tc3_0FC (TEXT) BIND(__INTTAB_CPU3 + 0x1F80) : {KEEP (*(.inttab3.intvec.252)) } > pfls3
    .inttab_tc3_0FD (TEXT) BIND(__INTTAB_CPU3 + 0x1FA0) : {KEEP (*(.inttab3.intvec.253)) } > pfls3
    .inttab_tc3_0FE (TEXT) BIND(__INTTAB_CPU3 + 0x1FC0) : {KEEP (*(.inttab3.intvec.254)) } > pfls3
    .inttab_tc3_0FF (TEXT) BIND(__INTTAB_CPU3 + 0x1FE0) : {KEEP (*(.inttab3.intvec.255)) } > pfls3

    /*CPU4 Interrupt Vector Table*/
    .inttab_tc4_000 (TEXT) BIND(__INTTAB_CPU4 + 0x0000) : {KEEP (*(.inttab4.intvec.0  )) } > pfls4
    .inttab_tc4_001 (TEXT) BIND(__INTTAB_CPU4 + 0x0020) : {KEEP (*(.inttab4.intvec.1  )) } > pfls4
    .inttab_tc4_002 (TEXT) BIND(__INTTAB_CPU4 + 0x0040) : {KEEP (*(.inttab4.intvec.2  )) } > pfls4
    .inttab_tc4_003 (TEXT) BIND(__INTTAB_CPU4 + 0x0060) : {KEEP (*(.inttab4.intvec.3  )) } > pfls4
    .inttab_tc4_004 (TEXT) BIND(__INTTAB_CPU4 + 0x0080) : {KEEP (*(.inttab4.intvec.4  )) } > pfls4
    .inttab_tc4_005 (TEXT) BIND(__INTTAB_CPU4 + 0x00A0) : {KEEP (*(.inttab4.intvec.5  )) } > pfls4
    .inttab_tc4_006 (TEXT) BIND(__INTTAB_CPU4 + 0x00C0) : {KEEP (*(.inttab4.intvec.6  )) } > pfls4
    .inttab_tc4_007 (TEXT) BIND(__INTTAB_CPU4 + 0x00E0) : {KEEP (*(.inttab4.intvec.7  )) } > pfls4
    .inttab_tc4_008 (TEXT) BIND(__INTTAB_CPU4 + 0x0100) : {KEEP (*(.inttab4.intvec.8  )) } > pfls4
    .inttab_tc4_009 (TEXT) BIND(__INTTAB_CPU4 + 0x0120) : {KEEP (*(.inttab4.intvec.9  )) } > pfls4
    .inttab_tc4_00A (TEXT) BIND(__INTTAB_CPU4 + 0x0140) : {KEEP (*(.inttab4.intvec.10 )) } > pfls4
    .inttab_tc4_00B (TEXT) BIND(__INTTAB_CPU4 + 0x0160) : {KEEP (*(.inttab4.intvec.11 )) } > pfls4
    .inttab_tc4_00C (TEXT) BIND(__INTTAB_CPU4 + 0x0180) : {KEEP (*(.inttab4.intvec.12 )) } > pfls4
    .inttab_tc4_00D (TEXT) BIND(__INTTAB_CPU4 + 0x01A0) : {KEEP (*(.inttab4.intvec.13 )) } > pfls4
    .inttab_tc4_00E (TEXT) BIND(__INTTAB_CPU4 + 0x01C0) : {KEEP (*(.inttab4.intvec.14 )) } > pfls4
    .inttab_tc4_00F (TEXT) BIND(__INTTAB_CPU4 + 0x01E0) : {KEEP (*(.inttab4.intvec.15 )) } > pfls4
    .inttab_tc4_010 (TEXT) BIND(__INTTAB_CPU4 + 0x0200) : {KEEP (*(.inttab4.intvec.16 )) } > pfls4
    .inttab_tc4_011 (TEXT) BIND(__INTTAB_CPU4 + 0x0220) : {KEEP (*(.inttab4.intvec.17 )) } > pfls4
    .inttab_tc4_012 (TEXT) BIND(__INTTAB_CPU4 + 0x0240) : {KEEP (*(.inttab4.intvec.18 )) } > pfls4
    .inttab_tc4_013 (TEXT) BIND(__INTTAB_CPU4 + 0x0260) : {KEEP (*(.inttab4.intvec.19 )) } > pfls4
    .inttab_tc4_014 (TEXT) BIND(__INTTAB_CPU4 + 0x0280) : {KEEP (*(.inttab4.intvec.20 )) } > pfls4
    .inttab_tc4_015 (TEXT) BIND(__INTTAB_CPU4 + 0x02A0) : {KEEP (*(.inttab4.intvec.21 )) } > pfls4
    .inttab_tc4_016 (TEXT) BIND(__INTTAB_CPU4 + 0x02C0) : {KEEP (*(.inttab4.intvec.22 )) } > pfls4
    .inttab_tc4_017 (TEXT) BIND(__INTTAB_CPU4 + 0x02E0) : {KEEP (*(.inttab4.intvec.23 )) } > pfls4
    .inttab_tc4_018 (TEXT) BIND(__INTTAB_CPU4 + 0x0300) : {KEEP (*(.inttab4.intvec.24 )) } > pfls4
    .inttab_tc4_019 (TEXT) BIND(__INTTAB_CPU4 + 0x0320) : {KEEP (*(.inttab4.intvec.25 )) } > pfls4
    .inttab_tc4_01A (TEXT) BIND(__INTTAB_CPU4 + 0x0340) : {KEEP (*(.inttab4.intvec.26 )) } > pfls4
    .inttab_tc4_01B (TEXT) BIND(__INTTAB_CPU4 + 0x0360) : {KEEP (*(.inttab4.intvec.27 )) } > pfls4
    .inttab_tc4_01C (TEXT) BIND(__INTTAB_CPU4 + 0x0380) : {KEEP (*(.inttab4.intvec.28 )) } > pfls4
    .inttab_tc4_01D (TEXT) BIND(__INTTAB_CPU4 + 0x03A0) : {KEEP (*(.inttab4.intvec.29 )) } > pfls4
    .inttab_tc4_01E (TEXT) BIND(__INTTAB_CPU4 + 0x03C0) : {KEEP (*(.inttab4.intvec.30 )) } > pfls4
    .inttab_tc4_01F (TEXT) BIND(__INTTAB_CPU4 + 0x03E0) : {KEEP (*(.inttab4.intvec.31 )) } > pfls4
    .inttab_tc4_020 (TEXT) BIND(__INTTAB_CPU4 + 0x0400) : {KEEP (*(.inttab4.intvec.32 )) } > pfls4
    .inttab_tc4_021 (TEXT) BIND(__INTTAB_CPU4 + 0x0420) : {KEEP (*(.inttab4.intvec.33 )) } > pfls4
    .inttab_tc4_022 (TEXT) BIND(__INTTAB_CPU4 + 0x0440) : {KEEP (*(.inttab4.intvec.34 )) } > pfls4
    .inttab_tc4_023 (TEXT) BIND(__INTTAB_CPU4 + 0x0460) : {KEEP (*(.inttab4.intvec.35 )) } > pfls4
    .inttab_tc4_024 (TEXT) BIND(__INTTAB_CPU4 + 0x0480) : {KEEP (*(.inttab4.intvec.36 )) } > pfls4
    .inttab_tc4_025 (TEXT) BIND(__INTTAB_CPU4 + 0x04A0) : {KEEP (*(.inttab4.intvec.37 )) } > pfls4
    .inttab_tc4_026 (TEXT) BIND(__INTTAB_CPU4 + 0x04C0) : {KEEP (*(.inttab4.intvec.38 )) } > pfls4
    .inttab_tc4_027 (TEXT) BIND(__INTTAB_CPU4 + 0x04E0) : {KEEP (*(.inttab4.intvec.39 )) } > pfls4
    .inttab_tc4_028 (TEXT) BIND(__INTTAB_CPU4 + 0x0500) : {KEEP (*(.inttab4.intvec.40 )) } > pfls4
    .inttab_tc4_029 (TEXT) BIND(__INTTAB_CPU4 + 0x0520) : {KEEP (*(.inttab4.intvec.41 )) } > pfls4
    .inttab_tc4_02A (TEXT) BIND(__INTTAB_CPU4 + 0x0540) : {KEEP (*(.inttab4.intvec.42 )) } > pfls4
    .inttab_tc4_02B (TEXT) BIND(__INTTAB_CPU4 + 0x0560) : {KEEP (*(.inttab4.intvec.43 )) } > pfls4
    .inttab_tc4_02C (TEXT) BIND(__INTTAB_CPU4 + 0x0580) : {KEEP (*(.inttab4.intvec.44 )) } > pfls4
    .inttab_tc4_02D (TEXT) BIND(__INTTAB_CPU4 + 0x05A0) : {KEEP (*(.inttab4.intvec.45 )) } > pfls4
    .inttab_tc4_02E (TEXT) BIND(__INTTAB_CPU4 + 0x05C0) : {KEEP (*(.inttab4.intvec.46 )) } > pfls4
    .inttab_tc4_02F (TEXT) BIND(__INTTAB_CPU4 + 0x05E0) : {KEEP (*(.inttab4.intvec.47 )) } > pfls4
    .inttab_tc4_030 (TEXT) BIND(__INTTAB_CPU4 + 0x0600) : {KEEP (*(.inttab4.intvec.48 )) } > pfls4
    .inttab_tc4_031 (TEXT) BIND(__INTTAB_CPU4 + 0x0620) : {KEEP (*(.inttab4.intvec.49 )) } > pfls4
    .inttab_tc4_032 (TEXT) BIND(__INTTAB_CPU4 + 0x0640) : {KEEP (*(.inttab4.intvec.50 )) } > pfls4
    .inttab_tc4_033 (TEXT) BIND(__INTTAB_CPU4 + 0x0660) : {KEEP (*(.inttab4.intvec.51 )) } > pfls4
    .inttab_tc4_034 (TEXT) BIND(__INTTAB_CPU4 + 0x0680) : {KEEP (*(.inttab4.intvec.52 )) } > pfls4
    .inttab_tc4_035 (TEXT) BIND(__INTTAB_CPU4 + 0x06A0) : {KEEP (*(.inttab4.intvec.53 )) } > pfls4
    .inttab_tc4_036 (TEXT) BIND(__INTTAB_CPU4 + 0x06C0) : {KEEP (*(.inttab4.intvec.54 )) } > pfls4
    .inttab_tc4_037 (TEXT) BIND(__INTTAB_CPU4 + 0x06E0) : {KEEP (*(.inttab4.intvec.55 )) } > pfls4
    .inttab_tc4_038 (TEXT) BIND(__INTTAB_CPU4 + 0x0700) : {KEEP (*(.inttab4.intvec.56 )) } > pfls4
    .inttab_tc4_039 (TEXT) BIND(__INTTAB_CPU4 + 0x0720) : {KEEP (*(.inttab4.intvec.57 )) } > pfls4
    .inttab_tc4_03A (TEXT) BIND(__INTTAB_CPU4 + 0x0740) : {KEEP (*(.inttab4.intvec.58 )) } > pfls4
    .inttab_tc4_03B (TEXT) BIND(__INTTAB_CPU4 + 0x0760) : {KEEP (*(.inttab4.intvec.59 )) } > pfls4
    .inttab_tc4_03C (TEXT) BIND(__INTTAB_CPU4 + 0x0780) : {KEEP (*(.inttab4.intvec.60 )) } > pfls4
    .inttab_tc4_03D (TEXT) BIND(__INTTAB_CPU4 + 0x07A0) : {KEEP (*(.inttab4.intvec.61 )) } > pfls4
    .inttab_tc4_03E (TEXT) BIND(__INTTAB_CPU4 + 0x07C0) : {KEEP (*(.inttab4.intvec.62 )) } > pfls4
    .inttab_tc4_03F (TEXT) BIND(__INTTAB_CPU4 + 0x07E0) : {KEEP (*(.inttab4.intvec.63 )) } > pfls4
    .inttab_tc4_040 (TEXT) BIND(__INTTAB_CPU4 + 0x0800) : {KEEP (*(.inttab4.intvec.64 )) } > pfls4
    .inttab_tc4_041 (TEXT) BIND(__INTTAB_CPU4 + 0x0820) : {KEEP (*(.inttab4.intvec.65 )) } > pfls4
    .inttab_tc4_042 (TEXT) BIND(__INTTAB_CPU4 + 0x0840) : {KEEP (*(.inttab4.intvec.66 )) } > pfls4
    .inttab_tc4_043 (TEXT) BIND(__INTTAB_CPU4 + 0x0860) : {KEEP (*(.inttab4.intvec.67 )) } > pfls4
    .inttab_tc4_044 (TEXT) BIND(__INTTAB_CPU4 + 0x0880) : {KEEP (*(.inttab4.intvec.68 )) } > pfls4
    .inttab_tc4_045 (TEXT) BIND(__INTTAB_CPU4 + 0x08A0) : {KEEP (*(.inttab4.intvec.69 )) } > pfls4
    .inttab_tc4_046 (TEXT) BIND(__INTTAB_CPU4 + 0x08C0) : {KEEP (*(.inttab4.intvec.70 )) } > pfls4
    .inttab_tc4_047 (TEXT) BIND(__INTTAB_CPU4 + 0x08E0) : {KEEP (*(.inttab4.intvec.71 )) } > pfls4
    .inttab_tc4_048 (TEXT) BIND(__INTTAB_CPU4 + 0x0900) : {KEEP (*(.inttab4.intvec.72 )) } > pfls4
    .inttab_tc4_049 (TEXT) BIND(__INTTAB_CPU4 + 0x0920) : {KEEP (*(.inttab4.intvec.73 )) } > pfls4
    .inttab_tc4_04A (TEXT) BIND(__INTTAB_CPU4 + 0x0940) : {KEEP (*(.inttab4.intvec.74 )) } > pfls4
    .inttab_tc4_04B (TEXT) BIND(__INTTAB_CPU4 + 0x0960) : {KEEP (*(.inttab4.intvec.75 )) } > pfls4
    .inttab_tc4_04C (TEXT) BIND(__INTTAB_CPU4 + 0x0980) : {KEEP (*(.inttab4.intvec.76 )) } > pfls4
    .inttab_tc4_04D (TEXT) BIND(__INTTAB_CPU4 + 0x09A0) : {KEEP (*(.inttab4.intvec.77 )) } > pfls4
    .inttab_tc4_04E (TEXT) BIND(__INTTAB_CPU4 + 0x09C0) : {KEEP (*(.inttab4.intvec.78 )) } > pfls4
    .inttab_tc4_04F (TEXT) BIND(__INTTAB_CPU4 + 0x09E0) : {KEEP (*(.inttab4.intvec.79 )) } > pfls4
    .inttab_tc4_050 (TEXT) BIND(__INTTAB_CPU4 + 0x0A00) : {KEEP (*(.inttab4.intvec.80 )) } > pfls4
    .inttab_tc4_051 (TEXT) BIND(__INTTAB_CPU4 + 0x0A20) : {KEEP (*(.inttab4.intvec.81 )) } > pfls4
    .inttab_tc4_052 (TEXT) BIND(__INTTAB_CPU4 + 0x0A40) : {KEEP (*(.inttab4.intvec.82 )) } > pfls4
    .inttab_tc4_053 (TEXT) BIND(__INTTAB_CPU4 + 0x0A60) : {KEEP (*(.inttab4.intvec.83 )) } > pfls4
    .inttab_tc4_054 (TEXT) BIND(__INTTAB_CPU4 + 0x0A80) : {KEEP (*(.inttab4.intvec.84 )) } > pfls4
    .inttab_tc4_055 (TEXT) BIND(__INTTAB_CPU4 + 0x0AA0) : {KEEP (*(.inttab4.intvec.85 )) } > pfls4
    .inttab_tc4_056 (TEXT) BIND(__INTTAB_CPU4 + 0x0AC0) : {KEEP (*(.inttab4.intvec.86 )) } > pfls4
    .inttab_tc4_057 (TEXT) BIND(__INTTAB_CPU4 + 0x0AE0) : {KEEP (*(.inttab4.intvec.87 )) } > pfls4
    .inttab_tc4_058 (TEXT) BIND(__INTTAB_CPU4 + 0x0B00) : {KEEP (*(.inttab4.intvec.88 )) } > pfls4
    .inttab_tc4_059 (TEXT) BIND(__INTTAB_CPU4 + 0x0B20) : {KEEP (*(.inttab4.intvec.89 )) } > pfls4
    .inttab_tc4_05A (TEXT) BIND(__INTTAB_CPU4 + 0x0B40) : {KEEP (*(.inttab4.intvec.90 )) } > pfls4
    .inttab_tc4_05B (TEXT) BIND(__INTTAB_CPU4 + 0x0B60) : {KEEP (*(.inttab4.intvec.91 )) } > pfls4
    .inttab_tc4_05C (TEXT) BIND(__INTTAB_CPU4 + 0x0B80) : {KEEP (*(.inttab4.intvec.92 )) } > pfls4
    .inttab_tc4_05D (TEXT) BIND(__INTTAB_CPU4 + 0x0BA0) : {KEEP (*(.inttab4.intvec.93 )) } > pfls4
    .inttab_tc4_05E (TEXT) BIND(__INTTAB_CPU4 + 0x0BC0) : {KEEP (*(.inttab4.intvec.94 )) } > pfls4
    .inttab_tc4_05F (TEXT) BIND(__INTTAB_CPU4 + 0x0BE0) : {KEEP (*(.inttab4.intvec.95 )) } > pfls4
    .inttab_tc4_060 (TEXT) BIND(__INTTAB_CPU4 + 0x0C00) : {KEEP (*(.inttab4.intvec.96 )) } > pfls4
    .inttab_tc4_061 (TEXT) BIND(__INTTAB_CPU4 + 0x0C20) : {KEEP (*(.inttab4.intvec.97 )) } > pfls4
    .inttab_tc4_062 (TEXT) BIND(__INTTAB_CPU4 + 0x0C40) : {KEEP (*(.inttab4.intvec.98 )) } > pfls4
    .inttab_tc4_063 (TEXT) BIND(__INTTAB_CPU4 + 0x0C60) : {KEEP (*(.inttab4.intvec.99 )) } > pfls4
    .inttab_tc4_064 (TEXT) BIND(__INTTAB_CPU4 + 0x0C80) : {KEEP (*(.inttab4.intvec.100)) } > pfls4
    .inttab_tc4_065 (TEXT) BIND(__INTTAB_CPU4 + 0x0CA0) : {KEEP (*(.inttab4.intvec.101)) } > pfls4
    .inttab_tc4_066 (TEXT) BIND(__INTTAB_CPU4 + 0x0CC0) : {KEEP (*(.inttab4.intvec.102)) } > pfls4
    .inttab_tc4_067 (TEXT) BIND(__INTTAB_CPU4 + 0x0CE0) : {KEEP (*(.inttab4.intvec.103)) } > pfls4
    .inttab_tc4_068 (TEXT) BIND(__INTTAB_CPU4 + 0x0D00) : {KEEP (*(.inttab4.intvec.104)) } > pfls4
    .inttab_tc4_069 (TEXT) BIND(__INTTAB_CPU4 + 0x0D20) : {KEEP (*(.inttab4.intvec.105)) } > pfls4
    .inttab_tc4_06A (TEXT) BIND(__INTTAB_CPU4 + 0x0D40) : {KEEP (*(.inttab4.intvec.106)) } > pfls4
    .inttab_tc4_06B (TEXT) BIND(__INTTAB_CPU4 + 0x0D60) : {KEEP (*(.inttab4.intvec.107)) } > pfls4
    .inttab_tc4_06C (TEXT) BIND(__INTTAB_CPU4 + 0x0D80) : {KEEP (*(.inttab4.intvec.108)) } > pfls4
    .inttab_tc4_06D (TEXT) BIND(__INTTAB_CPU4 + 0x0DA0) : {KEEP (*(.inttab4.intvec.109)) } > pfls4
    .inttab_tc4_06E (TEXT) BIND(__INTTAB_CPU4 + 0x0DC0) : {KEEP (*(.inttab4.intvec.110)) } > pfls4
    .inttab_tc4_06F (TEXT) BIND(__INTTAB_CPU4 + 0x0DE0) : {KEEP (*(.inttab4.intvec.111)) } > pfls4
    .inttab_tc4_070 (TEXT) BIND(__INTTAB_CPU4 + 0x0E00) : {KEEP (*(.inttab4.intvec.112)) } > pfls4
    .inttab_tc4_071 (TEXT) BIND(__INTTAB_CPU4 + 0x0E20) : {KEEP (*(.inttab4.intvec.113)) } > pfls4
    .inttab_tc4_072 (TEXT) BIND(__INTTAB_CPU4 + 0x0E40) : {KEEP (*(.inttab4.intvec.114)) } > pfls4
    .inttab_tc4_073 (TEXT) BIND(__INTTAB_CPU4 + 0x0E60) : {KEEP (*(.inttab4.intvec.115)) } > pfls4
    .inttab_tc4_074 (TEXT) BIND(__INTTAB_CPU4 + 0x0E80) : {KEEP (*(.inttab4.intvec.116)) } > pfls4
    .inttab_tc4_075 (TEXT) BIND(__INTTAB_CPU4 + 0x0EA0) : {KEEP (*(.inttab4.intvec.117)) } > pfls4
    .inttab_tc4_076 (TEXT) BIND(__INTTAB_CPU4 + 0x0EC0) : {KEEP (*(.inttab4.intvec.118)) } > pfls4
    .inttab_tc4_077 (TEXT) BIND(__INTTAB_CPU4 + 0x0EE0) : {KEEP (*(.inttab4.intvec.119)) } > pfls4
    .inttab_tc4_078 (TEXT) BIND(__INTTAB_CPU4 + 0x0F00) : {KEEP (*(.inttab4.intvec.120)) } > pfls4
    .inttab_tc4_079 (TEXT) BIND(__INTTAB_CPU4 + 0x0F20) : {KEEP (*(.inttab4.intvec.121)) } > pfls4
    .inttab_tc4_07A (TEXT) BIND(__INTTAB_CPU4 + 0x0F40) : {KEEP (*(.inttab4.intvec.122)) } > pfls4
    .inttab_tc4_07B (TEXT) BIND(__INTTAB_CPU4 + 0x0F60) : {KEEP (*(.inttab4.intvec.123)) } > pfls4
    .inttab_tc4_07C (TEXT) BIND(__INTTAB_CPU4 + 0x0F80) : {KEEP (*(.inttab4.intvec.124)) } > pfls4
    .inttab_tc4_07D (TEXT) BIND(__INTTAB_CPU4 + 0x0FA0) : {KEEP (*(.inttab4.intvec.125)) } > pfls4
    .inttab_tc4_07E (TEXT) BIND(__INTTAB_CPU4 + 0x0FC0) : {KEEP (*(.inttab4.intvec.126)) } > pfls4
    .inttab_tc4_07F (TEXT) BIND(__INTTAB_CPU4 + 0x0FE0) : {KEEP (*(.inttab4.intvec.127)) } > pfls4
    .inttab_tc4_080 (TEXT) BIND(__INTTAB_CPU4 + 0x1000) : {KEEP (*(.inttab4.intvec.128)) } > pfls4
    .inttab_tc4_081 (TEXT) BIND(__INTTAB_CPU4 + 0x1020) : {KEEP (*(.inttab4.intvec.129)) } > pfls4
    .inttab_tc4_082 (TEXT) BIND(__INTTAB_CPU4 + 0x1040) : {KEEP (*(.inttab4.intvec.130)) } > pfls4
    .inttab_tc4_083 (TEXT) BIND(__INTTAB_CPU4 + 0x1060) : {KEEP (*(.inttab4.intvec.131)) } > pfls4
    .inttab_tc4_084 (TEXT) BIND(__INTTAB_CPU4 + 0x1080) : {KEEP (*(.inttab4.intvec.132)) } > pfls4
    .inttab_tc4_085 (TEXT) BIND(__INTTAB_CPU4 + 0x10A0) : {KEEP (*(.inttab4.intvec.133)) } > pfls4
    .inttab_tc4_086 (TEXT) BIND(__INTTAB_CPU4 + 0x10C0) : {KEEP (*(.inttab4.intvec.134)) } > pfls4
    .inttab_tc4_087 (TEXT) BIND(__INTTAB_CPU4 + 0x10E0) : {KEEP (*(.inttab4.intvec.135)) } > pfls4
    .inttab_tc4_088 (TEXT) BIND(__INTTAB_CPU4 + 0x1100) : {KEEP (*(.inttab4.intvec.136)) } > pfls4
    .inttab_tc4_089 (TEXT) BIND(__INTTAB_CPU4 + 0x1120) : {KEEP (*(.inttab4.intvec.137)) } > pfls4
    .inttab_tc4_08A (TEXT) BIND(__INTTAB_CPU4 + 0x1140) : {KEEP (*(.inttab4.intvec.138)) } > pfls4
    .inttab_tc4_08B (TEXT) BIND(__INTTAB_CPU4 + 0x1160) : {KEEP (*(.inttab4.intvec.139)) } > pfls4
    .inttab_tc4_08C (TEXT) BIND(__INTTAB_CPU4 + 0x1180) : {KEEP (*(.inttab4.intvec.140)) } > pfls4
    .inttab_tc4_08D (TEXT) BIND(__INTTAB_CPU4 + 0x11A0) : {KEEP (*(.inttab4.intvec.141)) } > pfls4
    .inttab_tc4_08E (TEXT) BIND(__INTTAB_CPU4 + 0x11C0) : {KEEP (*(.inttab4.intvec.142)) } > pfls4
    .inttab_tc4_08F (TEXT) BIND(__INTTAB_CPU4 + 0x11E0) : {KEEP (*(.inttab4.intvec.143)) } > pfls4
    .inttab_tc4_090 (TEXT) BIND(__INTTAB_CPU4 + 0x1200) : {KEEP (*(.inttab4.intvec.144)) } > pfls4
    .inttab_tc4_091 (TEXT) BIND(__INTTAB_CPU4 + 0x1220) : {KEEP (*(.inttab4.intvec.145)) } > pfls4
    .inttab_tc4_092 (TEXT) BIND(__INTTAB_CPU4 + 0x1240) : {KEEP (*(.inttab4.intvec.146)) } > pfls4
    .inttab_tc4_093 (TEXT) BIND(__INTTAB_CPU4 + 0x1260) : {KEEP (*(.inttab4.intvec.147)) } > pfls4
    .inttab_tc4_094 (TEXT) BIND(__INTTAB_CPU4 + 0x1280) : {KEEP (*(.inttab4.intvec.148)) } > pfls4
    .inttab_tc4_095 (TEXT) BIND(__INTTAB_CPU4 + 0x12A0) : {KEEP (*(.inttab4.intvec.149)) } > pfls4
    .inttab_tc4_096 (TEXT) BIND(__INTTAB_CPU4 + 0x12C0) : {KEEP (*(.inttab4.intvec.150)) } > pfls4
    .inttab_tc4_097 (TEXT) BIND(__INTTAB_CPU4 + 0x12E0) : {KEEP (*(.inttab4.intvec.151)) } > pfls4
    .inttab_tc4_098 (TEXT) BIND(__INTTAB_CPU4 + 0x1300) : {KEEP (*(.inttab4.intvec.152)) } > pfls4
    .inttab_tc4_099 (TEXT) BIND(__INTTAB_CPU4 + 0x1320) : {KEEP (*(.inttab4.intvec.153)) } > pfls4
    .inttab_tc4_09A (TEXT) BIND(__INTTAB_CPU4 + 0x1340) : {KEEP (*(.inttab4.intvec.154)) } > pfls4
    .inttab_tc4_09B (TEXT) BIND(__INTTAB_CPU4 + 0x1360) : {KEEP (*(.inttab4.intvec.155)) } > pfls4
    .inttab_tc4_09C (TEXT) BIND(__INTTAB_CPU4 + 0x1380) : {KEEP (*(.inttab4.intvec.156)) } > pfls4
    .inttab_tc4_09D (TEXT) BIND(__INTTAB_CPU4 + 0x13A0) : {KEEP (*(.inttab4.intvec.157)) } > pfls4
    .inttab_tc4_09E (TEXT) BIND(__INTTAB_CPU4 + 0x13C0) : {KEEP (*(.inttab4.intvec.158)) } > pfls4
    .inttab_tc4_09F (TEXT) BIND(__INTTAB_CPU4 + 0x13E0) : {KEEP (*(.inttab4.intvec.159)) } > pfls4
    .inttab_tc4_0A0 (TEXT) BIND(__INTTAB_CPU4 + 0x1400) : {KEEP (*(.inttab4.intvec.160)) } > pfls4
    .inttab_tc4_0A1 (TEXT) BIND(__INTTAB_CPU4 + 0x1420) : {KEEP (*(.inttab4.intvec.161)) } > pfls4
    .inttab_tc4_0A2 (TEXT) BIND(__INTTAB_CPU4 + 0x1440) : {KEEP (*(.inttab4.intvec.162)) } > pfls4
    .inttab_tc4_0A3 (TEXT) BIND(__INTTAB_CPU4 + 0x1460) : {KEEP (*(.inttab4.intvec.163)) } > pfls4
    .inttab_tc4_0A4 (TEXT) BIND(__INTTAB_CPU4 + 0x1480) : {KEEP (*(.inttab4.intvec.164)) } > pfls4
    .inttab_tc4_0A5 (TEXT) BIND(__INTTAB_CPU4 + 0x14A0) : {KEEP (*(.inttab4.intvec.165)) } > pfls4
    .inttab_tc4_0A6 (TEXT) BIND(__INTTAB_CPU4 + 0x14C0) : {KEEP (*(.inttab4.intvec.166)) } > pfls4
    .inttab_tc4_0A7 (TEXT) BIND(__INTTAB_CPU4 + 0x14E0) : {KEEP (*(.inttab4.intvec.167)) } > pfls4
    .inttab_tc4_0A8 (TEXT) BIND(__INTTAB_CPU4 + 0x1500) : {KEEP (*(.inttab4.intvec.168)) } > pfls4
    .inttab_tc4_0A9 (TEXT) BIND(__INTTAB_CPU4 + 0x1520) : {KEEP (*(.inttab4.intvec.169)) } > pfls4
    .inttab_tc4_0AA (TEXT) BIND(__INTTAB_CPU4 + 0x1540) : {KEEP (*(.inttab4.intvec.170)) } > pfls4
    .inttab_tc4_0AB (TEXT) BIND(__INTTAB_CPU4 + 0x1560) : {KEEP (*(.inttab4.intvec.171)) } > pfls4
    .inttab_tc4_0AC (TEXT) BIND(__INTTAB_CPU4 + 0x1580) : {KEEP (*(.inttab4.intvec.172)) } > pfls4
    .inttab_tc4_0AD (TEXT) BIND(__INTTAB_CPU4 + 0x15A0) : {KEEP (*(.inttab4.intvec.173)) } > pfls4
    .inttab_tc4_0AE (TEXT) BIND(__INTTAB_CPU4 + 0x15C0) : {KEEP (*(.inttab4.intvec.174)) } > pfls4
    .inttab_tc4_0AF (TEXT) BIND(__INTTAB_CPU4 + 0x15E0) : {KEEP (*(.inttab4.intvec.175)) } > pfls4
    .inttab_tc4_0B0 (TEXT) BIND(__INTTAB_CPU4 + 0x1600) : {KEEP (*(.inttab4.intvec.176)) } > pfls4
    .inttab_tc4_0B1 (TEXT) BIND(__INTTAB_CPU4 + 0x1620) : {KEEP (*(.inttab4.intvec.177)) } > pfls4
    .inttab_tc4_0B2 (TEXT) BIND(__INTTAB_CPU4 + 0x1640) : {KEEP (*(.inttab4.intvec.178)) } > pfls4
    .inttab_tc4_0B3 (TEXT) BIND(__INTTAB_CPU4 + 0x1660) : {KEEP (*(.inttab4.intvec.179)) } > pfls4
    .inttab_tc4_0B4 (TEXT) BIND(__INTTAB_CPU4 + 0x1680) : {KEEP (*(.inttab4.intvec.180)) } > pfls4
    .inttab_tc4_0B5 (TEXT) BIND(__INTTAB_CPU4 + 0x16A0) : {KEEP (*(.inttab4.intvec.181)) } > pfls4
    .inttab_tc4_0B6 (TEXT) BIND(__INTTAB_CPU4 + 0x16C0) : {KEEP (*(.inttab4.intvec.182)) } > pfls4
    .inttab_tc4_0B7 (TEXT) BIND(__INTTAB_CPU4 + 0x16E0) : {KEEP (*(.inttab4.intvec.183)) } > pfls4
    .inttab_tc4_0B8 (TEXT) BIND(__INTTAB_CPU4 + 0x1700) : {KEEP (*(.inttab4.intvec.184)) } > pfls4
    .inttab_tc4_0B9 (TEXT) BIND(__INTTAB_CPU4 + 0x1720) : {KEEP (*(.inttab4.intvec.185)) } > pfls4
    .inttab_tc4_0BA (TEXT) BIND(__INTTAB_CPU4 + 0x1740) : {KEEP (*(.inttab4.intvec.186)) } > pfls4
    .inttab_tc4_0BB (TEXT) BIND(__INTTAB_CPU4 + 0x1760) : {KEEP (*(.inttab4.intvec.187)) } > pfls4
    .inttab_tc4_0BC (TEXT) BIND(__INTTAB_CPU4 + 0x1780) : {KEEP (*(.inttab4.intvec.188)) } > pfls4
    .inttab_tc4_0BD (TEXT) BIND(__INTTAB_CPU4 + 0x17A0) : {KEEP (*(.inttab4.intvec.189)) } > pfls4
    .inttab_tc4_0BE (TEXT) BIND(__INTTAB_CPU4 + 0x17C0) : {KEEP (*(.inttab4.intvec.190)) } > pfls4
    .inttab_tc4_0BF (TEXT) BIND(__INTTAB_CPU4 + 0x17E0) : {KEEP (*(.inttab4.intvec.191)) } > pfls4
    .inttab_tc4_0C0 (TEXT) BIND(__INTTAB_CPU4 + 0x1800) : {KEEP (*(.inttab4.intvec.192)) } > pfls4
    .inttab_tc4_0C1 (TEXT) BIND(__INTTAB_CPU4 + 0x1820) : {KEEP (*(.inttab4.intvec.193)) } > pfls4
    .inttab_tc4_0C2 (TEXT) BIND(__INTTAB_CPU4 + 0x1840) : {KEEP (*(.inttab4.intvec.194)) } > pfls4
    .inttab_tc4_0C3 (TEXT) BIND(__INTTAB_CPU4 + 0x1860) : {KEEP (*(.inttab4.intvec.195)) } > pfls4
    .inttab_tc4_0C4 (TEXT) BIND(__INTTAB_CPU4 + 0x1880) : {KEEP (*(.inttab4.intvec.196)) } > pfls4
    .inttab_tc4_0C5 (TEXT) BIND(__INTTAB_CPU4 + 0x18A0) : {KEEP (*(.inttab4.intvec.197)) } > pfls4
    .inttab_tc4_0C6 (TEXT) BIND(__INTTAB_CPU4 + 0x18C0) : {KEEP (*(.inttab4.intvec.198)) } > pfls4
    .inttab_tc4_0C7 (TEXT) BIND(__INTTAB_CPU4 + 0x18E0) : {KEEP (*(.inttab4.intvec.199)) } > pfls4
    .inttab_tc4_0C8 (TEXT) BIND(__INTTAB_CPU4 + 0x1900) : {KEEP (*(.inttab4.intvec.200)) } > pfls4
    .inttab_tc4_0C9 (TEXT) BIND(__INTTAB_CPU4 + 0x1920) : {KEEP (*(.inttab4.intvec.201)) } > pfls4
    .inttab_tc4_0CA (TEXT) BIND(__INTTAB_CPU4 + 0x1940) : {KEEP (*(.inttab4.intvec.202)) } > pfls4
    .inttab_tc4_0CB (TEXT) BIND(__INTTAB_CPU4 + 0x1960) : {KEEP (*(.inttab4.intvec.203)) } > pfls4
    .inttab_tc4_0CC (TEXT) BIND(__INTTAB_CPU4 + 0x1980) : {KEEP (*(.inttab4.intvec.204)) } > pfls4
    .inttab_tc4_0CD (TEXT) BIND(__INTTAB_CPU4 + 0x19A0) : {KEEP (*(.inttab4.intvec.205)) } > pfls4
    .inttab_tc4_0CE (TEXT) BIND(__INTTAB_CPU4 + 0x19C0) : {KEEP (*(.inttab4.intvec.206)) } > pfls4
    .inttab_tc4_0CF (TEXT) BIND(__INTTAB_CPU4 + 0x19E0) : {KEEP (*(.inttab4.intvec.207)) } > pfls4
    .inttab_tc4_0D0 (TEXT) BIND(__INTTAB_CPU4 + 0x1A00) : {KEEP (*(.inttab4.intvec.208)) } > pfls4
    .inttab_tc4_0D1 (TEXT) BIND(__INTTAB_CPU4 + 0x1A20) : {KEEP (*(.inttab4.intvec.209)) } > pfls4
    .inttab_tc4_0D2 (TEXT) BIND(__INTTAB_CPU4 + 0x1A40) : {KEEP (*(.inttab4.intvec.210)) } > pfls4
    .inttab_tc4_0D3 (TEXT) BIND(__INTTAB_CPU4 + 0x1A60) : {KEEP (*(.inttab4.intvec.211)) } > pfls4
    .inttab_tc4_0D4 (TEXT) BIND(__INTTAB_CPU4 + 0x1A80) : {KEEP (*(.inttab4.intvec.212)) } > pfls4
    .inttab_tc4_0D5 (TEXT) BIND(__INTTAB_CPU4 + 0x1AA0) : {KEEP (*(.inttab4.intvec.213)) } > pfls4
    .inttab_tc4_0D6 (TEXT) BIND(__INTTAB_CPU4 + 0x1AC0) : {KEEP (*(.inttab4.intvec.214)) } > pfls4
    .inttab_tc4_0D7 (TEXT) BIND(__INTTAB_CPU4 + 0x1AE0) : {KEEP (*(.inttab4.intvec.215)) } > pfls4
    .inttab_tc4_0D8 (TEXT) BIND(__INTTAB_CPU4 + 0x1B00) : {KEEP (*(.inttab4.intvec.216)) } > pfls4
    .inttab_tc4_0D9 (TEXT) BIND(__INTTAB_CPU4 + 0x1B20) : {KEEP (*(.inttab4.intvec.217)) } > pfls4
    .inttab_tc4_0DA (TEXT) BIND(__INTTAB_CPU4 + 0x1B40) : {KEEP (*(.inttab4.intvec.218)) } > pfls4
    .inttab_tc4_0DB (TEXT) BIND(__INTTAB_CPU4 + 0x1B60) : {KEEP (*(.inttab4.intvec.219)) } > pfls4
    .inttab_tc4_0DC (TEXT) BIND(__INTTAB_CPU4 + 0x1B80) : {KEEP (*(.inttab4.intvec.220)) } > pfls4
    .inttab_tc4_0DD (TEXT) BIND(__INTTAB_CPU4 + 0x1BA0) : {KEEP (*(.inttab4.intvec.221)) } > pfls4
    .inttab_tc4_0DE (TEXT) BIND(__INTTAB_CPU4 + 0x1BC0) : {KEEP (*(.inttab4.intvec.222)) } > pfls4
    .inttab_tc4_0DF (TEXT) BIND(__INTTAB_CPU4 + 0x1BE0) : {KEEP (*(.inttab4.intvec.223)) } > pfls4
    .inttab_tc4_0E0 (TEXT) BIND(__INTTAB_CPU4 + 0x1C00) : {KEEP (*(.inttab4.intvec.224)) } > pfls4
    .inttab_tc4_0E1 (TEXT) BIND(__INTTAB_CPU4 + 0x1C20) : {KEEP (*(.inttab4.intvec.225)) } > pfls4
    .inttab_tc4_0E2 (TEXT) BIND(__INTTAB_CPU4 + 0x1C40) : {KEEP (*(.inttab4.intvec.226)) } > pfls4
    .inttab_tc4_0E3 (TEXT) BIND(__INTTAB_CPU4 + 0x1C60) : {KEEP (*(.inttab4.intvec.227)) } > pfls4
    .inttab_tc4_0E4 (TEXT) BIND(__INTTAB_CPU4 + 0x1C80) : {KEEP (*(.inttab4.intvec.228)) } > pfls4
    .inttab_tc4_0E5 (TEXT) BIND(__INTTAB_CPU4 + 0x1CA0) : {KEEP (*(.inttab4.intvec.229)) } > pfls4
    .inttab_tc4_0E6 (TEXT) BIND(__INTTAB_CPU4 + 0x1CC0) : {KEEP (*(.inttab4.intvec.230)) } > pfls4
    .inttab_tc4_0E7 (TEXT) BIND(__INTTAB_CPU4 + 0x1CE0) : {KEEP (*(.inttab4.intvec.231)) } > pfls4
    .inttab_tc4_0E8 (TEXT) BIND(__INTTAB_CPU4 + 0x1D00) : {KEEP (*(.inttab4.intvec.232)) } > pfls4
    .inttab_tc4_0E9 (TEXT) BIND(__INTTAB_CPU4 + 0x1D20) : {KEEP (*(.inttab4.intvec.233)) } > pfls4
    .inttab_tc4_0EA (TEXT) BIND(__INTTAB_CPU4 + 0x1D40) : {KEEP (*(.inttab4.intvec.234)) } > pfls4
    .inttab_tc4_0EB (TEXT) BIND(__INTTAB_CPU4 + 0x1D60) : {KEEP (*(.inttab4.intvec.235)) } > pfls4
    .inttab_tc4_0EC (TEXT) BIND(__INTTAB_CPU4 + 0x1D80) : {KEEP (*(.inttab4.intvec.236)) } > pfls4
    .inttab_tc4_0ED (TEXT) BIND(__INTTAB_CPU4 + 0x1DA0) : {KEEP (*(.inttab4.intvec.237)) } > pfls4
    .inttab_tc4_0EE (TEXT) BIND(__INTTAB_CPU4 + 0x1DC0) : {KEEP (*(.inttab4.intvec.238)) } > pfls4
    .inttab_tc4_0EF (TEXT) BIND(__INTTAB_CPU4 + 0x1DE0) : {KEEP (*(.inttab4.intvec.239)) } > pfls4
    .inttab_tc4_0F0 (TEXT) BIND(__INTTAB_CPU4 + 0x1E00) : {KEEP (*(.inttab4.intvec.240)) } > pfls4
    .inttab_tc4_0F1 (TEXT) BIND(__INTTAB_CPU4 + 0x1E20) : {KEEP (*(.inttab4.intvec.241)) } > pfls4
    .inttab_tc4_0F2 (TEXT) BIND(__INTTAB_CPU4 + 0x1E40) : {KEEP (*(.inttab4.intvec.242)) } > pfls4
    .inttab_tc4_0F3 (TEXT) BIND(__INTTAB_CPU4 + 0x1E60) : {KEEP (*(.inttab4.intvec.243)) } > pfls4
    .inttab_tc4_0F4 (TEXT) BIND(__INTTAB_CPU4 + 0x1E80) : {KEEP (*(.inttab4.intvec.244)) } > pfls4
    .inttab_tc4_0F5 (TEXT) BIND(__INTTAB_CPU4 + 0x1EA0) : {KEEP (*(.inttab4.intvec.245)) } > pfls4
    .inttab_tc4_0F6 (TEXT) BIND(__INTTAB_CPU4 + 0x1EC0) : {KEEP (*(.inttab4.intvec.246)) } > pfls4
    .inttab_tc4_0F7 (TEXT) BIND(__INTTAB_CPU4 + 0x1EE0) : {KEEP (*(.inttab4.intvec.247)) } > pfls4
    .inttab_tc4_0F8 (TEXT) BIND(__INTTAB_CPU4 + 0x1F00) : {KEEP (*(.inttab4.intvec.248)) } > pfls4
    .inttab_tc4_0F9 (TEXT) BIND(__INTTAB_CPU4 + 0x1F20) : {KEEP (*(.inttab4.intvec.249)) } > pfls4
    .inttab_tc4_0FA (TEXT) BIND(__INTTAB_CPU4 + 0x1F40) : {KEEP (*(.inttab4.intvec.250)) } > pfls4
    .inttab_tc4_0FB (TEXT) BIND(__INTTAB_CPU4 + 0x1F60) : {KEEP (*(.inttab4.intvec.251)) } > pfls4
    .inttab_tc4_0FC (TEXT) BIND(__INTTAB_CPU4 + 0x1F80) : {KEEP (*(.inttab4.intvec.252)) } > pfls4
    .inttab_tc4_0FD (TEXT) BIND(__INTTAB_CPU4 + 0x1FA0) : {KEEP (*(.inttab4.intvec.253)) } > pfls4
    .inttab_tc4_0FE (TEXT) BIND(__INTTAB_CPU4 + 0x1FC0) : {KEEP (*(.inttab4.intvec.254)) } > pfls4
    .inttab_tc4_0FF (TEXT) BIND(__INTTAB_CPU4 + 0x1FE0) : {KEEP (*(.inttab4.intvec.255)) } > pfls4
    
    /*CPU5 Interrupt Vector Table*/
    .inttab_tc5_000 (TEXT) BIND(__INTTAB_CPU5 + 0x0000) : {KEEP (*(.inttab5.intvec.0  )) } > pfls5
    .inttab_tc5_001 (TEXT) BIND(__INTTAB_CPU5 + 0x0020) : {KEEP (*(.inttab5.intvec.1  )) } > pfls5
    .inttab_tc5_002 (TEXT) BIND(__INTTAB_CPU5 + 0x0040) : {KEEP (*(.inttab5.intvec.2  )) } > pfls5
    .inttab_tc5_003 (TEXT) BIND(__INTTAB_CPU5 + 0x0060) : {KEEP (*(.inttab5.intvec.3  )) } > pfls5
    .inttab_tc5_004 (TEXT) BIND(__INTTAB_CPU5 + 0x0080) : {KEEP (*(.inttab5.intvec.4  )) } > pfls5
    .inttab_tc5_005 (TEXT) BIND(__INTTAB_CPU5 + 0x00A0) : {KEEP (*(.inttab5.intvec.5  )) } > pfls5
    .inttab_tc5_006 (TEXT) BIND(__INTTAB_CPU5 + 0x00C0) : {KEEP (*(.inttab5.intvec.6  )) } > pfls5
    .inttab_tc5_007 (TEXT) BIND(__INTTAB_CPU5 + 0x00E0) : {KEEP (*(.inttab5.intvec.7  )) } > pfls5
    .inttab_tc5_008 (TEXT) BIND(__INTTAB_CPU5 + 0x0100) : {KEEP (*(.inttab5.intvec.8  )) } > pfls5
    .inttab_tc5_009 (TEXT) BIND(__INTTAB_CPU5 + 0x0120) : {KEEP (*(.inttab5.intvec.9  )) } > pfls5
    .inttab_tc5_00A (TEXT) BIND(__INTTAB_CPU5 + 0x0140) : {KEEP (*(.inttab5.intvec.10 )) } > pfls5
    .inttab_tc5_00B (TEXT) BIND(__INTTAB_CPU5 + 0x0160) : {KEEP (*(.inttab5.intvec.11 )) } > pfls5
    .inttab_tc5_00C (TEXT) BIND(__INTTAB_CPU5 + 0x0180) : {KEEP (*(.inttab5.intvec.12 )) } > pfls5
    .inttab_tc5_00D (TEXT) BIND(__INTTAB_CPU5 + 0x01A0) : {KEEP (*(.inttab5.intvec.13 )) } > pfls5
    .inttab_tc5_00E (TEXT) BIND(__INTTAB_CPU5 + 0x01C0) : {KEEP (*(.inttab5.intvec.14 )) } > pfls5
    .inttab_tc5_00F (TEXT) BIND(__INTTAB_CPU5 + 0x01E0) : {KEEP (*(.inttab5.intvec.15 )) } > pfls5
    .inttab_tc5_010 (TEXT) BIND(__INTTAB_CPU5 + 0x0200) : {KEEP (*(.inttab5.intvec.16 )) } > pfls5
    .inttab_tc5_011 (TEXT) BIND(__INTTAB_CPU5 + 0x0220) : {KEEP (*(.inttab5.intvec.17 )) } > pfls5
    .inttab_tc5_012 (TEXT) BIND(__INTTAB_CPU5 + 0x0240) : {KEEP (*(.inttab5.intvec.18 )) } > pfls5
    .inttab_tc5_013 (TEXT) BIND(__INTTAB_CPU5 + 0x0260) : {KEEP (*(.inttab5.intvec.19 )) } > pfls5
    .inttab_tc5_014 (TEXT) BIND(__INTTAB_CPU5 + 0x0280) : {KEEP (*(.inttab5.intvec.20 )) } > pfls5
    .inttab_tc5_015 (TEXT) BIND(__INTTAB_CPU5 + 0x02A0) : {KEEP (*(.inttab5.intvec.21 )) } > pfls5
    .inttab_tc5_016 (TEXT) BIND(__INTTAB_CPU5 + 0x02C0) : {KEEP (*(.inttab5.intvec.22 )) } > pfls5
    .inttab_tc5_017 (TEXT) BIND(__INTTAB_CPU5 + 0x02E0) : {KEEP (*(.inttab5.intvec.23 )) } > pfls5
    .inttab_tc5_018 (TEXT) BIND(__INTTAB_CPU5 + 0x0300) : {KEEP (*(.inttab5.intvec.24 )) } > pfls5
    .inttab_tc5_019 (TEXT) BIND(__INTTAB_CPU5 + 0x0320) : {KEEP (*(.inttab5.intvec.25 )) } > pfls5
    .inttab_tc5_01A (TEXT) BIND(__INTTAB_CPU5 + 0x0340) : {KEEP (*(.inttab5.intvec.26 )) } > pfls5
    .inttab_tc5_01B (TEXT) BIND(__INTTAB_CPU5 + 0x0360) : {KEEP (*(.inttab5.intvec.27 )) } > pfls5
    .inttab_tc5_01C (TEXT) BIND(__INTTAB_CPU5 + 0x0380) : {KEEP (*(.inttab5.intvec.28 )) } > pfls5
    .inttab_tc5_01D (TEXT) BIND(__INTTAB_CPU5 + 0x03A0) : {KEEP (*(.inttab5.intvec.29 )) } > pfls5
    .inttab_tc5_01E (TEXT) BIND(__INTTAB_CPU5 + 0x03C0) : {KEEP (*(.inttab5.intvec.30 )) } > pfls5
    .inttab_tc5_01F (TEXT) BIND(__INTTAB_CPU5 + 0x03E0) : {KEEP (*(.inttab5.intvec.31 )) } > pfls5
    .inttab_tc5_020 (TEXT) BIND(__INTTAB_CPU5 + 0x0400) : {KEEP (*(.inttab5.intvec.32 )) } > pfls5
    .inttab_tc5_021 (TEXT) BIND(__INTTAB_CPU5 + 0x0420) : {KEEP (*(.inttab5.intvec.33 )) } > pfls5
    .inttab_tc5_022 (TEXT) BIND(__INTTAB_CPU5 + 0x0440) : {KEEP (*(.inttab5.intvec.34 )) } > pfls5
    .inttab_tc5_023 (TEXT) BIND(__INTTAB_CPU5 + 0x0460) : {KEEP (*(.inttab5.intvec.35 )) } > pfls5
    .inttab_tc5_024 (TEXT) BIND(__INTTAB_CPU5 + 0x0480) : {KEEP (*(.inttab5.intvec.36 )) } > pfls5
    .inttab_tc5_025 (TEXT) BIND(__INTTAB_CPU5 + 0x04A0) : {KEEP (*(.inttab5.intvec.37 )) } > pfls5
    .inttab_tc5_026 (TEXT) BIND(__INTTAB_CPU5 + 0x04C0) : {KEEP (*(.inttab5.intvec.38 )) } > pfls5
    .inttab_tc5_027 (TEXT) BIND(__INTTAB_CPU5 + 0x04E0) : {KEEP (*(.inttab5.intvec.39 )) } > pfls5
    .inttab_tc5_028 (TEXT) BIND(__INTTAB_CPU5 + 0x0500) : {KEEP (*(.inttab5.intvec.40 )) } > pfls5
    .inttab_tc5_029 (TEXT) BIND(__INTTAB_CPU5 + 0x0520) : {KEEP (*(.inttab5.intvec.41 )) } > pfls5
    .inttab_tc5_02A (TEXT) BIND(__INTTAB_CPU5 + 0x0540) : {KEEP (*(.inttab5.intvec.42 )) } > pfls5
    .inttab_tc5_02B (TEXT) BIND(__INTTAB_CPU5 + 0x0560) : {KEEP (*(.inttab5.intvec.43 )) } > pfls5
    .inttab_tc5_02C (TEXT) BIND(__INTTAB_CPU5 + 0x0580) : {KEEP (*(.inttab5.intvec.44 )) } > pfls5
    .inttab_tc5_02D (TEXT) BIND(__INTTAB_CPU5 + 0x05A0) : {KEEP (*(.inttab5.intvec.45 )) } > pfls5
    .inttab_tc5_02E (TEXT) BIND(__INTTAB_CPU5 + 0x05C0) : {KEEP (*(.inttab5.intvec.46 )) } > pfls5
    .inttab_tc5_02F (TEXT) BIND(__INTTAB_CPU5 + 0x05E0) : {KEEP (*(.inttab5.intvec.47 )) } > pfls5
    .inttab_tc5_030 (TEXT) BIND(__INTTAB_CPU5 + 0x0600) : {KEEP (*(.inttab5.intvec.48 )) } > pfls5
    .inttab_tc5_031 (TEXT) BIND(__INTTAB_CPU5 + 0x0620) : {KEEP (*(.inttab5.intvec.49 )) } > pfls5
    .inttab_tc5_032 (TEXT) BIND(__INTTAB_CPU5 + 0x0640) : {KEEP (*(.inttab5.intvec.50 )) } > pfls5
    .inttab_tc5_033 (TEXT) BIND(__INTTAB_CPU5 + 0x0660) : {KEEP (*(.inttab5.intvec.51 )) } > pfls5
    .inttab_tc5_034 (TEXT) BIND(__INTTAB_CPU5 + 0x0680) : {KEEP (*(.inttab5.intvec.52 )) } > pfls5
    .inttab_tc5_035 (TEXT) BIND(__INTTAB_CPU5 + 0x06A0) : {KEEP (*(.inttab5.intvec.53 )) } > pfls5
    .inttab_tc5_036 (TEXT) BIND(__INTTAB_CPU5 + 0x06C0) : {KEEP (*(.inttab5.intvec.54 )) } > pfls5
    .inttab_tc5_037 (TEXT) BIND(__INTTAB_CPU5 + 0x06E0) : {KEEP (*(.inttab5.intvec.55 )) } > pfls5
    .inttab_tc5_038 (TEXT) BIND(__INTTAB_CPU5 + 0x0700) : {KEEP (*(.inttab5.intvec.56 )) } > pfls5
    .inttab_tc5_039 (TEXT) BIND(__INTTAB_CPU5 + 0x0720) : {KEEP (*(.inttab5.intvec.57 )) } > pfls5
    .inttab_tc5_03A (TEXT) BIND(__INTTAB_CPU5 + 0x0740) : {KEEP (*(.inttab5.intvec.58 )) } > pfls5
    .inttab_tc5_03B (TEXT) BIND(__INTTAB_CPU5 + 0x0760) : {KEEP (*(.inttab5.intvec.59 )) } > pfls5
    .inttab_tc5_03C (TEXT) BIND(__INTTAB_CPU5 + 0x0780) : {KEEP (*(.inttab5.intvec.60 )) } > pfls5
    .inttab_tc5_03D (TEXT) BIND(__INTTAB_CPU5 + 0x07A0) : {KEEP (*(.inttab5.intvec.61 )) } > pfls5
    .inttab_tc5_03E (TEXT) BIND(__INTTAB_CPU5 + 0x07C0) : {KEEP (*(.inttab5.intvec.62 )) } > pfls5
    .inttab_tc5_03F (TEXT) BIND(__INTTAB_CPU5 + 0x07E0) : {KEEP (*(.inttab5.intvec.63 )) } > pfls5
    .inttab_tc5_040 (TEXT) BIND(__INTTAB_CPU5 + 0x0800) : {KEEP (*(.inttab5.intvec.64 )) } > pfls5
    .inttab_tc5_041 (TEXT) BIND(__INTTAB_CPU5 + 0x0820) : {KEEP (*(.inttab5.intvec.65 )) } > pfls5
    .inttab_tc5_042 (TEXT) BIND(__INTTAB_CPU5 + 0x0840) : {KEEP (*(.inttab5.intvec.66 )) } > pfls5
    .inttab_tc5_043 (TEXT) BIND(__INTTAB_CPU5 + 0x0860) : {KEEP (*(.inttab5.intvec.67 )) } > pfls5
    .inttab_tc5_044 (TEXT) BIND(__INTTAB_CPU5 + 0x0880) : {KEEP (*(.inttab5.intvec.68 )) } > pfls5
    .inttab_tc5_045 (TEXT) BIND(__INTTAB_CPU5 + 0x08A0) : {KEEP (*(.inttab5.intvec.69 )) } > pfls5
    .inttab_tc5_046 (TEXT) BIND(__INTTAB_CPU5 + 0x08C0) : {KEEP (*(.inttab5.intvec.70 )) } > pfls5
    .inttab_tc5_047 (TEXT) BIND(__INTTAB_CPU5 + 0x08E0) : {KEEP (*(.inttab5.intvec.71 )) } > pfls5
    .inttab_tc5_048 (TEXT) BIND(__INTTAB_CPU5 + 0x0900) : {KEEP (*(.inttab5.intvec.72 )) } > pfls5
    .inttab_tc5_049 (TEXT) BIND(__INTTAB_CPU5 + 0x0920) : {KEEP (*(.inttab5.intvec.73 )) } > pfls5
    .inttab_tc5_04A (TEXT) BIND(__INTTAB_CPU5 + 0x0940) : {KEEP (*(.inttab5.intvec.74 )) } > pfls5
    .inttab_tc5_04B (TEXT) BIND(__INTTAB_CPU5 + 0x0960) : {KEEP (*(.inttab5.intvec.75 )) } > pfls5
    .inttab_tc5_04C (TEXT) BIND(__INTTAB_CPU5 + 0x0980) : {KEEP (*(.inttab5.intvec.76 )) } > pfls5
    .inttab_tc5_04D (TEXT) BIND(__INTTAB_CPU5 + 0x09A0) : {KEEP (*(.inttab5.intvec.77 )) } > pfls5
    .inttab_tc5_04E (TEXT) BIND(__INTTAB_CPU5 + 0x09C0) : {KEEP (*(.inttab5.intvec.78 )) } > pfls5
    .inttab_tc5_04F (TEXT) BIND(__INTTAB_CPU5 + 0x09E0) : {KEEP (*(.inttab5.intvec.79 )) } > pfls5
    .inttab_tc5_050 (TEXT) BIND(__INTTAB_CPU5 + 0x0A00) : {KEEP (*(.inttab5.intvec.80 )) } > pfls5
    .inttab_tc5_051 (TEXT) BIND(__INTTAB_CPU5 + 0x0A20) : {KEEP (*(.inttab5.intvec.81 )) } > pfls5
    .inttab_tc5_052 (TEXT) BIND(__INTTAB_CPU5 + 0x0A40) : {KEEP (*(.inttab5.intvec.82 )) } > pfls5
    .inttab_tc5_053 (TEXT) BIND(__INTTAB_CPU5 + 0x0A60) : {KEEP (*(.inttab5.intvec.83 )) } > pfls5
    .inttab_tc5_054 (TEXT) BIND(__INTTAB_CPU5 + 0x0A80) : {KEEP (*(.inttab5.intvec.84 )) } > pfls5
    .inttab_tc5_055 (TEXT) BIND(__INTTAB_CPU5 + 0x0AA0) : {KEEP (*(.inttab5.intvec.85 )) } > pfls5
    .inttab_tc5_056 (TEXT) BIND(__INTTAB_CPU5 + 0x0AC0) : {KEEP (*(.inttab5.intvec.86 )) } > pfls5
    .inttab_tc5_057 (TEXT) BIND(__INTTAB_CPU5 + 0x0AE0) : {KEEP (*(.inttab5.intvec.87 )) } > pfls5
    .inttab_tc5_058 (TEXT) BIND(__INTTAB_CPU5 + 0x0B00) : {KEEP (*(.inttab5.intvec.88 )) } > pfls5
    .inttab_tc5_059 (TEXT) BIND(__INTTAB_CPU5 + 0x0B20) : {KEEP (*(.inttab5.intvec.89 )) } > pfls5
    .inttab_tc5_05A (TEXT) BIND(__INTTAB_CPU5 + 0x0B40) : {KEEP (*(.inttab5.intvec.90 )) } > pfls5
    .inttab_tc5_05B (TEXT) BIND(__INTTAB_CPU5 + 0x0B60) : {KEEP (*(.inttab5.intvec.91 )) } > pfls5
    .inttab_tc5_05C (TEXT) BIND(__INTTAB_CPU5 + 0x0B80) : {KEEP (*(.inttab5.intvec.92 )) } > pfls5
    .inttab_tc5_05D (TEXT) BIND(__INTTAB_CPU5 + 0x0BA0) : {KEEP (*(.inttab5.intvec.93 )) } > pfls5
    .inttab_tc5_05E (TEXT) BIND(__INTTAB_CPU5 + 0x0BC0) : {KEEP (*(.inttab5.intvec.94 )) } > pfls5
    .inttab_tc5_05F (TEXT) BIND(__INTTAB_CPU5 + 0x0BE0) : {KEEP (*(.inttab5.intvec.95 )) } > pfls5
    .inttab_tc5_060 (TEXT) BIND(__INTTAB_CPU5 + 0x0C00) : {KEEP (*(.inttab5.intvec.96 )) } > pfls5
    .inttab_tc5_061 (TEXT) BIND(__INTTAB_CPU5 + 0x0C20) : {KEEP (*(.inttab5.intvec.97 )) } > pfls5
    .inttab_tc5_062 (TEXT) BIND(__INTTAB_CPU5 + 0x0C40) : {KEEP (*(.inttab5.intvec.98 )) } > pfls5
    .inttab_tc5_063 (TEXT) BIND(__INTTAB_CPU5 + 0x0C60) : {KEEP (*(.inttab5.intvec.99 )) } > pfls5
    .inttab_tc5_064 (TEXT) BIND(__INTTAB_CPU5 + 0x0C80) : {KEEP (*(.inttab5.intvec.100)) } > pfls5
    .inttab_tc5_065 (TEXT) BIND(__INTTAB_CPU5 + 0x0CA0) : {KEEP (*(.inttab5.intvec.101)) } > pfls5
    .inttab_tc5_066 (TEXT) BIND(__INTTAB_CPU5 + 0x0CC0) : {KEEP (*(.inttab5.intvec.102)) } > pfls5
    .inttab_tc5_067 (TEXT) BIND(__INTTAB_CPU5 + 0x0CE0) : {KEEP (*(.inttab5.intvec.103)) } > pfls5
    .inttab_tc5_068 (TEXT) BIND(__INTTAB_CPU5 + 0x0D00) : {KEEP (*(.inttab5.intvec.104)) } > pfls5
    .inttab_tc5_069 (TEXT) BIND(__INTTAB_CPU5 + 0x0D20) : {KEEP (*(.inttab5.intvec.105)) } > pfls5
    .inttab_tc5_06A (TEXT) BIND(__INTTAB_CPU5 + 0x0D40) : {KEEP (*(.inttab5.intvec.106)) } > pfls5
    .inttab_tc5_06B (TEXT) BIND(__INTTAB_CPU5 + 0x0D60) : {KEEP (*(.inttab5.intvec.107)) } > pfls5
    .inttab_tc5_06C (TEXT) BIND(__INTTAB_CPU5 + 0x0D80) : {KEEP (*(.inttab5.intvec.108)) } > pfls5
    .inttab_tc5_06D (TEXT) BIND(__INTTAB_CPU5 + 0x0DA0) : {KEEP (*(.inttab5.intvec.109)) } > pfls5
    .inttab_tc5_06E (TEXT) BIND(__INTTAB_CPU5 + 0x0DC0) : {KEEP (*(.inttab5.intvec.110)) } > pfls5
    .inttab_tc5_06F (TEXT) BIND(__INTTAB_CPU5 + 0x0DE0) : {KEEP (*(.inttab5.intvec.111)) } > pfls5
    .inttab_tc5_070 (TEXT) BIND(__INTTAB_CPU5 + 0x0E00) : {KEEP (*(.inttab5.intvec.112)) } > pfls5
    .inttab_tc5_071 (TEXT) BIND(__INTTAB_CPU5 + 0x0E20) : {KEEP (*(.inttab5.intvec.113)) } > pfls5
    .inttab_tc5_072 (TEXT) BIND(__INTTAB_CPU5 + 0x0E40) : {KEEP (*(.inttab5.intvec.114)) } > pfls5
    .inttab_tc5_073 (TEXT) BIND(__INTTAB_CPU5 + 0x0E60) : {KEEP (*(.inttab5.intvec.115)) } > pfls5
    .inttab_tc5_074 (TEXT) BIND(__INTTAB_CPU5 + 0x0E80) : {KEEP (*(.inttab5.intvec.116)) } > pfls5
    .inttab_tc5_075 (TEXT) BIND(__INTTAB_CPU5 + 0x0EA0) : {KEEP (*(.inttab5.intvec.117)) } > pfls5
    .inttab_tc5_076 (TEXT) BIND(__INTTAB_CPU5 + 0x0EC0) : {KEEP (*(.inttab5.intvec.118)) } > pfls5
    .inttab_tc5_077 (TEXT) BIND(__INTTAB_CPU5 + 0x0EE0) : {KEEP (*(.inttab5.intvec.119)) } > pfls5
    .inttab_tc5_078 (TEXT) BIND(__INTTAB_CPU5 + 0x0F00) : {KEEP (*(.inttab5.intvec.120)) } > pfls5
    .inttab_tc5_079 (TEXT) BIND(__INTTAB_CPU5 + 0x0F20) : {KEEP (*(.inttab5.intvec.121)) } > pfls5
    .inttab_tc5_07A (TEXT) BIND(__INTTAB_CPU5 + 0x0F40) : {KEEP (*(.inttab5.intvec.122)) } > pfls5
    .inttab_tc5_07B (TEXT) BIND(__INTTAB_CPU5 + 0x0F60) : {KEEP (*(.inttab5.intvec.123)) } > pfls5
    .inttab_tc5_07C (TEXT) BIND(__INTTAB_CPU5 + 0x0F80) : {KEEP (*(.inttab5.intvec.124)) } > pfls5
    .inttab_tc5_07D (TEXT) BIND(__INTTAB_CPU5 + 0x0FA0) : {KEEP (*(.inttab5.intvec.125)) } > pfls5
    .inttab_tc5_07E (TEXT) BIND(__INTTAB_CPU5 + 0x0FC0) : {KEEP (*(.inttab5.intvec.126)) } > pfls5
    .inttab_tc5_07F (TEXT) BIND(__INTTAB_CPU5 + 0x0FE0) : {KEEP (*(.inttab5.intvec.127)) } > pfls5
    .inttab_tc5_080 (TEXT) BIND(__INTTAB_CPU5 + 0x1000) : {KEEP (*(.inttab5.intvec.128)) } > pfls5
    .inttab_tc5_081 (TEXT) BIND(__INTTAB_CPU5 + 0x1020) : {KEEP (*(.inttab5.intvec.129)) } > pfls5
    .inttab_tc5_082 (TEXT) BIND(__INTTAB_CPU5 + 0x1040) : {KEEP (*(.inttab5.intvec.130)) } > pfls5
    .inttab_tc5_083 (TEXT) BIND(__INTTAB_CPU5 + 0x1060) : {KEEP (*(.inttab5.intvec.131)) } > pfls5
    .inttab_tc5_084 (TEXT) BIND(__INTTAB_CPU5 + 0x1080) : {KEEP (*(.inttab5.intvec.132)) } > pfls5
    .inttab_tc5_085 (TEXT) BIND(__INTTAB_CPU5 + 0x10A0) : {KEEP (*(.inttab5.intvec.133)) } > pfls5
    .inttab_tc5_086 (TEXT) BIND(__INTTAB_CPU5 + 0x10C0) : {KEEP (*(.inttab5.intvec.134)) } > pfls5
    .inttab_tc5_087 (TEXT) BIND(__INTTAB_CPU5 + 0x10E0) : {KEEP (*(.inttab5.intvec.135)) } > pfls5
    .inttab_tc5_088 (TEXT) BIND(__INTTAB_CPU5 + 0x1100) : {KEEP (*(.inttab5.intvec.136)) } > pfls5
    .inttab_tc5_089 (TEXT) BIND(__INTTAB_CPU5 + 0x1120) : {KEEP (*(.inttab5.intvec.137)) } > pfls5
    .inttab_tc5_08A (TEXT) BIND(__INTTAB_CPU5 + 0x1140) : {KEEP (*(.inttab5.intvec.138)) } > pfls5
    .inttab_tc5_08B (TEXT) BIND(__INTTAB_CPU5 + 0x1160) : {KEEP (*(.inttab5.intvec.139)) } > pfls5
    .inttab_tc5_08C (TEXT) BIND(__INTTAB_CPU5 + 0x1180) : {KEEP (*(.inttab5.intvec.140)) } > pfls5
    .inttab_tc5_08D (TEXT) BIND(__INTTAB_CPU5 + 0x11A0) : {KEEP (*(.inttab5.intvec.141)) } > pfls5
    .inttab_tc5_08E (TEXT) BIND(__INTTAB_CPU5 + 0x11C0) : {KEEP (*(.inttab5.intvec.142)) } > pfls5
    .inttab_tc5_08F (TEXT) BIND(__INTTAB_CPU5 + 0x11E0) : {KEEP (*(.inttab5.intvec.143)) } > pfls5
    .inttab_tc5_090 (TEXT) BIND(__INTTAB_CPU5 + 0x1200) : {KEEP (*(.inttab5.intvec.144)) } > pfls5
    .inttab_tc5_091 (TEXT) BIND(__INTTAB_CPU5 + 0x1220) : {KEEP (*(.inttab5.intvec.145)) } > pfls5
    .inttab_tc5_092 (TEXT) BIND(__INTTAB_CPU5 + 0x1240) : {KEEP (*(.inttab5.intvec.146)) } > pfls5
    .inttab_tc5_093 (TEXT) BIND(__INTTAB_CPU5 + 0x1260) : {KEEP (*(.inttab5.intvec.147)) } > pfls5
    .inttab_tc5_094 (TEXT) BIND(__INTTAB_CPU5 + 0x1280) : {KEEP (*(.inttab5.intvec.148)) } > pfls5
    .inttab_tc5_095 (TEXT) BIND(__INTTAB_CPU5 + 0x12A0) : {KEEP (*(.inttab5.intvec.149)) } > pfls5
    .inttab_tc5_096 (TEXT) BIND(__INTTAB_CPU5 + 0x12C0) : {KEEP (*(.inttab5.intvec.150)) } > pfls5
    .inttab_tc5_097 (TEXT) BIND(__INTTAB_CPU5 + 0x12E0) : {KEEP (*(.inttab5.intvec.151)) } > pfls5
    .inttab_tc5_098 (TEXT) BIND(__INTTAB_CPU5 + 0x1300) : {KEEP (*(.inttab5.intvec.152)) } > pfls5
    .inttab_tc5_099 (TEXT) BIND(__INTTAB_CPU5 + 0x1320) : {KEEP (*(.inttab5.intvec.153)) } > pfls5
    .inttab_tc5_09A (TEXT) BIND(__INTTAB_CPU5 + 0x1340) : {KEEP (*(.inttab5.intvec.154)) } > pfls5
    .inttab_tc5_09B (TEXT) BIND(__INTTAB_CPU5 + 0x1360) : {KEEP (*(.inttab5.intvec.155)) } > pfls5
    .inttab_tc5_09C (TEXT) BIND(__INTTAB_CPU5 + 0x1380) : {KEEP (*(.inttab5.intvec.156)) } > pfls5
    .inttab_tc5_09D (TEXT) BIND(__INTTAB_CPU5 + 0x13A0) : {KEEP (*(.inttab5.intvec.157)) } > pfls5
    .inttab_tc5_09E (TEXT) BIND(__INTTAB_CPU5 + 0x13C0) : {KEEP (*(.inttab5.intvec.158)) } > pfls5
    .inttab_tc5_09F (TEXT) BIND(__INTTAB_CPU5 + 0x13E0) : {KEEP (*(.inttab5.intvec.159)) } > pfls5
    .inttab_tc5_0A0 (TEXT) BIND(__INTTAB_CPU5 + 0x1400) : {KEEP (*(.inttab5.intvec.160)) } > pfls5
    .inttab_tc5_0A1 (TEXT) BIND(__INTTAB_CPU5 + 0x1420) : {KEEP (*(.inttab5.intvec.161)) } > pfls5
    .inttab_tc5_0A2 (TEXT) BIND(__INTTAB_CPU5 + 0x1440) : {KEEP (*(.inttab5.intvec.162)) } > pfls5
    .inttab_tc5_0A3 (TEXT) BIND(__INTTAB_CPU5 + 0x1460) : {KEEP (*(.inttab5.intvec.163)) } > pfls5
    .inttab_tc5_0A4 (TEXT) BIND(__INTTAB_CPU5 + 0x1480) : {KEEP (*(.inttab5.intvec.164)) } > pfls5
    .inttab_tc5_0A5 (TEXT) BIND(__INTTAB_CPU5 + 0x14A0) : {KEEP (*(.inttab5.intvec.165)) } > pfls5
    .inttab_tc5_0A6 (TEXT) BIND(__INTTAB_CPU5 + 0x14C0) : {KEEP (*(.inttab5.intvec.166)) } > pfls5
    .inttab_tc5_0A7 (TEXT) BIND(__INTTAB_CPU5 + 0x14E0) : {KEEP (*(.inttab5.intvec.167)) } > pfls5
    .inttab_tc5_0A8 (TEXT) BIND(__INTTAB_CPU5 + 0x1500) : {KEEP (*(.inttab5.intvec.168)) } > pfls5
    .inttab_tc5_0A9 (TEXT) BIND(__INTTAB_CPU5 + 0x1520) : {KEEP (*(.inttab5.intvec.169)) } > pfls5
    .inttab_tc5_0AA (TEXT) BIND(__INTTAB_CPU5 + 0x1540) : {KEEP (*(.inttab5.intvec.170)) } > pfls5
    .inttab_tc5_0AB (TEXT) BIND(__INTTAB_CPU5 + 0x1560) : {KEEP (*(.inttab5.intvec.171)) } > pfls5
    .inttab_tc5_0AC (TEXT) BIND(__INTTAB_CPU5 + 0x1580) : {KEEP (*(.inttab5.intvec.172)) } > pfls5
    .inttab_tc5_0AD (TEXT) BIND(__INTTAB_CPU5 + 0x15A0) : {KEEP (*(.inttab5.intvec.173)) } > pfls5
    .inttab_tc5_0AE (TEXT) BIND(__INTTAB_CPU5 + 0x15C0) : {KEEP (*(.inttab5.intvec.174)) } > pfls5
    .inttab_tc5_0AF (TEXT) BIND(__INTTAB_CPU5 + 0x15E0) : {KEEP (*(.inttab5.intvec.175)) } > pfls5
    .inttab_tc5_0B0 (TEXT) BIND(__INTTAB_CPU5 + 0x1600) : {KEEP (*(.inttab5.intvec.176)) } > pfls5
    .inttab_tc5_0B1 (TEXT) BIND(__INTTAB_CPU5 + 0x1620) : {KEEP (*(.inttab5.intvec.177)) } > pfls5
    .inttab_tc5_0B2 (TEXT) BIND(__INTTAB_CPU5 + 0x1640) : {KEEP (*(.inttab5.intvec.178)) } > pfls5
    .inttab_tc5_0B3 (TEXT) BIND(__INTTAB_CPU5 + 0x1660) : {KEEP (*(.inttab5.intvec.179)) } > pfls5
    .inttab_tc5_0B4 (TEXT) BIND(__INTTAB_CPU5 + 0x1680) : {KEEP (*(.inttab5.intvec.180)) } > pfls5
    .inttab_tc5_0B5 (TEXT) BIND(__INTTAB_CPU5 + 0x16A0) : {KEEP (*(.inttab5.intvec.181)) } > pfls5
    .inttab_tc5_0B6 (TEXT) BIND(__INTTAB_CPU5 + 0x16C0) : {KEEP (*(.inttab5.intvec.182)) } > pfls5
    .inttab_tc5_0B7 (TEXT) BIND(__INTTAB_CPU5 + 0x16E0) : {KEEP (*(.inttab5.intvec.183)) } > pfls5
    .inttab_tc5_0B8 (TEXT) BIND(__INTTAB_CPU5 + 0x1700) : {KEEP (*(.inttab5.intvec.184)) } > pfls5
    .inttab_tc5_0B9 (TEXT) BIND(__INTTAB_CPU5 + 0x1720) : {KEEP (*(.inttab5.intvec.185)) } > pfls5
    .inttab_tc5_0BA (TEXT) BIND(__INTTAB_CPU5 + 0x1740) : {KEEP (*(.inttab5.intvec.186)) } > pfls5
    .inttab_tc5_0BB (TEXT) BIND(__INTTAB_CPU5 + 0x1760) : {KEEP (*(.inttab5.intvec.187)) } > pfls5
    .inttab_tc5_0BC (TEXT) BIND(__INTTAB_CPU5 + 0x1780) : {KEEP (*(.inttab5.intvec.188)) } > pfls5
    .inttab_tc5_0BD (TEXT) BIND(__INTTAB_CPU5 + 0x17A0) : {KEEP (*(.inttab5.intvec.189)) } > pfls5
    .inttab_tc5_0BE (TEXT) BIND(__INTTAB_CPU5 + 0x17C0) : {KEEP (*(.inttab5.intvec.190)) } > pfls5
    .inttab_tc5_0BF (TEXT) BIND(__INTTAB_CPU5 + 0x17E0) : {KEEP (*(.inttab5.intvec.191)) } > pfls5
    .inttab_tc5_0C0 (TEXT) BIND(__INTTAB_CPU5 + 0x1800) : {KEEP (*(.inttab5.intvec.192)) } > pfls5
    .inttab_tc5_0C1 (TEXT) BIND(__INTTAB_CPU5 + 0x1820) : {KEEP (*(.inttab5.intvec.193)) } > pfls5
    .inttab_tc5_0C2 (TEXT) BIND(__INTTAB_CPU5 + 0x1840) : {KEEP (*(.inttab5.intvec.194)) } > pfls5
    .inttab_tc5_0C3 (TEXT) BIND(__INTTAB_CPU5 + 0x1860) : {KEEP (*(.inttab5.intvec.195)) } > pfls5
    .inttab_tc5_0C4 (TEXT) BIND(__INTTAB_CPU5 + 0x1880) : {KEEP (*(.inttab5.intvec.196)) } > pfls5
    .inttab_tc5_0C5 (TEXT) BIND(__INTTAB_CPU5 + 0x18A0) : {KEEP (*(.inttab5.intvec.197)) } > pfls5
    .inttab_tc5_0C6 (TEXT) BIND(__INTTAB_CPU5 + 0x18C0) : {KEEP (*(.inttab5.intvec.198)) } > pfls5
    .inttab_tc5_0C7 (TEXT) BIND(__INTTAB_CPU5 + 0x18E0) : {KEEP (*(.inttab5.intvec.199)) } > pfls5
    .inttab_tc5_0C8 (TEXT) BIND(__INTTAB_CPU5 + 0x1900) : {KEEP (*(.inttab5.intvec.200)) } > pfls5
    .inttab_tc5_0C9 (TEXT) BIND(__INTTAB_CPU5 + 0x1920) : {KEEP (*(.inttab5.intvec.201)) } > pfls5
    .inttab_tc5_0CA (TEXT) BIND(__INTTAB_CPU5 + 0x1940) : {KEEP (*(.inttab5.intvec.202)) } > pfls5
    .inttab_tc5_0CB (TEXT) BIND(__INTTAB_CPU5 + 0x1960) : {KEEP (*(.inttab5.intvec.203)) } > pfls5
    .inttab_tc5_0CC (TEXT) BIND(__INTTAB_CPU5 + 0x1980) : {KEEP (*(.inttab5.intvec.204)) } > pfls5
    .inttab_tc5_0CD (TEXT) BIND(__INTTAB_CPU5 + 0x19A0) : {KEEP (*(.inttab5.intvec.205)) } > pfls5
    .inttab_tc5_0CE (TEXT) BIND(__INTTAB_CPU5 + 0x19C0) : {KEEP (*(.inttab5.intvec.206)) } > pfls5
    .inttab_tc5_0CF (TEXT) BIND(__INTTAB_CPU5 + 0x19E0) : {KEEP (*(.inttab5.intvec.207)) } > pfls5
    .inttab_tc5_0D0 (TEXT) BIND(__INTTAB_CPU5 + 0x1A00) : {KEEP (*(.inttab5.intvec.208)) } > pfls5
    .inttab_tc5_0D1 (TEXT) BIND(__INTTAB_CPU5 + 0x1A20) : {KEEP (*(.inttab5.intvec.209)) } > pfls5
    .inttab_tc5_0D2 (TEXT) BIND(__INTTAB_CPU5 + 0x1A40) : {KEEP (*(.inttab5.intvec.210)) } > pfls5
    .inttab_tc5_0D3 (TEXT) BIND(__INTTAB_CPU5 + 0x1A60) : {KEEP (*(.inttab5.intvec.211)) } > pfls5
    .inttab_tc5_0D4 (TEXT) BIND(__INTTAB_CPU5 + 0x1A80) : {KEEP (*(.inttab5.intvec.212)) } > pfls5
    .inttab_tc5_0D5 (TEXT) BIND(__INTTAB_CPU5 + 0x1AA0) : {KEEP (*(.inttab5.intvec.213)) } > pfls5
    .inttab_tc5_0D6 (TEXT) BIND(__INTTAB_CPU5 + 0x1AC0) : {KEEP (*(.inttab5.intvec.214)) } > pfls5
    .inttab_tc5_0D7 (TEXT) BIND(__INTTAB_CPU5 + 0x1AE0) : {KEEP (*(.inttab5.intvec.215)) } > pfls5
    .inttab_tc5_0D8 (TEXT) BIND(__INTTAB_CPU5 + 0x1B00) : {KEEP (*(.inttab5.intvec.216)) } > pfls5
    .inttab_tc5_0D9 (TEXT) BIND(__INTTAB_CPU5 + 0x1B20) : {KEEP (*(.inttab5.intvec.217)) } > pfls5
    .inttab_tc5_0DA (TEXT) BIND(__INTTAB_CPU5 + 0x1B40) : {KEEP (*(.inttab5.intvec.218)) } > pfls5
    .inttab_tc5_0DB (TEXT) BIND(__INTTAB_CPU5 + 0x1B60) : {KEEP (*(.inttab5.intvec.219)) } > pfls5
    .inttab_tc5_0DC (TEXT) BIND(__INTTAB_CPU5 + 0x1B80) : {KEEP (*(.inttab5.intvec.220)) } > pfls5
    .inttab_tc5_0DD (TEXT) BIND(__INTTAB_CPU5 + 0x1BA0) : {KEEP (*(.inttab5.intvec.221)) } > pfls5
    .inttab_tc5_0DE (TEXT) BIND(__INTTAB_CPU5 + 0x1BC0) : {KEEP (*(.inttab5.intvec.222)) } > pfls5
    .inttab_tc5_0DF (TEXT) BIND(__INTTAB_CPU5 + 0x1BE0) : {KEEP (*(.inttab5.intvec.223)) } > pfls5
    .inttab_tc5_0E0 (TEXT) BIND(__INTTAB_CPU5 + 0x1C00) : {KEEP (*(.inttab5.intvec.224)) } > pfls5
    .inttab_tc5_0E1 (TEXT) BIND(__INTTAB_CPU5 + 0x1C20) : {KEEP (*(.inttab5.intvec.225)) } > pfls5
    .inttab_tc5_0E2 (TEXT) BIND(__INTTAB_CPU5 + 0x1C40) : {KEEP (*(.inttab5.intvec.226)) } > pfls5
    .inttab_tc5_0E3 (TEXT) BIND(__INTTAB_CPU5 + 0x1C60) : {KEEP (*(.inttab5.intvec.227)) } > pfls5
    .inttab_tc5_0E4 (TEXT) BIND(__INTTAB_CPU5 + 0x1C80) : {KEEP (*(.inttab5.intvec.228)) } > pfls5
    .inttab_tc5_0E5 (TEXT) BIND(__INTTAB_CPU5 + 0x1CA0) : {KEEP (*(.inttab5.intvec.229)) } > pfls5
    .inttab_tc5_0E6 (TEXT) BIND(__INTTAB_CPU5 + 0x1CC0) : {KEEP (*(.inttab5.intvec.230)) } > pfls5
    .inttab_tc5_0E7 (TEXT) BIND(__INTTAB_CPU5 + 0x1CE0) : {KEEP (*(.inttab5.intvec.231)) } > pfls5
    .inttab_tc5_0E8 (TEXT) BIND(__INTTAB_CPU5 + 0x1D00) : {KEEP (*(.inttab5.intvec.232)) } > pfls5
    .inttab_tc5_0E9 (TEXT) BIND(__INTTAB_CPU5 + 0x1D20) : {KEEP (*(.inttab5.intvec.233)) } > pfls5
    .inttab_tc5_0EA (TEXT) BIND(__INTTAB_CPU5 + 0x1D40) : {KEEP (*(.inttab5.intvec.234)) } > pfls5
    .inttab_tc5_0EB (TEXT) BIND(__INTTAB_CPU5 + 0x1D60) : {KEEP (*(.inttab5.intvec.235)) } > pfls5
    .inttab_tc5_0EC (TEXT) BIND(__INTTAB_CPU5 + 0x1D80) : {KEEP (*(.inttab5.intvec.236)) } > pfls5
    .inttab_tc5_0ED (TEXT) BIND(__INTTAB_CPU5 + 0x1DA0) : {KEEP (*(.inttab5.intvec.237)) } > pfls5
    .inttab_tc5_0EE (TEXT) BIND(__INTTAB_CPU5 + 0x1DC0) : {KEEP (*(.inttab5.intvec.238)) } > pfls5
    .inttab_tc5_0EF (TEXT) BIND(__INTTAB_CPU5 + 0x1DE0) : {KEEP (*(.inttab5.intvec.239)) } > pfls5
    .inttab_tc5_0F0 (TEXT) BIND(__INTTAB_CPU5 + 0x1E00) : {KEEP (*(.inttab5.intvec.240)) } > pfls5
    .inttab_tc5_0F1 (TEXT) BIND(__INTTAB_CPU5 + 0x1E20) : {KEEP (*(.inttab5.intvec.241)) } > pfls5
    .inttab_tc5_0F2 (TEXT) BIND(__INTTAB_CPU5 + 0x1E40) : {KEEP (*(.inttab5.intvec.242)) } > pfls5
    .inttab_tc5_0F3 (TEXT) BIND(__INTTAB_CPU5 + 0x1E60) : {KEEP (*(.inttab5.intvec.243)) } > pfls5
    .inttab_tc5_0F4 (TEXT) BIND(__INTTAB_CPU5 + 0x1E80) : {KEEP (*(.inttab5.intvec.244)) } > pfls5
    .inttab_tc5_0F5 (TEXT) BIND(__INTTAB_CPU5 + 0x1EA0) : {KEEP (*(.inttab5.intvec.245)) } > pfls5
    .inttab_tc5_0F6 (TEXT) BIND(__INTTAB_CPU5 + 0x1EC0) : {KEEP (*(.inttab5.intvec.246)) } > pfls5
    .inttab_tc5_0F7 (TEXT) BIND(__INTTAB_CPU5 + 0x1EE0) : {KEEP (*(.inttab5.intvec.247)) } > pfls5
    .inttab_tc5_0F8 (TEXT) BIND(__INTTAB_CPU5 + 0x1F00) : {KEEP (*(.inttab5.intvec.248)) } > pfls5
    .inttab_tc5_0F9 (TEXT) BIND(__INTTAB_CPU5 + 0x1F20) : {KEEP (*(.inttab5.intvec.249)) } > pfls5
    .inttab_tc5_0FA (TEXT) BIND(__INTTAB_CPU5 + 0x1F40) : {KEEP (*(.inttab5.intvec.250)) } > pfls5
    .inttab_tc5_0FB (TEXT) BIND(__INTTAB_CPU5 + 0x1F60) : {KEEP (*(.inttab5.intvec.251)) } > pfls5
    .inttab_tc5_0FC (TEXT) BIND(__INTTAB_CPU5 + 0x1F80) : {KEEP (*(.inttab5.intvec.252)) } > pfls5
    .inttab_tc5_0FD (TEXT) BIND(__INTTAB_CPU5 + 0x1FA0) : {KEEP (*(.inttab5.intvec.253)) } > pfls5
    .inttab_tc5_0FE (TEXT) BIND(__INTTAB_CPU5 + 0x1FC0) : {KEEP (*(.inttab5.intvec.254)) } > pfls5
    .inttab_tc5_0FF (TEXT) BIND(__INTTAB_CPU5 + 0x1FE0) : {KEEP (*(.inttab5.intvec.255)) } > pfls5
}
