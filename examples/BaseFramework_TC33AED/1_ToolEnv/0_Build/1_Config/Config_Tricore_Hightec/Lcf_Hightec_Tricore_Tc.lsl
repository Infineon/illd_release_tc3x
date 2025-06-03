/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-tricore")
OUTPUT_ARCH(tricore)
ENTRY(_START)

__TRICORE_DERIVATE_MEMORY_MAP__ = 0x330;

LCF_CSA0_SIZE = 8k;
LCF_USTACK0_SIZE = 2k;
LCF_ISTACK0_SIZE = 1k;

LCF_CSA1_SIZE = 8k;
LCF_USTACK1_SIZE = 2k;
LCF_ISTACK1_SIZE = 1k;

LCF_HEAP_SIZE = 4k;

LCF_DSPR1_START = 0x60000000;
LCF_DSPR1_SIZE = 96k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 192k;

LCF_CSA1_OFFSET =    (LCF_DSPR1_SIZE - 1k - LCF_CSA1_SIZE);
LCF_ISTACK1_OFFSET = (LCF_CSA1_OFFSET - 256 - LCF_ISTACK1_SIZE);
LCF_USTACK1_OFFSET = (LCF_ISTACK1_OFFSET - 256 - LCF_USTACK1_SIZE);

LCF_CSA0_OFFSET =    (LCF_DSPR0_SIZE - 1k - LCF_CSA0_SIZE);
LCF_ISTACK0_OFFSET = (LCF_CSA0_OFFSET - 256 - LCF_ISTACK0_SIZE);
LCF_USTACK0_OFFSET = (LCF_ISTACK0_OFFSET - 256 - LCF_USTACK0_SIZE);

LCF_HEAP0_OFFSET =   (LCF_USTACK0_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP1_OFFSET =   (LCF_USTACK1_OFFSET - LCF_HEAP_SIZE);

LCF_INTVEC0_START = 0x801FC000;
LCF_INTVEC1_START = 0x801FE000;

__INTTAB_CPU0 = LCF_INTVEC0_START;
__INTTAB_CPU1 = LCF_INTVEC1_START;

LCF_TRAPVEC0_START = 0x80000100;
LCF_TRAPVEC1_START = 0x80000200;

LCF_STARTPTR_CPU0 = 0x80000000;
LCF_STARTPTR_CPU1 = 0x80000300;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
LCF_STARTPTR_NC_CPU1 = 0xA0000300;

RESET = LCF_STARTPTR_NC_CPU0;


MEMORY
{
    
    dsram1_local (w!x): org = 0xd0000000, len = 96K
    dsram1 (w!x): org = 0x60000000, len = 96K
    psram1 (w!x): org = 0x60100000, len = 64K
    
    dsram0_local (w!x): org = 0xd0000000, len = 192K
    dsram0 (w!x): org = 0x70000000, len = 192K
    psram0 (w!x): org = 0x70100000, len = 32K
    
    psram_local (w!x): org = 0xc0000000, len = 64K
    
    pfls0 (rx): org = 0x80000000, len = 2M
    pfls0_nc (rx): org = 0xa0000000, len = 2M
    
    dfls0 (rx): org = 0xaf000000, len = 256K
    
    ucb (rx): org = 0xaf400000, len = 24K
    
    cpu0_dlmu (w!x): org = 0x90000000, len = 8K
    cpu0_dlmu_nc (w!x): org = 0xb0000000, len = 8K
    
    cpu1_dlmu (w!x): org = 0x90010000, len = 64K
    cpu1_dlmu_nc (w!x): org = 0xb0010000, len = 64K
    
    edmem (w!x): org = 0x99000000, len = 2M
    edmem_nc (w!x): org = 0xb9000000, len = 2M


}

REGION_ALIAS( inttab0_mem , pfls0)
REGION_ALIAS( inttab1_mem , pfls0)
/* map cached and non cached addresses */
REGION_MIRROR("pfls0", "pfls0_nc")
REGION_MIRROR("cpu0_dlmu", "cpu0_dlmu_nc")
REGION_MIRROR("cpu1_dlmu", "cpu1_dlmu_nc")

/*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/

REGION_ALIAS( default_ram , dsram0)
REGION_ALIAS( default_rom , pfls0)

/*
REGION_ALIAS( default_ram , dsram1)
*/
   
    /*Fixed memory Allocations for _START*/
    
    SECTIONS
    {
        .start_tc0 (LCF_STARTPTR_NC_CPU0) : { KEEP (*(.start)); } > pfls0_nc
        .interface_const (0x80000020) : { __IF_CONST = .; KEEP (*(.interface_const)); } > pfls0
		.traptab_tc0 (LCF_TRAPVEC0_START) : { PROVIDE(__TRAPTAB_CPU0 = .); KEEP (*(.traptab_cpu0)); } > pfls0
        PROVIDE(__START0 = LCF_STARTPTR_NC_CPU0);
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU0 = 0); /* Not used */
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU1 = 0);
    }
    
    /*Fixed memory Allocations for Trap Vector Table*/
    
    SECTIONS
    {
        .traptab_tc1 (LCF_TRAPVEC1_START) : { PROVIDE(__TRAPTAB_CPU1 = .); KEEP (*(.traptab_cpu1)); } > pfls0
	}
	
    
    /*Fixed memory Allocations for _START1 to 5*/	
    SECTIONS
    {
        .start_tc1 (LCF_STARTPTR_NC_CPU1) : { KEEP (*(.start_cpu1)); } > pfls0_nc
        PROVIDE(__START1 = LCF_STARTPTR_NC_CPU1);
    }
    
    /*Fixed memory Allocations for Interrupt Vector Table*/
    
    
    /*Fixed memory Allocations for BMHD*/
    
    SECTIONS
    {
        .bmhd_0_org (0xaf400000) :  { KEEP (*(.bmhd_0_orig)); } > ucb
        .bmhd_1_org (0xaf400200) :  { KEEP (*(.bmhd_1_orig)); } > ucb
        .bmhd_2_org (0xaf400400) :  { KEEP (*(.bmhd_2_orig)); } > ucb
        .bmhd_3_org (0xaf400600) :  { KEEP (*(.bmhd_3_orig)); } > ucb
        .ucb_reserved (0xaf400800) :  { } > ucb
        .bmhd_0_copy (0xaf401000) :  { KEEP (*(.bmhd_0_copy)); } > ucb
        .bmhd_1_copy (0xaf401200) :  { KEEP (*(.bmhd_1_copy)); } > ucb
        .bmhd_2_copy (0xaf401400) :  { KEEP (*(.bmhd_2_copy)); } > ucb
        .bmhd_3_copy (0xaf401600) :  { KEEP (*(.bmhd_3_copy)); } > ucb    
    }
    
    /*Near Absolute Addressable Data Sections*/
    /*Near Absolute Data, selectable with patterns and user defined sections*/
    
    SECTIONS
    {
        .CPU1.zdata (LCF_DSPR1_START): 
        {
            *Ifx_Ssw_Tc1.* (.zdata)
            *Cpu1_Main.* (.zdata)
            *(.zdata_cpu1)
            *(.zdata_cpu1.*)
            . = ALIGN(2);
        } > dsram1 AT> pfls0
        
        .CPU1.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc1.* (.zbss)
            *Cpu1_Main.* (.zbss)
            *(.zbss_cpu1)
            *(.zbss_cpu1.*)
        } > dsram1
    }
    
    SECTIONS
    {
        .CPU0.zdata (LCF_DSPR0_START): 
        {
            *Ifx_Ssw_Tc0.* (.zdata)
            *Cpu0_Main.* (.zdata)
            *(.zdata_cpu0)
            *(.zdata_cpu0.*)
            . = ALIGN(2);
        } > dsram0 AT> pfls0
        
        .CPU0.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc0.* (.zbss)
            *Cpu0_Main.* (.zbss)
            *(.zbss_cpu0)
            *(.zbss_cpu0.*)
        } > dsram0
    }
    
    /*Near Absolute Data, selectable by toolchain*/
    
    SECTIONS
    {    
        .zdata_powerOn : 
        {
            *(.zdata.dsprPowerOnInit.cpu0.32bit)
            *(.zdata.dsprPowerOnInit.cpu0.16bit)
            *(.zdata.dsprPowerOnInit.cpu0.8bit)
            . = ALIGN(2);
        } > default_ram AT> pfls0
        
        .zdata : 
        {
            *(.zdata.dsprInit.cpu0.32bit)
            *(.zdata.dsprInit.cpu0.16bit)
            *(.zdata.dsprInit.cpu0.8bit)
            *(.zdata)
            *(.zdata.*)
            *(.gnu.linkonce.z.*)
            . = ALIGN(2);
        } > default_ram AT> pfls0
        
        .zbss_powerOn (NOLOAD) : 
        {
            *(.zbss.dsprPowerOnClear.cpu0.32bit)
            *(.zbss.dsprPowerOnClear.cpu0.16bit)
            *(.zbss.dsprPowerOnClear.cpu0.8bit)
        } > default_ram
        
        .zbss_noClear (NOLOAD) : 
        {
            *(.zbss.dsprNoInit.cpu0.32bit)
            *(.zbss.dsprNoInit.cpu0.16bit)
            *(.zbss.dsprNoInit.cpu0.8bit)
        } > default_ram
        
        .zbss (NOLOAD) : 
        {
            *(.zbss.dsprClearOnInit.cpu0.32bit)
            *(.zbss.dsprClearOnInit.cpu0.16bit)
            *(.zbss.dsprClearOnInit.cpu0.8bit)
            *(.zbss)
            *(.zbss.*)
            *(.bbss)
            *(.bbss.*)
            *(.gnu.linkonce.zb.*)
        } > default_ram
    }

    
    SECTIONS
    {
        /*Cpu0_dlmu also is the segment start, all the near lmu data shll be located here*/
        .lmuzdata : 
        {
            *(.zlmudata)
            *(.zlmudata.*)
            . = ALIGN(2);
        } > cpu0_dlmu AT> pfls0
        
        .zbss (NOLOAD) : 
        {
            *(.zlmubss)
            *(.zlmubss.*)
        } > cpu0_dlmu
    }
    
    /*Near Absolute Const, selectable with patterns and user defined sections*/
    
    SECTIONS
    {
        .zrodata : 
        {
            *Ifx_Ssw_Tc?.* (.zrodata)
            *Cpu?_Main.* (.zrodata)
            *(.zrodata_cpu?)
        } > pfls0
    }
    
    /*Near Absolute Const, selectable by toolchain*/
    
    SECTIONS
    {
        .zrodata : 
        {
            *(.zrodata.const.cpu0.32bit)
            *(.zrodata.const.cpu0.16bit)
            *(.zrodata.const.cpu0.8bit)
            *(.zrodata.config.cpu0.32bit)
            *(.zrodata.config.cpu0.16bit)
            *(.zrodata.config.cpu0.8bit)
            *(.zrodata)
            *(.zrodata.*)
        } > pfls0
    }

