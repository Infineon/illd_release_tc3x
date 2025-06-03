/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-tricore")
OUTPUT_ARCH(tricore)
ENTRY(_START)

__TRICORE_DERIVATE_MEMORY_MAP__ = 0x390;

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

LCF_TRAPVEC0_START = 0x80000200;
LCF_TRAPVEC1_START = 0x80300000;
LCF_TRAPVEC2_START = 0x80600000;
LCF_TRAPVEC3_START = 0x80900000;
LCF_TRAPVEC4_START = 0x80C00000;
LCF_TRAPVEC5_START = 0x80F00000;

LCF_STARTPTR_CPU0 = 0x80000000;
LCF_STARTPTR_CPU1 = 0x80300200;
LCF_STARTPTR_CPU2 = 0x80600200;
LCF_STARTPTR_CPU3 = 0x80900200;
LCF_STARTPTR_CPU4 = 0x80C00200;
LCF_STARTPTR_CPU5 = 0x80F00200;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
LCF_STARTPTR_NC_CPU1 = 0xA0300200;
LCF_STARTPTR_NC_CPU2 = 0xA0600200;
LCF_STARTPTR_NC_CPU3 = 0xA0900200;
LCF_STARTPTR_NC_CPU4 = 0xA0C00200;
LCF_STARTPTR_NC_CPU5 = 0xA0F00200;

RESET = LCF_STARTPTR_NC_CPU0;

MEMORY
{
    dsram5_local (w!x): org = 0xd0000000, len = 96K
    dsram5 (w!x): org = 0x10000000, len = 96K
    psram5 (w!x): org = 0x10100000, len = 64K
    
    dsram4_local (w!x): org = 0xd0000000, len = 96K
    dsram4 (w!x): org = 0x30000000, len = 96K
    psram4 (w!x): org = 0x30100000, len = 64K
    
    dsram3_local (w!x): org = 0xd0000000, len = 96K
    dsram3 (w!x): org = 0x40000000, len = 96K
    psram3 (w!x): org = 0x40100000, len = 64K
    
    dsram2_local (w!x): org = 0xd0000000, len = 96K
    dsram2 (w!x): org = 0x50000000, len = 96K
    psram2 (w!x): org = 0x50100000, len = 64K
    
    dsram1_local (w!x): org = 0xd0000000, len = 240K
    dsram1 (w!x): org = 0x60000000, len = 240K
    psram1 (w!x): org = 0x60100000, len = 64K
    
    dsram0_local (w!x): org = 0xd0000000, len = 240K
    dsram0 (w!x): org = 0x70000000, len = 240K
    psram0 (w!x): org = 0x70100000, len = 64K
    
    psram_local (w!x): org = 0xc0000000, len = 64K
    
    pfls0 (rx): org = 0x80000000, len = 3M
    pfls0_nc (rx): org = 0xa0000000, len = 3M
    
    pfls1 (rx): org = 0x80300000, len = 3M
    pfls1_nc (rx): org = 0xa0300000, len = 3M
    
    pfls2 (rx): org = 0x80600000, len = 3M
    pfls2_nc (rx): org = 0xa0600000, len = 3M
    
    pfls3 (rx): org = 0x80900000, len = 3M
    pfls3_nc (rx): org = 0xa0900000, len = 3M
    
    pfls4 (rx): org = 0x80c00000, len = 3M
    pfls4_nc (rx): org = 0xa0c00000, len = 3M
    
    pfls5 (rx): org = 0x80f00000, len = 1M
    pfls5_nc (rx): org = 0xa0f00000, len = 1M
    
    dfls0 (rx): org = 0xaf000000, len = 1M
    
    ucb (rx): org = 0xaf400000, len = 24K
    
    cpu0_dlmu (w!x): org = 0x90000000, len = 64K
    cpu0_dlmu_nc (w!x): org = 0xb0000000, len = 64K
    
    cpu1_dlmu (w!x): org = 0x90010000, len = 64K
    cpu1_dlmu_nc (w!x): org = 0xb0010000, len = 64K
    
    cpu2_dlmu (w!x): org = 0x90020000, len = 64K
    cpu2_dlmu_nc (w!x): org = 0xb0020000, len = 64K
    
    cpu3_dlmu (w!x): org = 0x90030000, len = 64K
    cpu3_dlmu_nc (w!x): org = 0xb0030000, len = 64K
    
    lmuram (w!x): org = 0x90040000, len = 768K
    lmuram_nc (w!x): org = 0xb0040000, len = 768K
    
    cpu4_dlmu (w!x): org = 0x90100000, len = 64K
    cpu4_dlmu_nc (w!x): org = 0xb0100000, len = 64K
    
    cpu5_dlmu (w!x): org = 0x90110000, len = 64K
    cpu5_dlmu_nc (w!x): org = 0xb0110000, len = 64K
    
    edmem (w!x): org = 0x99000000, len = 4M
    edmem_nc (w!x): org = 0xb9000000, len = 4M

}

REGION_ALIAS( inttab0_mem , pfls0)
REGION_ALIAS( inttab1_mem , pfls1)
REGION_ALIAS( inttab2_mem , pfls2)
REGION_ALIAS( inttab3_mem , pfls3)
REGION_ALIAS( inttab4_mem , pfls4)
REGION_ALIAS( inttab5_mem , pfls5)
/* map cached and non cached addresses */
REGION_MIRROR("pfls0", "pfls0_nc")
REGION_MIRROR("pfls1", "pfls1_nc")
REGION_MIRROR("pfls2", "pfls2_nc")
REGION_MIRROR("pfls3", "pfls3_nc")
REGION_MIRROR("pfls4", "pfls4_nc")
REGION_MIRROR("pfls5", "pfls5_nc")
REGION_MIRROR("cpu0_dlmu", "cpu0_dlmu_nc")
REGION_MIRROR("cpu1_dlmu", "cpu1_dlmu_nc")
REGION_MIRROR("cpu2_dlmu", "cpu2_dlmu_nc")
REGION_MIRROR("cpu3_dlmu", "cpu3_dlmu_nc")
REGION_MIRROR("cpu4_dlmu", "cpu4_dlmu_nc")
REGION_MIRROR("cpu5_dlmu", "cpu5_dlmu_nc")
REGION_MIRROR("lmuram", "lmuram_nc")

/*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/

REGION_ALIAS( default_ram , dsram0)
REGION_ALIAS( default_rom , pfls0)

/*
REGION_ALIAS( default_ram , dsram1)
REGION_ALIAS( default_rom , pfls1)
*/
/*
REGION_ALIAS( default_ram , dsram2)
REGION_ALIAS( default_rom , pfls2)
*/
/*
REGION_ALIAS( default_ram , dsram3)
REGION_ALIAS( default_rom , pfls3)
*/
/*
REGION_ALIAS( default_ram , dsram4)
REGION_ALIAS( default_rom , pfls4)
*/
/*
REGION_ALIAS( default_ram , dsram5)
REGION_ALIAS( default_rom , pfls5)
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
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU2 = 0);
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU3 = 0);
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU4 = 0);
        PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU5 = 0);
    }
    
    /*Fixed memory Allocations for Trap Vector Table*/
	
    SECTIONS
    {
	    .traptab_tc1 (LCF_TRAPVEC1_START) : { PROVIDE(__TRAPTAB_CPU1 = .); KEEP (*(.traptab_cpu1)); } > pfls1
        .traptab_tc2 (LCF_TRAPVEC2_START) : { PROVIDE(__TRAPTAB_CPU2 = .); KEEP (*(.traptab_cpu2)); } > pfls2
        .traptab_tc3 (LCF_TRAPVEC3_START) : { PROVIDE(__TRAPTAB_CPU3 = .); KEEP (*(.traptab_cpu3)); } > pfls3
        .traptab_tc4 (LCF_TRAPVEC4_START) : { PROVIDE(__TRAPTAB_CPU4 = .); KEEP (*(.traptab_cpu4)); } > pfls4
        .traptab_tc5 (LCF_TRAPVEC5_START) : { PROVIDE(__TRAPTAB_CPU5 = .); KEEP (*(.traptab_cpu5)); } > pfls5
    }
    
    /*Fixed memory Allocations for _START1 to 5*/
    
    SECTIONS
    {
        .start_tc1 (LCF_STARTPTR_NC_CPU1) : { KEEP (*(.start_cpu1)); } > pfls1_nc
        .start_tc2 (LCF_STARTPTR_NC_CPU2) : { KEEP (*(.start_cpu2)); } > pfls2_nc
        .start_tc3 (LCF_STARTPTR_NC_CPU3) : { KEEP (*(.start_cpu3)); } > pfls3_nc
        .start_tc4 (LCF_STARTPTR_NC_CPU4) : { KEEP (*(.start_cpu4)); } > pfls4_nc
        .start_tc5 (LCF_STARTPTR_NC_CPU5) : { KEEP (*(.start_cpu5)); } > pfls5_nc
        PROVIDE(__START1 = LCF_STARTPTR_NC_CPU1);
        PROVIDE(__START2 = LCF_STARTPTR_NC_CPU2);
        PROVIDE(__START3 = LCF_STARTPTR_NC_CPU3);
        PROVIDE(__START4 = LCF_STARTPTR_NC_CPU4);
        PROVIDE(__START5 = LCF_STARTPTR_NC_CPU5);
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
        .CPU5.zdata (LCF_DSPR5_START): 
        {
            *Ifx_Ssw_Tc5.* (.zdata)
            *Cpu5_Main.* (.zdata)
            *(.zdata_cpu5)
            *(.zdata_cpu5.*)
            . = ALIGN(2);
        } > dsram5 AT> pfls0
        
        .CPU5.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc5.* (.zbss)
            *Cpu5_Main.* (.zbss)
            *(.zbss_cpu5)
            *(.zbss_cpu5.*)
        } > dsram5
    }
    
    SECTIONS
    {
        .CPU4.zdata (LCF_DSPR4_START): 
        {
            *Ifx_Ssw_Tc4.* (.zdata)
            *Cpu4_Main.* (.zdata)
            *(.zdata_cpu4)
            *(.zdata_cpu4.*)
            . = ALIGN(2);
        } > dsram4 AT> pfls0
        
        .CPU4.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc4.* (.zbss)
            *Cpu4_Main.* (.zbss)
            *(.zbss_cpu4)
            *(.zbss_cpu4.*)
        } > dsram4
    }
    
    SECTIONS
    {    
        .CPU3.zdata (LCF_DSPR3_START): 
        {
            *Ifx_Ssw_Tc3.* (.zdata)
            *Cpu3_Main.* (.zdata)
            *(.zdata_cpu3)
            *(.zdata_cpu3.*)
            . = ALIGN(2);
        } > dsram3 AT> pfls0
        
        .CPU3.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc3.* (.zbss)
            *Cpu3_Main.* (.zbss)
            *(.zbss_cpu3)
            *(.zbss_cpu3.*)
        } > dsram3
    }
    
    SECTIONS
    {
        .CPU2.zdata (LCF_DSPR2_START): 
        {
            *Ifx_Ssw_Tc2.* (.zdata)
            *Cpu2_Main.* (.zdata)
            *(.zdata_cpu2)
            *(.zdata_cpu2.*)
            . = ALIGN(2);
        } > dsram2 AT> pfls0
        
        .CPU2.zbss (NOLOAD): 
        {
            *Ifx_Ssw_Tc2.* (.zbss)
            *Cpu2_Main.* (.zbss)
            *(.zbss_cpu2)
            *(.zbss_cpu2.*)
        } > dsram2
    }
    
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
    } > lmuram AT> pfls0
    
    .sbss4 :
    {
        *(.bss_a9)
	*(.bss_a9.*)
        *(.a9sbss)
        *(.a9sbss.*)    
    } > lmuram
    
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
    /*DSRAM5 Sections*/
    .CPU5.data : 
    {
        *Ifx_Ssw_Tc5.* (.data)
        *Cpu5_Main.* (.data)
        *(.data_cpu5)
        *(.data_cpu5.*)
        . = ALIGN(2);
    } > dsram5 AT> pfls0
    
    .CPU5.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc5.* (.bss)
        *Cpu5_Main.* (.bss)
        *(.bss_cpu5)
        *(.bss_cpu5.*)
    } > dsram5
    
    /*DLMU5 Sections*/
    .CPU5.lmudata : 
    {
        *(.lmudata_cpu5)
        *(.lmudata_cpu5.*)
        . = ALIGN(2);
    } > cpu5_dlmu AT> pfls0
    
    .CPU5.lmubss : 
    {
        *(.lmubss_cpu5)    
        *(.lmubss_cpu5.*)
    } > cpu5_dlmu
}

SECTIONS
{
    /*DSRAM4 Sections*/
    .CPU4.data : 
    {
        *Ifx_Ssw_Tc4.* (.data)
        *Cpu4_Main.* (.data)
        *(.data_cpu4)
        *(.data_cpu4.*)
        . = ALIGN(2);
    } > dsram4 AT> pfls0
    
    .CPU4.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc4.* (.bss)
        *Cpu4_Main.* (.bss)
        *(.bss_cpu4)
        *(.bss_cpu4.*)
    } > dsram4
    
    /*DLMU4 Sections*/
    .CPU4.lmudata : 
    {
        *(.lmudata_cpu4)
        *(.lmudata_cpu4.*)
        . = ALIGN(2);
    } > cpu4_dlmu AT> pfls0
    
    .CPU4.lmubss : 
    {
        *(.lmubss_cpu4)
        *(.lmubss_cpu4.*)
    } > cpu4_dlmu
}

SECTIONS
{
    /*DSRAM3 Sections*/
    .CPU3.data : 
    {
        *Ifx_Ssw_Tc3.* (.data)
        *Cpu3_Main.* (.data)
        *(.data_cpu3)
        *(.data_cpu3.*)
        . = ALIGN(2);
    } > dsram3 AT> pfls0
    
    .CPU3.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc3.* (.bss)
        *Cpu3_Main.* (.bss)
        *(.bss_cpu3)
        *(.bss_cpu3.*)
    } > dsram3
    
    /*DLMU3 Sections*/
    .CPU3.lmudata : 
    {
        *(.lmudata_cpu3)
        *(.lmudata_cpu3.*)
        . = ALIGN(2);
    } > cpu3_dlmu AT> pfls0
    
    .CPU3.lmubss : 
    {
        *(.lmubss_cpu3)
        *(.lmubss_cpu3.*)
    } > cpu3_dlmu
}

SECTIONS
{
    /*DSRAM2 Sections*/
    .CPU2.data : 
    {
        *Ifx_Ssw_Tc2.* (.data)
        *Cpu2_Main.* (.data)
        *(.data_cpu2)
        *(.data_cpu2.*)
        . = ALIGN(2);
    } > dsram2 AT> pfls0
    
    .CPU2.bss (NOLOAD): 
    {
        *Ifx_Ssw_Tc2.* (.bss)
        *Cpu2_Main.* (.bss)
        *(.bss_cpu2)
        *(.bss_cpu2.*)
    } > dsram2
    
    /*DLMU2 Sections*/
    .CPU2.lmudata : 
    {
        *(.lmudata_cpu2)
        *(.lmudata_cpu2.*)
        . = ALIGN(2);
    } > cpu2_dlmu AT> pfls0
    
    .CPU2.lmubss : 
    {
        *(.lmubss_cpu2)
        *(.lmubss_cpu2.*)
    } > cpu2_dlmu
}

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
    } > lmuram AT> pfls0
    
    .lmubss : 
    {
        *(.lmubss)
        *(.lmubss.*)
    } > lmuram
}

    /*Sections located at absolute fixed address*/
    /*Fixed memory Allocations for stack memory and CSA*/
    SECTIONS
    {
        .CPU5.ustack (LCF_DSPR5_START + LCF_USTACK5_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK5_END = .);    . = . + LCF_USTACK5_SIZE;    PROVIDE(__USTACK5 = .); } > dsram5
        
        .CPU5.istack (LCF_DSPR5_START + LCF_ISTACK5_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK5_END = .);    . = . + LCF_ISTACK5_SIZE;    PROVIDE(__ISTACK5 = .); } > dsram5
        
        .CPU5.csa (LCF_DSPR5_START + LCF_CSA5_OFFSET)(NOLOAD):
        { PROVIDE(__CSA5 = .);    . = . + LCF_CSA5_SIZE;    PROVIDE(__CSA5_END = .); } > dsram5
    }
    
    
    SECTIONS
    {
        .CPU4.ustack (LCF_DSPR4_START + LCF_USTACK4_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK4_END = .);    . = . + LCF_USTACK4_SIZE;    PROVIDE(__USTACK4 = .); } > dsram4
        
        .CPU4.istack (LCF_DSPR4_START + LCF_ISTACK4_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK4_END = .);    . = . + LCF_ISTACK4_SIZE;    PROVIDE(__ISTACK4 = .); } > dsram4
        
        .CPU4.csa(LCF_DSPR4_START + LCF_CSA4_OFFSET)(NOLOAD):
        { PROVIDE(__CSA4 = .);    . = . + LCF_CSA4_SIZE;    PROVIDE(__CSA4_END = .); } > dsram4
    }
    
    
    SECTIONS
    {
        .CPU3.ustack (LCF_DSPR3_START + LCF_USTACK3_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK3_END = .);    . = . + LCF_USTACK3_SIZE;    PROVIDE(__USTACK3 = .); } > dsram3
        
        .CPU3.istack (LCF_DSPR3_START + LCF_ISTACK3_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK3_END = .);    . = . + LCF_ISTACK3_SIZE;    PROVIDE(__ISTACK3 = .); } > dsram3
        
        .CPU3.csa (LCF_DSPR3_START + LCF_CSA3_OFFSET)(NOLOAD):
        { PROVIDE(__CSA3 = .);    . = . + LCF_CSA3_SIZE;    PROVIDE(__CSA3_END = .); } > dsram3
    }
    
    
    SECTIONS
    {
        .CPU2.ustack (LCF_DSPR2_START + LCF_USTACK2_OFFSET)(NOLOAD):
        { PROVIDE(__USTACK2_END = .);    . = . + LCF_USTACK2_SIZE;    PROVIDE(__USTACK2 = .); } > dsram2
        
        .CPU2.istack (LCF_DSPR2_START + LCF_ISTACK2_OFFSET)(NOLOAD):
        { PROVIDE(__ISTACK2_END = .);    . = . + LCF_ISTACK2_SIZE;    PROVIDE(__ISTACK2 = .); } > dsram2
        
        .CPU2.csa (LCF_DSPR2_START + LCF_CSA2_OFFSET)(NOLOAD):
        { PROVIDE(__CSA2 = .);    . = . + LCF_CSA2_SIZE;    PROVIDE(__CSA2_END = .); } > dsram2
    }
    
    
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
    } > pfls1
}


