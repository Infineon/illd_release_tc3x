
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

LCF_HEAP_SIZE = 4k;

LCF_DSPR2_START = 0x50000000;
LCF_DSPR2_SIZE = 96k;

LCF_DSPR1_START = 0x60000000;
LCF_DSPR1_SIZE = 240k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 240k;

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

LCF_INTVEC0_START = 0x802FE000;
LCF_INTVEC1_START = 0x805FC000;
LCF_INTVEC2_START = 0x805FE000;

__INTTAB_CPU0 = LCF_INTVEC0_START;
__INTTAB_CPU1 = LCF_INTVEC1_START;
__INTTAB_CPU2 = LCF_INTVEC2_START;

LCF_TRAPVEC0_START = 0x80000100;
LCF_TRAPVEC1_START = 0x80300000;
LCF_TRAPVEC2_START = 0x80300100;

LCF_STARTPTR_CPU0 = 0x80000000;
LCF_STARTPTR_CPU1 = 0x80300200;
LCF_STARTPTR_CPU2 = 0x80300220;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
LCF_STARTPTR_NC_CPU1 = 0xA0300200;
LCF_STARTPTR_NC_CPU2 = 0xA0300220;

RESET = LCF_STARTPTR_NC_CPU0;

MEMORY
{
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
    
    dfls0: org = 0xaf000000, len = 256K
    
    ucb: org = 0xaf400000, len = 24K
    
    cpu0_dlmu: org = 0x90000000, len = 64K
    cpu0_dlmu_nc: org = 0xb0000000, len = 64K
    
    cpu1_dlmu: org = 0x90010000, len = 64K
    cpu1_dlmu_nc: org = 0xb0010000, len = 64K
    
    cpu2_dlmu: org = 0x90020000, len = 64K
    cpu2_dlmu_nc: org = 0xb0020000, len = 64K
    
    /*In case of TC37xPD it doesn't contain EMEM, the below memory needs to be commented*/
    edmem: org = 0x99000000, len = 3M
    edmem_nc: org = 0xb9000000, len = 3M
}
SECTIONS
{
/*Sections located at absolute fixed address*/
/*Fixed memory Allocations for stack memory and CSA*/
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
    .traptab_tc2 (TEXT) BIND(LCF_TRAPVEC2_START) : { __TRAPTAB_CPU2 = .; KEEP (*(.traptab_cpu2)) .= ALIGN(0x100); } > pfls1
    
    /*Fixed memory Allocations for _START CPU1 to 2*/
    .start_tc1 (TEXT) LOAD(LCF_STARTPTR_CPU1) BIND(LCF_STARTPTR_NC_CPU1) : { __ENABLE_INDIVIDUAL_C_INIT_CPU1 = 0; KEEP (*(.start_cpu1)) .= ALIGN(0x20); } =0x800 > pfls1_nc
    .start_tc2 (TEXT) LOAD(LCF_STARTPTR_CPU2) BIND(LCF_STARTPTR_NC_CPU2) : { __ENABLE_INDIVIDUAL_C_INIT_CPU2 = 0; KEEP (*(.start_cpu2)) .= ALIGN(0x20); } =0x800 > pfls1_nc
    __START0 = LCF_STARTPTR_NC_CPU0;
    __START1 = LCF_STARTPTR_NC_CPU1;
    __START2 = LCF_STARTPTR_NC_CPU2;
    
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
            *Cpu0_Main.* (.zrodata)
            *Cpu1_Main.* (.zrodata)
            *Cpu2_Main.* (.zrodata)
            *(.zrodata.const.cpu0.32bit)
            *(.zrodata.const.cpu0.16bit)
            *(.zrodata.const.cpu0.8bit)
            *(.zrodata.config.cpu0.32bit)
            *(.zrodata.config.cpu0.16bit)
            *(.zrodata.config.cpu0.8bit)
            *(.zrodata_cpu0)
            *(.zrodata_cpu1)
            *(.zrodata_cpu2)
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
        /*LMU Sections*/
        .lmudata (DATA) :
        {
            *(.lmudata)
        }
        
        .lmubss (BSS) :
        {
            *(.lmubss)
        }
    } > cpu0_dlmu
    
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
    
    __A8_MEM = SIZEOF(.rodata_a8) ? ADDR(.rodata_a8) : (ADDR(.rodata_a8) & 0xF0000000) + 32k ;
    
    /*Far Data / Far Const Sections, selectable with patterns and user defined sections*/
    /*Far Data Sections, selectable with patterns and user defined sections*/
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
    } > pfls1
    
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
    } > pfls1
    
    CPU2.psram_text (TEXT) LOAD(> pfls0) COPYTABLE :
    {
        . = ALIGN(2);
        *(.psram_text_cpu2)
        *(.cpu2_psram)
    } > psram2

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
    .inttab_tc2_000 (TEXT) BIND(__INTTAB_CPU2 + 0x0000) : {KEEP (*(.inttab2.intvec.0  )) } > pfls1
    .inttab_tc2_001 (TEXT) BIND(__INTTAB_CPU2 + 0x0020) : {KEEP (*(.inttab2.intvec.1  )) } > pfls1
    .inttab_tc2_002 (TEXT) BIND(__INTTAB_CPU2 + 0x0040) : {KEEP (*(.inttab2.intvec.2  )) } > pfls1
    .inttab_tc2_003 (TEXT) BIND(__INTTAB_CPU2 + 0x0060) : {KEEP (*(.inttab2.intvec.3  )) } > pfls1
    .inttab_tc2_004 (TEXT) BIND(__INTTAB_CPU2 + 0x0080) : {KEEP (*(.inttab2.intvec.4  )) } > pfls1
    .inttab_tc2_005 (TEXT) BIND(__INTTAB_CPU2 + 0x00A0) : {KEEP (*(.inttab2.intvec.5  )) } > pfls1
    .inttab_tc2_006 (TEXT) BIND(__INTTAB_CPU2 + 0x00C0) : {KEEP (*(.inttab2.intvec.6  )) } > pfls1
    .inttab_tc2_007 (TEXT) BIND(__INTTAB_CPU2 + 0x00E0) : {KEEP (*(.inttab2.intvec.7  )) } > pfls1
    .inttab_tc2_008 (TEXT) BIND(__INTTAB_CPU2 + 0x0100) : {KEEP (*(.inttab2.intvec.8  )) } > pfls1
    .inttab_tc2_009 (TEXT) BIND(__INTTAB_CPU2 + 0x0120) : {KEEP (*(.inttab2.intvec.9  )) } > pfls1
    .inttab_tc2_00A (TEXT) BIND(__INTTAB_CPU2 + 0x0140) : {KEEP (*(.inttab2.intvec.10 )) } > pfls1
    .inttab_tc2_00B (TEXT) BIND(__INTTAB_CPU2 + 0x0160) : {KEEP (*(.inttab2.intvec.11 )) } > pfls1
    .inttab_tc2_00C (TEXT) BIND(__INTTAB_CPU2 + 0x0180) : {KEEP (*(.inttab2.intvec.12 )) } > pfls1
    .inttab_tc2_00D (TEXT) BIND(__INTTAB_CPU2 + 0x01A0) : {KEEP (*(.inttab2.intvec.13 )) } > pfls1
    .inttab_tc2_00E (TEXT) BIND(__INTTAB_CPU2 + 0x01C0) : {KEEP (*(.inttab2.intvec.14 )) } > pfls1
    .inttab_tc2_00F (TEXT) BIND(__INTTAB_CPU2 + 0x01E0) : {KEEP (*(.inttab2.intvec.15 )) } > pfls1
    .inttab_tc2_010 (TEXT) BIND(__INTTAB_CPU2 + 0x0200) : {KEEP (*(.inttab2.intvec.16 )) } > pfls1
    .inttab_tc2_011 (TEXT) BIND(__INTTAB_CPU2 + 0x0220) : {KEEP (*(.inttab2.intvec.17 )) } > pfls1
    .inttab_tc2_012 (TEXT) BIND(__INTTAB_CPU2 + 0x0240) : {KEEP (*(.inttab2.intvec.18 )) } > pfls1
    .inttab_tc2_013 (TEXT) BIND(__INTTAB_CPU2 + 0x0260) : {KEEP (*(.inttab2.intvec.19 )) } > pfls1
    .inttab_tc2_014 (TEXT) BIND(__INTTAB_CPU2 + 0x0280) : {KEEP (*(.inttab2.intvec.20 )) } > pfls1
    .inttab_tc2_015 (TEXT) BIND(__INTTAB_CPU2 + 0x02A0) : {KEEP (*(.inttab2.intvec.21 )) } > pfls1
    .inttab_tc2_016 (TEXT) BIND(__INTTAB_CPU2 + 0x02C0) : {KEEP (*(.inttab2.intvec.22 )) } > pfls1
    .inttab_tc2_017 (TEXT) BIND(__INTTAB_CPU2 + 0x02E0) : {KEEP (*(.inttab2.intvec.23 )) } > pfls1
    .inttab_tc2_018 (TEXT) BIND(__INTTAB_CPU2 + 0x0300) : {KEEP (*(.inttab2.intvec.24 )) } > pfls1
    .inttab_tc2_019 (TEXT) BIND(__INTTAB_CPU2 + 0x0320) : {KEEP (*(.inttab2.intvec.25 )) } > pfls1
    .inttab_tc2_01A (TEXT) BIND(__INTTAB_CPU2 + 0x0340) : {KEEP (*(.inttab2.intvec.26 )) } > pfls1
    .inttab_tc2_01B (TEXT) BIND(__INTTAB_CPU2 + 0x0360) : {KEEP (*(.inttab2.intvec.27 )) } > pfls1
    .inttab_tc2_01C (TEXT) BIND(__INTTAB_CPU2 + 0x0380) : {KEEP (*(.inttab2.intvec.28 )) } > pfls1
    .inttab_tc2_01D (TEXT) BIND(__INTTAB_CPU2 + 0x03A0) : {KEEP (*(.inttab2.intvec.29 )) } > pfls1
    .inttab_tc2_01E (TEXT) BIND(__INTTAB_CPU2 + 0x03C0) : {KEEP (*(.inttab2.intvec.30 )) } > pfls1
    .inttab_tc2_01F (TEXT) BIND(__INTTAB_CPU2 + 0x03E0) : {KEEP (*(.inttab2.intvec.31 )) } > pfls1
    .inttab_tc2_020 (TEXT) BIND(__INTTAB_CPU2 + 0x0400) : {KEEP (*(.inttab2.intvec.32 )) } > pfls1
    .inttab_tc2_021 (TEXT) BIND(__INTTAB_CPU2 + 0x0420) : {KEEP (*(.inttab2.intvec.33 )) } > pfls1
    .inttab_tc2_022 (TEXT) BIND(__INTTAB_CPU2 + 0x0440) : {KEEP (*(.inttab2.intvec.34 )) } > pfls1
    .inttab_tc2_023 (TEXT) BIND(__INTTAB_CPU2 + 0x0460) : {KEEP (*(.inttab2.intvec.35 )) } > pfls1
    .inttab_tc2_024 (TEXT) BIND(__INTTAB_CPU2 + 0x0480) : {KEEP (*(.inttab2.intvec.36 )) } > pfls1
    .inttab_tc2_025 (TEXT) BIND(__INTTAB_CPU2 + 0x04A0) : {KEEP (*(.inttab2.intvec.37 )) } > pfls1
    .inttab_tc2_026 (TEXT) BIND(__INTTAB_CPU2 + 0x04C0) : {KEEP (*(.inttab2.intvec.38 )) } > pfls1
    .inttab_tc2_027 (TEXT) BIND(__INTTAB_CPU2 + 0x04E0) : {KEEP (*(.inttab2.intvec.39 )) } > pfls1
    .inttab_tc2_028 (TEXT) BIND(__INTTAB_CPU2 + 0x0500) : {KEEP (*(.inttab2.intvec.40 )) } > pfls1
    .inttab_tc2_029 (TEXT) BIND(__INTTAB_CPU2 + 0x0520) : {KEEP (*(.inttab2.intvec.41 )) } > pfls1
    .inttab_tc2_02A (TEXT) BIND(__INTTAB_CPU2 + 0x0540) : {KEEP (*(.inttab2.intvec.42 )) } > pfls1
    .inttab_tc2_02B (TEXT) BIND(__INTTAB_CPU2 + 0x0560) : {KEEP (*(.inttab2.intvec.43 )) } > pfls1
    .inttab_tc2_02C (TEXT) BIND(__INTTAB_CPU2 + 0x0580) : {KEEP (*(.inttab2.intvec.44 )) } > pfls1
    .inttab_tc2_02D (TEXT) BIND(__INTTAB_CPU2 + 0x05A0) : {KEEP (*(.inttab2.intvec.45 )) } > pfls1
    .inttab_tc2_02E (TEXT) BIND(__INTTAB_CPU2 + 0x05C0) : {KEEP (*(.inttab2.intvec.46 )) } > pfls1
    .inttab_tc2_02F (TEXT) BIND(__INTTAB_CPU2 + 0x05E0) : {KEEP (*(.inttab2.intvec.47 )) } > pfls1
    .inttab_tc2_030 (TEXT) BIND(__INTTAB_CPU2 + 0x0600) : {KEEP (*(.inttab2.intvec.48 )) } > pfls1
    .inttab_tc2_031 (TEXT) BIND(__INTTAB_CPU2 + 0x0620) : {KEEP (*(.inttab2.intvec.49 )) } > pfls1
    .inttab_tc2_032 (TEXT) BIND(__INTTAB_CPU2 + 0x0640) : {KEEP (*(.inttab2.intvec.50 )) } > pfls1
    .inttab_tc2_033 (TEXT) BIND(__INTTAB_CPU2 + 0x0660) : {KEEP (*(.inttab2.intvec.51 )) } > pfls1
    .inttab_tc2_034 (TEXT) BIND(__INTTAB_CPU2 + 0x0680) : {KEEP (*(.inttab2.intvec.52 )) } > pfls1
    .inttab_tc2_035 (TEXT) BIND(__INTTAB_CPU2 + 0x06A0) : {KEEP (*(.inttab2.intvec.53 )) } > pfls1
    .inttab_tc2_036 (TEXT) BIND(__INTTAB_CPU2 + 0x06C0) : {KEEP (*(.inttab2.intvec.54 )) } > pfls1
    .inttab_tc2_037 (TEXT) BIND(__INTTAB_CPU2 + 0x06E0) : {KEEP (*(.inttab2.intvec.55 )) } > pfls1
    .inttab_tc2_038 (TEXT) BIND(__INTTAB_CPU2 + 0x0700) : {KEEP (*(.inttab2.intvec.56 )) } > pfls1
    .inttab_tc2_039 (TEXT) BIND(__INTTAB_CPU2 + 0x0720) : {KEEP (*(.inttab2.intvec.57 )) } > pfls1
    .inttab_tc2_03A (TEXT) BIND(__INTTAB_CPU2 + 0x0740) : {KEEP (*(.inttab2.intvec.58 )) } > pfls1
    .inttab_tc2_03B (TEXT) BIND(__INTTAB_CPU2 + 0x0760) : {KEEP (*(.inttab2.intvec.59 )) } > pfls1
    .inttab_tc2_03C (TEXT) BIND(__INTTAB_CPU2 + 0x0780) : {KEEP (*(.inttab2.intvec.60 )) } > pfls1
    .inttab_tc2_03D (TEXT) BIND(__INTTAB_CPU2 + 0x07A0) : {KEEP (*(.inttab2.intvec.61 )) } > pfls1
    .inttab_tc2_03E (TEXT) BIND(__INTTAB_CPU2 + 0x07C0) : {KEEP (*(.inttab2.intvec.62 )) } > pfls1
    .inttab_tc2_03F (TEXT) BIND(__INTTAB_CPU2 + 0x07E0) : {KEEP (*(.inttab2.intvec.63 )) } > pfls1
    .inttab_tc2_040 (TEXT) BIND(__INTTAB_CPU2 + 0x0800) : {KEEP (*(.inttab2.intvec.64 )) } > pfls1
    .inttab_tc2_041 (TEXT) BIND(__INTTAB_CPU2 + 0x0820) : {KEEP (*(.inttab2.intvec.65 )) } > pfls1
    .inttab_tc2_042 (TEXT) BIND(__INTTAB_CPU2 + 0x0840) : {KEEP (*(.inttab2.intvec.66 )) } > pfls1
    .inttab_tc2_043 (TEXT) BIND(__INTTAB_CPU2 + 0x0860) : {KEEP (*(.inttab2.intvec.67 )) } > pfls1
    .inttab_tc2_044 (TEXT) BIND(__INTTAB_CPU2 + 0x0880) : {KEEP (*(.inttab2.intvec.68 )) } > pfls1
    .inttab_tc2_045 (TEXT) BIND(__INTTAB_CPU2 + 0x08A0) : {KEEP (*(.inttab2.intvec.69 )) } > pfls1
    .inttab_tc2_046 (TEXT) BIND(__INTTAB_CPU2 + 0x08C0) : {KEEP (*(.inttab2.intvec.70 )) } > pfls1
    .inttab_tc2_047 (TEXT) BIND(__INTTAB_CPU2 + 0x08E0) : {KEEP (*(.inttab2.intvec.71 )) } > pfls1
    .inttab_tc2_048 (TEXT) BIND(__INTTAB_CPU2 + 0x0900) : {KEEP (*(.inttab2.intvec.72 )) } > pfls1
    .inttab_tc2_049 (TEXT) BIND(__INTTAB_CPU2 + 0x0920) : {KEEP (*(.inttab2.intvec.73 )) } > pfls1
    .inttab_tc2_04A (TEXT) BIND(__INTTAB_CPU2 + 0x0940) : {KEEP (*(.inttab2.intvec.74 )) } > pfls1
    .inttab_tc2_04B (TEXT) BIND(__INTTAB_CPU2 + 0x0960) : {KEEP (*(.inttab2.intvec.75 )) } > pfls1
    .inttab_tc2_04C (TEXT) BIND(__INTTAB_CPU2 + 0x0980) : {KEEP (*(.inttab2.intvec.76 )) } > pfls1
    .inttab_tc2_04D (TEXT) BIND(__INTTAB_CPU2 + 0x09A0) : {KEEP (*(.inttab2.intvec.77 )) } > pfls1
    .inttab_tc2_04E (TEXT) BIND(__INTTAB_CPU2 + 0x09C0) : {KEEP (*(.inttab2.intvec.78 )) } > pfls1
    .inttab_tc2_04F (TEXT) BIND(__INTTAB_CPU2 + 0x09E0) : {KEEP (*(.inttab2.intvec.79 )) } > pfls1
    .inttab_tc2_050 (TEXT) BIND(__INTTAB_CPU2 + 0x0A00) : {KEEP (*(.inttab2.intvec.80 )) } > pfls1
    .inttab_tc2_051 (TEXT) BIND(__INTTAB_CPU2 + 0x0A20) : {KEEP (*(.inttab2.intvec.81 )) } > pfls1
    .inttab_tc2_052 (TEXT) BIND(__INTTAB_CPU2 + 0x0A40) : {KEEP (*(.inttab2.intvec.82 )) } > pfls1
    .inttab_tc2_053 (TEXT) BIND(__INTTAB_CPU2 + 0x0A60) : {KEEP (*(.inttab2.intvec.83 )) } > pfls1
    .inttab_tc2_054 (TEXT) BIND(__INTTAB_CPU2 + 0x0A80) : {KEEP (*(.inttab2.intvec.84 )) } > pfls1
    .inttab_tc2_055 (TEXT) BIND(__INTTAB_CPU2 + 0x0AA0) : {KEEP (*(.inttab2.intvec.85 )) } > pfls1
    .inttab_tc2_056 (TEXT) BIND(__INTTAB_CPU2 + 0x0AC0) : {KEEP (*(.inttab2.intvec.86 )) } > pfls1
    .inttab_tc2_057 (TEXT) BIND(__INTTAB_CPU2 + 0x0AE0) : {KEEP (*(.inttab2.intvec.87 )) } > pfls1
    .inttab_tc2_058 (TEXT) BIND(__INTTAB_CPU2 + 0x0B00) : {KEEP (*(.inttab2.intvec.88 )) } > pfls1
    .inttab_tc2_059 (TEXT) BIND(__INTTAB_CPU2 + 0x0B20) : {KEEP (*(.inttab2.intvec.89 )) } > pfls1
    .inttab_tc2_05A (TEXT) BIND(__INTTAB_CPU2 + 0x0B40) : {KEEP (*(.inttab2.intvec.90 )) } > pfls1
    .inttab_tc2_05B (TEXT) BIND(__INTTAB_CPU2 + 0x0B60) : {KEEP (*(.inttab2.intvec.91 )) } > pfls1
    .inttab_tc2_05C (TEXT) BIND(__INTTAB_CPU2 + 0x0B80) : {KEEP (*(.inttab2.intvec.92 )) } > pfls1
    .inttab_tc2_05D (TEXT) BIND(__INTTAB_CPU2 + 0x0BA0) : {KEEP (*(.inttab2.intvec.93 )) } > pfls1
    .inttab_tc2_05E (TEXT) BIND(__INTTAB_CPU2 + 0x0BC0) : {KEEP (*(.inttab2.intvec.94 )) } > pfls1
    .inttab_tc2_05F (TEXT) BIND(__INTTAB_CPU2 + 0x0BE0) : {KEEP (*(.inttab2.intvec.95 )) } > pfls1
    .inttab_tc2_060 (TEXT) BIND(__INTTAB_CPU2 + 0x0C00) : {KEEP (*(.inttab2.intvec.96 )) } > pfls1
    .inttab_tc2_061 (TEXT) BIND(__INTTAB_CPU2 + 0x0C20) : {KEEP (*(.inttab2.intvec.97 )) } > pfls1
    .inttab_tc2_062 (TEXT) BIND(__INTTAB_CPU2 + 0x0C40) : {KEEP (*(.inttab2.intvec.98 )) } > pfls1
    .inttab_tc2_063 (TEXT) BIND(__INTTAB_CPU2 + 0x0C60) : {KEEP (*(.inttab2.intvec.99 )) } > pfls1
    .inttab_tc2_064 (TEXT) BIND(__INTTAB_CPU2 + 0x0C80) : {KEEP (*(.inttab2.intvec.100)) } > pfls1
    .inttab_tc2_065 (TEXT) BIND(__INTTAB_CPU2 + 0x0CA0) : {KEEP (*(.inttab2.intvec.101)) } > pfls1
    .inttab_tc2_066 (TEXT) BIND(__INTTAB_CPU2 + 0x0CC0) : {KEEP (*(.inttab2.intvec.102)) } > pfls1
    .inttab_tc2_067 (TEXT) BIND(__INTTAB_CPU2 + 0x0CE0) : {KEEP (*(.inttab2.intvec.103)) } > pfls1
    .inttab_tc2_068 (TEXT) BIND(__INTTAB_CPU2 + 0x0D00) : {KEEP (*(.inttab2.intvec.104)) } > pfls1
    .inttab_tc2_069 (TEXT) BIND(__INTTAB_CPU2 + 0x0D20) : {KEEP (*(.inttab2.intvec.105)) } > pfls1
    .inttab_tc2_06A (TEXT) BIND(__INTTAB_CPU2 + 0x0D40) : {KEEP (*(.inttab2.intvec.106)) } > pfls1
    .inttab_tc2_06B (TEXT) BIND(__INTTAB_CPU2 + 0x0D60) : {KEEP (*(.inttab2.intvec.107)) } > pfls1
    .inttab_tc2_06C (TEXT) BIND(__INTTAB_CPU2 + 0x0D80) : {KEEP (*(.inttab2.intvec.108)) } > pfls1
    .inttab_tc2_06D (TEXT) BIND(__INTTAB_CPU2 + 0x0DA0) : {KEEP (*(.inttab2.intvec.109)) } > pfls1
    .inttab_tc2_06E (TEXT) BIND(__INTTAB_CPU2 + 0x0DC0) : {KEEP (*(.inttab2.intvec.110)) } > pfls1
    .inttab_tc2_06F (TEXT) BIND(__INTTAB_CPU2 + 0x0DE0) : {KEEP (*(.inttab2.intvec.111)) } > pfls1
    .inttab_tc2_070 (TEXT) BIND(__INTTAB_CPU2 + 0x0E00) : {KEEP (*(.inttab2.intvec.112)) } > pfls1
    .inttab_tc2_071 (TEXT) BIND(__INTTAB_CPU2 + 0x0E20) : {KEEP (*(.inttab2.intvec.113)) } > pfls1
    .inttab_tc2_072 (TEXT) BIND(__INTTAB_CPU2 + 0x0E40) : {KEEP (*(.inttab2.intvec.114)) } > pfls1
    .inttab_tc2_073 (TEXT) BIND(__INTTAB_CPU2 + 0x0E60) : {KEEP (*(.inttab2.intvec.115)) } > pfls1
    .inttab_tc2_074 (TEXT) BIND(__INTTAB_CPU2 + 0x0E80) : {KEEP (*(.inttab2.intvec.116)) } > pfls1
    .inttab_tc2_075 (TEXT) BIND(__INTTAB_CPU2 + 0x0EA0) : {KEEP (*(.inttab2.intvec.117)) } > pfls1
    .inttab_tc2_076 (TEXT) BIND(__INTTAB_CPU2 + 0x0EC0) : {KEEP (*(.inttab2.intvec.118)) } > pfls1
    .inttab_tc2_077 (TEXT) BIND(__INTTAB_CPU2 + 0x0EE0) : {KEEP (*(.inttab2.intvec.119)) } > pfls1
    .inttab_tc2_078 (TEXT) BIND(__INTTAB_CPU2 + 0x0F00) : {KEEP (*(.inttab2.intvec.120)) } > pfls1
    .inttab_tc2_079 (TEXT) BIND(__INTTAB_CPU2 + 0x0F20) : {KEEP (*(.inttab2.intvec.121)) } > pfls1
    .inttab_tc2_07A (TEXT) BIND(__INTTAB_CPU2 + 0x0F40) : {KEEP (*(.inttab2.intvec.122)) } > pfls1
    .inttab_tc2_07B (TEXT) BIND(__INTTAB_CPU2 + 0x0F60) : {KEEP (*(.inttab2.intvec.123)) } > pfls1
    .inttab_tc2_07C (TEXT) BIND(__INTTAB_CPU2 + 0x0F80) : {KEEP (*(.inttab2.intvec.124)) } > pfls1
    .inttab_tc2_07D (TEXT) BIND(__INTTAB_CPU2 + 0x0FA0) : {KEEP (*(.inttab2.intvec.125)) } > pfls1
    .inttab_tc2_07E (TEXT) BIND(__INTTAB_CPU2 + 0x0FC0) : {KEEP (*(.inttab2.intvec.126)) } > pfls1
    .inttab_tc2_07F (TEXT) BIND(__INTTAB_CPU2 + 0x0FE0) : {KEEP (*(.inttab2.intvec.127)) } > pfls1
    .inttab_tc2_080 (TEXT) BIND(__INTTAB_CPU2 + 0x1000) : {KEEP (*(.inttab2.intvec.128)) } > pfls1
    .inttab_tc2_081 (TEXT) BIND(__INTTAB_CPU2 + 0x1020) : {KEEP (*(.inttab2.intvec.129)) } > pfls1
    .inttab_tc2_082 (TEXT) BIND(__INTTAB_CPU2 + 0x1040) : {KEEP (*(.inttab2.intvec.130)) } > pfls1
    .inttab_tc2_083 (TEXT) BIND(__INTTAB_CPU2 + 0x1060) : {KEEP (*(.inttab2.intvec.131)) } > pfls1
    .inttab_tc2_084 (TEXT) BIND(__INTTAB_CPU2 + 0x1080) : {KEEP (*(.inttab2.intvec.132)) } > pfls1
    .inttab_tc2_085 (TEXT) BIND(__INTTAB_CPU2 + 0x10A0) : {KEEP (*(.inttab2.intvec.133)) } > pfls1
    .inttab_tc2_086 (TEXT) BIND(__INTTAB_CPU2 + 0x10C0) : {KEEP (*(.inttab2.intvec.134)) } > pfls1
    .inttab_tc2_087 (TEXT) BIND(__INTTAB_CPU2 + 0x10E0) : {KEEP (*(.inttab2.intvec.135)) } > pfls1
    .inttab_tc2_088 (TEXT) BIND(__INTTAB_CPU2 + 0x1100) : {KEEP (*(.inttab2.intvec.136)) } > pfls1
    .inttab_tc2_089 (TEXT) BIND(__INTTAB_CPU2 + 0x1120) : {KEEP (*(.inttab2.intvec.137)) } > pfls1
    .inttab_tc2_08A (TEXT) BIND(__INTTAB_CPU2 + 0x1140) : {KEEP (*(.inttab2.intvec.138)) } > pfls1
    .inttab_tc2_08B (TEXT) BIND(__INTTAB_CPU2 + 0x1160) : {KEEP (*(.inttab2.intvec.139)) } > pfls1
    .inttab_tc2_08C (TEXT) BIND(__INTTAB_CPU2 + 0x1180) : {KEEP (*(.inttab2.intvec.140)) } > pfls1
    .inttab_tc2_08D (TEXT) BIND(__INTTAB_CPU2 + 0x11A0) : {KEEP (*(.inttab2.intvec.141)) } > pfls1
    .inttab_tc2_08E (TEXT) BIND(__INTTAB_CPU2 + 0x11C0) : {KEEP (*(.inttab2.intvec.142)) } > pfls1
    .inttab_tc2_08F (TEXT) BIND(__INTTAB_CPU2 + 0x11E0) : {KEEP (*(.inttab2.intvec.143)) } > pfls1
    .inttab_tc2_090 (TEXT) BIND(__INTTAB_CPU2 + 0x1200) : {KEEP (*(.inttab2.intvec.144)) } > pfls1
    .inttab_tc2_091 (TEXT) BIND(__INTTAB_CPU2 + 0x1220) : {KEEP (*(.inttab2.intvec.145)) } > pfls1
    .inttab_tc2_092 (TEXT) BIND(__INTTAB_CPU2 + 0x1240) : {KEEP (*(.inttab2.intvec.146)) } > pfls1
    .inttab_tc2_093 (TEXT) BIND(__INTTAB_CPU2 + 0x1260) : {KEEP (*(.inttab2.intvec.147)) } > pfls1
    .inttab_tc2_094 (TEXT) BIND(__INTTAB_CPU2 + 0x1280) : {KEEP (*(.inttab2.intvec.148)) } > pfls1
    .inttab_tc2_095 (TEXT) BIND(__INTTAB_CPU2 + 0x12A0) : {KEEP (*(.inttab2.intvec.149)) } > pfls1
    .inttab_tc2_096 (TEXT) BIND(__INTTAB_CPU2 + 0x12C0) : {KEEP (*(.inttab2.intvec.150)) } > pfls1
    .inttab_tc2_097 (TEXT) BIND(__INTTAB_CPU2 + 0x12E0) : {KEEP (*(.inttab2.intvec.151)) } > pfls1
    .inttab_tc2_098 (TEXT) BIND(__INTTAB_CPU2 + 0x1300) : {KEEP (*(.inttab2.intvec.152)) } > pfls1
    .inttab_tc2_099 (TEXT) BIND(__INTTAB_CPU2 + 0x1320) : {KEEP (*(.inttab2.intvec.153)) } > pfls1
    .inttab_tc2_09A (TEXT) BIND(__INTTAB_CPU2 + 0x1340) : {KEEP (*(.inttab2.intvec.154)) } > pfls1
    .inttab_tc2_09B (TEXT) BIND(__INTTAB_CPU2 + 0x1360) : {KEEP (*(.inttab2.intvec.155)) } > pfls1
    .inttab_tc2_09C (TEXT) BIND(__INTTAB_CPU2 + 0x1380) : {KEEP (*(.inttab2.intvec.156)) } > pfls1
    .inttab_tc2_09D (TEXT) BIND(__INTTAB_CPU2 + 0x13A0) : {KEEP (*(.inttab2.intvec.157)) } > pfls1
    .inttab_tc2_09E (TEXT) BIND(__INTTAB_CPU2 + 0x13C0) : {KEEP (*(.inttab2.intvec.158)) } > pfls1
    .inttab_tc2_09F (TEXT) BIND(__INTTAB_CPU2 + 0x13E0) : {KEEP (*(.inttab2.intvec.159)) } > pfls1
    .inttab_tc2_0A0 (TEXT) BIND(__INTTAB_CPU2 + 0x1400) : {KEEP (*(.inttab2.intvec.160)) } > pfls1
    .inttab_tc2_0A1 (TEXT) BIND(__INTTAB_CPU2 + 0x1420) : {KEEP (*(.inttab2.intvec.161)) } > pfls1
    .inttab_tc2_0A2 (TEXT) BIND(__INTTAB_CPU2 + 0x1440) : {KEEP (*(.inttab2.intvec.162)) } > pfls1
    .inttab_tc2_0A3 (TEXT) BIND(__INTTAB_CPU2 + 0x1460) : {KEEP (*(.inttab2.intvec.163)) } > pfls1
    .inttab_tc2_0A4 (TEXT) BIND(__INTTAB_CPU2 + 0x1480) : {KEEP (*(.inttab2.intvec.164)) } > pfls1
    .inttab_tc2_0A5 (TEXT) BIND(__INTTAB_CPU2 + 0x14A0) : {KEEP (*(.inttab2.intvec.165)) } > pfls1
    .inttab_tc2_0A6 (TEXT) BIND(__INTTAB_CPU2 + 0x14C0) : {KEEP (*(.inttab2.intvec.166)) } > pfls1
    .inttab_tc2_0A7 (TEXT) BIND(__INTTAB_CPU2 + 0x14E0) : {KEEP (*(.inttab2.intvec.167)) } > pfls1
    .inttab_tc2_0A8 (TEXT) BIND(__INTTAB_CPU2 + 0x1500) : {KEEP (*(.inttab2.intvec.168)) } > pfls1
    .inttab_tc2_0A9 (TEXT) BIND(__INTTAB_CPU2 + 0x1520) : {KEEP (*(.inttab2.intvec.169)) } > pfls1
    .inttab_tc2_0AA (TEXT) BIND(__INTTAB_CPU2 + 0x1540) : {KEEP (*(.inttab2.intvec.170)) } > pfls1
    .inttab_tc2_0AB (TEXT) BIND(__INTTAB_CPU2 + 0x1560) : {KEEP (*(.inttab2.intvec.171)) } > pfls1
    .inttab_tc2_0AC (TEXT) BIND(__INTTAB_CPU2 + 0x1580) : {KEEP (*(.inttab2.intvec.172)) } > pfls1
    .inttab_tc2_0AD (TEXT) BIND(__INTTAB_CPU2 + 0x15A0) : {KEEP (*(.inttab2.intvec.173)) } > pfls1
    .inttab_tc2_0AE (TEXT) BIND(__INTTAB_CPU2 + 0x15C0) : {KEEP (*(.inttab2.intvec.174)) } > pfls1
    .inttab_tc2_0AF (TEXT) BIND(__INTTAB_CPU2 + 0x15E0) : {KEEP (*(.inttab2.intvec.175)) } > pfls1
    .inttab_tc2_0B0 (TEXT) BIND(__INTTAB_CPU2 + 0x1600) : {KEEP (*(.inttab2.intvec.176)) } > pfls1
    .inttab_tc2_0B1 (TEXT) BIND(__INTTAB_CPU2 + 0x1620) : {KEEP (*(.inttab2.intvec.177)) } > pfls1
    .inttab_tc2_0B2 (TEXT) BIND(__INTTAB_CPU2 + 0x1640) : {KEEP (*(.inttab2.intvec.178)) } > pfls1
    .inttab_tc2_0B3 (TEXT) BIND(__INTTAB_CPU2 + 0x1660) : {KEEP (*(.inttab2.intvec.179)) } > pfls1
    .inttab_tc2_0B4 (TEXT) BIND(__INTTAB_CPU2 + 0x1680) : {KEEP (*(.inttab2.intvec.180)) } > pfls1
    .inttab_tc2_0B5 (TEXT) BIND(__INTTAB_CPU2 + 0x16A0) : {KEEP (*(.inttab2.intvec.181)) } > pfls1
    .inttab_tc2_0B6 (TEXT) BIND(__INTTAB_CPU2 + 0x16C0) : {KEEP (*(.inttab2.intvec.182)) } > pfls1
    .inttab_tc2_0B7 (TEXT) BIND(__INTTAB_CPU2 + 0x16E0) : {KEEP (*(.inttab2.intvec.183)) } > pfls1
    .inttab_tc2_0B8 (TEXT) BIND(__INTTAB_CPU2 + 0x1700) : {KEEP (*(.inttab2.intvec.184)) } > pfls1
    .inttab_tc2_0B9 (TEXT) BIND(__INTTAB_CPU2 + 0x1720) : {KEEP (*(.inttab2.intvec.185)) } > pfls1
    .inttab_tc2_0BA (TEXT) BIND(__INTTAB_CPU2 + 0x1740) : {KEEP (*(.inttab2.intvec.186)) } > pfls1
    .inttab_tc2_0BB (TEXT) BIND(__INTTAB_CPU2 + 0x1760) : {KEEP (*(.inttab2.intvec.187)) } > pfls1
    .inttab_tc2_0BC (TEXT) BIND(__INTTAB_CPU2 + 0x1780) : {KEEP (*(.inttab2.intvec.188)) } > pfls1
    .inttab_tc2_0BD (TEXT) BIND(__INTTAB_CPU2 + 0x17A0) : {KEEP (*(.inttab2.intvec.189)) } > pfls1
    .inttab_tc2_0BE (TEXT) BIND(__INTTAB_CPU2 + 0x17C0) : {KEEP (*(.inttab2.intvec.190)) } > pfls1
    .inttab_tc2_0BF (TEXT) BIND(__INTTAB_CPU2 + 0x17E0) : {KEEP (*(.inttab2.intvec.191)) } > pfls1
    .inttab_tc2_0C0 (TEXT) BIND(__INTTAB_CPU2 + 0x1800) : {KEEP (*(.inttab2.intvec.192)) } > pfls1
    .inttab_tc2_0C1 (TEXT) BIND(__INTTAB_CPU2 + 0x1820) : {KEEP (*(.inttab2.intvec.193)) } > pfls1
    .inttab_tc2_0C2 (TEXT) BIND(__INTTAB_CPU2 + 0x1840) : {KEEP (*(.inttab2.intvec.194)) } > pfls1
    .inttab_tc2_0C3 (TEXT) BIND(__INTTAB_CPU2 + 0x1860) : {KEEP (*(.inttab2.intvec.195)) } > pfls1
    .inttab_tc2_0C4 (TEXT) BIND(__INTTAB_CPU2 + 0x1880) : {KEEP (*(.inttab2.intvec.196)) } > pfls1
    .inttab_tc2_0C5 (TEXT) BIND(__INTTAB_CPU2 + 0x18A0) : {KEEP (*(.inttab2.intvec.197)) } > pfls1
    .inttab_tc2_0C6 (TEXT) BIND(__INTTAB_CPU2 + 0x18C0) : {KEEP (*(.inttab2.intvec.198)) } > pfls1
    .inttab_tc2_0C7 (TEXT) BIND(__INTTAB_CPU2 + 0x18E0) : {KEEP (*(.inttab2.intvec.199)) } > pfls1
    .inttab_tc2_0C8 (TEXT) BIND(__INTTAB_CPU2 + 0x1900) : {KEEP (*(.inttab2.intvec.200)) } > pfls1
    .inttab_tc2_0C9 (TEXT) BIND(__INTTAB_CPU2 + 0x1920) : {KEEP (*(.inttab2.intvec.201)) } > pfls1
    .inttab_tc2_0CA (TEXT) BIND(__INTTAB_CPU2 + 0x1940) : {KEEP (*(.inttab2.intvec.202)) } > pfls1
    .inttab_tc2_0CB (TEXT) BIND(__INTTAB_CPU2 + 0x1960) : {KEEP (*(.inttab2.intvec.203)) } > pfls1
    .inttab_tc2_0CC (TEXT) BIND(__INTTAB_CPU2 + 0x1980) : {KEEP (*(.inttab2.intvec.204)) } > pfls1
    .inttab_tc2_0CD (TEXT) BIND(__INTTAB_CPU2 + 0x19A0) : {KEEP (*(.inttab2.intvec.205)) } > pfls1
    .inttab_tc2_0CE (TEXT) BIND(__INTTAB_CPU2 + 0x19C0) : {KEEP (*(.inttab2.intvec.206)) } > pfls1
    .inttab_tc2_0CF (TEXT) BIND(__INTTAB_CPU2 + 0x19E0) : {KEEP (*(.inttab2.intvec.207)) } > pfls1
    .inttab_tc2_0D0 (TEXT) BIND(__INTTAB_CPU2 + 0x1A00) : {KEEP (*(.inttab2.intvec.208)) } > pfls1
    .inttab_tc2_0D1 (TEXT) BIND(__INTTAB_CPU2 + 0x1A20) : {KEEP (*(.inttab2.intvec.209)) } > pfls1
    .inttab_tc2_0D2 (TEXT) BIND(__INTTAB_CPU2 + 0x1A40) : {KEEP (*(.inttab2.intvec.210)) } > pfls1
    .inttab_tc2_0D3 (TEXT) BIND(__INTTAB_CPU2 + 0x1A60) : {KEEP (*(.inttab2.intvec.211)) } > pfls1
    .inttab_tc2_0D4 (TEXT) BIND(__INTTAB_CPU2 + 0x1A80) : {KEEP (*(.inttab2.intvec.212)) } > pfls1
    .inttab_tc2_0D5 (TEXT) BIND(__INTTAB_CPU2 + 0x1AA0) : {KEEP (*(.inttab2.intvec.213)) } > pfls1
    .inttab_tc2_0D6 (TEXT) BIND(__INTTAB_CPU2 + 0x1AC0) : {KEEP (*(.inttab2.intvec.214)) } > pfls1
    .inttab_tc2_0D7 (TEXT) BIND(__INTTAB_CPU2 + 0x1AE0) : {KEEP (*(.inttab2.intvec.215)) } > pfls1
    .inttab_tc2_0D8 (TEXT) BIND(__INTTAB_CPU2 + 0x1B00) : {KEEP (*(.inttab2.intvec.216)) } > pfls1
    .inttab_tc2_0D9 (TEXT) BIND(__INTTAB_CPU2 + 0x1B20) : {KEEP (*(.inttab2.intvec.217)) } > pfls1
    .inttab_tc2_0DA (TEXT) BIND(__INTTAB_CPU2 + 0x1B40) : {KEEP (*(.inttab2.intvec.218)) } > pfls1
    .inttab_tc2_0DB (TEXT) BIND(__INTTAB_CPU2 + 0x1B60) : {KEEP (*(.inttab2.intvec.219)) } > pfls1
    .inttab_tc2_0DC (TEXT) BIND(__INTTAB_CPU2 + 0x1B80) : {KEEP (*(.inttab2.intvec.220)) } > pfls1
    .inttab_tc2_0DD (TEXT) BIND(__INTTAB_CPU2 + 0x1BA0) : {KEEP (*(.inttab2.intvec.221)) } > pfls1
    .inttab_tc2_0DE (TEXT) BIND(__INTTAB_CPU2 + 0x1BC0) : {KEEP (*(.inttab2.intvec.222)) } > pfls1
    .inttab_tc2_0DF (TEXT) BIND(__INTTAB_CPU2 + 0x1BE0) : {KEEP (*(.inttab2.intvec.223)) } > pfls1
    .inttab_tc2_0E0 (TEXT) BIND(__INTTAB_CPU2 + 0x1C00) : {KEEP (*(.inttab2.intvec.224)) } > pfls1
    .inttab_tc2_0E1 (TEXT) BIND(__INTTAB_CPU2 + 0x1C20) : {KEEP (*(.inttab2.intvec.225)) } > pfls1
    .inttab_tc2_0E2 (TEXT) BIND(__INTTAB_CPU2 + 0x1C40) : {KEEP (*(.inttab2.intvec.226)) } > pfls1
    .inttab_tc2_0E3 (TEXT) BIND(__INTTAB_CPU2 + 0x1C60) : {KEEP (*(.inttab2.intvec.227)) } > pfls1
    .inttab_tc2_0E4 (TEXT) BIND(__INTTAB_CPU2 + 0x1C80) : {KEEP (*(.inttab2.intvec.228)) } > pfls1
    .inttab_tc2_0E5 (TEXT) BIND(__INTTAB_CPU2 + 0x1CA0) : {KEEP (*(.inttab2.intvec.229)) } > pfls1
    .inttab_tc2_0E6 (TEXT) BIND(__INTTAB_CPU2 + 0x1CC0) : {KEEP (*(.inttab2.intvec.230)) } > pfls1
    .inttab_tc2_0E7 (TEXT) BIND(__INTTAB_CPU2 + 0x1CE0) : {KEEP (*(.inttab2.intvec.231)) } > pfls1
    .inttab_tc2_0E8 (TEXT) BIND(__INTTAB_CPU2 + 0x1D00) : {KEEP (*(.inttab2.intvec.232)) } > pfls1
    .inttab_tc2_0E9 (TEXT) BIND(__INTTAB_CPU2 + 0x1D20) : {KEEP (*(.inttab2.intvec.233)) } > pfls1
    .inttab_tc2_0EA (TEXT) BIND(__INTTAB_CPU2 + 0x1D40) : {KEEP (*(.inttab2.intvec.234)) } > pfls1
    .inttab_tc2_0EB (TEXT) BIND(__INTTAB_CPU2 + 0x1D60) : {KEEP (*(.inttab2.intvec.235)) } > pfls1
    .inttab_tc2_0EC (TEXT) BIND(__INTTAB_CPU2 + 0x1D80) : {KEEP (*(.inttab2.intvec.236)) } > pfls1
    .inttab_tc2_0ED (TEXT) BIND(__INTTAB_CPU2 + 0x1DA0) : {KEEP (*(.inttab2.intvec.237)) } > pfls1
    .inttab_tc2_0EE (TEXT) BIND(__INTTAB_CPU2 + 0x1DC0) : {KEEP (*(.inttab2.intvec.238)) } > pfls1
    .inttab_tc2_0EF (TEXT) BIND(__INTTAB_CPU2 + 0x1DE0) : {KEEP (*(.inttab2.intvec.239)) } > pfls1
    .inttab_tc2_0F0 (TEXT) BIND(__INTTAB_CPU2 + 0x1E00) : {KEEP (*(.inttab2.intvec.240)) } > pfls1
    .inttab_tc2_0F1 (TEXT) BIND(__INTTAB_CPU2 + 0x1E20) : {KEEP (*(.inttab2.intvec.241)) } > pfls1
    .inttab_tc2_0F2 (TEXT) BIND(__INTTAB_CPU2 + 0x1E40) : {KEEP (*(.inttab2.intvec.242)) } > pfls1
    .inttab_tc2_0F3 (TEXT) BIND(__INTTAB_CPU2 + 0x1E60) : {KEEP (*(.inttab2.intvec.243)) } > pfls1
    .inttab_tc2_0F4 (TEXT) BIND(__INTTAB_CPU2 + 0x1E80) : {KEEP (*(.inttab2.intvec.244)) } > pfls1
    .inttab_tc2_0F5 (TEXT) BIND(__INTTAB_CPU2 + 0x1EA0) : {KEEP (*(.inttab2.intvec.245)) } > pfls1
    .inttab_tc2_0F6 (TEXT) BIND(__INTTAB_CPU2 + 0x1EC0) : {KEEP (*(.inttab2.intvec.246)) } > pfls1
    .inttab_tc2_0F7 (TEXT) BIND(__INTTAB_CPU2 + 0x1EE0) : {KEEP (*(.inttab2.intvec.247)) } > pfls1
    .inttab_tc2_0F8 (TEXT) BIND(__INTTAB_CPU2 + 0x1F00) : {KEEP (*(.inttab2.intvec.248)) } > pfls1
    .inttab_tc2_0F9 (TEXT) BIND(__INTTAB_CPU2 + 0x1F20) : {KEEP (*(.inttab2.intvec.249)) } > pfls1
    .inttab_tc2_0FA (TEXT) BIND(__INTTAB_CPU2 + 0x1F40) : {KEEP (*(.inttab2.intvec.250)) } > pfls1
    .inttab_tc2_0FB (TEXT) BIND(__INTTAB_CPU2 + 0x1F60) : {KEEP (*(.inttab2.intvec.251)) } > pfls1
    .inttab_tc2_0FC (TEXT) BIND(__INTTAB_CPU2 + 0x1F80) : {KEEP (*(.inttab2.intvec.252)) } > pfls1
    .inttab_tc2_0FD (TEXT) BIND(__INTTAB_CPU2 + 0x1FA0) : {KEEP (*(.inttab2.intvec.253)) } > pfls1
    .inttab_tc2_0FE (TEXT) BIND(__INTTAB_CPU2 + 0x1FC0) : {KEEP (*(.inttab2.intvec.254)) } > pfls1
    .inttab_tc2_0FF (TEXT) BIND(__INTTAB_CPU2 + 0x1FE0) : {KEEP (*(.inttab2.intvec.255)) } > pfls1
}