/*Relative A0/A1/A8/A9 Addressable Sections*/

SECTIONS
{
    /*Relative A0 Addressable Data, selectable with patterns and user defined sections*/
        /*Note: A0 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A0 Addressable Data, selectable by toolchain*/
    .sdata : 
    {
        *(.data_a0)
	*(.data_a0.*)
        *(.sdata)
        *(.sdata.*)
        . = ALIGN(2);
    } > default_ram AT> pfls0
    .sbss (NOLOAD): 
    {
        *(.bss_a0)
	*(.bss_a0.*)
        *(.sbss)
        *(.sbss.*)
    } > default_ram
    __SMALL_DATA__ = SIZEOF(.sdata) ? ADDR(.sdata) : (ADDR(.sdata) & 0xF0000000) + 32k ;
    __A0_MEM = __SMALL_DATA__;
}


SECTIONS
{
    /*Relative A1 Addressable Const, selectable with patterns and user defined sections*/
        /*Note: A1 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A1 Addressable Const, selectable by toolchain*/
    .sdata2 : 
    {
        *(.rodata_a1)
	*(.rodata_a1.*)
        *(.srodata)
        *(.srodata.*)
    } > default_rom
    __SMALL_DATA2__ = SIZEOF(.sdata2) ? ADDR(.sdata2) : (ADDR(.sdata2) & 0xF0000000) + 32k ;
    __A1_MEM = __SMALL_DATA2__;
}


SECTIONS
{
    /*Relative A9 Addressable Data, selectable with patterns and user defined sections*/
    .sdata4 :
    {
        *(.data_a9)
	*(.data_a9.*)
        *(.a9sdata)
        *(.a9sdata.*)
        . = ALIGN(2);
    } > cpu0_dlmu AT> pfls0
    
    .sbss4 :
    {
        *(.bss_a9)
	*(.bss_a9.*)
        *(.a9sbss)
        *(.a9sbss.*)    
    } > cpu0_dlmu
    
    __SMALL_DATA4__ = SIZEOF(.sdata4) ? ADDR(.sdata4) : (ADDR(.sdata4) & 0xF0000000) + 32k ;
    __A9_MEM = __SMALL_DATA4__;

    /*Relative A8 Addressable Const, selectable with patterns and user defined sections*/
    .sdata3 : 
    {
        *(.rodata_a8)
        *(.rodata_a8.*)
    } > default_rom
    
    __SMALL_DATA3__ = SIZEOF(.sdata3) ? ADDR(.sdata3) : (ADDR(.sdata3) & 0xF0000000) + 32k ;
    __A8_MEM = __SMALL_DATA3__;
}

/*Far Data / Far Const Sections, selectable with patterns and user defined sections*/
/*Far Data Sections, selectable with patterns and user defined sections*/

SECTIONS
{
    /*DSRAM1 Sections*/
    .CPU1.data : 
    {
        *Ifx_Ssw_Tc1.* (.data)
        *Cpu1_Main.* (.data)
        *(.data_cpu1)
        *(.data_cpu1.*)
        . = ALIGN(2);
    } > dsram1 AT> pfls0
    
    .CPU1.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc1.* (.bss)
        *Cpu1_Main.* (.bss)
        *(.bss_cpu1)
        *(.bss_cpu1.*)
    } > dsram1
    
    /*DLMU1 Sections*/
    .CPU1.lmudata : 
    {
        *(.lmudata_cpu1)
        *(.lmudata_cpu1.*)
        . = ALIGN(2);
    } > cpu1_dlmu AT> pfls0
    
    .CPU1.lmubss : 
    {
        *(.lmubss_cpu1)
        *(.lmubss_cpu1.*)
    } > cpu1_dlmu
}

SECTIONS
{
    /*DSRAM0 Sections*/
    .CPU0.data : 
    {
        *Ifx_Ssw_Tc0.* (.data)
        *Cpu0_Main.* (.data)
        *(.data_cpu0)
        *(.data_cpu0.*)
        . = ALIGN(2);
    } > dsram0 AT> pfls0
    
    .CPU0.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc0.* (.bss)
        *Cpu0_Main.* (.bss)
        *(.bss_cpu0)
        *(.bss_cpu0.*)
    } > dsram0
    
    /*DLMU0 Sections*/
    .CPU0.lmudata : 
    {
        *(.lmudata_cpu0)
        *(.lmudata_cpu0.*)
        . = ALIGN(2);
    } > cpu0_dlmu AT> pfls0
    
    .CPU0.lmubss : 
    {
        *(.lmubss_cpu0)
        *(.lmubss_cpu0.*)
    } > cpu0_dlmu
}

/*Far Data Sections, selectable by toolchain*/

SECTIONS
{
    .bss_noClear (NOLOAD) : 
    {
        *(.bss.farDsprNoInit.cpu0.32bit)
        *(.bss.farDsprNoInit.cpu0.16bit)
        *(.bss.farDsprNoInit.cpu0.8bit)
    } > default_ram
    
    .data : 
    {
        *(.data.farDsprInit.cpu0.32bit)
        *(.data.farDsprInit.cpu0.16bit)
        *(.data.farDsprInit.cpu0.8bit)
        *(.data)
        *(.data.*)
        *(.gnu.linkonce.d.*)
        . = ALIGN(2);
    } > default_ram AT> pfls0
    
    .bss (NOLOAD) : 
    {
        *(.bss.farDsprClearOnInit.cpu0.32bit)
        *(.bss.farDsprClearOnInit.cpu0.16bit)
        *(.bss.farDsprClearOnInit.cpu0.8bit)
        *(.bss)
        *(.bss.*)
        *(.gnu.linkonce.b.*)
    } > default_ram
    
    .heap (NOLOAD) :
    {
    . = ALIGN(4);
    __HEAP = .;
    __heap_start =.;
    . += LCF_HEAP_SIZE;
    __HEAP_END = .;
    __heap_end =.;
    } > default_ram
    
    .lmudata : 
    {
        *(.lmudata)
        *(.lmudata.*)
        . = ALIGN(2);
    } > cpu0_dlmu AT> pfls0
    
    .lmubss : 
    {
        *(.lmubss)
        *(.lmubss.*)
    } > cpu0_dlmu
}

    /*Sections located at absolute fixed address*/
    /*Fixed memory Allocations for stack memory and CSA*/     
    
    SECTIONS
    {
        .CPU1.ustack (LCF_DSPR1_START + LCF_USTACK1_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK1_END = .);    . = . + LCF_USTACK1_SIZE;    PROVIDE(__USTACK1 = .); } > dsram1
        
        .CPU1.istack (LCF_DSPR1_START + LCF_ISTACK1_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK1_END = .);    . = . + LCF_ISTACK1_SIZE;    PROVIDE(__ISTACK1 = .); } > dsram1
        
        .CPU1.csa (LCF_DSPR1_START + LCF_CSA1_OFFSET)(NOLOAD):
        { PROVIDE(__CSA1 = .);    . = . + LCF_CSA1_SIZE;    PROVIDE(__CSA1_END = .); } > dsram1
    }
    
    
    SECTIONS
    {
        .CPU0.ustack (LCF_DSPR0_START + LCF_USTACK0_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK0_END = .);    . = . + LCF_USTACK0_SIZE;    PROVIDE(__USTACK0 = .); } > dsram0
        
        .CPU0.istack (LCF_DSPR0_START + LCF_ISTACK0_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK0_END = .);    . = . + LCF_ISTACK0_SIZE;    PROVIDE(__ISTACK0 = .); } > dsram0
        
        .CPU0.csa (LCF_DSPR0_START + LCF_CSA0_OFFSET)(NOLOAD):
        { PROVIDE(__CSA0 = .);    . = . + LCF_CSA0_SIZE;    PROVIDE(__CSA0_END = .); } > dsram0
    }
	
/*Far Const Sections, selectable with patterns and user defined sections*/

SECTIONS
{
    .CPU0.rodata : 
    {
        *Ifx_Ssw_Tc0.* (.rodata)
        *Cpu0_Main.* (.rodata)
        *(.rodata_cpu0)
        *(.rodata_cpu0.*)
    } > pfls0
}


SECTIONS
{
    .CPU1.rodata : 
    {
        *Ifx_Ssw_Tc1.* (.rodata)
        *Cpu1_Main.* (.rodata)
        *(.rodata_cpu1)
        *(.rodata_cpu1.*)
    } > pfls0
}

/*Far Const Sections, selectable by toolchain*/