SECTIONS
{
    .CPU2.rodata : 
    {
        *Ifx_Ssw_Tc2.* (.rodata)
        *Cpu2_Main.* (.rodata)
        *(.rodata_cpu2)
        *(.rodata_cpu2.*)
    } > pfls2
}


SECTIONS
{
    .CPU3.rodata : 
    {
        *Ifx_Ssw_Tc3.* (.rodata)
        *Cpu3_Main.* (.rodata)
        *(.rodata_cpu3)
        *(.rodata_cpu3.*)
    } > pfls3
}


SECTIONS
{
    .CPU4.rodata : 
    {
        *Ifx_Ssw_Tc4.* (.rodata)
        *Cpu4_Main.* (.rodata)
        *(.rodata_cpu4)
        *(.rodata_cpu4.*)
    } > pfls4
}


SECTIONS
{
    .CPU5.rodata : 
    {
        *Ifx_Ssw_Tc5.* (.rodata)
        *Cpu5_Main.* (.rodata)
        *(.rodata_cpu5)
        *(.rodata_cpu5.*)
    } > pfls5
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
    LONG(0 + ADDR(.CPU5.zbss));       LONG(SIZEOF(.CPU5.zbss));
    LONG(0 + ADDR(.CPU5.bss));        LONG(SIZEOF(.CPU5.bss));
    LONG(0 + ADDR(.CPU5.lmubss));     LONG(SIZEOF(.CPU5.lmubss));
    LONG(0 + ADDR(.CPU4.zbss));       LONG(SIZEOF(.CPU4.zbss));
    LONG(0 + ADDR(.CPU4.bss));        LONG(SIZEOF(.CPU4.bss));
    LONG(0 + ADDR(.CPU4.lmubss));     LONG(SIZEOF(.CPU4.lmubss));
    LONG(0 + ADDR(.CPU3.zbss));       LONG(SIZEOF(.CPU3.zbss));
    LONG(0 + ADDR(.CPU3.bss));        LONG(SIZEOF(.CPU3.bss));
    LONG(0 + ADDR(.CPU3.lmubss));     LONG(SIZEOF(.CPU3.lmubss));
    LONG(0 + ADDR(.CPU2.zbss));       LONG(SIZEOF(.CPU2.zbss));
    LONG(0 + ADDR(.CPU2.bss));        LONG(SIZEOF(.CPU2.bss));
    LONG(0 + ADDR(.CPU2.lmubss));     LONG(SIZEOF(.CPU2.lmubss));
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
    LONG(LOADADDR(.CPU5.zdata));      LONG(0 + ADDR(.CPU5.zdata));      LONG(SIZEOF(.CPU5.zdata));
    LONG(LOADADDR(.CPU5.data));       LONG(0 + ADDR(.CPU5.data));       LONG(SIZEOF(.CPU5.data));
    LONG(LOADADDR(.CPU5.lmudata));    LONG(0 + ADDR(.CPU5.lmudata));    LONG(SIZEOF(.CPU5.lmudata));
    LONG(LOADADDR(.CPU4.zdata));      LONG(0 + ADDR(.CPU4.zdata));      LONG(SIZEOF(.CPU4.zdata));
    LONG(LOADADDR(.CPU4.data));       LONG(0 + ADDR(.CPU4.data));       LONG(SIZEOF(.CPU4.data));
    LONG(LOADADDR(.CPU4.lmudata));    LONG(0 + ADDR(.CPU4.lmudata));    LONG(SIZEOF(.CPU4.lmudata));
    LONG(LOADADDR(.CPU3.zdata));      LONG(0 + ADDR(.CPU3.zdata));      LONG(SIZEOF(.CPU3.zdata));
    LONG(LOADADDR(.CPU3.data));       LONG(0 + ADDR(.CPU3.data));       LONG(SIZEOF(.CPU3.data));
    LONG(LOADADDR(.CPU3.lmudata));    LONG(0 + ADDR(.CPU3.lmudata));    LONG(SIZEOF(.CPU3.lmudata));
    LONG(LOADADDR(.CPU2.zdata));      LONG(0 + ADDR(.CPU2.zdata));      LONG(SIZEOF(.CPU2.zdata));
    LONG(LOADADDR(.CPU2.data));       LONG(0 + ADDR(.CPU2.data));       LONG(SIZEOF(.CPU2.data));
    LONG(LOADADDR(.CPU2.lmudata));    LONG(0 + ADDR(.CPU2.lmudata));    LONG(SIZEOF(.CPU2.lmudata));
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
    LONG(LOADADDR(.CPU2.psram_text)); LONG(0 + ADDR(.CPU2.psram_text)); LONG(SIZEOF(.CPU2.psram_text));
    LONG(LOADADDR(.CPU3.psram_text)); LONG(0 + ADDR(.CPU3.psram_text)); LONG(SIZEOF(.CPU3.psram_text));
    LONG(LOADADDR(.CPU4.psram_text)); LONG(0 + ADDR(.CPU4.psram_text)); LONG(SIZEOF(.CPU4.psram_text));
    LONG(LOADADDR(.CPU5.psram_text)); LONG(0 + ADDR(.CPU5.psram_text)); LONG(SIZEOF(.CPU5.psram_text));
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
    } > pfls1

    .CPU1.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu1)
        *(.psram_text_cpu1.*)
        *(.cpu1_psram)
        *(.cpu1_psram.*)
        . = ALIGN(2);
    } > psram1 AT> pfls1
}


SECTIONS
{
    .CPU2.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc2.*(.text)
        *Cpu2_Main.*(.text)
        *Ifx_Ssw_Tc2.*(.text.*)
        *Cpu2_Main.*(.text.*)
        *(.text_cpu2)
        *(.text_cpu2.*)
    } > pfls2

    .CPU2.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu2)
        *(.psram_text_cpu2.*)
        *(.cpu2_psram)
        *(.cpu2_psram.*)
        . = ALIGN(2);
    } > psram2 AT> pfls2
}


SECTIONS
{
    .CPU3.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc3.*(.text)
        *Cpu3_Main.*(.text)
        *Ifx_Ssw_Tc3.*(.text.*)
        *Cpu3_Main.*(.text.*)
        *(.text_cpu3)
        *(.text_cpu3.*)
    } > pfls3

    .CPU3.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu3)
        *(.psram_text_cpu3.*)
        *(.cpu3_psram)
        *(.cpu3_psram.*)
        . = ALIGN(2);
    } > psram3 AT> pfls3
}


SECTIONS
{
    .CPU4.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc4.*(.text)
        *Cpu4_Main.*(.text)
        *Ifx_Ssw_Tc4.*(.text.*)
        *Cpu4_Main.*(.text.*)
        *(.text_cpu4)
        *(.text_cpu4.*)
    } > pfls4

    .CPU4.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu4)
        *(.psram_text_cpu4.*)
        *(.cpu4_psram)
        *(.cpu4_psram.*)
        . = ALIGN(2);
    } > psram4 AT> pfls4
}


SECTIONS
{
    .CPU5.text : 
    {
        . = ALIGN(2);
        *Ifx_Ssw_Tc5.*(.text)
        *Cpu5_Main.*(.text)
        *Ifx_Ssw_Tc5.*(.text.*)
        *Cpu5_Main.*(.text.*)
        *(.text_cpu5)
        *(.text_cpu5.*)
    } > pfls5

    .CPU5.psram_text  : 
    {
        . = ALIGN(2);
        *(.psram_text_cpu5)
        *(.psram_text_cpu5.*)
        *(.cpu5_psram)
        *(.cpu5_psram.*)
        . = ALIGN(2);
    } > psram5 AT> pfls5
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
    } >default_rom

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
    SECTIONS
    {
        /*CPU2 Interrupt Vector Table*/
        .inttab_tc2_000 (__INTTAB_CPU2 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_0  )); } > inttab2_mem
        .inttab_tc2_001 (__INTTAB_CPU2 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_1  )); } > inttab2_mem
        .inttab_tc2_002 (__INTTAB_CPU2 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_2  )); } > inttab2_mem
        .inttab_tc2_003 (__INTTAB_CPU2 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_3  )); } > inttab2_mem
        .inttab_tc2_004 (__INTTAB_CPU2 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_4  )); } > inttab2_mem
        .inttab_tc2_005 (__INTTAB_CPU2 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_5  )); } > inttab2_mem
        .inttab_tc2_006 (__INTTAB_CPU2 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_6  )); } > inttab2_mem
        .inttab_tc2_007 (__INTTAB_CPU2 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_7  )); } > inttab2_mem
        .inttab_tc2_008 (__INTTAB_CPU2 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_8  )); } > inttab2_mem
        .inttab_tc2_009 (__INTTAB_CPU2 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_9  )); } > inttab2_mem
        .inttab_tc2_00A (__INTTAB_CPU2 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_10 )); } > inttab2_mem
        .inttab_tc2_00B (__INTTAB_CPU2 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_11 )); } > inttab2_mem
        .inttab_tc2_00C (__INTTAB_CPU2 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_12 )); } > inttab2_mem
        .inttab_tc2_00D (__INTTAB_CPU2 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_13 )); } > inttab2_mem
        .inttab_tc2_00E (__INTTAB_CPU2 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_14 )); } > inttab2_mem
        .inttab_tc2_00F (__INTTAB_CPU2 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_15 )); } > inttab2_mem
        .inttab_tc2_010 (__INTTAB_CPU2 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_16 )); } > inttab2_mem
        .inttab_tc2_011 (__INTTAB_CPU2 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_17 )); } > inttab2_mem
        .inttab_tc2_012 (__INTTAB_CPU2 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_18 )); } > inttab2_mem
        .inttab_tc2_013 (__INTTAB_CPU2 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_19 )); } > inttab2_mem
        .inttab_tc2_014 (__INTTAB_CPU2 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_20 )); } > inttab2_mem
        .inttab_tc2_015 (__INTTAB_CPU2 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_21 )); } > inttab2_mem
        .inttab_tc2_016 (__INTTAB_CPU2 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_22 )); } > inttab2_mem
        .inttab_tc2_017 (__INTTAB_CPU2 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_23 )); } > inttab2_mem
        .inttab_tc2_018 (__INTTAB_CPU2 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_24 )); } > inttab2_mem
        .inttab_tc2_019 (__INTTAB_CPU2 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_25 )); } > inttab2_mem
        .inttab_tc2_01A (__INTTAB_CPU2 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_26 )); } > inttab2_mem
        .inttab_tc2_01B (__INTTAB_CPU2 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_27 )); } > inttab2_mem
        .inttab_tc2_01C (__INTTAB_CPU2 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_28 )); } > inttab2_mem
        .inttab_tc2_01D (__INTTAB_CPU2 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_29 )); } > inttab2_mem
        .inttab_tc2_01E (__INTTAB_CPU2 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_30 )); } > inttab2_mem
        .inttab_tc2_01F (__INTTAB_CPU2 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_31 )); } > inttab2_mem
        .inttab_tc2_020 (__INTTAB_CPU2 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_32 )); } > inttab2_mem
        .inttab_tc2_021 (__INTTAB_CPU2 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_33 )); } > inttab2_mem
        .inttab_tc2_022 (__INTTAB_CPU2 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_34 )); } > inttab2_mem
        .inttab_tc2_023 (__INTTAB_CPU2 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_35 )); } > inttab2_mem
        .inttab_tc2_024 (__INTTAB_CPU2 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_36 )); } > inttab2_mem
        .inttab_tc2_025 (__INTTAB_CPU2 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_37 )); } > inttab2_mem
        .inttab_tc2_026 (__INTTAB_CPU2 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_38 )); } > inttab2_mem
        .inttab_tc2_027 (__INTTAB_CPU2 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_39 )); } > inttab2_mem
        .inttab_tc2_028 (__INTTAB_CPU2 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_40 )); } > inttab2_mem
        .inttab_tc2_029 (__INTTAB_CPU2 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_41 )); } > inttab2_mem
        .inttab_tc2_02A (__INTTAB_CPU2 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_42 )); } > inttab2_mem
        .inttab_tc2_02B (__INTTAB_CPU2 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_43 )); } > inttab2_mem
        .inttab_tc2_02C (__INTTAB_CPU2 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_44 )); } > inttab2_mem
        .inttab_tc2_02D (__INTTAB_CPU2 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_45 )); } > inttab2_mem
        .inttab_tc2_02E (__INTTAB_CPU2 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_46 )); } > inttab2_mem
        .inttab_tc2_02F (__INTTAB_CPU2 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_47 )); } > inttab2_mem
        .inttab_tc2_030 (__INTTAB_CPU2 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_48 )); } > inttab2_mem
        .inttab_tc2_031 (__INTTAB_CPU2 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_49 )); } > inttab2_mem
        .inttab_tc2_032 (__INTTAB_CPU2 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_50 )); } > inttab2_mem
        .inttab_tc2_033 (__INTTAB_CPU2 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_51 )); } > inttab2_mem
        .inttab_tc2_034 (__INTTAB_CPU2 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_52 )); } > inttab2_mem
        .inttab_tc2_035 (__INTTAB_CPU2 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_53 )); } > inttab2_mem
        .inttab_tc2_036 (__INTTAB_CPU2 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_54 )); } > inttab2_mem
        .inttab_tc2_037 (__INTTAB_CPU2 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_55 )); } > inttab2_mem
        .inttab_tc2_038 (__INTTAB_CPU2 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_56 )); } > inttab2_mem
        .inttab_tc2_039 (__INTTAB_CPU2 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_57 )); } > inttab2_mem
        .inttab_tc2_03A (__INTTAB_CPU2 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_58 )); } > inttab2_mem
        .inttab_tc2_03B (__INTTAB_CPU2 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_59 )); } > inttab2_mem
        .inttab_tc2_03C (__INTTAB_CPU2 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_60 )); } > inttab2_mem
        .inttab_tc2_03D (__INTTAB_CPU2 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_61 )); } > inttab2_mem
        .inttab_tc2_03E (__INTTAB_CPU2 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_62 )); } > inttab2_mem
        .inttab_tc2_03F (__INTTAB_CPU2 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_63 )); } > inttab2_mem
        .inttab_tc2_040 (__INTTAB_CPU2 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_64 )); } > inttab2_mem
        .inttab_tc2_041 (__INTTAB_CPU2 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_65 )); } > inttab2_mem
        .inttab_tc2_042 (__INTTAB_CPU2 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_66 )); } > inttab2_mem
        .inttab_tc2_043 (__INTTAB_CPU2 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_67 )); } > inttab2_mem
        .inttab_tc2_044 (__INTTAB_CPU2 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_68 )); } > inttab2_mem
        .inttab_tc2_045 (__INTTAB_CPU2 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_69 )); } > inttab2_mem
        .inttab_tc2_046 (__INTTAB_CPU2 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_70 )); } > inttab2_mem
        .inttab_tc2_047 (__INTTAB_CPU2 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_71 )); } > inttab2_mem
        .inttab_tc2_048 (__INTTAB_CPU2 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_72 )); } > inttab2_mem
        .inttab_tc2_049 (__INTTAB_CPU2 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_73 )); } > inttab2_mem
        .inttab_tc2_04A (__INTTAB_CPU2 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_74 )); } > inttab2_mem
        .inttab_tc2_04B (__INTTAB_CPU2 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_75 )); } > inttab2_mem
        .inttab_tc2_04C (__INTTAB_CPU2 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_76 )); } > inttab2_mem
        .inttab_tc2_04D (__INTTAB_CPU2 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_77 )); } > inttab2_mem
        .inttab_tc2_04E (__INTTAB_CPU2 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_78 )); } > inttab2_mem
        .inttab_tc2_04F (__INTTAB_CPU2 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_79 )); } > inttab2_mem
        .inttab_tc2_050 (__INTTAB_CPU2 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_80 )); } > inttab2_mem
        .inttab_tc2_051 (__INTTAB_CPU2 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_81 )); } > inttab2_mem
        .inttab_tc2_052 (__INTTAB_CPU2 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_82 )); } > inttab2_mem
        .inttab_tc2_053 (__INTTAB_CPU2 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_83 )); } > inttab2_mem
        .inttab_tc2_054 (__INTTAB_CPU2 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_84 )); } > inttab2_mem
        .inttab_tc2_055 (__INTTAB_CPU2 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_85 )); } > inttab2_mem
        .inttab_tc2_056 (__INTTAB_CPU2 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_86 )); } > inttab2_mem
        .inttab_tc2_057 (__INTTAB_CPU2 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_87 )); } > inttab2_mem
        .inttab_tc2_058 (__INTTAB_CPU2 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_88 )); } > inttab2_mem
        .inttab_tc2_059 (__INTTAB_CPU2 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_89 )); } > inttab2_mem
        .inttab_tc2_05A (__INTTAB_CPU2 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_90 )); } > inttab2_mem
        .inttab_tc2_05B (__INTTAB_CPU2 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_91 )); } > inttab2_mem
        .inttab_tc2_05C (__INTTAB_CPU2 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_92 )); } > inttab2_mem
        .inttab_tc2_05D (__INTTAB_CPU2 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_93 )); } > inttab2_mem
        .inttab_tc2_05E (__INTTAB_CPU2 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_94 )); } > inttab2_mem
        .inttab_tc2_05F (__INTTAB_CPU2 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_95 )); } > inttab2_mem
        .inttab_tc2_060 (__INTTAB_CPU2 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_96 )); } > inttab2_mem
        .inttab_tc2_061 (__INTTAB_CPU2 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_97 )); } > inttab2_mem
        .inttab_tc2_062 (__INTTAB_CPU2 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_98 )); } > inttab2_mem
        .inttab_tc2_063 (__INTTAB_CPU2 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_99 )); } > inttab2_mem
        .inttab_tc2_064 (__INTTAB_CPU2 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_100)); } > inttab2_mem
        .inttab_tc2_065 (__INTTAB_CPU2 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_101)); } > inttab2_mem
        .inttab_tc2_066 (__INTTAB_CPU2 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_102)); } > inttab2_mem
        .inttab_tc2_067 (__INTTAB_CPU2 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_103)); } > inttab2_mem
        .inttab_tc2_068 (__INTTAB_CPU2 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_104)); } > inttab2_mem
        .inttab_tc2_069 (__INTTAB_CPU2 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_105)); } > inttab2_mem
        .inttab_tc2_06A (__INTTAB_CPU2 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_106)); } > inttab2_mem
        .inttab_tc2_06B (__INTTAB_CPU2 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_107)); } > inttab2_mem
        .inttab_tc2_06C (__INTTAB_CPU2 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_108)); } > inttab2_mem
        .inttab_tc2_06D (__INTTAB_CPU2 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_109)); } > inttab2_mem
        .inttab_tc2_06E (__INTTAB_CPU2 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_110)); } > inttab2_mem
        .inttab_tc2_06F (__INTTAB_CPU2 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_111)); } > inttab2_mem
        .inttab_tc2_070 (__INTTAB_CPU2 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_112)); } > inttab2_mem
        .inttab_tc2_071 (__INTTAB_CPU2 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_113)); } > inttab2_mem
        .inttab_tc2_072 (__INTTAB_CPU2 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_114)); } > inttab2_mem
        .inttab_tc2_073 (__INTTAB_CPU2 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_115)); } > inttab2_mem
        .inttab_tc2_074 (__INTTAB_CPU2 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_116)); } > inttab2_mem
        .inttab_tc2_075 (__INTTAB_CPU2 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_117)); } > inttab2_mem
        .inttab_tc2_076 (__INTTAB_CPU2 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_118)); } > inttab2_mem
        .inttab_tc2_077 (__INTTAB_CPU2 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_119)); } > inttab2_mem
        .inttab_tc2_078 (__INTTAB_CPU2 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_120)); } > inttab2_mem
        .inttab_tc2_079 (__INTTAB_CPU2 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_121)); } > inttab2_mem
        .inttab_tc2_07A (__INTTAB_CPU2 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_122)); } > inttab2_mem
        .inttab_tc2_07B (__INTTAB_CPU2 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_123)); } > inttab2_mem
        .inttab_tc2_07C (__INTTAB_CPU2 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_124)); } > inttab2_mem
        .inttab_tc2_07D (__INTTAB_CPU2 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_125)); } > inttab2_mem
        .inttab_tc2_07E (__INTTAB_CPU2 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_126)); } > inttab2_mem
        .inttab_tc2_07F (__INTTAB_CPU2 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_127)); } > inttab2_mem
        .inttab_tc2_080 (__INTTAB_CPU2 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_128)); } > inttab2_mem
        .inttab_tc2_081 (__INTTAB_CPU2 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_129)); } > inttab2_mem
        .inttab_tc2_082 (__INTTAB_CPU2 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_130)); } > inttab2_mem
        .inttab_tc2_083 (__INTTAB_CPU2 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_131)); } > inttab2_mem
        .inttab_tc2_084 (__INTTAB_CPU2 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_132)); } > inttab2_mem
        .inttab_tc2_085 (__INTTAB_CPU2 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_133)); } > inttab2_mem
        .inttab_tc2_086 (__INTTAB_CPU2 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_134)); } > inttab2_mem
        .inttab_tc2_087 (__INTTAB_CPU2 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_135)); } > inttab2_mem
        .inttab_tc2_088 (__INTTAB_CPU2 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_136)); } > inttab2_mem
        .inttab_tc2_089 (__INTTAB_CPU2 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_137)); } > inttab2_mem
        .inttab_tc2_08A (__INTTAB_CPU2 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_138)); } > inttab2_mem
        .inttab_tc2_08B (__INTTAB_CPU2 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_139)); } > inttab2_mem
        .inttab_tc2_08C (__INTTAB_CPU2 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_140)); } > inttab2_mem
        .inttab_tc2_08D (__INTTAB_CPU2 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_141)); } > inttab2_mem
        .inttab_tc2_08E (__INTTAB_CPU2 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_142)); } > inttab2_mem
        .inttab_tc2_08F (__INTTAB_CPU2 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_143)); } > inttab2_mem
        .inttab_tc2_090 (__INTTAB_CPU2 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_144)); } > inttab2_mem
        .inttab_tc2_091 (__INTTAB_CPU2 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_145)); } > inttab2_mem
        .inttab_tc2_092 (__INTTAB_CPU2 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_146)); } > inttab2_mem
        .inttab_tc2_093 (__INTTAB_CPU2 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_147)); } > inttab2_mem
        .inttab_tc2_094 (__INTTAB_CPU2 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_148)); } > inttab2_mem
        .inttab_tc2_095 (__INTTAB_CPU2 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_149)); } > inttab2_mem
        .inttab_tc2_096 (__INTTAB_CPU2 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_150)); } > inttab2_mem
        .inttab_tc2_097 (__INTTAB_CPU2 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_151)); } > inttab2_mem
        .inttab_tc2_098 (__INTTAB_CPU2 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_152)); } > inttab2_mem
        .inttab_tc2_099 (__INTTAB_CPU2 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_153)); } > inttab2_mem
        .inttab_tc2_09A (__INTTAB_CPU2 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_154)); } > inttab2_mem
        .inttab_tc2_09B (__INTTAB_CPU2 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_155)); } > inttab2_mem
        .inttab_tc2_09C (__INTTAB_CPU2 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_156)); } > inttab2_mem
        .inttab_tc2_09D (__INTTAB_CPU2 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_157)); } > inttab2_mem
        .inttab_tc2_09E (__INTTAB_CPU2 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_158)); } > inttab2_mem
        .inttab_tc2_09F (__INTTAB_CPU2 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_159)); } > inttab2_mem
        .inttab_tc2_0A0 (__INTTAB_CPU2 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_160)); } > inttab2_mem
        .inttab_tc2_0A1 (__INTTAB_CPU2 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_161)); } > inttab2_mem
        .inttab_tc2_0A2 (__INTTAB_CPU2 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_162)); } > inttab2_mem
        .inttab_tc2_0A3 (__INTTAB_CPU2 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_163)); } > inttab2_mem
        .inttab_tc2_0A4 (__INTTAB_CPU2 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_164)); } > inttab2_mem
        .inttab_tc2_0A5 (__INTTAB_CPU2 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_165)); } > inttab2_mem
        .inttab_tc2_0A6 (__INTTAB_CPU2 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_166)); } > inttab2_mem
        .inttab_tc2_0A7 (__INTTAB_CPU2 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_167)); } > inttab2_mem
        .inttab_tc2_0A8 (__INTTAB_CPU2 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_168)); } > inttab2_mem
        .inttab_tc2_0A9 (__INTTAB_CPU2 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_169)); } > inttab2_mem
        .inttab_tc2_0AA (__INTTAB_CPU2 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_170)); } > inttab2_mem
        .inttab_tc2_0AB (__INTTAB_CPU2 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_171)); } > inttab2_mem
        .inttab_tc2_0AC (__INTTAB_CPU2 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_172)); } > inttab2_mem
        .inttab_tc2_0AD (__INTTAB_CPU2 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_173)); } > inttab2_mem
        .inttab_tc2_0AE (__INTTAB_CPU2 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_174)); } > inttab2_mem
        .inttab_tc2_0AF (__INTTAB_CPU2 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_175)); } > inttab2_mem
        .inttab_tc2_0B0 (__INTTAB_CPU2 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_176)); } > inttab2_mem
        .inttab_tc2_0B1 (__INTTAB_CPU2 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_177)); } > inttab2_mem
        .inttab_tc2_0B2 (__INTTAB_CPU2 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_178)); } > inttab2_mem
        .inttab_tc2_0B3 (__INTTAB_CPU2 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_179)); } > inttab2_mem
        .inttab_tc2_0B4 (__INTTAB_CPU2 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_180)); } > inttab2_mem
        .inttab_tc2_0B5 (__INTTAB_CPU2 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_181)); } > inttab2_mem
        .inttab_tc2_0B6 (__INTTAB_CPU2 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_182)); } > inttab2_mem
        .inttab_tc2_0B7 (__INTTAB_CPU2 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_183)); } > inttab2_mem
        .inttab_tc2_0B8 (__INTTAB_CPU2 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_184)); } > inttab2_mem
        .inttab_tc2_0B9 (__INTTAB_CPU2 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_185)); } > inttab2_mem
        .inttab_tc2_0BA (__INTTAB_CPU2 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_186)); } > inttab2_mem
        .inttab_tc2_0BB (__INTTAB_CPU2 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_187)); } > inttab2_mem
        .inttab_tc2_0BC (__INTTAB_CPU2 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_188)); } > inttab2_mem
        .inttab_tc2_0BD (__INTTAB_CPU2 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_189)); } > inttab2_mem
        .inttab_tc2_0BE (__INTTAB_CPU2 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_190)); } > inttab2_mem
        .inttab_tc2_0BF (__INTTAB_CPU2 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_191)); } > inttab2_mem
        .inttab_tc2_0C0 (__INTTAB_CPU2 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_192)); } > inttab2_mem
        .inttab_tc2_0C1 (__INTTAB_CPU2 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_193)); } > inttab2_mem
        .inttab_tc2_0C2 (__INTTAB_CPU2 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_194)); } > inttab2_mem
        .inttab_tc2_0C3 (__INTTAB_CPU2 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_195)); } > inttab2_mem
        .inttab_tc2_0C4 (__INTTAB_CPU2 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_196)); } > inttab2_mem
        .inttab_tc2_0C5 (__INTTAB_CPU2 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_197)); } > inttab2_mem
        .inttab_tc2_0C6 (__INTTAB_CPU2 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_198)); } > inttab2_mem
        .inttab_tc2_0C7 (__INTTAB_CPU2 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_199)); } > inttab2_mem
        .inttab_tc2_0C8 (__INTTAB_CPU2 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_200)); } > inttab2_mem
        .inttab_tc2_0C9 (__INTTAB_CPU2 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_201)); } > inttab2_mem
        .inttab_tc2_0CA (__INTTAB_CPU2 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_202)); } > inttab2_mem
        .inttab_tc2_0CB (__INTTAB_CPU2 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_203)); } > inttab2_mem
        .inttab_tc2_0CC (__INTTAB_CPU2 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_204)); } > inttab2_mem
        .inttab_tc2_0CD (__INTTAB_CPU2 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_205)); } > inttab2_mem
        .inttab_tc2_0CE (__INTTAB_CPU2 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_206)); } > inttab2_mem
        .inttab_tc2_0CF (__INTTAB_CPU2 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_207)); } > inttab2_mem
        .inttab_tc2_0D0 (__INTTAB_CPU2 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_208)); } > inttab2_mem
        .inttab_tc2_0D1 (__INTTAB_CPU2 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_209)); } > inttab2_mem
        .inttab_tc2_0D2 (__INTTAB_CPU2 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_210)); } > inttab2_mem
        .inttab_tc2_0D3 (__INTTAB_CPU2 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_211)); } > inttab2_mem
        .inttab_tc2_0D4 (__INTTAB_CPU2 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_212)); } > inttab2_mem
        .inttab_tc2_0D5 (__INTTAB_CPU2 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_213)); } > inttab2_mem
        .inttab_tc2_0D6 (__INTTAB_CPU2 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_214)); } > inttab2_mem
        .inttab_tc2_0D7 (__INTTAB_CPU2 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_215)); } > inttab2_mem
        .inttab_tc2_0D8 (__INTTAB_CPU2 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_216)); } > inttab2_mem
        .inttab_tc2_0D9 (__INTTAB_CPU2 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_217)); } > inttab2_mem
        .inttab_tc2_0DA (__INTTAB_CPU2 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_218)); } > inttab2_mem
        .inttab_tc2_0DB (__INTTAB_CPU2 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_219)); } > inttab2_mem
        .inttab_tc2_0DC (__INTTAB_CPU2 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_220)); } > inttab2_mem
        .inttab_tc2_0DD (__INTTAB_CPU2 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_221)); } > inttab2_mem
        .inttab_tc2_0DE (__INTTAB_CPU2 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_222)); } > inttab2_mem
        .inttab_tc2_0DF (__INTTAB_CPU2 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_223)); } > inttab2_mem
        .inttab_tc2_0E0 (__INTTAB_CPU2 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_224)); } > inttab2_mem
        .inttab_tc2_0E1 (__INTTAB_CPU2 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_225)); } > inttab2_mem
        .inttab_tc2_0E2 (__INTTAB_CPU2 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_226)); } > inttab2_mem
        .inttab_tc2_0E3 (__INTTAB_CPU2 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_227)); } > inttab2_mem
        .inttab_tc2_0E4 (__INTTAB_CPU2 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_228)); } > inttab2_mem
        .inttab_tc2_0E5 (__INTTAB_CPU2 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_229)); } > inttab2_mem
        .inttab_tc2_0E6 (__INTTAB_CPU2 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_230)); } > inttab2_mem
        .inttab_tc2_0E7 (__INTTAB_CPU2 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_231)); } > inttab2_mem
        .inttab_tc2_0E8 (__INTTAB_CPU2 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_232)); } > inttab2_mem
        .inttab_tc2_0E9 (__INTTAB_CPU2 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_233)); } > inttab2_mem
        .inttab_tc2_0EA (__INTTAB_CPU2 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_234)); } > inttab2_mem
        .inttab_tc2_0EB (__INTTAB_CPU2 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_235)); } > inttab2_mem
        .inttab_tc2_0EC (__INTTAB_CPU2 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_236)); } > inttab2_mem
        .inttab_tc2_0ED (__INTTAB_CPU2 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_237)); } > inttab2_mem
        .inttab_tc2_0EE (__INTTAB_CPU2 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_238)); } > inttab2_mem
        .inttab_tc2_0EF (__INTTAB_CPU2 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_239)); } > inttab2_mem
        .inttab_tc2_0F0 (__INTTAB_CPU2 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_240)); } > inttab2_mem
        .inttab_tc2_0F1 (__INTTAB_CPU2 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_241)); } > inttab2_mem
        .inttab_tc2_0F2 (__INTTAB_CPU2 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_242)); } > inttab2_mem
        .inttab_tc2_0F3 (__INTTAB_CPU2 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_243)); } > inttab2_mem
        .inttab_tc2_0F4 (__INTTAB_CPU2 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_244)); } > inttab2_mem
        .inttab_tc2_0F5 (__INTTAB_CPU2 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_245)); } > inttab2_mem
        .inttab_tc2_0F6 (__INTTAB_CPU2 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_246)); } > inttab2_mem
        .inttab_tc2_0F7 (__INTTAB_CPU2 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_247)); } > inttab2_mem
        .inttab_tc2_0F8 (__INTTAB_CPU2 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_248)); } > inttab2_mem
        .inttab_tc2_0F9 (__INTTAB_CPU2 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_249)); } > inttab2_mem
        .inttab_tc2_0FA (__INTTAB_CPU2 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_250)); } > inttab2_mem
        .inttab_tc2_0FB (__INTTAB_CPU2 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_251)); } > inttab2_mem
        .inttab_tc2_0FC (__INTTAB_CPU2 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_252)); } > inttab2_mem
        .inttab_tc2_0FD (__INTTAB_CPU2 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_253)); } > inttab2_mem
        .inttab_tc2_0FE (__INTTAB_CPU2 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_254)); } > inttab2_mem
        .inttab_tc2_0FF (__INTTAB_CPU2 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc2_255)); } > inttab2_mem
    }
    SECTIONS
    {
        /*CPU3 Interrupt Vector Table*/
        .inttab_tc3_000 (__INTTAB_CPU3 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_0  )); } > inttab3_mem
        .inttab_tc3_001 (__INTTAB_CPU3 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_1  )); } > inttab3_mem
        .inttab_tc3_002 (__INTTAB_CPU3 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_2  )); } > inttab3_mem
        .inttab_tc3_003 (__INTTAB_CPU3 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_3  )); } > inttab3_mem
        .inttab_tc3_004 (__INTTAB_CPU3 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_4  )); } > inttab3_mem
        .inttab_tc3_005 (__INTTAB_CPU3 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_5  )); } > inttab3_mem
        .inttab_tc3_006 (__INTTAB_CPU3 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_6  )); } > inttab3_mem
        .inttab_tc3_007 (__INTTAB_CPU3 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_7  )); } > inttab3_mem
        .inttab_tc3_008 (__INTTAB_CPU3 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_8  )); } > inttab3_mem
        .inttab_tc3_009 (__INTTAB_CPU3 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_9  )); } > inttab3_mem
        .inttab_tc3_00A (__INTTAB_CPU3 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_10 )); } > inttab3_mem
        .inttab_tc3_00B (__INTTAB_CPU3 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_11 )); } > inttab3_mem
        .inttab_tc3_00C (__INTTAB_CPU3 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_12 )); } > inttab3_mem
        .inttab_tc3_00D (__INTTAB_CPU3 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_13 )); } > inttab3_mem
        .inttab_tc3_00E (__INTTAB_CPU3 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_14 )); } > inttab3_mem
        .inttab_tc3_00F (__INTTAB_CPU3 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_15 )); } > inttab3_mem
        .inttab_tc3_010 (__INTTAB_CPU3 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_16 )); } > inttab3_mem
        .inttab_tc3_011 (__INTTAB_CPU3 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_17 )); } > inttab3_mem
        .inttab_tc3_012 (__INTTAB_CPU3 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_18 )); } > inttab3_mem
        .inttab_tc3_013 (__INTTAB_CPU3 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_19 )); } > inttab3_mem
        .inttab_tc3_014 (__INTTAB_CPU3 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_20 )); } > inttab3_mem
        .inttab_tc3_015 (__INTTAB_CPU3 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_21 )); } > inttab3_mem
        .inttab_tc3_016 (__INTTAB_CPU3 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_22 )); } > inttab3_mem
        .inttab_tc3_017 (__INTTAB_CPU3 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_23 )); } > inttab3_mem
        .inttab_tc3_018 (__INTTAB_CPU3 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_24 )); } > inttab3_mem
        .inttab_tc3_019 (__INTTAB_CPU3 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_25 )); } > inttab3_mem
        .inttab_tc3_01A (__INTTAB_CPU3 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_26 )); } > inttab3_mem
        .inttab_tc3_01B (__INTTAB_CPU3 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_27 )); } > inttab3_mem
        .inttab_tc3_01C (__INTTAB_CPU3 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_28 )); } > inttab3_mem
        .inttab_tc3_01D (__INTTAB_CPU3 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_29 )); } > inttab3_mem
        .inttab_tc3_01E (__INTTAB_CPU3 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_30 )); } > inttab3_mem
        .inttab_tc3_01F (__INTTAB_CPU3 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_31 )); } > inttab3_mem
        .inttab_tc3_020 (__INTTAB_CPU3 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_32 )); } > inttab3_mem
        .inttab_tc3_021 (__INTTAB_CPU3 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_33 )); } > inttab3_mem
        .inttab_tc3_022 (__INTTAB_CPU3 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_34 )); } > inttab3_mem
        .inttab_tc3_023 (__INTTAB_CPU3 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_35 )); } > inttab3_mem
        .inttab_tc3_024 (__INTTAB_CPU3 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_36 )); } > inttab3_mem
        .inttab_tc3_025 (__INTTAB_CPU3 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_37 )); } > inttab3_mem
        .inttab_tc3_026 (__INTTAB_CPU3 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_38 )); } > inttab3_mem
        .inttab_tc3_027 (__INTTAB_CPU3 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_39 )); } > inttab3_mem
        .inttab_tc3_028 (__INTTAB_CPU3 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_40 )); } > inttab3_mem
        .inttab_tc3_029 (__INTTAB_CPU3 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_41 )); } > inttab3_mem
        .inttab_tc3_02A (__INTTAB_CPU3 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_42 )); } > inttab3_mem
        .inttab_tc3_02B (__INTTAB_CPU3 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_43 )); } > inttab3_mem
        .inttab_tc3_02C (__INTTAB_CPU3 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_44 )); } > inttab3_mem
        .inttab_tc3_02D (__INTTAB_CPU3 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_45 )); } > inttab3_mem
        .inttab_tc3_02E (__INTTAB_CPU3 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_46 )); } > inttab3_mem
        .inttab_tc3_02F (__INTTAB_CPU3 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_47 )); } > inttab3_mem
        .inttab_tc3_030 (__INTTAB_CPU3 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_48 )); } > inttab3_mem
        .inttab_tc3_031 (__INTTAB_CPU3 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_49 )); } > inttab3_mem
        .inttab_tc3_032 (__INTTAB_CPU3 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_50 )); } > inttab3_mem
        .inttab_tc3_033 (__INTTAB_CPU3 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_51 )); } > inttab3_mem
        .inttab_tc3_034 (__INTTAB_CPU3 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_52 )); } > inttab3_mem
        .inttab_tc3_035 (__INTTAB_CPU3 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_53 )); } > inttab3_mem
        .inttab_tc3_036 (__INTTAB_CPU3 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_54 )); } > inttab3_mem
        .inttab_tc3_037 (__INTTAB_CPU3 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_55 )); } > inttab3_mem
        .inttab_tc3_038 (__INTTAB_CPU3 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_56 )); } > inttab3_mem
        .inttab_tc3_039 (__INTTAB_CPU3 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_57 )); } > inttab3_mem
        .inttab_tc3_03A (__INTTAB_CPU3 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_58 )); } > inttab3_mem
        .inttab_tc3_03B (__INTTAB_CPU3 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_59 )); } > inttab3_mem
        .inttab_tc3_03C (__INTTAB_CPU3 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_60 )); } > inttab3_mem
        .inttab_tc3_03D (__INTTAB_CPU3 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_61 )); } > inttab3_mem
        .inttab_tc3_03E (__INTTAB_CPU3 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_62 )); } > inttab3_mem
        .inttab_tc3_03F (__INTTAB_CPU3 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_63 )); } > inttab3_mem
        .inttab_tc3_040 (__INTTAB_CPU3 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_64 )); } > inttab3_mem
        .inttab_tc3_041 (__INTTAB_CPU3 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_65 )); } > inttab3_mem
        .inttab_tc3_042 (__INTTAB_CPU3 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_66 )); } > inttab3_mem
        .inttab_tc3_043 (__INTTAB_CPU3 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_67 )); } > inttab3_mem
        .inttab_tc3_044 (__INTTAB_CPU3 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_68 )); } > inttab3_mem
        .inttab_tc3_045 (__INTTAB_CPU3 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_69 )); } > inttab3_mem
        .inttab_tc3_046 (__INTTAB_CPU3 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_70 )); } > inttab3_mem
        .inttab_tc3_047 (__INTTAB_CPU3 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_71 )); } > inttab3_mem
        .inttab_tc3_048 (__INTTAB_CPU3 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_72 )); } > inttab3_mem
        .inttab_tc3_049 (__INTTAB_CPU3 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_73 )); } > inttab3_mem
        .inttab_tc3_04A (__INTTAB_CPU3 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_74 )); } > inttab3_mem
        .inttab_tc3_04B (__INTTAB_CPU3 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_75 )); } > inttab3_mem
        .inttab_tc3_04C (__INTTAB_CPU3 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_76 )); } > inttab3_mem
        .inttab_tc3_04D (__INTTAB_CPU3 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_77 )); } > inttab3_mem
        .inttab_tc3_04E (__INTTAB_CPU3 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_78 )); } > inttab3_mem
        .inttab_tc3_04F (__INTTAB_CPU3 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_79 )); } > inttab3_mem
        .inttab_tc3_050 (__INTTAB_CPU3 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_80 )); } > inttab3_mem
        .inttab_tc3_051 (__INTTAB_CPU3 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_81 )); } > inttab3_mem
        .inttab_tc3_052 (__INTTAB_CPU3 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_82 )); } > inttab3_mem
        .inttab_tc3_053 (__INTTAB_CPU3 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_83 )); } > inttab3_mem
        .inttab_tc3_054 (__INTTAB_CPU3 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_84 )); } > inttab3_mem
        .inttab_tc3_055 (__INTTAB_CPU3 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_85 )); } > inttab3_mem
        .inttab_tc3_056 (__INTTAB_CPU3 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_86 )); } > inttab3_mem
        .inttab_tc3_057 (__INTTAB_CPU3 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_87 )); } > inttab3_mem
        .inttab_tc3_058 (__INTTAB_CPU3 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_88 )); } > inttab3_mem
        .inttab_tc3_059 (__INTTAB_CPU3 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_89 )); } > inttab3_mem
        .inttab_tc3_05A (__INTTAB_CPU3 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_90 )); } > inttab3_mem
        .inttab_tc3_05B (__INTTAB_CPU3 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_91 )); } > inttab3_mem
        .inttab_tc3_05C (__INTTAB_CPU3 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_92 )); } > inttab3_mem
        .inttab_tc3_05D (__INTTAB_CPU3 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_93 )); } > inttab3_mem
        .inttab_tc3_05E (__INTTAB_CPU3 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_94 )); } > inttab3_mem
        .inttab_tc3_05F (__INTTAB_CPU3 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_95 )); } > inttab3_mem
        .inttab_tc3_060 (__INTTAB_CPU3 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_96 )); } > inttab3_mem
        .inttab_tc3_061 (__INTTAB_CPU3 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_97 )); } > inttab3_mem
        .inttab_tc3_062 (__INTTAB_CPU3 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_98 )); } > inttab3_mem
        .inttab_tc3_063 (__INTTAB_CPU3 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_99 )); } > inttab3_mem
        .inttab_tc3_064 (__INTTAB_CPU3 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_100)); } > inttab3_mem
        .inttab_tc3_065 (__INTTAB_CPU3 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_101)); } > inttab3_mem
        .inttab_tc3_066 (__INTTAB_CPU3 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_102)); } > inttab3_mem
        .inttab_tc3_067 (__INTTAB_CPU3 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_103)); } > inttab3_mem
        .inttab_tc3_068 (__INTTAB_CPU3 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_104)); } > inttab3_mem
        .inttab_tc3_069 (__INTTAB_CPU3 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_105)); } > inttab3_mem
        .inttab_tc3_06A (__INTTAB_CPU3 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_106)); } > inttab3_mem
        .inttab_tc3_06B (__INTTAB_CPU3 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_107)); } > inttab3_mem
        .inttab_tc3_06C (__INTTAB_CPU3 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_108)); } > inttab3_mem
        .inttab_tc3_06D (__INTTAB_CPU3 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_109)); } > inttab3_mem
        .inttab_tc3_06E (__INTTAB_CPU3 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_110)); } > inttab3_mem
        .inttab_tc3_06F (__INTTAB_CPU3 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_111)); } > inttab3_mem
        .inttab_tc3_070 (__INTTAB_CPU3 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_112)); } > inttab3_mem
        .inttab_tc3_071 (__INTTAB_CPU3 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_113)); } > inttab3_mem
        .inttab_tc3_072 (__INTTAB_CPU3 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_114)); } > inttab3_mem
        .inttab_tc3_073 (__INTTAB_CPU3 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_115)); } > inttab3_mem
        .inttab_tc3_074 (__INTTAB_CPU3 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_116)); } > inttab3_mem
        .inttab_tc3_075 (__INTTAB_CPU3 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_117)); } > inttab3_mem
        .inttab_tc3_076 (__INTTAB_CPU3 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_118)); } > inttab3_mem
        .inttab_tc3_077 (__INTTAB_CPU3 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_119)); } > inttab3_mem
        .inttab_tc3_078 (__INTTAB_CPU3 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_120)); } > inttab3_mem
        .inttab_tc3_079 (__INTTAB_CPU3 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_121)); } > inttab3_mem
        .inttab_tc3_07A (__INTTAB_CPU3 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_122)); } > inttab3_mem
        .inttab_tc3_07B (__INTTAB_CPU3 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_123)); } > inttab3_mem
        .inttab_tc3_07C (__INTTAB_CPU3 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_124)); } > inttab3_mem
        .inttab_tc3_07D (__INTTAB_CPU3 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_125)); } > inttab3_mem
        .inttab_tc3_07E (__INTTAB_CPU3 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_126)); } > inttab3_mem
        .inttab_tc3_07F (__INTTAB_CPU3 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_127)); } > inttab3_mem
        .inttab_tc3_080 (__INTTAB_CPU3 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_128)); } > inttab3_mem
        .inttab_tc3_081 (__INTTAB_CPU3 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_129)); } > inttab3_mem
        .inttab_tc3_082 (__INTTAB_CPU3 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_130)); } > inttab3_mem
        .inttab_tc3_083 (__INTTAB_CPU3 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_131)); } > inttab3_mem
        .inttab_tc3_084 (__INTTAB_CPU3 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_132)); } > inttab3_mem
        .inttab_tc3_085 (__INTTAB_CPU3 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_133)); } > inttab3_mem
        .inttab_tc3_086 (__INTTAB_CPU3 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_134)); } > inttab3_mem
        .inttab_tc3_087 (__INTTAB_CPU3 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_135)); } > inttab3_mem
        .inttab_tc3_088 (__INTTAB_CPU3 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_136)); } > inttab3_mem
        .inttab_tc3_089 (__INTTAB_CPU3 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_137)); } > inttab3_mem
        .inttab_tc3_08A (__INTTAB_CPU3 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_138)); } > inttab3_mem
        .inttab_tc3_08B (__INTTAB_CPU3 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_139)); } > inttab3_mem
        .inttab_tc3_08C (__INTTAB_CPU3 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_140)); } > inttab3_mem
        .inttab_tc3_08D (__INTTAB_CPU3 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_141)); } > inttab3_mem
        .inttab_tc3_08E (__INTTAB_CPU3 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_142)); } > inttab3_mem
        .inttab_tc3_08F (__INTTAB_CPU3 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_143)); } > inttab3_mem
        .inttab_tc3_090 (__INTTAB_CPU3 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_144)); } > inttab3_mem
        .inttab_tc3_091 (__INTTAB_CPU3 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_145)); } > inttab3_mem
        .inttab_tc3_092 (__INTTAB_CPU3 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_146)); } > inttab3_mem
        .inttab_tc3_093 (__INTTAB_CPU3 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_147)); } > inttab3_mem
        .inttab_tc3_094 (__INTTAB_CPU3 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_148)); } > inttab3_mem
        .inttab_tc3_095 (__INTTAB_CPU3 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_149)); } > inttab3_mem
        .inttab_tc3_096 (__INTTAB_CPU3 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_150)); } > inttab3_mem
        .inttab_tc3_097 (__INTTAB_CPU3 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_151)); } > inttab3_mem
        .inttab_tc3_098 (__INTTAB_CPU3 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_152)); } > inttab3_mem
        .inttab_tc3_099 (__INTTAB_CPU3 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_153)); } > inttab3_mem
        .inttab_tc3_09A (__INTTAB_CPU3 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_154)); } > inttab3_mem
        .inttab_tc3_09B (__INTTAB_CPU3 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_155)); } > inttab3_mem
        .inttab_tc3_09C (__INTTAB_CPU3 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_156)); } > inttab3_mem
        .inttab_tc3_09D (__INTTAB_CPU3 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_157)); } > inttab3_mem
        .inttab_tc3_09E (__INTTAB_CPU3 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_158)); } > inttab3_mem
        .inttab_tc3_09F (__INTTAB_CPU3 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_159)); } > inttab3_mem
        .inttab_tc3_0A0 (__INTTAB_CPU3 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_160)); } > inttab3_mem
        .inttab_tc3_0A1 (__INTTAB_CPU3 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_161)); } > inttab3_mem
        .inttab_tc3_0A2 (__INTTAB_CPU3 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_162)); } > inttab3_mem
        .inttab_tc3_0A3 (__INTTAB_CPU3 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_163)); } > inttab3_mem
        .inttab_tc3_0A4 (__INTTAB_CPU3 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_164)); } > inttab3_mem
        .inttab_tc3_0A5 (__INTTAB_CPU3 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_165)); } > inttab3_mem
        .inttab_tc3_0A6 (__INTTAB_CPU3 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_166)); } > inttab3_mem
        .inttab_tc3_0A7 (__INTTAB_CPU3 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_167)); } > inttab3_mem
        .inttab_tc3_0A8 (__INTTAB_CPU3 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_168)); } > inttab3_mem
        .inttab_tc3_0A9 (__INTTAB_CPU3 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_169)); } > inttab3_mem
        .inttab_tc3_0AA (__INTTAB_CPU3 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_170)); } > inttab3_mem
        .inttab_tc3_0AB (__INTTAB_CPU3 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_171)); } > inttab3_mem
        .inttab_tc3_0AC (__INTTAB_CPU3 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_172)); } > inttab3_mem
        .inttab_tc3_0AD (__INTTAB_CPU3 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_173)); } > inttab3_mem
        .inttab_tc3_0AE (__INTTAB_CPU3 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_174)); } > inttab3_mem
        .inttab_tc3_0AF (__INTTAB_CPU3 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_175)); } > inttab3_mem
        .inttab_tc3_0B0 (__INTTAB_CPU3 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_176)); } > inttab3_mem
        .inttab_tc3_0B1 (__INTTAB_CPU3 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_177)); } > inttab3_mem
        .inttab_tc3_0B2 (__INTTAB_CPU3 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_178)); } > inttab3_mem
        .inttab_tc3_0B3 (__INTTAB_CPU3 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_179)); } > inttab3_mem
        .inttab_tc3_0B4 (__INTTAB_CPU3 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_180)); } > inttab3_mem
        .inttab_tc3_0B5 (__INTTAB_CPU3 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_181)); } > inttab3_mem
        .inttab_tc3_0B6 (__INTTAB_CPU3 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_182)); } > inttab3_mem
        .inttab_tc3_0B7 (__INTTAB_CPU3 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_183)); } > inttab3_mem
        .inttab_tc3_0B8 (__INTTAB_CPU3 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_184)); } > inttab3_mem
        .inttab_tc3_0B9 (__INTTAB_CPU3 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_185)); } > inttab3_mem
        .inttab_tc3_0BA (__INTTAB_CPU3 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_186)); } > inttab3_mem
        .inttab_tc3_0BB (__INTTAB_CPU3 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_187)); } > inttab3_mem
        .inttab_tc3_0BC (__INTTAB_CPU3 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_188)); } > inttab3_mem
        .inttab_tc3_0BD (__INTTAB_CPU3 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_189)); } > inttab3_mem
        .inttab_tc3_0BE (__INTTAB_CPU3 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_190)); } > inttab3_mem
        .inttab_tc3_0BF (__INTTAB_CPU3 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_191)); } > inttab3_mem
        .inttab_tc3_0C0 (__INTTAB_CPU3 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_192)); } > inttab3_mem
        .inttab_tc3_0C1 (__INTTAB_CPU3 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_193)); } > inttab3_mem
        .inttab_tc3_0C2 (__INTTAB_CPU3 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_194)); } > inttab3_mem
        .inttab_tc3_0C3 (__INTTAB_CPU3 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_195)); } > inttab3_mem
        .inttab_tc3_0C4 (__INTTAB_CPU3 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_196)); } > inttab3_mem
        .inttab_tc3_0C5 (__INTTAB_CPU3 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_197)); } > inttab3_mem
        .inttab_tc3_0C6 (__INTTAB_CPU3 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_198)); } > inttab3_mem
        .inttab_tc3_0C7 (__INTTAB_CPU3 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_199)); } > inttab3_mem
        .inttab_tc3_0C8 (__INTTAB_CPU3 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_200)); } > inttab3_mem
        .inttab_tc3_0C9 (__INTTAB_CPU3 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_201)); } > inttab3_mem
        .inttab_tc3_0CA (__INTTAB_CPU3 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_202)); } > inttab3_mem
        .inttab_tc3_0CB (__INTTAB_CPU3 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_203)); } > inttab3_mem
        .inttab_tc3_0CC (__INTTAB_CPU3 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_204)); } > inttab3_mem
        .inttab_tc3_0CD (__INTTAB_CPU3 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_205)); } > inttab3_mem
        .inttab_tc3_0CE (__INTTAB_CPU3 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_206)); } > inttab3_mem
        .inttab_tc3_0CF (__INTTAB_CPU3 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_207)); } > inttab3_mem
        .inttab_tc3_0D0 (__INTTAB_CPU3 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_208)); } > inttab3_mem
        .inttab_tc3_0D1 (__INTTAB_CPU3 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_209)); } > inttab3_mem
        .inttab_tc3_0D2 (__INTTAB_CPU3 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_210)); } > inttab3_mem
        .inttab_tc3_0D3 (__INTTAB_CPU3 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_211)); } > inttab3_mem
        .inttab_tc3_0D4 (__INTTAB_CPU3 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_212)); } > inttab3_mem
        .inttab_tc3_0D5 (__INTTAB_CPU3 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_213)); } > inttab3_mem
        .inttab_tc3_0D6 (__INTTAB_CPU3 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_214)); } > inttab3_mem
        .inttab_tc3_0D7 (__INTTAB_CPU3 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_215)); } > inttab3_mem
        .inttab_tc3_0D8 (__INTTAB_CPU3 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_216)); } > inttab3_mem
        .inttab_tc3_0D9 (__INTTAB_CPU3 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_217)); } > inttab3_mem
        .inttab_tc3_0DA (__INTTAB_CPU3 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_218)); } > inttab3_mem
        .inttab_tc3_0DB (__INTTAB_CPU3 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_219)); } > inttab3_mem
        .inttab_tc3_0DC (__INTTAB_CPU3 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_220)); } > inttab3_mem
        .inttab_tc3_0DD (__INTTAB_CPU3 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_221)); } > inttab3_mem
        .inttab_tc3_0DE (__INTTAB_CPU3 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_222)); } > inttab3_mem
        .inttab_tc3_0DF (__INTTAB_CPU3 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_223)); } > inttab3_mem
        .inttab_tc3_0E0 (__INTTAB_CPU3 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_224)); } > inttab3_mem
        .inttab_tc3_0E1 (__INTTAB_CPU3 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_225)); } > inttab3_mem
        .inttab_tc3_0E2 (__INTTAB_CPU3 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_226)); } > inttab3_mem
        .inttab_tc3_0E3 (__INTTAB_CPU3 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_227)); } > inttab3_mem
        .inttab_tc3_0E4 (__INTTAB_CPU3 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_228)); } > inttab3_mem
        .inttab_tc3_0E5 (__INTTAB_CPU3 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_229)); } > inttab3_mem
        .inttab_tc3_0E6 (__INTTAB_CPU3 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_230)); } > inttab3_mem
        .inttab_tc3_0E7 (__INTTAB_CPU3 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_231)); } > inttab3_mem
        .inttab_tc3_0E8 (__INTTAB_CPU3 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_232)); } > inttab3_mem
        .inttab_tc3_0E9 (__INTTAB_CPU3 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_233)); } > inttab3_mem
        .inttab_tc3_0EA (__INTTAB_CPU3 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_234)); } > inttab3_mem
        .inttab_tc3_0EB (__INTTAB_CPU3 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_235)); } > inttab3_mem
        .inttab_tc3_0EC (__INTTAB_CPU3 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_236)); } > inttab3_mem
        .inttab_tc3_0ED (__INTTAB_CPU3 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_237)); } > inttab3_mem
        .inttab_tc3_0EE (__INTTAB_CPU3 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_238)); } > inttab3_mem
        .inttab_tc3_0EF (__INTTAB_CPU3 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_239)); } > inttab3_mem
        .inttab_tc3_0F0 (__INTTAB_CPU3 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_240)); } > inttab3_mem
        .inttab_tc3_0F1 (__INTTAB_CPU3 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_241)); } > inttab3_mem
        .inttab_tc3_0F2 (__INTTAB_CPU3 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_242)); } > inttab3_mem
        .inttab_tc3_0F3 (__INTTAB_CPU3 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_243)); } > inttab3_mem
        .inttab_tc3_0F4 (__INTTAB_CPU3 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_244)); } > inttab3_mem
        .inttab_tc3_0F5 (__INTTAB_CPU3 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_245)); } > inttab3_mem
        .inttab_tc3_0F6 (__INTTAB_CPU3 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_246)); } > inttab3_mem
        .inttab_tc3_0F7 (__INTTAB_CPU3 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_247)); } > inttab3_mem
        .inttab_tc3_0F8 (__INTTAB_CPU3 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_248)); } > inttab3_mem
        .inttab_tc3_0F9 (__INTTAB_CPU3 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_249)); } > inttab3_mem
        .inttab_tc3_0FA (__INTTAB_CPU3 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_250)); } > inttab3_mem
        .inttab_tc3_0FB (__INTTAB_CPU3 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_251)); } > inttab3_mem
        .inttab_tc3_0FC (__INTTAB_CPU3 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_252)); } > inttab3_mem
        .inttab_tc3_0FD (__INTTAB_CPU3 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_253)); } > inttab3_mem
        .inttab_tc3_0FE (__INTTAB_CPU3 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_254)); } > inttab3_mem
        .inttab_tc3_0FF (__INTTAB_CPU3 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc3_255)); } > inttab3_mem
    }
    SECTIONS
    {
        /*CPU4 Interrupt Vector Table*/
        .inttab_tc4_000 (__INTTAB_CPU4 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_0  )); } > inttab4_mem
        .inttab_tc4_001 (__INTTAB_CPU4 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_1  )); } > inttab4_mem
        .inttab_tc4_002 (__INTTAB_CPU4 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_2  )); } > inttab4_mem
        .inttab_tc4_003 (__INTTAB_CPU4 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_3  )); } > inttab4_mem
        .inttab_tc4_004 (__INTTAB_CPU4 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_4  )); } > inttab4_mem
        .inttab_tc4_005 (__INTTAB_CPU4 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_5  )); } > inttab4_mem
        .inttab_tc4_006 (__INTTAB_CPU4 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_6  )); } > inttab4_mem
        .inttab_tc4_007 (__INTTAB_CPU4 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_7  )); } > inttab4_mem
        .inttab_tc4_008 (__INTTAB_CPU4 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_8  )); } > inttab4_mem
        .inttab_tc4_009 (__INTTAB_CPU4 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_9  )); } > inttab4_mem
        .inttab_tc4_00A (__INTTAB_CPU4 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_10 )); } > inttab4_mem
        .inttab_tc4_00B (__INTTAB_CPU4 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_11 )); } > inttab4_mem
        .inttab_tc4_00C (__INTTAB_CPU4 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_12 )); } > inttab4_mem
        .inttab_tc4_00D (__INTTAB_CPU4 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_13 )); } > inttab4_mem
        .inttab_tc4_00E (__INTTAB_CPU4 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_14 )); } > inttab4_mem
        .inttab_tc4_00F (__INTTAB_CPU4 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_15 )); } > inttab4_mem
        .inttab_tc4_010 (__INTTAB_CPU4 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_16 )); } > inttab4_mem
        .inttab_tc4_011 (__INTTAB_CPU4 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_17 )); } > inttab4_mem
        .inttab_tc4_012 (__INTTAB_CPU4 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_18 )); } > inttab4_mem
        .inttab_tc4_013 (__INTTAB_CPU4 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_19 )); } > inttab4_mem
        .inttab_tc4_014 (__INTTAB_CPU4 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_20 )); } > inttab4_mem
        .inttab_tc4_015 (__INTTAB_CPU4 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_21 )); } > inttab4_mem
        .inttab_tc4_016 (__INTTAB_CPU4 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_22 )); } > inttab4_mem
        .inttab_tc4_017 (__INTTAB_CPU4 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_23 )); } > inttab4_mem
        .inttab_tc4_018 (__INTTAB_CPU4 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_24 )); } > inttab4_mem
        .inttab_tc4_019 (__INTTAB_CPU4 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_25 )); } > inttab4_mem
        .inttab_tc4_01A (__INTTAB_CPU4 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_26 )); } > inttab4_mem
        .inttab_tc4_01B (__INTTAB_CPU4 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_27 )); } > inttab4_mem
        .inttab_tc4_01C (__INTTAB_CPU4 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_28 )); } > inttab4_mem
        .inttab_tc4_01D (__INTTAB_CPU4 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_29 )); } > inttab4_mem
        .inttab_tc4_01E (__INTTAB_CPU4 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_30 )); } > inttab4_mem
        .inttab_tc4_01F (__INTTAB_CPU4 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_31 )); } > inttab4_mem
        .inttab_tc4_020 (__INTTAB_CPU4 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_32 )); } > inttab4_mem
        .inttab_tc4_021 (__INTTAB_CPU4 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_33 )); } > inttab4_mem
        .inttab_tc4_022 (__INTTAB_CPU4 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_34 )); } > inttab4_mem
        .inttab_tc4_023 (__INTTAB_CPU4 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_35 )); } > inttab4_mem
        .inttab_tc4_024 (__INTTAB_CPU4 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_36 )); } > inttab4_mem
        .inttab_tc4_025 (__INTTAB_CPU4 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_37 )); } > inttab4_mem
        .inttab_tc4_026 (__INTTAB_CPU4 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_38 )); } > inttab4_mem
        .inttab_tc4_027 (__INTTAB_CPU4 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_39 )); } > inttab4_mem
        .inttab_tc4_028 (__INTTAB_CPU4 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_40 )); } > inttab4_mem
        .inttab_tc4_029 (__INTTAB_CPU4 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_41 )); } > inttab4_mem
        .inttab_tc4_02A (__INTTAB_CPU4 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_42 )); } > inttab4_mem
        .inttab_tc4_02B (__INTTAB_CPU4 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_43 )); } > inttab4_mem
        .inttab_tc4_02C (__INTTAB_CPU4 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_44 )); } > inttab4_mem
        .inttab_tc4_02D (__INTTAB_CPU4 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_45 )); } > inttab4_mem
        .inttab_tc4_02E (__INTTAB_CPU4 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_46 )); } > inttab4_mem
        .inttab_tc4_02F (__INTTAB_CPU4 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_47 )); } > inttab4_mem
        .inttab_tc4_030 (__INTTAB_CPU4 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_48 )); } > inttab4_mem
        .inttab_tc4_031 (__INTTAB_CPU4 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_49 )); } > inttab4_mem
        .inttab_tc4_032 (__INTTAB_CPU4 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_50 )); } > inttab4_mem
        .inttab_tc4_033 (__INTTAB_CPU4 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_51 )); } > inttab4_mem
        .inttab_tc4_034 (__INTTAB_CPU4 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_52 )); } > inttab4_mem
        .inttab_tc4_035 (__INTTAB_CPU4 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_53 )); } > inttab4_mem
        .inttab_tc4_036 (__INTTAB_CPU4 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_54 )); } > inttab4_mem
        .inttab_tc4_037 (__INTTAB_CPU4 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_55 )); } > inttab4_mem
        .inttab_tc4_038 (__INTTAB_CPU4 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_56 )); } > inttab4_mem
        .inttab_tc4_039 (__INTTAB_CPU4 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_57 )); } > inttab4_mem
        .inttab_tc4_03A (__INTTAB_CPU4 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_58 )); } > inttab4_mem
        .inttab_tc4_03B (__INTTAB_CPU4 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_59 )); } > inttab4_mem
        .inttab_tc4_03C (__INTTAB_CPU4 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_60 )); } > inttab4_mem
        .inttab_tc4_03D (__INTTAB_CPU4 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_61 )); } > inttab4_mem
        .inttab_tc4_03E (__INTTAB_CPU4 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_62 )); } > inttab4_mem
        .inttab_tc4_03F (__INTTAB_CPU4 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_63 )); } > inttab4_mem
        .inttab_tc4_040 (__INTTAB_CPU4 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_64 )); } > inttab4_mem
        .inttab_tc4_041 (__INTTAB_CPU4 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_65 )); } > inttab4_mem
        .inttab_tc4_042 (__INTTAB_CPU4 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_66 )); } > inttab4_mem
        .inttab_tc4_043 (__INTTAB_CPU4 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_67 )); } > inttab4_mem
        .inttab_tc4_044 (__INTTAB_CPU4 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_68 )); } > inttab4_mem
        .inttab_tc4_045 (__INTTAB_CPU4 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_69 )); } > inttab4_mem
        .inttab_tc4_046 (__INTTAB_CPU4 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_70 )); } > inttab4_mem
        .inttab_tc4_047 (__INTTAB_CPU4 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_71 )); } > inttab4_mem
        .inttab_tc4_048 (__INTTAB_CPU4 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_72 )); } > inttab4_mem
        .inttab_tc4_049 (__INTTAB_CPU4 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_73 )); } > inttab4_mem
        .inttab_tc4_04A (__INTTAB_CPU4 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_74 )); } > inttab4_mem
        .inttab_tc4_04B (__INTTAB_CPU4 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_75 )); } > inttab4_mem
        .inttab_tc4_04C (__INTTAB_CPU4 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_76 )); } > inttab4_mem
        .inttab_tc4_04D (__INTTAB_CPU4 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_77 )); } > inttab4_mem
        .inttab_tc4_04E (__INTTAB_CPU4 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_78 )); } > inttab4_mem
        .inttab_tc4_04F (__INTTAB_CPU4 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_79 )); } > inttab4_mem
        .inttab_tc4_050 (__INTTAB_CPU4 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_80 )); } > inttab4_mem
        .inttab_tc4_051 (__INTTAB_CPU4 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_81 )); } > inttab4_mem
        .inttab_tc4_052 (__INTTAB_CPU4 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_82 )); } > inttab4_mem
        .inttab_tc4_053 (__INTTAB_CPU4 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_83 )); } > inttab4_mem
        .inttab_tc4_054 (__INTTAB_CPU4 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_84 )); } > inttab4_mem
        .inttab_tc4_055 (__INTTAB_CPU4 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_85 )); } > inttab4_mem
        .inttab_tc4_056 (__INTTAB_CPU4 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_86 )); } > inttab4_mem
        .inttab_tc4_057 (__INTTAB_CPU4 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_87 )); } > inttab4_mem
        .inttab_tc4_058 (__INTTAB_CPU4 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_88 )); } > inttab4_mem
        .inttab_tc4_059 (__INTTAB_CPU4 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_89 )); } > inttab4_mem
        .inttab_tc4_05A (__INTTAB_CPU4 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_90 )); } > inttab4_mem
        .inttab_tc4_05B (__INTTAB_CPU4 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_91 )); } > inttab4_mem
        .inttab_tc4_05C (__INTTAB_CPU4 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_92 )); } > inttab4_mem
        .inttab_tc4_05D (__INTTAB_CPU4 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_93 )); } > inttab4_mem
        .inttab_tc4_05E (__INTTAB_CPU4 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_94 )); } > inttab4_mem
        .inttab_tc4_05F (__INTTAB_CPU4 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_95 )); } > inttab4_mem
        .inttab_tc4_060 (__INTTAB_CPU4 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_96 )); } > inttab4_mem
        .inttab_tc4_061 (__INTTAB_CPU4 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_97 )); } > inttab4_mem
        .inttab_tc4_062 (__INTTAB_CPU4 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_98 )); } > inttab4_mem
        .inttab_tc4_063 (__INTTAB_CPU4 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_99 )); } > inttab4_mem
        .inttab_tc4_064 (__INTTAB_CPU4 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_100)); } > inttab4_mem
        .inttab_tc4_065 (__INTTAB_CPU4 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_101)); } > inttab4_mem
        .inttab_tc4_066 (__INTTAB_CPU4 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_102)); } > inttab4_mem
        .inttab_tc4_067 (__INTTAB_CPU4 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_103)); } > inttab4_mem
        .inttab_tc4_068 (__INTTAB_CPU4 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_104)); } > inttab4_mem
        .inttab_tc4_069 (__INTTAB_CPU4 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_105)); } > inttab4_mem
        .inttab_tc4_06A (__INTTAB_CPU4 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_106)); } > inttab4_mem
        .inttab_tc4_06B (__INTTAB_CPU4 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_107)); } > inttab4_mem
        .inttab_tc4_06C (__INTTAB_CPU4 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_108)); } > inttab4_mem
        .inttab_tc4_06D (__INTTAB_CPU4 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_109)); } > inttab4_mem
        .inttab_tc4_06E (__INTTAB_CPU4 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_110)); } > inttab4_mem
        .inttab_tc4_06F (__INTTAB_CPU4 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_111)); } > inttab4_mem
        .inttab_tc4_070 (__INTTAB_CPU4 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_112)); } > inttab4_mem
        .inttab_tc4_071 (__INTTAB_CPU4 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_113)); } > inttab4_mem
        .inttab_tc4_072 (__INTTAB_CPU4 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_114)); } > inttab4_mem
        .inttab_tc4_073 (__INTTAB_CPU4 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_115)); } > inttab4_mem
        .inttab_tc4_074 (__INTTAB_CPU4 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_116)); } > inttab4_mem
        .inttab_tc4_075 (__INTTAB_CPU4 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_117)); } > inttab4_mem
        .inttab_tc4_076 (__INTTAB_CPU4 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_118)); } > inttab4_mem
        .inttab_tc4_077 (__INTTAB_CPU4 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_119)); } > inttab4_mem
        .inttab_tc4_078 (__INTTAB_CPU4 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_120)); } > inttab4_mem
        .inttab_tc4_079 (__INTTAB_CPU4 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_121)); } > inttab4_mem
        .inttab_tc4_07A (__INTTAB_CPU4 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_122)); } > inttab4_mem
        .inttab_tc4_07B (__INTTAB_CPU4 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_123)); } > inttab4_mem
        .inttab_tc4_07C (__INTTAB_CPU4 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_124)); } > inttab4_mem
        .inttab_tc4_07D (__INTTAB_CPU4 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_125)); } > inttab4_mem
        .inttab_tc4_07E (__INTTAB_CPU4 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_126)); } > inttab4_mem
        .inttab_tc4_07F (__INTTAB_CPU4 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_127)); } > inttab4_mem
        .inttab_tc4_080 (__INTTAB_CPU4 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_128)); } > inttab4_mem
        .inttab_tc4_081 (__INTTAB_CPU4 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_129)); } > inttab4_mem
        .inttab_tc4_082 (__INTTAB_CPU4 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_130)); } > inttab4_mem
        .inttab_tc4_083 (__INTTAB_CPU4 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_131)); } > inttab4_mem
        .inttab_tc4_084 (__INTTAB_CPU4 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_132)); } > inttab4_mem
        .inttab_tc4_085 (__INTTAB_CPU4 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_133)); } > inttab4_mem
        .inttab_tc4_086 (__INTTAB_CPU4 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_134)); } > inttab4_mem
        .inttab_tc4_087 (__INTTAB_CPU4 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_135)); } > inttab4_mem
        .inttab_tc4_088 (__INTTAB_CPU4 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_136)); } > inttab4_mem
        .inttab_tc4_089 (__INTTAB_CPU4 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_137)); } > inttab4_mem
        .inttab_tc4_08A (__INTTAB_CPU4 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_138)); } > inttab4_mem
        .inttab_tc4_08B (__INTTAB_CPU4 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_139)); } > inttab4_mem
        .inttab_tc4_08C (__INTTAB_CPU4 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_140)); } > inttab4_mem
        .inttab_tc4_08D (__INTTAB_CPU4 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_141)); } > inttab4_mem
        .inttab_tc4_08E (__INTTAB_CPU4 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_142)); } > inttab4_mem
        .inttab_tc4_08F (__INTTAB_CPU4 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_143)); } > inttab4_mem
        .inttab_tc4_090 (__INTTAB_CPU4 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_144)); } > inttab4_mem
        .inttab_tc4_091 (__INTTAB_CPU4 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_145)); } > inttab4_mem
        .inttab_tc4_092 (__INTTAB_CPU4 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_146)); } > inttab4_mem
        .inttab_tc4_093 (__INTTAB_CPU4 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_147)); } > inttab4_mem
        .inttab_tc4_094 (__INTTAB_CPU4 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_148)); } > inttab4_mem
        .inttab_tc4_095 (__INTTAB_CPU4 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_149)); } > inttab4_mem
        .inttab_tc4_096 (__INTTAB_CPU4 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_150)); } > inttab4_mem
        .inttab_tc4_097 (__INTTAB_CPU4 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_151)); } > inttab4_mem
        .inttab_tc4_098 (__INTTAB_CPU4 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_152)); } > inttab4_mem
        .inttab_tc4_099 (__INTTAB_CPU4 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_153)); } > inttab4_mem
        .inttab_tc4_09A (__INTTAB_CPU4 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_154)); } > inttab4_mem
        .inttab_tc4_09B (__INTTAB_CPU4 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_155)); } > inttab4_mem
        .inttab_tc4_09C (__INTTAB_CPU4 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_156)); } > inttab4_mem
        .inttab_tc4_09D (__INTTAB_CPU4 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_157)); } > inttab4_mem
        .inttab_tc4_09E (__INTTAB_CPU4 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_158)); } > inttab4_mem
        .inttab_tc4_09F (__INTTAB_CPU4 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_159)); } > inttab4_mem
        .inttab_tc4_0A0 (__INTTAB_CPU4 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_160)); } > inttab4_mem
        .inttab_tc4_0A1 (__INTTAB_CPU4 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_161)); } > inttab4_mem
        .inttab_tc4_0A2 (__INTTAB_CPU4 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_162)); } > inttab4_mem
        .inttab_tc4_0A3 (__INTTAB_CPU4 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_163)); } > inttab4_mem
        .inttab_tc4_0A4 (__INTTAB_CPU4 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_164)); } > inttab4_mem
        .inttab_tc4_0A5 (__INTTAB_CPU4 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_165)); } > inttab4_mem
        .inttab_tc4_0A6 (__INTTAB_CPU4 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_166)); } > inttab4_mem
        .inttab_tc4_0A7 (__INTTAB_CPU4 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_167)); } > inttab4_mem
        .inttab_tc4_0A8 (__INTTAB_CPU4 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_168)); } > inttab4_mem
        .inttab_tc4_0A9 (__INTTAB_CPU4 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_169)); } > inttab4_mem
        .inttab_tc4_0AA (__INTTAB_CPU4 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_170)); } > inttab4_mem
        .inttab_tc4_0AB (__INTTAB_CPU4 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_171)); } > inttab4_mem
        .inttab_tc4_0AC (__INTTAB_CPU4 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_172)); } > inttab4_mem
        .inttab_tc4_0AD (__INTTAB_CPU4 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_173)); } > inttab4_mem
        .inttab_tc4_0AE (__INTTAB_CPU4 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_174)); } > inttab4_mem
        .inttab_tc4_0AF (__INTTAB_CPU4 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_175)); } > inttab4_mem
        .inttab_tc4_0B0 (__INTTAB_CPU4 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_176)); } > inttab4_mem
        .inttab_tc4_0B1 (__INTTAB_CPU4 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_177)); } > inttab4_mem
        .inttab_tc4_0B2 (__INTTAB_CPU4 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_178)); } > inttab4_mem
        .inttab_tc4_0B3 (__INTTAB_CPU4 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_179)); } > inttab4_mem
        .inttab_tc4_0B4 (__INTTAB_CPU4 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_180)); } > inttab4_mem
        .inttab_tc4_0B5 (__INTTAB_CPU4 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_181)); } > inttab4_mem
        .inttab_tc4_0B6 (__INTTAB_CPU4 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_182)); } > inttab4_mem
        .inttab_tc4_0B7 (__INTTAB_CPU4 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_183)); } > inttab4_mem
        .inttab_tc4_0B8 (__INTTAB_CPU4 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_184)); } > inttab4_mem
        .inttab_tc4_0B9 (__INTTAB_CPU4 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_185)); } > inttab4_mem
        .inttab_tc4_0BA (__INTTAB_CPU4 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_186)); } > inttab4_mem
        .inttab_tc4_0BB (__INTTAB_CPU4 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_187)); } > inttab4_mem
        .inttab_tc4_0BC (__INTTAB_CPU4 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_188)); } > inttab4_mem
        .inttab_tc4_0BD (__INTTAB_CPU4 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_189)); } > inttab4_mem
        .inttab_tc4_0BE (__INTTAB_CPU4 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_190)); } > inttab4_mem
        .inttab_tc4_0BF (__INTTAB_CPU4 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_191)); } > inttab4_mem
        .inttab_tc4_0C0 (__INTTAB_CPU4 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_192)); } > inttab4_mem
        .inttab_tc4_0C1 (__INTTAB_CPU4 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_193)); } > inttab4_mem
        .inttab_tc4_0C2 (__INTTAB_CPU4 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_194)); } > inttab4_mem
        .inttab_tc4_0C3 (__INTTAB_CPU4 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_195)); } > inttab4_mem
        .inttab_tc4_0C4 (__INTTAB_CPU4 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_196)); } > inttab4_mem
        .inttab_tc4_0C5 (__INTTAB_CPU4 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_197)); } > inttab4_mem
        .inttab_tc4_0C6 (__INTTAB_CPU4 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_198)); } > inttab4_mem
        .inttab_tc4_0C7 (__INTTAB_CPU4 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_199)); } > inttab4_mem
        .inttab_tc4_0C8 (__INTTAB_CPU4 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_200)); } > inttab4_mem
        .inttab_tc4_0C9 (__INTTAB_CPU4 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_201)); } > inttab4_mem
        .inttab_tc4_0CA (__INTTAB_CPU4 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_202)); } > inttab4_mem
        .inttab_tc4_0CB (__INTTAB_CPU4 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_203)); } > inttab4_mem
        .inttab_tc4_0CC (__INTTAB_CPU4 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_204)); } > inttab4_mem
        .inttab_tc4_0CD (__INTTAB_CPU4 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_205)); } > inttab4_mem
        .inttab_tc4_0CE (__INTTAB_CPU4 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_206)); } > inttab4_mem
        .inttab_tc4_0CF (__INTTAB_CPU4 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_207)); } > inttab4_mem
        .inttab_tc4_0D0 (__INTTAB_CPU4 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_208)); } > inttab4_mem
        .inttab_tc4_0D1 (__INTTAB_CPU4 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_209)); } > inttab4_mem
        .inttab_tc4_0D2 (__INTTAB_CPU4 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_210)); } > inttab4_mem
        .inttab_tc4_0D3 (__INTTAB_CPU4 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_211)); } > inttab4_mem
        .inttab_tc4_0D4 (__INTTAB_CPU4 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_212)); } > inttab4_mem
        .inttab_tc4_0D5 (__INTTAB_CPU4 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_213)); } > inttab4_mem
        .inttab_tc4_0D6 (__INTTAB_CPU4 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_214)); } > inttab4_mem
        .inttab_tc4_0D7 (__INTTAB_CPU4 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_215)); } > inttab4_mem
        .inttab_tc4_0D8 (__INTTAB_CPU4 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_216)); } > inttab4_mem
        .inttab_tc4_0D9 (__INTTAB_CPU4 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_217)); } > inttab4_mem
        .inttab_tc4_0DA (__INTTAB_CPU4 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_218)); } > inttab4_mem
        .inttab_tc4_0DB (__INTTAB_CPU4 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_219)); } > inttab4_mem
        .inttab_tc4_0DC (__INTTAB_CPU4 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_220)); } > inttab4_mem
        .inttab_tc4_0DD (__INTTAB_CPU4 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_221)); } > inttab4_mem
        .inttab_tc4_0DE (__INTTAB_CPU4 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_222)); } > inttab4_mem
        .inttab_tc4_0DF (__INTTAB_CPU4 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_223)); } > inttab4_mem
        .inttab_tc4_0E0 (__INTTAB_CPU4 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_224)); } > inttab4_mem
        .inttab_tc4_0E1 (__INTTAB_CPU4 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_225)); } > inttab4_mem
        .inttab_tc4_0E2 (__INTTAB_CPU4 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_226)); } > inttab4_mem
        .inttab_tc4_0E3 (__INTTAB_CPU4 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_227)); } > inttab4_mem
        .inttab_tc4_0E4 (__INTTAB_CPU4 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_228)); } > inttab4_mem
        .inttab_tc4_0E5 (__INTTAB_CPU4 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_229)); } > inttab4_mem
        .inttab_tc4_0E6 (__INTTAB_CPU4 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_230)); } > inttab4_mem
        .inttab_tc4_0E7 (__INTTAB_CPU4 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_231)); } > inttab4_mem
        .inttab_tc4_0E8 (__INTTAB_CPU4 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_232)); } > inttab4_mem
        .inttab_tc4_0E9 (__INTTAB_CPU4 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_233)); } > inttab4_mem
        .inttab_tc4_0EA (__INTTAB_CPU4 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_234)); } > inttab4_mem
        .inttab_tc4_0EB (__INTTAB_CPU4 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_235)); } > inttab4_mem
        .inttab_tc4_0EC (__INTTAB_CPU4 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_236)); } > inttab4_mem
        .inttab_tc4_0ED (__INTTAB_CPU4 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_237)); } > inttab4_mem
        .inttab_tc4_0EE (__INTTAB_CPU4 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_238)); } > inttab4_mem
        .inttab_tc4_0EF (__INTTAB_CPU4 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_239)); } > inttab4_mem
        .inttab_tc4_0F0 (__INTTAB_CPU4 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_240)); } > inttab4_mem
        .inttab_tc4_0F1 (__INTTAB_CPU4 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_241)); } > inttab4_mem
        .inttab_tc4_0F2 (__INTTAB_CPU4 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_242)); } > inttab4_mem
        .inttab_tc4_0F3 (__INTTAB_CPU4 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_243)); } > inttab4_mem
        .inttab_tc4_0F4 (__INTTAB_CPU4 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_244)); } > inttab4_mem
        .inttab_tc4_0F5 (__INTTAB_CPU4 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_245)); } > inttab4_mem
        .inttab_tc4_0F6 (__INTTAB_CPU4 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_246)); } > inttab4_mem
        .inttab_tc4_0F7 (__INTTAB_CPU4 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_247)); } > inttab4_mem
        .inttab_tc4_0F8 (__INTTAB_CPU4 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_248)); } > inttab4_mem
        .inttab_tc4_0F9 (__INTTAB_CPU4 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_249)); } > inttab4_mem
        .inttab_tc4_0FA (__INTTAB_CPU4 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_250)); } > inttab4_mem
        .inttab_tc4_0FB (__INTTAB_CPU4 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_251)); } > inttab4_mem
        .inttab_tc4_0FC (__INTTAB_CPU4 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_252)); } > inttab4_mem
        .inttab_tc4_0FD (__INTTAB_CPU4 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_253)); } > inttab4_mem
        .inttab_tc4_0FE (__INTTAB_CPU4 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_254)); } > inttab4_mem
        .inttab_tc4_0FF (__INTTAB_CPU4 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc4_255)); } > inttab4_mem
    }
    SECTIONS
    {
        /*CPU5 Interrupt Vector Table*/
        .inttab_tc5_000 (__INTTAB_CPU5 + 0x0000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_0  )); } > inttab5_mem
        .inttab_tc5_001 (__INTTAB_CPU5 + 0x0020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_1  )); } > inttab5_mem
        .inttab_tc5_002 (__INTTAB_CPU5 + 0x0040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_2  )); } > inttab5_mem
        .inttab_tc5_003 (__INTTAB_CPU5 + 0x0060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_3  )); } > inttab5_mem
        .inttab_tc5_004 (__INTTAB_CPU5 + 0x0080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_4  )); } > inttab5_mem
        .inttab_tc5_005 (__INTTAB_CPU5 + 0x00A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_5  )); } > inttab5_mem
        .inttab_tc5_006 (__INTTAB_CPU5 + 0x00C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_6  )); } > inttab5_mem
        .inttab_tc5_007 (__INTTAB_CPU5 + 0x00E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_7  )); } > inttab5_mem
        .inttab_tc5_008 (__INTTAB_CPU5 + 0x0100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_8  )); } > inttab5_mem
        .inttab_tc5_009 (__INTTAB_CPU5 + 0x0120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_9  )); } > inttab5_mem
        .inttab_tc5_00A (__INTTAB_CPU5 + 0x0140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_10 )); } > inttab5_mem
        .inttab_tc5_00B (__INTTAB_CPU5 + 0x0160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_11 )); } > inttab5_mem
        .inttab_tc5_00C (__INTTAB_CPU5 + 0x0180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_12 )); } > inttab5_mem
        .inttab_tc5_00D (__INTTAB_CPU5 + 0x01A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_13 )); } > inttab5_mem
        .inttab_tc5_00E (__INTTAB_CPU5 + 0x01C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_14 )); } > inttab5_mem
        .inttab_tc5_00F (__INTTAB_CPU5 + 0x01E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_15 )); } > inttab5_mem
        .inttab_tc5_010 (__INTTAB_CPU5 + 0x0200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_16 )); } > inttab5_mem
        .inttab_tc5_011 (__INTTAB_CPU5 + 0x0220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_17 )); } > inttab5_mem
        .inttab_tc5_012 (__INTTAB_CPU5 + 0x0240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_18 )); } > inttab5_mem
        .inttab_tc5_013 (__INTTAB_CPU5 + 0x0260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_19 )); } > inttab5_mem
        .inttab_tc5_014 (__INTTAB_CPU5 + 0x0280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_20 )); } > inttab5_mem
        .inttab_tc5_015 (__INTTAB_CPU5 + 0x02A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_21 )); } > inttab5_mem
        .inttab_tc5_016 (__INTTAB_CPU5 + 0x02C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_22 )); } > inttab5_mem
        .inttab_tc5_017 (__INTTAB_CPU5 + 0x02E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_23 )); } > inttab5_mem
        .inttab_tc5_018 (__INTTAB_CPU5 + 0x0300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_24 )); } > inttab5_mem
        .inttab_tc5_019 (__INTTAB_CPU5 + 0x0320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_25 )); } > inttab5_mem
        .inttab_tc5_01A (__INTTAB_CPU5 + 0x0340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_26 )); } > inttab5_mem
        .inttab_tc5_01B (__INTTAB_CPU5 + 0x0360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_27 )); } > inttab5_mem
        .inttab_tc5_01C (__INTTAB_CPU5 + 0x0380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_28 )); } > inttab5_mem
        .inttab_tc5_01D (__INTTAB_CPU5 + 0x03A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_29 )); } > inttab5_mem
        .inttab_tc5_01E (__INTTAB_CPU5 + 0x03C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_30 )); } > inttab5_mem
        .inttab_tc5_01F (__INTTAB_CPU5 + 0x03E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_31 )); } > inttab5_mem
        .inttab_tc5_020 (__INTTAB_CPU5 + 0x0400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_32 )); } > inttab5_mem
        .inttab_tc5_021 (__INTTAB_CPU5 + 0x0420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_33 )); } > inttab5_mem
        .inttab_tc5_022 (__INTTAB_CPU5 + 0x0440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_34 )); } > inttab5_mem
        .inttab_tc5_023 (__INTTAB_CPU5 + 0x0460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_35 )); } > inttab5_mem
        .inttab_tc5_024 (__INTTAB_CPU5 + 0x0480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_36 )); } > inttab5_mem
        .inttab_tc5_025 (__INTTAB_CPU5 + 0x04A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_37 )); } > inttab5_mem
        .inttab_tc5_026 (__INTTAB_CPU5 + 0x04C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_38 )); } > inttab5_mem
        .inttab_tc5_027 (__INTTAB_CPU5 + 0x04E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_39 )); } > inttab5_mem
        .inttab_tc5_028 (__INTTAB_CPU5 + 0x0500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_40 )); } > inttab5_mem
        .inttab_tc5_029 (__INTTAB_CPU5 + 0x0520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_41 )); } > inttab5_mem
        .inttab_tc5_02A (__INTTAB_CPU5 + 0x0540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_42 )); } > inttab5_mem
        .inttab_tc5_02B (__INTTAB_CPU5 + 0x0560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_43 )); } > inttab5_mem
        .inttab_tc5_02C (__INTTAB_CPU5 + 0x0580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_44 )); } > inttab5_mem
        .inttab_tc5_02D (__INTTAB_CPU5 + 0x05A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_45 )); } > inttab5_mem
        .inttab_tc5_02E (__INTTAB_CPU5 + 0x05C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_46 )); } > inttab5_mem
        .inttab_tc5_02F (__INTTAB_CPU5 + 0x05E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_47 )); } > inttab5_mem
        .inttab_tc5_030 (__INTTAB_CPU5 + 0x0600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_48 )); } > inttab5_mem
        .inttab_tc5_031 (__INTTAB_CPU5 + 0x0620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_49 )); } > inttab5_mem
        .inttab_tc5_032 (__INTTAB_CPU5 + 0x0640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_50 )); } > inttab5_mem
        .inttab_tc5_033 (__INTTAB_CPU5 + 0x0660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_51 )); } > inttab5_mem
        .inttab_tc5_034 (__INTTAB_CPU5 + 0x0680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_52 )); } > inttab5_mem
        .inttab_tc5_035 (__INTTAB_CPU5 + 0x06A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_53 )); } > inttab5_mem
        .inttab_tc5_036 (__INTTAB_CPU5 + 0x06C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_54 )); } > inttab5_mem
        .inttab_tc5_037 (__INTTAB_CPU5 + 0x06E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_55 )); } > inttab5_mem
        .inttab_tc5_038 (__INTTAB_CPU5 + 0x0700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_56 )); } > inttab5_mem
        .inttab_tc5_039 (__INTTAB_CPU5 + 0x0720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_57 )); } > inttab5_mem
        .inttab_tc5_03A (__INTTAB_CPU5 + 0x0740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_58 )); } > inttab5_mem
        .inttab_tc5_03B (__INTTAB_CPU5 + 0x0760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_59 )); } > inttab5_mem
        .inttab_tc5_03C (__INTTAB_CPU5 + 0x0780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_60 )); } > inttab5_mem
        .inttab_tc5_03D (__INTTAB_CPU5 + 0x07A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_61 )); } > inttab5_mem
        .inttab_tc5_03E (__INTTAB_CPU5 + 0x07C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_62 )); } > inttab5_mem
        .inttab_tc5_03F (__INTTAB_CPU5 + 0x07E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_63 )); } > inttab5_mem
        .inttab_tc5_040 (__INTTAB_CPU5 + 0x0800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_64 )); } > inttab5_mem
        .inttab_tc5_041 (__INTTAB_CPU5 + 0x0820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_65 )); } > inttab5_mem
        .inttab_tc5_042 (__INTTAB_CPU5 + 0x0840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_66 )); } > inttab5_mem
        .inttab_tc5_043 (__INTTAB_CPU5 + 0x0860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_67 )); } > inttab5_mem
        .inttab_tc5_044 (__INTTAB_CPU5 + 0x0880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_68 )); } > inttab5_mem
        .inttab_tc5_045 (__INTTAB_CPU5 + 0x08A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_69 )); } > inttab5_mem
        .inttab_tc5_046 (__INTTAB_CPU5 + 0x08C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_70 )); } > inttab5_mem
        .inttab_tc5_047 (__INTTAB_CPU5 + 0x08E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_71 )); } > inttab5_mem
        .inttab_tc5_048 (__INTTAB_CPU5 + 0x0900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_72 )); } > inttab5_mem
        .inttab_tc5_049 (__INTTAB_CPU5 + 0x0920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_73 )); } > inttab5_mem
        .inttab_tc5_04A (__INTTAB_CPU5 + 0x0940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_74 )); } > inttab5_mem
        .inttab_tc5_04B (__INTTAB_CPU5 + 0x0960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_75 )); } > inttab5_mem
        .inttab_tc5_04C (__INTTAB_CPU5 + 0x0980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_76 )); } > inttab5_mem
        .inttab_tc5_04D (__INTTAB_CPU5 + 0x09A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_77 )); } > inttab5_mem
        .inttab_tc5_04E (__INTTAB_CPU5 + 0x09C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_78 )); } > inttab5_mem
        .inttab_tc5_04F (__INTTAB_CPU5 + 0x09E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_79 )); } > inttab5_mem
        .inttab_tc5_050 (__INTTAB_CPU5 + 0x0A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_80 )); } > inttab5_mem
        .inttab_tc5_051 (__INTTAB_CPU5 + 0x0A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_81 )); } > inttab5_mem
        .inttab_tc5_052 (__INTTAB_CPU5 + 0x0A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_82 )); } > inttab5_mem
        .inttab_tc5_053 (__INTTAB_CPU5 + 0x0A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_83 )); } > inttab5_mem
        .inttab_tc5_054 (__INTTAB_CPU5 + 0x0A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_84 )); } > inttab5_mem
        .inttab_tc5_055 (__INTTAB_CPU5 + 0x0AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_85 )); } > inttab5_mem
        .inttab_tc5_056 (__INTTAB_CPU5 + 0x0AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_86 )); } > inttab5_mem
        .inttab_tc5_057 (__INTTAB_CPU5 + 0x0AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_87 )); } > inttab5_mem
        .inttab_tc5_058 (__INTTAB_CPU5 + 0x0B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_88 )); } > inttab5_mem
        .inttab_tc5_059 (__INTTAB_CPU5 + 0x0B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_89 )); } > inttab5_mem
        .inttab_tc5_05A (__INTTAB_CPU5 + 0x0B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_90 )); } > inttab5_mem
        .inttab_tc5_05B (__INTTAB_CPU5 + 0x0B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_91 )); } > inttab5_mem
        .inttab_tc5_05C (__INTTAB_CPU5 + 0x0B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_92 )); } > inttab5_mem
        .inttab_tc5_05D (__INTTAB_CPU5 + 0x0BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_93 )); } > inttab5_mem
        .inttab_tc5_05E (__INTTAB_CPU5 + 0x0BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_94 )); } > inttab5_mem
        .inttab_tc5_05F (__INTTAB_CPU5 + 0x0BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_95 )); } > inttab5_mem
        .inttab_tc5_060 (__INTTAB_CPU5 + 0x0C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_96 )); } > inttab5_mem
        .inttab_tc5_061 (__INTTAB_CPU5 + 0x0C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_97 )); } > inttab5_mem
        .inttab_tc5_062 (__INTTAB_CPU5 + 0x0C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_98 )); } > inttab5_mem
        .inttab_tc5_063 (__INTTAB_CPU5 + 0x0C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_99 )); } > inttab5_mem
        .inttab_tc5_064 (__INTTAB_CPU5 + 0x0C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_100)); } > inttab5_mem
        .inttab_tc5_065 (__INTTAB_CPU5 + 0x0CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_101)); } > inttab5_mem
        .inttab_tc5_066 (__INTTAB_CPU5 + 0x0CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_102)); } > inttab5_mem
        .inttab_tc5_067 (__INTTAB_CPU5 + 0x0CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_103)); } > inttab5_mem
        .inttab_tc5_068 (__INTTAB_CPU5 + 0x0D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_104)); } > inttab5_mem
        .inttab_tc5_069 (__INTTAB_CPU5 + 0x0D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_105)); } > inttab5_mem
        .inttab_tc5_06A (__INTTAB_CPU5 + 0x0D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_106)); } > inttab5_mem
        .inttab_tc5_06B (__INTTAB_CPU5 + 0x0D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_107)); } > inttab5_mem
        .inttab_tc5_06C (__INTTAB_CPU5 + 0x0D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_108)); } > inttab5_mem
        .inttab_tc5_06D (__INTTAB_CPU5 + 0x0DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_109)); } > inttab5_mem
        .inttab_tc5_06E (__INTTAB_CPU5 + 0x0DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_110)); } > inttab5_mem
        .inttab_tc5_06F (__INTTAB_CPU5 + 0x0DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_111)); } > inttab5_mem
        .inttab_tc5_070 (__INTTAB_CPU5 + 0x0E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_112)); } > inttab5_mem
        .inttab_tc5_071 (__INTTAB_CPU5 + 0x0E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_113)); } > inttab5_mem
        .inttab_tc5_072 (__INTTAB_CPU5 + 0x0E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_114)); } > inttab5_mem
        .inttab_tc5_073 (__INTTAB_CPU5 + 0x0E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_115)); } > inttab5_mem
        .inttab_tc5_074 (__INTTAB_CPU5 + 0x0E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_116)); } > inttab5_mem
        .inttab_tc5_075 (__INTTAB_CPU5 + 0x0EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_117)); } > inttab5_mem
        .inttab_tc5_076 (__INTTAB_CPU5 + 0x0EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_118)); } > inttab5_mem
        .inttab_tc5_077 (__INTTAB_CPU5 + 0x0EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_119)); } > inttab5_mem
        .inttab_tc5_078 (__INTTAB_CPU5 + 0x0F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_120)); } > inttab5_mem
        .inttab_tc5_079 (__INTTAB_CPU5 + 0x0F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_121)); } > inttab5_mem
        .inttab_tc5_07A (__INTTAB_CPU5 + 0x0F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_122)); } > inttab5_mem
        .inttab_tc5_07B (__INTTAB_CPU5 + 0x0F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_123)); } > inttab5_mem
        .inttab_tc5_07C (__INTTAB_CPU5 + 0x0F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_124)); } > inttab5_mem
        .inttab_tc5_07D (__INTTAB_CPU5 + 0x0FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_125)); } > inttab5_mem
        .inttab_tc5_07E (__INTTAB_CPU5 + 0x0FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_126)); } > inttab5_mem
        .inttab_tc5_07F (__INTTAB_CPU5 + 0x0FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_127)); } > inttab5_mem
        .inttab_tc5_080 (__INTTAB_CPU5 + 0x1000) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_128)); } > inttab5_mem
        .inttab_tc5_081 (__INTTAB_CPU5 + 0x1020) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_129)); } > inttab5_mem
        .inttab_tc5_082 (__INTTAB_CPU5 + 0x1040) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_130)); } > inttab5_mem
        .inttab_tc5_083 (__INTTAB_CPU5 + 0x1060) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_131)); } > inttab5_mem
        .inttab_tc5_084 (__INTTAB_CPU5 + 0x1080) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_132)); } > inttab5_mem
        .inttab_tc5_085 (__INTTAB_CPU5 + 0x10A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_133)); } > inttab5_mem
        .inttab_tc5_086 (__INTTAB_CPU5 + 0x10C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_134)); } > inttab5_mem
        .inttab_tc5_087 (__INTTAB_CPU5 + 0x10E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_135)); } > inttab5_mem
        .inttab_tc5_088 (__INTTAB_CPU5 + 0x1100) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_136)); } > inttab5_mem
        .inttab_tc5_089 (__INTTAB_CPU5 + 0x1120) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_137)); } > inttab5_mem
        .inttab_tc5_08A (__INTTAB_CPU5 + 0x1140) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_138)); } > inttab5_mem
        .inttab_tc5_08B (__INTTAB_CPU5 + 0x1160) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_139)); } > inttab5_mem
        .inttab_tc5_08C (__INTTAB_CPU5 + 0x1180) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_140)); } > inttab5_mem
        .inttab_tc5_08D (__INTTAB_CPU5 + 0x11A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_141)); } > inttab5_mem
        .inttab_tc5_08E (__INTTAB_CPU5 + 0x11C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_142)); } > inttab5_mem
        .inttab_tc5_08F (__INTTAB_CPU5 + 0x11E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_143)); } > inttab5_mem
        .inttab_tc5_090 (__INTTAB_CPU5 + 0x1200) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_144)); } > inttab5_mem
        .inttab_tc5_091 (__INTTAB_CPU5 + 0x1220) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_145)); } > inttab5_mem
        .inttab_tc5_092 (__INTTAB_CPU5 + 0x1240) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_146)); } > inttab5_mem
        .inttab_tc5_093 (__INTTAB_CPU5 + 0x1260) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_147)); } > inttab5_mem
        .inttab_tc5_094 (__INTTAB_CPU5 + 0x1280) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_148)); } > inttab5_mem
        .inttab_tc5_095 (__INTTAB_CPU5 + 0x12A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_149)); } > inttab5_mem
        .inttab_tc5_096 (__INTTAB_CPU5 + 0x12C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_150)); } > inttab5_mem
        .inttab_tc5_097 (__INTTAB_CPU5 + 0x12E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_151)); } > inttab5_mem
        .inttab_tc5_098 (__INTTAB_CPU5 + 0x1300) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_152)); } > inttab5_mem
        .inttab_tc5_099 (__INTTAB_CPU5 + 0x1320) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_153)); } > inttab5_mem
        .inttab_tc5_09A (__INTTAB_CPU5 + 0x1340) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_154)); } > inttab5_mem
        .inttab_tc5_09B (__INTTAB_CPU5 + 0x1360) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_155)); } > inttab5_mem
        .inttab_tc5_09C (__INTTAB_CPU5 + 0x1380) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_156)); } > inttab5_mem
        .inttab_tc5_09D (__INTTAB_CPU5 + 0x13A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_157)); } > inttab5_mem
        .inttab_tc5_09E (__INTTAB_CPU5 + 0x13C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_158)); } > inttab5_mem
        .inttab_tc5_09F (__INTTAB_CPU5 + 0x13E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_159)); } > inttab5_mem
        .inttab_tc5_0A0 (__INTTAB_CPU5 + 0x1400) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_160)); } > inttab5_mem
        .inttab_tc5_0A1 (__INTTAB_CPU5 + 0x1420) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_161)); } > inttab5_mem
        .inttab_tc5_0A2 (__INTTAB_CPU5 + 0x1440) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_162)); } > inttab5_mem
        .inttab_tc5_0A3 (__INTTAB_CPU5 + 0x1460) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_163)); } > inttab5_mem
        .inttab_tc5_0A4 (__INTTAB_CPU5 + 0x1480) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_164)); } > inttab5_mem
        .inttab_tc5_0A5 (__INTTAB_CPU5 + 0x14A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_165)); } > inttab5_mem
        .inttab_tc5_0A6 (__INTTAB_CPU5 + 0x14C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_166)); } > inttab5_mem
        .inttab_tc5_0A7 (__INTTAB_CPU5 + 0x14E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_167)); } > inttab5_mem
        .inttab_tc5_0A8 (__INTTAB_CPU5 + 0x1500) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_168)); } > inttab5_mem
        .inttab_tc5_0A9 (__INTTAB_CPU5 + 0x1520) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_169)); } > inttab5_mem
        .inttab_tc5_0AA (__INTTAB_CPU5 + 0x1540) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_170)); } > inttab5_mem
        .inttab_tc5_0AB (__INTTAB_CPU5 + 0x1560) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_171)); } > inttab5_mem
        .inttab_tc5_0AC (__INTTAB_CPU5 + 0x1580) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_172)); } > inttab5_mem
        .inttab_tc5_0AD (__INTTAB_CPU5 + 0x15A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_173)); } > inttab5_mem
        .inttab_tc5_0AE (__INTTAB_CPU5 + 0x15C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_174)); } > inttab5_mem
        .inttab_tc5_0AF (__INTTAB_CPU5 + 0x15E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_175)); } > inttab5_mem
        .inttab_tc5_0B0 (__INTTAB_CPU5 + 0x1600) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_176)); } > inttab5_mem
        .inttab_tc5_0B1 (__INTTAB_CPU5 + 0x1620) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_177)); } > inttab5_mem
        .inttab_tc5_0B2 (__INTTAB_CPU5 + 0x1640) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_178)); } > inttab5_mem
        .inttab_tc5_0B3 (__INTTAB_CPU5 + 0x1660) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_179)); } > inttab5_mem
        .inttab_tc5_0B4 (__INTTAB_CPU5 + 0x1680) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_180)); } > inttab5_mem
        .inttab_tc5_0B5 (__INTTAB_CPU5 + 0x16A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_181)); } > inttab5_mem
        .inttab_tc5_0B6 (__INTTAB_CPU5 + 0x16C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_182)); } > inttab5_mem
        .inttab_tc5_0B7 (__INTTAB_CPU5 + 0x16E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_183)); } > inttab5_mem
        .inttab_tc5_0B8 (__INTTAB_CPU5 + 0x1700) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_184)); } > inttab5_mem
        .inttab_tc5_0B9 (__INTTAB_CPU5 + 0x1720) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_185)); } > inttab5_mem
        .inttab_tc5_0BA (__INTTAB_CPU5 + 0x1740) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_186)); } > inttab5_mem
        .inttab_tc5_0BB (__INTTAB_CPU5 + 0x1760) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_187)); } > inttab5_mem
        .inttab_tc5_0BC (__INTTAB_CPU5 + 0x1780) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_188)); } > inttab5_mem
        .inttab_tc5_0BD (__INTTAB_CPU5 + 0x17A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_189)); } > inttab5_mem
        .inttab_tc5_0BE (__INTTAB_CPU5 + 0x17C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_190)); } > inttab5_mem
        .inttab_tc5_0BF (__INTTAB_CPU5 + 0x17E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_191)); } > inttab5_mem
        .inttab_tc5_0C0 (__INTTAB_CPU5 + 0x1800) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_192)); } > inttab5_mem
        .inttab_tc5_0C1 (__INTTAB_CPU5 + 0x1820) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_193)); } > inttab5_mem
        .inttab_tc5_0C2 (__INTTAB_CPU5 + 0x1840) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_194)); } > inttab5_mem
        .inttab_tc5_0C3 (__INTTAB_CPU5 + 0x1860) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_195)); } > inttab5_mem
        .inttab_tc5_0C4 (__INTTAB_CPU5 + 0x1880) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_196)); } > inttab5_mem
        .inttab_tc5_0C5 (__INTTAB_CPU5 + 0x18A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_197)); } > inttab5_mem
        .inttab_tc5_0C6 (__INTTAB_CPU5 + 0x18C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_198)); } > inttab5_mem
        .inttab_tc5_0C7 (__INTTAB_CPU5 + 0x18E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_199)); } > inttab5_mem
        .inttab_tc5_0C8 (__INTTAB_CPU5 + 0x1900) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_200)); } > inttab5_mem
        .inttab_tc5_0C9 (__INTTAB_CPU5 + 0x1920) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_201)); } > inttab5_mem
        .inttab_tc5_0CA (__INTTAB_CPU5 + 0x1940) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_202)); } > inttab5_mem
        .inttab_tc5_0CB (__INTTAB_CPU5 + 0x1960) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_203)); } > inttab5_mem
        .inttab_tc5_0CC (__INTTAB_CPU5 + 0x1980) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_204)); } > inttab5_mem
        .inttab_tc5_0CD (__INTTAB_CPU5 + 0x19A0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_205)); } > inttab5_mem
        .inttab_tc5_0CE (__INTTAB_CPU5 + 0x19C0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_206)); } > inttab5_mem
        .inttab_tc5_0CF (__INTTAB_CPU5 + 0x19E0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_207)); } > inttab5_mem
        .inttab_tc5_0D0 (__INTTAB_CPU5 + 0x1A00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_208)); } > inttab5_mem
        .inttab_tc5_0D1 (__INTTAB_CPU5 + 0x1A20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_209)); } > inttab5_mem
        .inttab_tc5_0D2 (__INTTAB_CPU5 + 0x1A40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_210)); } > inttab5_mem
        .inttab_tc5_0D3 (__INTTAB_CPU5 + 0x1A60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_211)); } > inttab5_mem
        .inttab_tc5_0D4 (__INTTAB_CPU5 + 0x1A80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_212)); } > inttab5_mem
        .inttab_tc5_0D5 (__INTTAB_CPU5 + 0x1AA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_213)); } > inttab5_mem
        .inttab_tc5_0D6 (__INTTAB_CPU5 + 0x1AC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_214)); } > inttab5_mem
        .inttab_tc5_0D7 (__INTTAB_CPU5 + 0x1AE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_215)); } > inttab5_mem
        .inttab_tc5_0D8 (__INTTAB_CPU5 + 0x1B00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_216)); } > inttab5_mem
        .inttab_tc5_0D9 (__INTTAB_CPU5 + 0x1B20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_217)); } > inttab5_mem
        .inttab_tc5_0DA (__INTTAB_CPU5 + 0x1B40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_218)); } > inttab5_mem
        .inttab_tc5_0DB (__INTTAB_CPU5 + 0x1B60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_219)); } > inttab5_mem
        .inttab_tc5_0DC (__INTTAB_CPU5 + 0x1B80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_220)); } > inttab5_mem
        .inttab_tc5_0DD (__INTTAB_CPU5 + 0x1BA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_221)); } > inttab5_mem
        .inttab_tc5_0DE (__INTTAB_CPU5 + 0x1BC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_222)); } > inttab5_mem
        .inttab_tc5_0DF (__INTTAB_CPU5 + 0x1BE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_223)); } > inttab5_mem
        .inttab_tc5_0E0 (__INTTAB_CPU5 + 0x1C00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_224)); } > inttab5_mem
        .inttab_tc5_0E1 (__INTTAB_CPU5 + 0x1C20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_225)); } > inttab5_mem
        .inttab_tc5_0E2 (__INTTAB_CPU5 + 0x1C40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_226)); } > inttab5_mem
        .inttab_tc5_0E3 (__INTTAB_CPU5 + 0x1C60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_227)); } > inttab5_mem
        .inttab_tc5_0E4 (__INTTAB_CPU5 + 0x1C80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_228)); } > inttab5_mem
        .inttab_tc5_0E5 (__INTTAB_CPU5 + 0x1CA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_229)); } > inttab5_mem
        .inttab_tc5_0E6 (__INTTAB_CPU5 + 0x1CC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_230)); } > inttab5_mem
        .inttab_tc5_0E7 (__INTTAB_CPU5 + 0x1CE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_231)); } > inttab5_mem
        .inttab_tc5_0E8 (__INTTAB_CPU5 + 0x1D00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_232)); } > inttab5_mem
        .inttab_tc5_0E9 (__INTTAB_CPU5 + 0x1D20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_233)); } > inttab5_mem
        .inttab_tc5_0EA (__INTTAB_CPU5 + 0x1D40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_234)); } > inttab5_mem
        .inttab_tc5_0EB (__INTTAB_CPU5 + 0x1D60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_235)); } > inttab5_mem
        .inttab_tc5_0EC (__INTTAB_CPU5 + 0x1D80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_236)); } > inttab5_mem
        .inttab_tc5_0ED (__INTTAB_CPU5 + 0x1DA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_237)); } > inttab5_mem
        .inttab_tc5_0EE (__INTTAB_CPU5 + 0x1DC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_238)); } > inttab5_mem
        .inttab_tc5_0EF (__INTTAB_CPU5 + 0x1DE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_239)); } > inttab5_mem
        .inttab_tc5_0F0 (__INTTAB_CPU5 + 0x1E00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_240)); } > inttab5_mem
        .inttab_tc5_0F1 (__INTTAB_CPU5 + 0x1E20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_241)); } > inttab5_mem
        .inttab_tc5_0F2 (__INTTAB_CPU5 + 0x1E40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_242)); } > inttab5_mem
        .inttab_tc5_0F3 (__INTTAB_CPU5 + 0x1E60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_243)); } > inttab5_mem
        .inttab_tc5_0F4 (__INTTAB_CPU5 + 0x1E80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_244)); } > inttab5_mem
        .inttab_tc5_0F5 (__INTTAB_CPU5 + 0x1EA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_245)); } > inttab5_mem
        .inttab_tc5_0F6 (__INTTAB_CPU5 + 0x1EC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_246)); } > inttab5_mem
        .inttab_tc5_0F7 (__INTTAB_CPU5 + 0x1EE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_247)); } > inttab5_mem
        .inttab_tc5_0F8 (__INTTAB_CPU5 + 0x1F00) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_248)); } > inttab5_mem
        .inttab_tc5_0F9 (__INTTAB_CPU5 + 0x1F20) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_249)); } > inttab5_mem
        .inttab_tc5_0FA (__INTTAB_CPU5 + 0x1F40) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_250)); } > inttab5_mem
        .inttab_tc5_0FB (__INTTAB_CPU5 + 0x1F60) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_251)); } > inttab5_mem
        .inttab_tc5_0FC (__INTTAB_CPU5 + 0x1F80) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_252)); } > inttab5_mem
        .inttab_tc5_0FD (__INTTAB_CPU5 + 0x1FA0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_253)); } > inttab5_mem
        .inttab_tc5_0FE (__INTTAB_CPU5 + 0x1FC0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_254)); } > inttab5_mem
        .inttab_tc5_0FF (__INTTAB_CPU5 + 0x1FE0) : { . = ALIGN(8) ;  KEEP (*(.intvec_tc5_255)); } > inttab5_mem
    }
    