SECTIONS
{
    .rodata : 
    {
        *(.rodata.farConst.cpu0.32bit)
        *(.rodata.farConst.cpu0.16bit)
        *(.rodata.farConst.cpu0.8bit)
        *(.rodata)
        *(.rodata.*)
    *(.gnu.linkonce.r.*)
    /*
     * Create the clear and copy tables that tell the startup code
     * which memory areas to clear and to copy, respectively.
     */
    . = ALIGN(4) ;
    PROVIDE(__clear_table = .);
    LONG(0 + ADDR(.CPU1.zbss));       LONG(SIZEOF(.CPU1.zbss));
    LONG(0 + ADDR(.CPU1.bss));        LONG(SIZEOF(.CPU1.bss));
    LONG(0 + ADDR(.CPU1.lmubss));     LONG(SIZEOF(.CPU1.lmubss));
    LONG(0 + ADDR(.CPU0.zbss));       LONG(SIZEOF(.CPU0.zbss));
    LONG(0 + ADDR(.CPU0.bss));        LONG(SIZEOF(.CPU0.bss));
    LONG(0 + ADDR(.CPU0.lmubss));     LONG(SIZEOF(.CPU0.lmubss));
    LONG(0 + ADDR(.zbss));            LONG(SIZEOF(.zbss));
    LONG(0 + ADDR(.sbss));            LONG(SIZEOF(.sbss));
    LONG(0 + ADDR(.bss));             LONG(SIZEOF(.bss));
    LONG(0 + ADDR(.lmubss));          LONG(SIZEOF(.lmubss));
    LONG(0 + ADDR(.sbss4));           LONG(SIZEOF(.sbss4));
    LONG(-1);                         LONG(-1);
    PROVIDE(__clear_table_powerOn = .);
    LONG(0 + ADDR(.zbss_powerOn));    LONG(SIZEOF(.zbss_powerOn));
    LONG(-1);                         LONG(-1);
    PROVIDE(__copy_table = .);
    LONG(LOADADDR(.CPU1.zdata));      LONG(0 + ADDR(.CPU1.zdata));      LONG(SIZEOF(.CPU1.zdata));
    LONG(LOADADDR(.CPU1.data));       LONG(0 + ADDR(.CPU1.data));       LONG(SIZEOF(.CPU1.data));
    LONG(LOADADDR(.CPU1.lmudata));    LONG(0 + ADDR(.CPU1.lmudata));    LONG(SIZEOF(.CPU1.lmudata));
    LONG(LOADADDR(.CPU0.zdata));      LONG(0 + ADDR(.CPU0.zdata));      LONG(SIZEOF(.CPU0.zdata));
    LONG(LOADADDR(.CPU0.data));       LONG(0 + ADDR(.CPU0.data));       LONG(SIZEOF(.CPU0.data));
    LONG(LOADADDR(.CPU0.lmudata));    LONG(0 + ADDR(.CPU0.lmudata));    LONG(SIZEOF(.CPU0.lmudata));
    LONG(LOADADDR(.zdata));           LONG(0 + ADDR(.zdata));           LONG(SIZEOF(.zdata));
    LONG(LOADADDR(.sdata));           LONG(0 + ADDR(.sdata));           LONG(SIZEOF(.sdata));
    LONG(LOADADDR(.data));            LONG(0 + ADDR(.data));            LONG(SIZEOF(.data));
    LONG(LOADADDR(.lmudata));         LONG(0 + ADDR(.lmudata));         LONG(SIZEOF(.lmudata));
    LONG(LOADADDR(.sdata4));          LONG(0 + ADDR(.sdata4));          LONG(SIZEOF(.sdata4));
    LONG(LOADADDR(.CPU0.psram_text)); LONG(0 + ADDR(.CPU0.psram_text)); LONG(SIZEOF(.CPU0.psram_text));
    LONG(LOADADDR(.CPU1.psram_text)); LONG(0 + ADDR(.CPU1.psram_text)); LONG(SIZEOF(.CPU1.psram_text));
    LONG(-1);                         LONG(-1);                         LONG(-1);
    PROVIDE(__copy_table_powerOn = .) ;
    LONG(LOADADDR(.zdata_powerOn));   LONG(0 + ADDR(.zdata_powerOn));   LONG(SIZEOF(.zdata_powerOn));
    LONG(-1);                         LONG(-1);                         LONG(-1);
    . = ALIGN(8);
    } > default_rom
}

/*Code selections*/
/*Code Sections, selectable with patterns and user defined sections*/

SECTIONS
{
    .CPU0.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc0.*(.text)
        *Cpu0_Main.*(.text)
        *Ifx_Ssw_Tc0.*(.text.*)
        *Cpu0_Main.*(.text.*)
        *(.text_cpu0)
        *(.text_cpu0.*)
    } > pfls0
	
	/* VDK TSPI Functions */
    .tspi :
     {
        *(.tspi)
        . = ALIGN(8);
    } > pfls0
    
    /*
     * Code executed before calling main extra section for C++ constructor init
     *  -------------------------Start-----------------------------------------
     */
    .init :
    {
        PROVIDE(__init_start = .);
        KEEP(*(.init))
        KEEP(*(.init*))
        PROVIDE(__init_end = .);
        . = ALIGN(8);
    
    } > pfls0
    
    .fini :
    {
        PROVIDE(__fini_start = .);
        KEEP(*(.fini))
        KEEP(*(.fini*))
        PROVIDE(__fini_end = .);
        . = ALIGN(8);
    } > pfls0
    
    /*
     * Code executed before calling main extra section for C++ constructor init
     *  -------------------------End-----------------------------------------
     */
    .CPU0.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu0)
        *(.psram_text_cpu0.*)
        *(.cpu0_psram)
        *(.cpu0_psram.*)
        . = ALIGN(2);
    } > psram0 AT> pfls0
}


SECTIONS
{
    .CPU1.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc1.*(.text)
        *Cpu1_Main.*(.text)
        *Ifx_Ssw_Tc1.*(.text.*)
        *Cpu1_Main.*(.text.*)
        *(.text_cpu1)
        *(.text_cpu1.*)
    } > pfls0

    .CPU1.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu1)
        *(.psram_text_cpu1.*)
        *(.cpu1_psram)
        *(.cpu1_psram.*)
        . = ALIGN(2);
    } > psram1 AT> pfls0
}

/*Code Sections, selectable by toolchain*/

SECTIONS
{
    .text : 
    {
        *(.text.fast.pfls.cpu0)
        *(.text.slow.pfls.cpu0)
        *(.text.5ms.pfls.cpu0)
        *(.text.10ms.pfls.cpu0)
        *(.text.callout.pfls.cpu0)
        *(.text)
        *(.text.*)
        *(.gnu.linkonce.t.*)
        *(.gnu.warning)        /* .gnu.warning sections are handled specially by elf32.em. */
        . = ALIGN(4);
    } > default_rom
    .preinit_array : ALIGN(8) {
      PROVIDE_HIDDEN ( __preinit_array_start = . );
      KEEP (*(.preinit_array))
      PROVIDE_HIDDEN ( __preinit_array_end = . );
    } > default_rom
    .init_array : ALIGN(8) {
      PROVIDE_HIDDEN ( __init_array_start = . );
      KEEP (*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))
      KEEP (*(.init_array .ctors))
      PROVIDE_HIDDEN ( __init_array_end = . );
    } > default_rom
    .fini_array : ALIGN(8) {
      . = ALIGN(8);
      PROVIDE_HIDDEN ( __fini_array_start = . );
      KEEP (*(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*)))
      KEEP (*(.fini_array .dtors))
      PROVIDE_HIDDEN ( __fini_array_end = . );
    } > default_rom

    /*
     * C++ exception handling tables.  NOTE: gcc emits .eh_frame
     * sections when compiling C sources with debugging enabled (-g).
     * If you can be sure that your final application consists
     * exclusively of C objects (i.e., no C++ objects), you may use
     * the -R option of the "strip" and "objcopy" utilities to remove
     * the .eh_frame section from the executable.
     
    .eh_frame  :
    {
        *(.gcc_except_table)
        __EH_FRAME_BEGIN__ = . ;
        KEEP (*(.eh_frame))
        __EH_FRAME_END__ = . ;
        . = ALIGN(8);
    } > default_rom
    */
  .eh_frame : ALIGN(8)
  {
    __eh_frame_start = .;
    KEEP(*(.eh_frame))
    __eh_frame_end = .;
    . = ALIGN(8);
  } > default_rom

    .eh_frame_hdr : ALIGN(8)
  {
    KEEP(*(.eh_frame_hdr))
    . = ALIGN(8);
  } > default_rom

  __eh_frame_hdr_start = SIZEOF(.eh_frame_hdr) > 0 ? ADDR(.eh_frame_hdr) : 0;
  __eh_frame_hdr_end = SIZEOF(.eh_frame_hdr) > 0 ? . : 0;

/*
    .eh_frame_hdr : ALIGN(8)
  {
    __eh_frame_hdr_start = .;
    KEEP(*(.eh_frame))
    __eh_frame_hdr_end = .;
    . = ALIGN(8);
  } > default_rom
*/
   
    /*
     * DWARF debug sections.
     * Symbols in the DWARF debugging sections are relative to the
     * beginning of the section, so we begin them at 0.
     */
    /*
     * DWARF 1
     */
    .comment         0 : { *(.comment) }
    .debug           0 : { *(.debug) }
    .line            0 : { *(.line) }
    /*
     * GNU DWARF 1 extensions
     */
    .debug_srcinfo   0 : { *(.debug_srcinfo) }
    .debug_sfnames   0 : { *(.debug_sfnames) }
    /*
     * DWARF 1.1 and DWARF 2
     */
    .debug_aranges   0 : { *(.debug_aranges) }
    .debug_pubnames  0 : { *(.debug_pubnames) }
    /*
     * DWARF 2
     */
    .debug_info      0 : { *(.debug_info) }
    .debug_abbrev    0 : { *(.debug_abbrev) }
    .debug_line      0 : { *(.debug_line) }
    .debug_frame     0 : { *(.debug_frame) }
    .debug_str       0 : { *(.debug_str) }
    .debug_loc       0 : { *(.debug_loc) }
    .debug_macinfo   0 : { *(.debug_macinfo) }
    .debug_ranges    0 : { *(.debug_ranges) }
    /*
     * SGI/MIPS DWARF 2 extensions
     */
    .debug_weaknames 0 : { *(.debug_weaknames) }
    .debug_funcnames 0 : { *(.debug_funcnames) }
    .debug_typenames 0 : { *(.debug_typenames) }
    .debug_varnames  0 : { *(.debug_varnames) }
    /*
     * Optional sections that may only appear when relocating.
     */
    /*
     * Optional sections that may appear regardless of relocating.
     */
    .version_info    0 : { *(.version_info) }
    .boffs           0 : { KEEP (*(.boffs)) }
}

SECTIONS
{
    /* capture all VM int vector table entries here, just to demonstrate the macros. */
    .inttabvm_demo : { KEEP (*(.intvecvm_*  )); } > default_rom
}



    /*Fixed memory Allocations for Interrupt Vector Table*/
    SECTIONS
    {
        /*CPU0 Interrupt Vector Table*/
        .inttab_tc0_000 (__INTTAB_CPU0 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_0  )); } > inttab0_mem
        .inttab_tc0_001 (__INTTAB_CPU0 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_1  )); } > inttab0_mem
        .inttab_tc0_002 (__INTTAB_CPU0 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_2  )); } > inttab0_mem
        .inttab_tc0_003 (__INTTAB_CPU0 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_3  )); } > inttab0_mem
        .inttab_tc0_004 (__INTTAB_CPU0 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_4  )); } > inttab0_mem
        .inttab_tc0_005 (__INTTAB_CPU0 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_5  )); } > inttab0_mem
        .inttab_tc0_006 (__INTTAB_CPU0 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_6  )); } > inttab0_mem
        .inttab_tc0_007 (__INTTAB_CPU0 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_7  )); } > inttab0_mem
        .inttab_tc0_008 (__INTTAB_CPU0 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_8  )); } > inttab0_mem
        .inttab_tc0_009 (__INTTAB_CPU0 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_9  )); } > inttab0_mem
        .inttab_tc0_00A (__INTTAB_CPU0 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_10 )); } > inttab0_mem
        .inttab_tc0_00B (__INTTAB_CPU0 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_11 )); } > inttab0_mem
        .inttab_tc0_00C (__INTTAB_CPU0 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_12 )); } > inttab0_mem
        .inttab_tc0_00D (__INTTAB_CPU0 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_13 )); } > inttab0_mem
        .inttab_tc0_00E (__INTTAB_CPU0 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_14 )); } > inttab0_mem
        .inttab_tc0_00F (__INTTAB_CPU0 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_15 )); } > inttab0_mem
        .inttab_tc0_010 (__INTTAB_CPU0 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_16 )); } > inttab0_mem
        .inttab_tc0_011 (__INTTAB_CPU0 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_17 )); } > inttab0_mem
        .inttab_tc0_012 (__INTTAB_CPU0 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_18 )); } > inttab0_mem
        .inttab_tc0_013 (__INTTAB_CPU0 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_19 )); } > inttab0_mem
        .inttab_tc0_014 (__INTTAB_CPU0 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_20 )); } > inttab0_mem
        .inttab_tc0_015 (__INTTAB_CPU0 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_21 )); } > inttab0_mem
        .inttab_tc0_016 (__INTTAB_CPU0 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_22 )); } > inttab0_mem
        .inttab_tc0_017 (__INTTAB_CPU0 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_23 )); } > inttab0_mem
        .inttab_tc0_018 (__INTTAB_CPU0 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_24 )); } > inttab0_mem
        .inttab_tc0_019 (__INTTAB_CPU0 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_25 )); } > inttab0_mem
        .inttab_tc0_01A (__INTTAB_CPU0 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_26 )); } > inttab0_mem
        .inttab_tc0_01B (__INTTAB_CPU0 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_27 )); } > inttab0_mem
        .inttab_tc0_01C (__INTTAB_CPU0 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_28 )); } > inttab0_mem
        .inttab_tc0_01D (__INTTAB_CPU0 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_29 )); } > inttab0_mem
        .inttab_tc0_01E (__INTTAB_CPU0 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_30 )); } > inttab0_mem
        .inttab_tc0_01F (__INTTAB_CPU0 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_31 )); } > inttab0_mem
        .inttab_tc0_020 (__INTTAB_CPU0 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_32 )); } > inttab0_mem
        .inttab_tc0_021 (__INTTAB_CPU0 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_33 )); } > inttab0_mem
        .inttab_tc0_022 (__INTTAB_CPU0 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_34 )); } > inttab0_mem
        .inttab_tc0_023 (__INTTAB_CPU0 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_35 )); } > inttab0_mem
        .inttab_tc0_024 (__INTTAB_CPU0 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_36 )); } > inttab0_mem
        .inttab_tc0_025 (__INTTAB_CPU0 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_37 )); } > inttab0_mem
        .inttab_tc0_026 (__INTTAB_CPU0 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_38 )); } > inttab0_mem
        .inttab_tc0_027 (__INTTAB_CPU0 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_39 )); } > inttab0_mem
        .inttab_tc0_028 (__INTTAB_CPU0 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_40 )); } > inttab0_mem
        .inttab_tc0_029 (__INTTAB_CPU0 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_41 )); } > inttab0_mem
        .inttab_tc0_02A (__INTTAB_CPU0 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_42 )); } > inttab0_mem
        .inttab_tc0_02B (__INTTAB_CPU0 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_43 )); } > inttab0_mem
        .inttab_tc0_02C (__INTTAB_CPU0 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_44 )); } > inttab0_mem
        .inttab_tc0_02D (__INTTAB_CPU0 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_45 )); } > inttab0_mem
        .inttab_tc0_02E (__INTTAB_CPU0 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_46 )); } > inttab0_mem
        .inttab_tc0_02F (__INTTAB_CPU0 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_47 )); } > inttab0_mem
        .inttab_tc0_030 (__INTTAB_CPU0 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_48 )); } > inttab0_mem
        .inttab_tc0_031 (__INTTAB_CPU0 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_49 )); } > inttab0_mem
        .inttab_tc0_032 (__INTTAB_CPU0 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_50 )); } > inttab0_mem
        .inttab_tc0_033 (__INTTAB_CPU0 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_51 )); } > inttab0_mem
        .inttab_tc0_034 (__INTTAB_CPU0 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_52 )); } > inttab0_mem
        .inttab_tc0_035 (__INTTAB_CPU0 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_53 )); } > inttab0_mem
        .inttab_tc0_036 (__INTTAB_CPU0 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_54 )); } > inttab0_mem
        .inttab_tc0_037 (__INTTAB_CPU0 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_55 )); } > inttab0_mem
        .inttab_tc0_038 (__INTTAB_CPU0 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_56 )); } > inttab0_mem
        .inttab_tc0_039 (__INTTAB_CPU0 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_57 )); } > inttab0_mem
        .inttab_tc0_03A (__INTTAB_CPU0 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_58 )); } > inttab0_mem
        .inttab_tc0_03B (__INTTAB_CPU0 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_59 )); } > inttab0_mem
        .inttab_tc0_03C (__INTTAB_CPU0 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_60 )); } > inttab0_mem
        .inttab_tc0_03D (__INTTAB_CPU0 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_61 )); } > inttab0_mem
        .inttab_tc0_03E (__INTTAB_CPU0 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_62 )); } > inttab0_mem
        .inttab_tc0_03F (__INTTAB_CPU0 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_63 )); } > inttab0_mem
        .inttab_tc0_040 (__INTTAB_CPU0 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_64 )); } > inttab0_mem
        .inttab_tc0_041 (__INTTAB_CPU0 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_65 )); } > inttab0_mem
        .inttab_tc0_042 (__INTTAB_CPU0 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_66 )); } > inttab0_mem
        .inttab_tc0_043 (__INTTAB_CPU0 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_67 )); } > inttab0_mem
        .inttab_tc0_044 (__INTTAB_CPU0 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_68 )); } > inttab0_mem
        .inttab_tc0_045 (__INTTAB_CPU0 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_69 )); } > inttab0_mem
        .inttab_tc0_046 (__INTTAB_CPU0 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_70 )); } > inttab0_mem
        .inttab_tc0_047 (__INTTAB_CPU0 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_71 )); } > inttab0_mem
        .inttab_tc0_048 (__INTTAB_CPU0 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_72 )); } > inttab0_mem
        .inttab_tc0_049 (__INTTAB_CPU0 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_73 )); } > inttab0_mem
        .inttab_tc0_04A (__INTTAB_CPU0 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_74 )); } > inttab0_mem
        .inttab_tc0_04B (__INTTAB_CPU0 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_75 )); } > inttab0_mem
        .inttab_tc0_04C (__INTTAB_CPU0 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_76 )); } > inttab0_mem
        .inttab_tc0_04D (__INTTAB_CPU0 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_77 )); } > inttab0_mem
        .inttab_tc0_04E (__INTTAB_CPU0 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_78 )); } > inttab0_mem
        .inttab_tc0_04F (__INTTAB_CPU0 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_79 )); } > inttab0_mem
        .inttab_tc0_050 (__INTTAB_CPU0 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_80 )); } > inttab0_mem
        .inttab_tc0_051 (__INTTAB_CPU0 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_81 )); } > inttab0_mem
        .inttab_tc0_052 (__INTTAB_CPU0 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_82 )); } > inttab0_mem
        .inttab_tc0_053 (__INTTAB_CPU0 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_83 )); } > inttab0_mem
        .inttab_tc0_054 (__INTTAB_CPU0 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_84 )); } > inttab0_mem
        .inttab_tc0_055 (__INTTAB_CPU0 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_85 )); } > inttab0_mem
        .inttab_tc0_056 (__INTTAB_CPU0 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_86 )); } > inttab0_mem
        .inttab_tc0_057 (__INTTAB_CPU0 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_87 )); } > inttab0_mem
        .inttab_tc0_058 (__INTTAB_CPU0 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_88 )); } > inttab0_mem
        .inttab_tc0_059 (__INTTAB_CPU0 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_89 )); } > inttab0_mem
        .inttab_tc0_05A (__INTTAB_CPU0 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_90 )); } > inttab0_mem
        .inttab_tc0_05B (__INTTAB_CPU0 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_91 )); } > inttab0_mem
        .inttab_tc0_05C (__INTTAB_CPU0 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_92 )); } > inttab0_mem
        .inttab_tc0_05D (__INTTAB_CPU0 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_93 )); } > inttab0_mem
        .inttab_tc0_05E (__INTTAB_CPU0 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_94 )); } > inttab0_mem
        .inttab_tc0_05F (__INTTAB_CPU0 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_95 )); } > inttab0_mem
        .inttab_tc0_060 (__INTTAB_CPU0 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_96 )); } > inttab0_mem
        .inttab_tc0_061 (__INTTAB_CPU0 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_97 )); } > inttab0_mem
        .inttab_tc0_062 (__INTTAB_CPU0 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_98 )); } > inttab0_mem
        .inttab_tc0_063 (__INTTAB_CPU0 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_99 )); } > inttab0_mem
        .inttab_tc0_064 (__INTTAB_CPU0 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_100)); } > inttab0_mem
        .inttab_tc0_065 (__INTTAB_CPU0 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_101)); } > inttab0_mem
        .inttab_tc0_066 (__INTTAB_CPU0 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_102)); } > inttab0_mem
        .inttab_tc0_067 (__INTTAB_CPU0 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_103)); } > inttab0_mem
        .inttab_tc0_068 (__INTTAB_CPU0 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_104)); } > inttab0_mem
        .inttab_tc0_069 (__INTTAB_CPU0 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_105)); } > inttab0_mem
        .inttab_tc0_06A (__INTTAB_CPU0 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_106)); } > inttab0_mem
        .inttab_tc0_06B (__INTTAB_CPU0 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_107)); } > inttab0_mem
        .inttab_tc0_06C (__INTTAB_CPU0 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_108)); } > inttab0_mem
        .inttab_tc0_06D (__INTTAB_CPU0 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_109)); } > inttab0_mem
        .inttab_tc0_06E (__INTTAB_CPU0 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_110)); } > inttab0_mem
        .inttab_tc0_06F (__INTTAB_CPU0 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_111)); } > inttab0_mem
        .inttab_tc0_070 (__INTTAB_CPU0 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_112)); } > inttab0_mem
        .inttab_tc0_071 (__INTTAB_CPU0 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_113)); } > inttab0_mem
        .inttab_tc0_072 (__INTTAB_CPU0 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_114)); } > inttab0_mem
        .inttab_tc0_073 (__INTTAB_CPU0 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_115)); } > inttab0_mem
        .inttab_tc0_074 (__INTTAB_CPU0 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_116)); } > inttab0_mem
        .inttab_tc0_075 (__INTTAB_CPU0 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_117)); } > inttab0_mem
        .inttab_tc0_076 (__INTTAB_CPU0 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_118)); } > inttab0_mem
        .inttab_tc0_077 (__INTTAB_CPU0 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_119)); } > inttab0_mem
        .inttab_tc0_078 (__INTTAB_CPU0 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_120)); } > inttab0_mem
        .inttab_tc0_079 (__INTTAB_CPU0 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_121)); } > inttab0_mem
        .inttab_tc0_07A (__INTTAB_CPU0 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_122)); } > inttab0_mem
        .inttab_tc0_07B (__INTTAB_CPU0 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_123)); } > inttab0_mem
        .inttab_tc0_07C (__INTTAB_CPU0 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_124)); } > inttab0_mem
        .inttab_tc0_07D (__INTTAB_CPU0 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_125)); } > inttab0_mem
        .inttab_tc0_07E (__INTTAB_CPU0 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_126)); } > inttab0_mem
        .inttab_tc0_07F (__INTTAB_CPU0 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_127)); } > inttab0_mem
        .inttab_tc0_080 (__INTTAB_CPU0 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_128)); } > inttab0_mem
        .inttab_tc0_081 (__INTTAB_CPU0 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_129)); } > inttab0_mem
        .inttab_tc0_082 (__INTTAB_CPU0 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_130)); } > inttab0_mem
        .inttab_tc0_083 (__INTTAB_CPU0 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_131)); } > inttab0_mem
        .inttab_tc0_084 (__INTTAB_CPU0 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_132)); } > inttab0_mem
        .inttab_tc0_085 (__INTTAB_CPU0 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_133)); } > inttab0_mem
        .inttab_tc0_086 (__INTTAB_CPU0 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_134)); } > inttab0_mem
        .inttab_tc0_087 (__INTTAB_CPU0 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_135)); } > inttab0_mem
        .inttab_tc0_088 (__INTTAB_CPU0 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_136)); } > inttab0_mem
        .inttab_tc0_089 (__INTTAB_CPU0 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_137)); } > inttab0_mem
        .inttab_tc0_08A (__INTTAB_CPU0 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_138)); } > inttab0_mem
        .inttab_tc0_08B (__INTTAB_CPU0 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_139)); } > inttab0_mem
        .inttab_tc0_08C (__INTTAB_CPU0 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_140)); } > inttab0_mem
        .inttab_tc0_08D (__INTTAB_CPU0 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_141)); } > inttab0_mem
        .inttab_tc0_08E (__INTTAB_CPU0 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_142)); } > inttab0_mem
        .inttab_tc0_08F (__INTTAB_CPU0 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_143)); } > inttab0_mem
        .inttab_tc0_090 (__INTTAB_CPU0 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_144)); } > inttab0_mem
        .inttab_tc0_091 (__INTTAB_CPU0 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_145)); } > inttab0_mem
        .inttab_tc0_092 (__INTTAB_CPU0 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_146)); } > inttab0_mem
        .inttab_tc0_093 (__INTTAB_CPU0 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_147)); } > inttab0_mem
        .inttab_tc0_094 (__INTTAB_CPU0 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_148)); } > inttab0_mem
        .inttab_tc0_095 (__INTTAB_CPU0 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_149)); } > inttab0_mem
        .inttab_tc0_096 (__INTTAB_CPU0 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_150)); } > inttab0_mem
        .inttab_tc0_097 (__INTTAB_CPU0 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_151)); } > inttab0_mem
        .inttab_tc0_098 (__INTTAB_CPU0 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_152)); } > inttab0_mem
        .inttab_tc0_099 (__INTTAB_CPU0 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_153)); } > inttab0_mem
        .inttab_tc0_09A (__INTTAB_CPU0 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_154)); } > inttab0_mem
        .inttab_tc0_09B (__INTTAB_CPU0 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_155)); } > inttab0_mem
        .inttab_tc0_09C (__INTTAB_CPU0 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_156)); } > inttab0_mem
        .inttab_tc0_09D (__INTTAB_CPU0 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_157)); } > inttab0_mem
        .inttab_tc0_09E (__INTTAB_CPU0 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_158)); } > inttab0_mem
        .inttab_tc0_09F (__INTTAB_CPU0 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_159)); } > inttab0_mem
        .inttab_tc0_0A0 (__INTTAB_CPU0 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_160)); } > inttab0_mem
        .inttab_tc0_0A1 (__INTTAB_CPU0 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_161)); } > inttab0_mem
        .inttab_tc0_0A2 (__INTTAB_CPU0 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_162)); } > inttab0_mem
        .inttab_tc0_0A3 (__INTTAB_CPU0 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_163)); } > inttab0_mem
        .inttab_tc0_0A4 (__INTTAB_CPU0 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_164)); } > inttab0_mem
        .inttab_tc0_0A5 (__INTTAB_CPU0 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_165)); } > inttab0_mem
        .inttab_tc0_0A6 (__INTTAB_CPU0 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_166)); } > inttab0_mem
        .inttab_tc0_0A7 (__INTTAB_CPU0 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_167)); } > inttab0_mem
        .inttab_tc0_0A8 (__INTTAB_CPU0 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_168)); } > inttab0_mem
        .inttab_tc0_0A9 (__INTTAB_CPU0 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_169)); } > inttab0_mem
        .inttab_tc0_0AA (__INTTAB_CPU0 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_170)); } > inttab0_mem
        .inttab_tc0_0AB (__INTTAB_CPU0 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_171)); } > inttab0_mem
        .inttab_tc0_0AC (__INTTAB_CPU0 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_172)); } > inttab0_mem
        .inttab_tc0_0AD (__INTTAB_CPU0 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_173)); } > inttab0_mem
        .inttab_tc0_0AE (__INTTAB_CPU0 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_174)); } > inttab0_mem
        .inttab_tc0_0AF (__INTTAB_CPU0 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_175)); } > inttab0_mem
        .inttab_tc0_0B0 (__INTTAB_CPU0 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_176)); } > inttab0_mem
        .inttab_tc0_0B1 (__INTTAB_CPU0 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_177)); } > inttab0_mem
        .inttab_tc0_0B2 (__INTTAB_CPU0 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_178)); } > inttab0_mem
        .inttab_tc0_0B3 (__INTTAB_CPU0 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_179)); } > inttab0_mem
        .inttab_tc0_0B4 (__INTTAB_CPU0 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_180)); } > inttab0_mem
        .inttab_tc0_0B5 (__INTTAB_CPU0 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_181)); } > inttab0_mem
        .inttab_tc0_0B6 (__INTTAB_CPU0 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_182)); } > inttab0_mem
        .inttab_tc0_0B7 (__INTTAB_CPU0 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_183)); } > inttab0_mem
        .inttab_tc0_0B8 (__INTTAB_CPU0 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_184)); } > inttab0_mem
        .inttab_tc0_0B9 (__INTTAB_CPU0 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_185)); } > inttab0_mem
        .inttab_tc0_0BA (__INTTAB_CPU0 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_186)); } > inttab0_mem
        .inttab_tc0_0BB (__INTTAB_CPU0 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_187)); } > inttab0_mem
        .inttab_tc0_0BC (__INTTAB_CPU0 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_188)); } > inttab0_mem
        .inttab_tc0_0BD (__INTTAB_CPU0 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_189)); } > inttab0_mem
        .inttab_tc0_0BE (__INTTAB_CPU0 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_190)); } > inttab0_mem
        .inttab_tc0_0BF (__INTTAB_CPU0 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_191)); } > inttab0_mem
        .inttab_tc0_0C0 (__INTTAB_CPU0 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_192)); } > inttab0_mem
        .inttab_tc0_0C1 (__INTTAB_CPU0 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_193)); } > inttab0_mem
        .inttab_tc0_0C2 (__INTTAB_CPU0 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_194)); } > inttab0_mem
        .inttab_tc0_0C3 (__INTTAB_CPU0 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_195)); } > inttab0_mem
        .inttab_tc0_0C4 (__INTTAB_CPU0 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_196)); } > inttab0_mem
        .inttab_tc0_0C5 (__INTTAB_CPU0 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_197)); } > inttab0_mem
        .inttab_tc0_0C6 (__INTTAB_CPU0 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_198)); } > inttab0_mem
        .inttab_tc0_0C7 (__INTTAB_CPU0 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_199)); } > inttab0_mem
        .inttab_tc0_0C8 (__INTTAB_CPU0 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_200)); } > inttab0_mem
        .inttab_tc0_0C9 (__INTTAB_CPU0 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_201)); } > inttab0_mem
        .inttab_tc0_0CA (__INTTAB_CPU0 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_202)); } > inttab0_mem
        .inttab_tc0_0CB (__INTTAB_CPU0 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_203)); } > inttab0_mem
        .inttab_tc0_0CC (__INTTAB_CPU0 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_204)); } > inttab0_mem
        .inttab_tc0_0CD (__INTTAB_CPU0 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_205)); } > inttab0_mem
        .inttab_tc0_0CE (__INTTAB_CPU0 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_206)); } > inttab0_mem
        .inttab_tc0_0CF (__INTTAB_CPU0 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_207)); } > inttab0_mem
        .inttab_tc0_0D0 (__INTTAB_CPU0 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_208)); } > inttab0_mem
        .inttab_tc0_0D1 (__INTTAB_CPU0 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_209)); } > inttab0_mem
        .inttab_tc0_0D2 (__INTTAB_CPU0 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_210)); } > inttab0_mem
        .inttab_tc0_0D3 (__INTTAB_CPU0 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_211)); } > inttab0_mem
        .inttab_tc0_0D4 (__INTTAB_CPU0 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_212)); } > inttab0_mem
        .inttab_tc0_0D5 (__INTTAB_CPU0 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_213)); } > inttab0_mem
        .inttab_tc0_0D6 (__INTTAB_CPU0 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_214)); } > inttab0_mem
        .inttab_tc0_0D7 (__INTTAB_CPU0 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_215)); } > inttab0_mem
        .inttab_tc0_0D8 (__INTTAB_CPU0 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_216)); } > inttab0_mem
        .inttab_tc0_0D9 (__INTTAB_CPU0 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_217)); } > inttab0_mem
        .inttab_tc0_0DA (__INTTAB_CPU0 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_218)); } > inttab0_mem
        .inttab_tc0_0DB (__INTTAB_CPU0 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_219)); } > inttab0_mem
        .inttab_tc0_0DC (__INTTAB_CPU0 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_220)); } > inttab0_mem
        .inttab_tc0_0DD (__INTTAB_CPU0 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_221)); } > inttab0_mem
        .inttab_tc0_0DE (__INTTAB_CPU0 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_222)); } > inttab0_mem
        .inttab_tc0_0DF (__INTTAB_CPU0 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_223)); } > inttab0_mem
        .inttab_tc0_0E0 (__INTTAB_CPU0 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_224)); } > inttab0_mem
        .inttab_tc0_0E1 (__INTTAB_CPU0 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_225)); } > inttab0_mem
        .inttab_tc0_0E2 (__INTTAB_CPU0 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_226)); } > inttab0_mem
        .inttab_tc0_0E3 (__INTTAB_CPU0 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_227)); } > inttab0_mem
        .inttab_tc0_0E4 (__INTTAB_CPU0 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_228)); } > inttab0_mem
        .inttab_tc0_0E5 (__INTTAB_CPU0 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_229)); } > inttab0_mem
        .inttab_tc0_0E6 (__INTTAB_CPU0 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_230)); } > inttab0_mem
        .inttab_tc0_0E7 (__INTTAB_CPU0 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_231)); } > inttab0_mem
        .inttab_tc0_0E8 (__INTTAB_CPU0 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_232)); } > inttab0_mem
        .inttab_tc0_0E9 (__INTTAB_CPU0 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_233)); } > inttab0_mem
        .inttab_tc0_0EA (__INTTAB_CPU0 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_234)); } > inttab0_mem
        .inttab_tc0_0EB (__INTTAB_CPU0 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_235)); } > inttab0_mem
        .inttab_tc0_0EC (__INTTAB_CPU0 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_236)); } > inttab0_mem
        .inttab_tc0_0ED (__INTTAB_CPU0 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_237)); } > inttab0_mem
        .inttab_tc0_0EE (__INTTAB_CPU0 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_238)); } > inttab0_mem
        .inttab_tc0_0EF (__INTTAB_CPU0 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_239)); } > inttab0_mem
        .inttab_tc0_0F0 (__INTTAB_CPU0 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_240)); } > inttab0_mem
        .inttab_tc0_0F1 (__INTTAB_CPU0 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_241)); } > inttab0_mem
        .inttab_tc0_0F2 (__INTTAB_CPU0 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_242)); } > inttab0_mem
        .inttab_tc0_0F3 (__INTTAB_CPU0 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_243)); } > inttab0_mem
        .inttab_tc0_0F4 (__INTTAB_CPU0 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_244)); } > inttab0_mem
        .inttab_tc0_0F5 (__INTTAB_CPU0 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_245)); } > inttab0_mem
        .inttab_tc0_0F6 (__INTTAB_CPU0 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_246)); } > inttab0_mem
        .inttab_tc0_0F7 (__INTTAB_CPU0 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_247)); } > inttab0_mem
        .inttab_tc0_0F8 (__INTTAB_CPU0 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_248)); } > inttab0_mem
        .inttab_tc0_0F9 (__INTTAB_CPU0 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_249)); } > inttab0_mem
        .inttab_tc0_0FA (__INTTAB_CPU0 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_250)); } > inttab0_mem
        .inttab_tc0_0FB (__INTTAB_CPU0 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_251)); } > inttab0_mem
        .inttab_tc0_0FC (__INTTAB_CPU0 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_252)); } > inttab0_mem
        .inttab_tc0_0FD (__INTTAB_CPU0 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_253)); } > inttab0_mem
        .inttab_tc0_0FE (__INTTAB_CPU0 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_254)); } > inttab0_mem
        .inttab_tc0_0FF (__INTTAB_CPU0 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc0_255)); } > inttab0_mem
    }
    SECTIONS
    {
        /*CPU1 Interrupt Vector Table*/
        .inttab_tc1_000 (__INTTAB_CPU1 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_0  )); } > inttab1_mem
        .inttab_tc1_001 (__INTTAB_CPU1 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_1  )); } > inttab1_mem
        .inttab_tc1_002 (__INTTAB_CPU1 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_2  )); } > inttab1_mem
        .inttab_tc1_003 (__INTTAB_CPU1 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_3  )); } > inttab1_mem
        .inttab_tc1_004 (__INTTAB_CPU1 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_4  )); } > inttab1_mem
        .inttab_tc1_005 (__INTTAB_CPU1 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_5  )); } > inttab1_mem
        .inttab_tc1_006 (__INTTAB_CPU1 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_6  )); } > inttab1_mem
        .inttab_tc1_007 (__INTTAB_CPU1 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_7  )); } > inttab1_mem
        .inttab_tc1_008 (__INTTAB_CPU1 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_8  )); } > inttab1_mem
        .inttab_tc1_009 (__INTTAB_CPU1 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_9  )); } > inttab1_mem
        .inttab_tc1_00A (__INTTAB_CPU1 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_10 )); } > inttab1_mem
        .inttab_tc1_00B (__INTTAB_CPU1 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_11 )); } > inttab1_mem
        .inttab_tc1_00C (__INTTAB_CPU1 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_12 )); } > inttab1_mem
        .inttab_tc1_00D (__INTTAB_CPU1 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_13 )); } > inttab1_mem
        .inttab_tc1_00E (__INTTAB_CPU1 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_14 )); } > inttab1_mem
        .inttab_tc1_00F (__INTTAB_CPU1 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_15 )); } > inttab1_mem
        .inttab_tc1_010 (__INTTAB_CPU1 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_16 )); } > inttab1_mem
        .inttab_tc1_011 (__INTTAB_CPU1 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_17 )); } > inttab1_mem
        .inttab_tc1_012 (__INTTAB_CPU1 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_18 )); } > inttab1_mem
        .inttab_tc1_013 (__INTTAB_CPU1 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_19 )); } > inttab1_mem
        .inttab_tc1_014 (__INTTAB_CPU1 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_20 )); } > inttab1_mem
        .inttab_tc1_015 (__INTTAB_CPU1 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_21 )); } > inttab1_mem
        .inttab_tc1_016 (__INTTAB_CPU1 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_22 )); } > inttab1_mem
        .inttab_tc1_017 (__INTTAB_CPU1 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_23 )); } > inttab1_mem
        .inttab_tc1_018 (__INTTAB_CPU1 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_24 )); } > inttab1_mem
        .inttab_tc1_019 (__INTTAB_CPU1 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_25 )); } > inttab1_mem
        .inttab_tc1_01A (__INTTAB_CPU1 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_26 )); } > inttab1_mem
        .inttab_tc1_01B (__INTTAB_CPU1 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_27 )); } > inttab1_mem
        .inttab_tc1_01C (__INTTAB_CPU1 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_28 )); } > inttab1_mem
        .inttab_tc1_01D (__INTTAB_CPU1 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_29 )); } > inttab1_mem
        .inttab_tc1_01E (__INTTAB_CPU1 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_30 )); } > inttab1_mem
        .inttab_tc1_01F (__INTTAB_CPU1 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_31 )); } > inttab1_mem
        .inttab_tc1_020 (__INTTAB_CPU1 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_32 )); } > inttab1_mem
        .inttab_tc1_021 (__INTTAB_CPU1 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_33 )); } > inttab1_mem
        .inttab_tc1_022 (__INTTAB_CPU1 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_34 )); } > inttab1_mem
        .inttab_tc1_023 (__INTTAB_CPU1 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_35 )); } > inttab1_mem
        .inttab_tc1_024 (__INTTAB_CPU1 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_36 )); } > inttab1_mem
        .inttab_tc1_025 (__INTTAB_CPU1 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_37 )); } > inttab1_mem
        .inttab_tc1_026 (__INTTAB_CPU1 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_38 )); } > inttab1_mem
        .inttab_tc1_027 (__INTTAB_CPU1 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_39 )); } > inttab1_mem
        .inttab_tc1_028 (__INTTAB_CPU1 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_40 )); } > inttab1_mem
        .inttab_tc1_029 (__INTTAB_CPU1 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_41 )); } > inttab1_mem
        .inttab_tc1_02A (__INTTAB_CPU1 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_42 )); } > inttab1_mem
        .inttab_tc1_02B (__INTTAB_CPU1 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_43 )); } > inttab1_mem
        .inttab_tc1_02C (__INTTAB_CPU1 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_44 )); } > inttab1_mem
        .inttab_tc1_02D (__INTTAB_CPU1 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_45 )); } > inttab1_mem
        .inttab_tc1_02E (__INTTAB_CPU1 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_46 )); } > inttab1_mem
        .inttab_tc1_02F (__INTTAB_CPU1 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_47 )); } > inttab1_mem
        .inttab_tc1_030 (__INTTAB_CPU1 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_48 )); } > inttab1_mem
        .inttab_tc1_031 (__INTTAB_CPU1 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_49 )); } > inttab1_mem
        .inttab_tc1_032 (__INTTAB_CPU1 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_50 )); } > inttab1_mem
        .inttab_tc1_033 (__INTTAB_CPU1 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_51 )); } > inttab1_mem
        .inttab_tc1_034 (__INTTAB_CPU1 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_52 )); } > inttab1_mem
        .inttab_tc1_035 (__INTTAB_CPU1 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_53 )); } > inttab1_mem
        .inttab_tc1_036 (__INTTAB_CPU1 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_54 )); } > inttab1_mem
        .inttab_tc1_037 (__INTTAB_CPU1 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_55 )); } > inttab1_mem
        .inttab_tc1_038 (__INTTAB_CPU1 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_56 )); } > inttab1_mem
        .inttab_tc1_039 (__INTTAB_CPU1 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_57 )); } > inttab1_mem
        .inttab_tc1_03A (__INTTAB_CPU1 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_58 )); } > inttab1_mem
        .inttab_tc1_03B (__INTTAB_CPU1 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_59 )); } > inttab1_mem
        .inttab_tc1_03C (__INTTAB_CPU1 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_60 )); } > inttab1_mem
        .inttab_tc1_03D (__INTTAB_CPU1 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_61 )); } > inttab1_mem
        .inttab_tc1_03E (__INTTAB_CPU1 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_62 )); } > inttab1_mem
        .inttab_tc1_03F (__INTTAB_CPU1 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_63 )); } > inttab1_mem
        .inttab_tc1_040 (__INTTAB_CPU1 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_64 )); } > inttab1_mem
        .inttab_tc1_041 (__INTTAB_CPU1 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_65 )); } > inttab1_mem
        .inttab_tc1_042 (__INTTAB_CPU1 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_66 )); } > inttab1_mem
        .inttab_tc1_043 (__INTTAB_CPU1 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_67 )); } > inttab1_mem
        .inttab_tc1_044 (__INTTAB_CPU1 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_68 )); } > inttab1_mem
        .inttab_tc1_045 (__INTTAB_CPU1 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_69 )); } > inttab1_mem
        .inttab_tc1_046 (__INTTAB_CPU1 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_70 )); } > inttab1_mem
        .inttab_tc1_047 (__INTTAB_CPU1 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_71 )); } > inttab1_mem
        .inttab_tc1_048 (__INTTAB_CPU1 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_72 )); } > inttab1_mem
        .inttab_tc1_049 (__INTTAB_CPU1 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_73 )); } > inttab1_mem
        .inttab_tc1_04A (__INTTAB_CPU1 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_74 )); } > inttab1_mem
        .inttab_tc1_04B (__INTTAB_CPU1 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_75 )); } > inttab1_mem
        .inttab_tc1_04C (__INTTAB_CPU1 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_76 )); } > inttab1_mem
        .inttab_tc1_04D (__INTTAB_CPU1 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_77 )); } > inttab1_mem
        .inttab_tc1_04E (__INTTAB_CPU1 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_78 )); } > inttab1_mem
        .inttab_tc1_04F (__INTTAB_CPU1 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_79 )); } > inttab1_mem
        .inttab_tc1_050 (__INTTAB_CPU1 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_80 )); } > inttab1_mem
        .inttab_tc1_051 (__INTTAB_CPU1 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_81 )); } > inttab1_mem
        .inttab_tc1_052 (__INTTAB_CPU1 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_82 )); } > inttab1_mem
        .inttab_tc1_053 (__INTTAB_CPU1 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_83 )); } > inttab1_mem
        .inttab_tc1_054 (__INTTAB_CPU1 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_84 )); } > inttab1_mem
        .inttab_tc1_055 (__INTTAB_CPU1 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_85 )); } > inttab1_mem
        .inttab_tc1_056 (__INTTAB_CPU1 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_86 )); } > inttab1_mem
        .inttab_tc1_057 (__INTTAB_CPU1 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_87 )); } > inttab1_mem
        .inttab_tc1_058 (__INTTAB_CPU1 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_88 )); } > inttab1_mem
        .inttab_tc1_059 (__INTTAB_CPU1 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_89 )); } > inttab1_mem
        .inttab_tc1_05A (__INTTAB_CPU1 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_90 )); } > inttab1_mem
        .inttab_tc1_05B (__INTTAB_CPU1 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_91 )); } > inttab1_mem
        .inttab_tc1_05C (__INTTAB_CPU1 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_92 )); } > inttab1_mem
        .inttab_tc1_05D (__INTTAB_CPU1 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_93 )); } > inttab1_mem
        .inttab_tc1_05E (__INTTAB_CPU1 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_94 )); } > inttab1_mem
        .inttab_tc1_05F (__INTTAB_CPU1 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_95 )); } > inttab1_mem
        .inttab_tc1_060 (__INTTAB_CPU1 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_96 )); } > inttab1_mem
        .inttab_tc1_061 (__INTTAB_CPU1 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_97 )); } > inttab1_mem
        .inttab_tc1_062 (__INTTAB_CPU1 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_98 )); } > inttab1_mem
        .inttab_tc1_063 (__INTTAB_CPU1 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_99 )); } > inttab1_mem
        .inttab_tc1_064 (__INTTAB_CPU1 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_100)); } > inttab1_mem
        .inttab_tc1_065 (__INTTAB_CPU1 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_101)); } > inttab1_mem
        .inttab_tc1_066 (__INTTAB_CPU1 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_102)); } > inttab1_mem
        .inttab_tc1_067 (__INTTAB_CPU1 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_103)); } > inttab1_mem
        .inttab_tc1_068 (__INTTAB_CPU1 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_104)); } > inttab1_mem
        .inttab_tc1_069 (__INTTAB_CPU1 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_105)); } > inttab1_mem
        .inttab_tc1_06A (__INTTAB_CPU1 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_106)); } > inttab1_mem
        .inttab_tc1_06B (__INTTAB_CPU1 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_107)); } > inttab1_mem
        .inttab_tc1_06C (__INTTAB_CPU1 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_108)); } > inttab1_mem
        .inttab_tc1_06D (__INTTAB_CPU1 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_109)); } > inttab1_mem
        .inttab_tc1_06E (__INTTAB_CPU1 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_110)); } > inttab1_mem
        .inttab_tc1_06F (__INTTAB_CPU1 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_111)); } > inttab1_mem
        .inttab_tc1_070 (__INTTAB_CPU1 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_112)); } > inttab1_mem
        .inttab_tc1_071 (__INTTAB_CPU1 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_113)); } > inttab1_mem
        .inttab_tc1_072 (__INTTAB_CPU1 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_114)); } > inttab1_mem
        .inttab_tc1_073 (__INTTAB_CPU1 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_115)); } > inttab1_mem
        .inttab_tc1_074 (__INTTAB_CPU1 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_116)); } > inttab1_mem
        .inttab_tc1_075 (__INTTAB_CPU1 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_117)); } > inttab1_mem
        .inttab_tc1_076 (__INTTAB_CPU1 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_118)); } > inttab1_mem
        .inttab_tc1_077 (__INTTAB_CPU1 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_119)); } > inttab1_mem
        .inttab_tc1_078 (__INTTAB_CPU1 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_120)); } > inttab1_mem
        .inttab_tc1_079 (__INTTAB_CPU1 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_121)); } > inttab1_mem
        .inttab_tc1_07A (__INTTAB_CPU1 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_122)); } > inttab1_mem
        .inttab_tc1_07B (__INTTAB_CPU1 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_123)); } > inttab1_mem
        .inttab_tc1_07C (__INTTAB_CPU1 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_124)); } > inttab1_mem
        .inttab_tc1_07D (__INTTAB_CPU1 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_125)); } > inttab1_mem
        .inttab_tc1_07E (__INTTAB_CPU1 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_126)); } > inttab1_mem
        .inttab_tc1_07F (__INTTAB_CPU1 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_127)); } > inttab1_mem
        .inttab_tc1_080 (__INTTAB_CPU1 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_128)); } > inttab1_mem
        .inttab_tc1_081 (__INTTAB_CPU1 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_129)); } > inttab1_mem
        .inttab_tc1_082 (__INTTAB_CPU1 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_130)); } > inttab1_mem
        .inttab_tc1_083 (__INTTAB_CPU1 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_131)); } > inttab1_mem
        .inttab_tc1_084 (__INTTAB_CPU1 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_132)); } > inttab1_mem
        .inttab_tc1_085 (__INTTAB_CPU1 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_133)); } > inttab1_mem
        .inttab_tc1_086 (__INTTAB_CPU1 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_134)); } > inttab1_mem
        .inttab_tc1_087 (__INTTAB_CPU1 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_135)); } > inttab1_mem
        .inttab_tc1_088 (__INTTAB_CPU1 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_136)); } > inttab1_mem
        .inttab_tc1_089 (__INTTAB_CPU1 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_137)); } > inttab1_mem
        .inttab_tc1_08A (__INTTAB_CPU1 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_138)); } > inttab1_mem
        .inttab_tc1_08B (__INTTAB_CPU1 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_139)); } > inttab1_mem
        .inttab_tc1_08C (__INTTAB_CPU1 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_140)); } > inttab1_mem
        .inttab_tc1_08D (__INTTAB_CPU1 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_141)); } > inttab1_mem
        .inttab_tc1_08E (__INTTAB_CPU1 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_142)); } > inttab1_mem
        .inttab_tc1_08F (__INTTAB_CPU1 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_143)); } > inttab1_mem
        .inttab_tc1_090 (__INTTAB_CPU1 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_144)); } > inttab1_mem
        .inttab_tc1_091 (__INTTAB_CPU1 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_145)); } > inttab1_mem
        .inttab_tc1_092 (__INTTAB_CPU1 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_146)); } > inttab1_mem
        .inttab_tc1_093 (__INTTAB_CPU1 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_147)); } > inttab1_mem
        .inttab_tc1_094 (__INTTAB_CPU1 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_148)); } > inttab1_mem
        .inttab_tc1_095 (__INTTAB_CPU1 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_149)); } > inttab1_mem
        .inttab_tc1_096 (__INTTAB_CPU1 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_150)); } > inttab1_mem
        .inttab_tc1_097 (__INTTAB_CPU1 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_151)); } > inttab1_mem
        .inttab_tc1_098 (__INTTAB_CPU1 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_152)); } > inttab1_mem
        .inttab_tc1_099 (__INTTAB_CPU1 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_153)); } > inttab1_mem
        .inttab_tc1_09A (__INTTAB_CPU1 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_154)); } > inttab1_mem
        .inttab_tc1_09B (__INTTAB_CPU1 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_155)); } > inttab1_mem
        .inttab_tc1_09C (__INTTAB_CPU1 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_156)); } > inttab1_mem
        .inttab_tc1_09D (__INTTAB_CPU1 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_157)); } > inttab1_mem
        .inttab_tc1_09E (__INTTAB_CPU1 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_158)); } > inttab1_mem
        .inttab_tc1_09F (__INTTAB_CPU1 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_159)); } > inttab1_mem
        .inttab_tc1_0A0 (__INTTAB_CPU1 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_160)); } > inttab1_mem
        .inttab_tc1_0A1 (__INTTAB_CPU1 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_161)); } > inttab1_mem
        .inttab_tc1_0A2 (__INTTAB_CPU1 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_162)); } > inttab1_mem
        .inttab_tc1_0A3 (__INTTAB_CPU1 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_163)); } > inttab1_mem
        .inttab_tc1_0A4 (__INTTAB_CPU1 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_164)); } > inttab1_mem
        .inttab_tc1_0A5 (__INTTAB_CPU1 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_165)); } > inttab1_mem
        .inttab_tc1_0A6 (__INTTAB_CPU1 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_166)); } > inttab1_mem
        .inttab_tc1_0A7 (__INTTAB_CPU1 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_167)); } > inttab1_mem
        .inttab_tc1_0A8 (__INTTAB_CPU1 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_168)); } > inttab1_mem
        .inttab_tc1_0A9 (__INTTAB_CPU1 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_169)); } > inttab1_mem
        .inttab_tc1_0AA (__INTTAB_CPU1 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_170)); } > inttab1_mem
        .inttab_tc1_0AB (__INTTAB_CPU1 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_171)); } > inttab1_mem
        .inttab_tc1_0AC (__INTTAB_CPU1 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_172)); } > inttab1_mem
        .inttab_tc1_0AD (__INTTAB_CPU1 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_173)); } > inttab1_mem
        .inttab_tc1_0AE (__INTTAB_CPU1 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_174)); } > inttab1_mem
        .inttab_tc1_0AF (__INTTAB_CPU1 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_175)); } > inttab1_mem
        .inttab_tc1_0B0 (__INTTAB_CPU1 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_176)); } > inttab1_mem
        .inttab_tc1_0B1 (__INTTAB_CPU1 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_177)); } > inttab1_mem
        .inttab_tc1_0B2 (__INTTAB_CPU1 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_178)); } > inttab1_mem
        .inttab_tc1_0B3 (__INTTAB_CPU1 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_179)); } > inttab1_mem
        .inttab_tc1_0B4 (__INTTAB_CPU1 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_180)); } > inttab1_mem
        .inttab_tc1_0B5 (__INTTAB_CPU1 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_181)); } > inttab1_mem
        .inttab_tc1_0B6 (__INTTAB_CPU1 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_182)); } > inttab1_mem
        .inttab_tc1_0B7 (__INTTAB_CPU1 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_183)); } > inttab1_mem
        .inttab_tc1_0B8 (__INTTAB_CPU1 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_184)); } > inttab1_mem
        .inttab_tc1_0B9 (__INTTAB_CPU1 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_185)); } > inttab1_mem
        .inttab_tc1_0BA (__INTTAB_CPU1 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_186)); } > inttab1_mem
        .inttab_tc1_0BB (__INTTAB_CPU1 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_187)); } > inttab1_mem
        .inttab_tc1_0BC (__INTTAB_CPU1 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_188)); } > inttab1_mem
        .inttab_tc1_0BD (__INTTAB_CPU1 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_189)); } > inttab1_mem
        .inttab_tc1_0BE (__INTTAB_CPU1 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_190)); } > inttab1_mem
        .inttab_tc1_0BF (__INTTAB_CPU1 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_191)); } > inttab1_mem
        .inttab_tc1_0C0 (__INTTAB_CPU1 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_192)); } > inttab1_mem
        .inttab_tc1_0C1 (__INTTAB_CPU1 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_193)); } > inttab1_mem
        .inttab_tc1_0C2 (__INTTAB_CPU1 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_194)); } > inttab1_mem
        .inttab_tc1_0C3 (__INTTAB_CPU1 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_195)); } > inttab1_mem
        .inttab_tc1_0C4 (__INTTAB_CPU1 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_196)); } > inttab1_mem
        .inttab_tc1_0C5 (__INTTAB_CPU1 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_197)); } > inttab1_mem
        .inttab_tc1_0C6 (__INTTAB_CPU1 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_198)); } > inttab1_mem
        .inttab_tc1_0C7 (__INTTAB_CPU1 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_199)); } > inttab1_mem
        .inttab_tc1_0C8 (__INTTAB_CPU1 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_200)); } > inttab1_mem
        .inttab_tc1_0C9 (__INTTAB_CPU1 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_201)); } > inttab1_mem
        .inttab_tc1_0CA (__INTTAB_CPU1 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_202)); } > inttab1_mem
        .inttab_tc1_0CB (__INTTAB_CPU1 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_203)); } > inttab1_mem
        .inttab_tc1_0CC (__INTTAB_CPU1 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_204)); } > inttab1_mem
        .inttab_tc1_0CD (__INTTAB_CPU1 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_205)); } > inttab1_mem
        .inttab_tc1_0CE (__INTTAB_CPU1 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_206)); } > inttab1_mem
        .inttab_tc1_0CF (__INTTAB_CPU1 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_207)); } > inttab1_mem
        .inttab_tc1_0D0 (__INTTAB_CPU1 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_208)); } > inttab1_mem
        .inttab_tc1_0D1 (__INTTAB_CPU1 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_209)); } > inttab1_mem
        .inttab_tc1_0D2 (__INTTAB_CPU1 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_210)); } > inttab1_mem
        .inttab_tc1_0D3 (__INTTAB_CPU1 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_211)); } > inttab1_mem
        .inttab_tc1_0D4 (__INTTAB_CPU1 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_212)); } > inttab1_mem
        .inttab_tc1_0D5 (__INTTAB_CPU1 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_213)); } > inttab1_mem
        .inttab_tc1_0D6 (__INTTAB_CPU1 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_214)); } > inttab1_mem
        .inttab_tc1_0D7 (__INTTAB_CPU1 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_215)); } > inttab1_mem
        .inttab_tc1_0D8 (__INTTAB_CPU1 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_216)); } > inttab1_mem
        .inttab_tc1_0D9 (__INTTAB_CPU1 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_217)); } > inttab1_mem
        .inttab_tc1_0DA (__INTTAB_CPU1 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_218)); } > inttab1_mem
        .inttab_tc1_0DB (__INTTAB_CPU1 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_219)); } > inttab1_mem
        .inttab_tc1_0DC (__INTTAB_CPU1 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_220)); } > inttab1_mem
        .inttab_tc1_0DD (__INTTAB_CPU1 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_221)); } > inttab1_mem
        .inttab_tc1_0DE (__INTTAB_CPU1 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_222)); } > inttab1_mem
        .inttab_tc1_0DF (__INTTAB_CPU1 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_223)); } > inttab1_mem
        .inttab_tc1_0E0 (__INTTAB_CPU1 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_224)); } > inttab1_mem
        .inttab_tc1_0E1 (__INTTAB_CPU1 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_225)); } > inttab1_mem
        .inttab_tc1_0E2 (__INTTAB_CPU1 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_226)); } > inttab1_mem
        .inttab_tc1_0E3 (__INTTAB_CPU1 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_227)); } > inttab1_mem
        .inttab_tc1_0E4 (__INTTAB_CPU1 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_228)); } > inttab1_mem
        .inttab_tc1_0E5 (__INTTAB_CPU1 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_229)); } > inttab1_mem
        .inttab_tc1_0E6 (__INTTAB_CPU1 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_230)); } > inttab1_mem
        .inttab_tc1_0E7 (__INTTAB_CPU1 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_231)); } > inttab1_mem
        .inttab_tc1_0E8 (__INTTAB_CPU1 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_232)); } > inttab1_mem
        .inttab_tc1_0E9 (__INTTAB_CPU1 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_233)); } > inttab1_mem
        .inttab_tc1_0EA (__INTTAB_CPU1 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_234)); } > inttab1_mem
        .inttab_tc1_0EB (__INTTAB_CPU1 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_235)); } > inttab1_mem
        .inttab_tc1_0EC (__INTTAB_CPU1 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_236)); } > inttab1_mem
        .inttab_tc1_0ED (__INTTAB_CPU1 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_237)); } > inttab1_mem
        .inttab_tc1_0EE (__INTTAB_CPU1 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_238)); } > inttab1_mem
        .inttab_tc1_0EF (__INTTAB_CPU1 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_239)); } > inttab1_mem
        .inttab_tc1_0F0 (__INTTAB_CPU1 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_240)); } > inttab1_mem
        .inttab_tc1_0F1 (__INTTAB_CPU1 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_241)); } > inttab1_mem
        .inttab_tc1_0F2 (__INTTAB_CPU1 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_242)); } > inttab1_mem
        .inttab_tc1_0F3 (__INTTAB_CPU1 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_243)); } > inttab1_mem
        .inttab_tc1_0F4 (__INTTAB_CPU1 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_244)); } > inttab1_mem
        .inttab_tc1_0F5 (__INTTAB_CPU1 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_245)); } > inttab1_mem
        .inttab_tc1_0F6 (__INTTAB_CPU1 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_246)); } > inttab1_mem
        .inttab_tc1_0F7 (__INTTAB_CPU1 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_247)); } > inttab1_mem
        .inttab_tc1_0F8 (__INTTAB_CPU1 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_248)); } > inttab1_mem
        .inttab_tc1_0F9 (__INTTAB_CPU1 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_249)); } > inttab1_mem
        .inttab_tc1_0FA (__INTTAB_CPU1 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_250)); } > inttab1_mem
        .inttab_tc1_0FB (__INTTAB_CPU1 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_251)); } > inttab1_mem
        .inttab_tc1_0FC (__INTTAB_CPU1 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_252)); } > inttab1_mem
        .inttab_tc1_0FD (__INTTAB_CPU1 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_253)); } > inttab1_mem
        .inttab_tc1_0FE (__INTTAB_CPU1 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_254)); } > inttab1_mem
        .inttab_tc1_0FF (__INTTAB_CPU1 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc1_255)); } > inttab1_mem
    }
    

