DEFAULTS {
LCF_CSA0_SIZE = 8k;
LCF_USTACK0_SIZE = 2k;
LCF_ISTACK0_SIZE = 1k;

LCF_HEAP_SIZE = 4k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 192k;

LCF_CSA0_OFFSET =    (LCF_DSPR0_SIZE - 1k - LCF_CSA0_SIZE);
LCF_ISTACK0_OFFSET = (LCF_CSA0_OFFSET - 256 - LCF_ISTACK0_SIZE);
LCF_USTACK0_OFFSET = (LCF_ISTACK0_OFFSET - 256 - LCF_USTACK0_SIZE);

LCF_HEAP0_OFFSET =   (LCF_USTACK0_OFFSET - LCF_HEAP_SIZE);

LCF_INTVEC0_START = 0x801FE000;

__INTTAB_CPU0 = LCF_INTVEC0_START;

LCF_TRAPVEC0_START = 0x80000100;

LCF_STARTPTR_CPU0 = 0x80000000;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
}

MEMORY
{   
    dsram0: ORIGIN=0x70000000, LENGTH=192K
    psram0: ORIGIN=0x70100000, LENGTH=8K
    
    psram_local: ORIGIN=0xc0000000, LENGTH=64K
    dsram_local: ORIGIN=0xd0000000, LENGTH=96K
    
    pfls0: ORIGIN=0x80000000, LENGTH=2M
    pfls0_nc: ORIGIN=0xa0000000, LENGTH=2M
    
    dfls0: ORIGIN=0xaf000000, LENGTH=256K
    
    ucb: ORIGIN=0xaf400000, LENGTH=24K
    
    cpu0_dlmu: ORIGIN=0x90000000, LENGTH=8K
    cpu0_dlmu_nc: ORIGIN=0xb0000000, LENGTH=8K
}

//
// Program layout for starting in ROM, copying data to RAM,
// and continuing to execute out of ROM.
//
// This defaults to using internal memory.  To use external SRAM too (if
// mpserv_standard.mbs configures it) change the "." for .data to "extsram_mem".

SECTIONS
{
    /* DSRAM Sections */
    /* Near absolute RAM sections */    
    .CPU0_zdata ABS       ALIGN(4) : { "Ifx_Ssw_Tc0.*(.zdata)" "Cpu0_Main.*(.zdata)" "*(.zdata_cpu0)" } > dsram0
    .CPU0_zbss  ABS CLEAR ALIGN(4) : { "Ifx_Ssw_Tc0.*(.zbss)" "Cpu0_Main.*(.zbss)" "*(.zbss_cpu0)" } > .
    
    /*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/
    .GLOBAL_zdata ABS       ALIGN(4) : { "*(.zdata)"  "*(.zdata.*)" } > dsram0
    .GLOBAL_zbss  ABS CLEAR ALIGN(4) : { "*(.zbss)"  "*(.zbss.*)" } > .
    
    /* Small addressable RAM sections */
    .GLOBAL_sdata           ALIGN(4) : { PROVIDE(__A0_MEM = .); "*(.sdata)" "*(.sdata.*)" } > .
    .GLOBAL_sbss                     : { "*(.sbss)" "*(.sbss.*)" } > .
    PROVIDE(_SMALL_DATA_ = __A0_MEM);
    
    /* The .fixaddr and .fixtype section contain information needed for PIC and
       PID modes.  These are currently not used with TriCore. */
    .fixaddr                       : > .
    .fixtype                       : > .
    
    /* Far addressable RAM sections */
    /* Far addressable CPU specific RAM sections */    
    .CPU0_data            ALIGN(4) : { "Ifx_Ssw_Tc0.*(.data)" "Cpu0_Main.*(.data)" "*(.data_cpu0)" } > dsram0
    .CPU0_bss             ALIGN(4) : { "Ifx_Ssw_Tc0.*(.bss)" "Cpu0_Main.*(.bss)" "*(.bss_cpu0)" } > .
    
    /*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/   
    .GLOBAL_data          ALIGN(4) : { "*(.data)"  "*(.data.*)" } > .
    .GLOBAL_bss           ALIGN(4) : { "*(.bss)" "*(.bss.*)" } > .
    
    /* Reserve space for dynamic allocation */
    .heap                 ALIGN(4) PAD(LCF_HEAP_SIZE) : > .
    
    /* Stack and CSA defines */   
    .CPU0.ustack BIND(LCF_DSPR0_START + LCF_USTACK0_OFFSET) : { __USTACK0_END = . ;. = . + LCF_USTACK0_SIZE; __USTACK0 = . ; } > dsram0
    .CPU0.istack BIND(LCF_DSPR0_START + LCF_ISTACK0_OFFSET) : { __ISTACK0_END = . ;. = . + LCF_ISTACK0_SIZE; __ISTACK0 = . ; } > .
    .CPU0.csa BIND(LCF_DSPR0_START + LCF_CSA0_OFFSET) :       { __CSA0 = . ; . = . + LCF_CSA0_SIZE; __CSA0_END = . ; } > .
    
    /* PSRAM Sections */
    .CPU0_psram_text      ALIGN(2) : { *(.psram_text_cpu0) *(.cpu0_psram) } > psram0
    
    /* PFLASH Sections */
    /* Fixed memory Allocations for _START  for CPU0*/
    .start_tc0 (LCF_STARTPTR_NC_CPU0) : AT(LCF_STARTPTR_CPU0) { PROVIDE(_start = .); *(.start) *(.startup) } > pfls0_nc
    .start_res0 (LCF_STARTPTR_CPU0 + SIZEOF(.start_tc0)) : {} > pfls0
    .interface_const (0x80000020) : { __IF_CONST = .; KEEP (*(.interface_const)) } > pfls0
    
    /* Fixed memory Allocations for Trap Vector Table */
    .traptab_tc0 (LCF_TRAPVEC0_START) : { PROVIDE(__TRAPTAB_CPU0 = .); *(.traptab_cpu0) . = align(32);} > pfls0
    
    PROVIDE(__START0 = LCF_STARTPTR_NC_CPU0);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU0 = 0); /* Not used */
    /* Near absolute RAM sections */
    .GLOBAL_zrodata ABS   ALIGN(4) : { "Ifx_Ssw_Tc?.*(.zrodata)" "Cpu?_Main.*(.zrodata)" "*(.zrodata)" } > pfls0
    
    /* Small addressable ROM sections */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global constants*/
    .GLOBAL_srodata         ALIGN(4) : { PROVIDE(__A1_MEM = .); "Ifx_Ssw_Tc?.*(.srodata)" "Cpu?_Main.*(.srodata)" "*(.srodata)" } > pfls0
    PROVIDE(_LITERAL_DATA_ = __A1_MEM);
    
    .GLOBAL_a8rodata        ALIGN(4) : { PROVIDE(__A8_MEM = .); "*(.a8rodata)" "*(.rodata_a8)"} > .
    PROVIDE(_SMALL_DATA_A8_ = __A8_MEM);
    
    /* Far addressable ROM sections */
    .GLOBAL_rodata        ALIGN(4) : { "*(.rodata.farConst.cpu0.32bit)"
                                       "*(.rodata.farConst.cpu0.16bit)"
                                       "*(.rodata.farConst.cpu0.8bit)"
                                       "*(.rodata)" "*(.rodata.*)"
                                       "*(.ldata)" "*(.ldata.*)" } > .
    
    .CPU0_rodata          ALIGN(4) : { "Ifx_Ssw_Tc0.*(.rodata)" "Cpu0_Main.*(.rodata)" "*(.rodata_cpu0)" } > pfls0
    
    /* Code sections */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global code sections*/
    .GLOBAL_text          ALIGN(2) : { "*(.text)" "*(.text.*)" } > pfls0
    
    /* The .syscall section is a special section that allows communication
        between the application and the MULTI debugger and/or simulator */
    .syscall              ALIGN(2) : > .
    
    /* The .secinfo section contains information about how to initialize
       memory when your application loads.  It tells us which sections of
       RAM need to be zero-initialized and which sections need to be copied
       from ROM. */
    .secinfo              ALIGN(4) : > .
    
    .CPU0_text            ALIGN(2) : { "Ifx_Ssw_Tc0.*(.text)" "Cpu0_Main.*(.text)" "*(.text_cpu0)" } > pfls0
    
    /* Copy initialization data */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global copy data sections*/
    .ROM.CPU0_zdata        ROM(.CPU0_zdata) : > pfls0
    .ROM.CPU0_data         ROM(.CPU0_data) : > .
       
    .ROM.GLOBAL_zdata      ROM(.GLOBAL_zdata) : > .
    .ROM.GLOBAL_data       ROM(.GLOBAL_data) : > .
    .ROM.GLOBAL_sdata      ROM(.GLOBAL_sdata) : > .
    .ROM.CPU0_lmudata      ROM(.CPU0_lmudata) : > .
    
    .ROM.GLOBAL_lmuzdata   ROM(.GLOBAL_lmuzdata) : > .
    .ROM.GLOBAL_lmusdata   ROM(.GLOBAL_lmusdata) : > .
    .ROM.GLOBAL_lmudata    ROM(.GLOBAL_lmudata) : > .
    
    .ROM.CPU0_psram_text   ROM(.CPU0_psram_text) : > .
    
    /* Interrupt vector table located at PFLS0 */
    .inttab_tc0_000 BIND (__INTTAB_CPU0 + 0x0000) ALIGN(8) : { *(.intvec_tc0_0  ) *(.intvec_tc0_0x0 ) *(.intvec_tc0_0x0 ) } > pfls0
    .inttab_tc0_001 BIND (__INTTAB_CPU0 + 0x0020) ALIGN(8) : { *(.intvec_tc0_1  ) *(.intvec_tc0_0x1 ) *(.intvec_tc0_0x1 ) } > .
    .inttab_tc0_002 BIND (__INTTAB_CPU0 + 0x0040) ALIGN(8) : { *(.intvec_tc0_2  ) *(.intvec_tc0_0x2 ) *(.intvec_tc0_0x2 ) } > .
    .inttab_tc0_003 BIND (__INTTAB_CPU0 + 0x0060) ALIGN(8) : { *(.intvec_tc0_3  ) *(.intvec_tc0_0x3 ) *(.intvec_tc0_0x3 ) } > .
    .inttab_tc0_004 BIND (__INTTAB_CPU0 + 0x0080) ALIGN(8) : { *(.intvec_tc0_4  ) *(.intvec_tc0_0x4 ) *(.intvec_tc0_0x4 ) } > .
    .inttab_tc0_005 BIND (__INTTAB_CPU0 + 0x00A0) ALIGN(8) : { *(.intvec_tc0_5  ) *(.intvec_tc0_0x5 ) *(.intvec_tc0_0x5 ) } > .
    .inttab_tc0_006 BIND (__INTTAB_CPU0 + 0x00C0) ALIGN(8) : { *(.intvec_tc0_6  ) *(.intvec_tc0_0x6 ) *(.intvec_tc0_0x6 ) } > .
    .inttab_tc0_007 BIND (__INTTAB_CPU0 + 0x00E0) ALIGN(8) : { *(.intvec_tc0_7  ) *(.intvec_tc0_0x7 ) *(.intvec_tc0_0x7 ) } > .
    .inttab_tc0_008 BIND (__INTTAB_CPU0 + 0x0100) ALIGN(8) : { *(.intvec_tc0_8  ) *(.intvec_tc0_0x8 ) *(.intvec_tc0_0x8 ) } > .
    .inttab_tc0_009 BIND (__INTTAB_CPU0 + 0x0120) ALIGN(8) : { *(.intvec_tc0_9  ) *(.intvec_tc0_0x9 ) *(.intvec_tc0_0x9 ) } > .
    .inttab_tc0_00A BIND (__INTTAB_CPU0 + 0x0140) ALIGN(8) : { *(.intvec_tc0_10 ) *(.intvec_tc0_0xA ) *(.intvec_tc0_0xa ) } > .
    .inttab_tc0_00B BIND (__INTTAB_CPU0 + 0x0160) ALIGN(8) : { *(.intvec_tc0_11 ) *(.intvec_tc0_0xB ) *(.intvec_tc0_0xb ) } > .
    .inttab_tc0_00C BIND (__INTTAB_CPU0 + 0x0180) ALIGN(8) : { *(.intvec_tc0_12 ) *(.intvec_tc0_0xC ) *(.intvec_tc0_0xc ) } > .
    .inttab_tc0_00D BIND (__INTTAB_CPU0 + 0x01A0) ALIGN(8) : { *(.intvec_tc0_13 ) *(.intvec_tc0_0xD ) *(.intvec_tc0_0xd ) } > .
    .inttab_tc0_00E BIND (__INTTAB_CPU0 + 0x01C0) ALIGN(8) : { *(.intvec_tc0_14 ) *(.intvec_tc0_0xE ) *(.intvec_tc0_0xe ) } > .
    .inttab_tc0_00F BIND (__INTTAB_CPU0 + 0x01E0) ALIGN(8) : { *(.intvec_tc0_15 ) *(.intvec_tc0_0xF ) *(.intvec_tc0_0xf ) } > .
    .inttab_tc0_010 BIND (__INTTAB_CPU0 + 0x0200) ALIGN(8) : { *(.intvec_tc0_16 ) *(.intvec_tc0_0x10) *(.intvec_tc0_0x10) } > .
    .inttab_tc0_011 BIND (__INTTAB_CPU0 + 0x0220) ALIGN(8) : { *(.intvec_tc0_17 ) *(.intvec_tc0_0x11) *(.intvec_tc0_0x11) } > .
    .inttab_tc0_012 BIND (__INTTAB_CPU0 + 0x0240) ALIGN(8) : { *(.intvec_tc0_18 ) *(.intvec_tc0_0x12) *(.intvec_tc0_0x12) } > .
    .inttab_tc0_013 BIND (__INTTAB_CPU0 + 0x0260) ALIGN(8) : { *(.intvec_tc0_19 ) *(.intvec_tc0_0x13) *(.intvec_tc0_0x13) } > .
    .inttab_tc0_014 BIND (__INTTAB_CPU0 + 0x0280) ALIGN(8) : { *(.intvec_tc0_20 ) *(.intvec_tc0_0x14) *(.intvec_tc0_0x14) } > .
    .inttab_tc0_015 BIND (__INTTAB_CPU0 + 0x02A0) ALIGN(8) : { *(.intvec_tc0_21 ) *(.intvec_tc0_0x15) *(.intvec_tc0_0x15) } > .
    .inttab_tc0_016 BIND (__INTTAB_CPU0 + 0x02C0) ALIGN(8) : { *(.intvec_tc0_22 ) *(.intvec_tc0_0x16) *(.intvec_tc0_0x16) } > .
    .inttab_tc0_017 BIND (__INTTAB_CPU0 + 0x02E0) ALIGN(8) : { *(.intvec_tc0_23 ) *(.intvec_tc0_0x17) *(.intvec_tc0_0x17) } > .
    .inttab_tc0_018 BIND (__INTTAB_CPU0 + 0x0300) ALIGN(8) : { *(.intvec_tc0_24 ) *(.intvec_tc0_0x18) *(.intvec_tc0_0x18) } > .
    .inttab_tc0_019 BIND (__INTTAB_CPU0 + 0x0320) ALIGN(8) : { *(.intvec_tc0_25 ) *(.intvec_tc0_0x19) *(.intvec_tc0_0x19) } > .
    .inttab_tc0_01A BIND (__INTTAB_CPU0 + 0x0340) ALIGN(8) : { *(.intvec_tc0_26 ) *(.intvec_tc0_0x1A) *(.intvec_tc0_0x1a) } > .
    .inttab_tc0_01B BIND (__INTTAB_CPU0 + 0x0360) ALIGN(8) : { *(.intvec_tc0_27 ) *(.intvec_tc0_0x1B) *(.intvec_tc0_0x1b) } > .
    .inttab_tc0_01C BIND (__INTTAB_CPU0 + 0x0380) ALIGN(8) : { *(.intvec_tc0_28 ) *(.intvec_tc0_0x1C) *(.intvec_tc0_0x1c) } > .
    .inttab_tc0_01D BIND (__INTTAB_CPU0 + 0x03A0) ALIGN(8) : { *(.intvec_tc0_29 ) *(.intvec_tc0_0x1D) *(.intvec_tc0_0x1d) } > .
    .inttab_tc0_01E BIND (__INTTAB_CPU0 + 0x03C0) ALIGN(8) : { *(.intvec_tc0_30 ) *(.intvec_tc0_0x1E) *(.intvec_tc0_0x1e) } > .
    .inttab_tc0_01F BIND (__INTTAB_CPU0 + 0x03E0) ALIGN(8) : { *(.intvec_tc0_31 ) *(.intvec_tc0_0x1F) *(.intvec_tc0_0x1f) } > .
    .inttab_tc0_020 BIND (__INTTAB_CPU0 + 0x0400) ALIGN(8) : { *(.intvec_tc0_32 ) *(.intvec_tc0_0x20) *(.intvec_tc0_0x20) } > .
    .inttab_tc0_021 BIND (__INTTAB_CPU0 + 0x0420) ALIGN(8) : { *(.intvec_tc0_33 ) *(.intvec_tc0_0x21) *(.intvec_tc0_0x21) } > .
    .inttab_tc0_022 BIND (__INTTAB_CPU0 + 0x0440) ALIGN(8) : { *(.intvec_tc0_34 ) *(.intvec_tc0_0x22) *(.intvec_tc0_0x22) } > .
    .inttab_tc0_023 BIND (__INTTAB_CPU0 + 0x0460) ALIGN(8) : { *(.intvec_tc0_35 ) *(.intvec_tc0_0x23) *(.intvec_tc0_0x23) } > .
    .inttab_tc0_024 BIND (__INTTAB_CPU0 + 0x0480) ALIGN(8) : { *(.intvec_tc0_36 ) *(.intvec_tc0_0x24) *(.intvec_tc0_0x24) } > .
    .inttab_tc0_025 BIND (__INTTAB_CPU0 + 0x04A0) ALIGN(8) : { *(.intvec_tc0_37 ) *(.intvec_tc0_0x25) *(.intvec_tc0_0x25) } > .
    .inttab_tc0_026 BIND (__INTTAB_CPU0 + 0x04C0) ALIGN(8) : { *(.intvec_tc0_38 ) *(.intvec_tc0_0x26) *(.intvec_tc0_0x26) } > .
    .inttab_tc0_027 BIND (__INTTAB_CPU0 + 0x04E0) ALIGN(8) : { *(.intvec_tc0_39 ) *(.intvec_tc0_0x27) *(.intvec_tc0_0x27) } > .
    .inttab_tc0_028 BIND (__INTTAB_CPU0 + 0x0500) ALIGN(8) : { *(.intvec_tc0_40 ) *(.intvec_tc0_0x28) *(.intvec_tc0_0x28) } > .
    .inttab_tc0_029 BIND (__INTTAB_CPU0 + 0x0520) ALIGN(8) : { *(.intvec_tc0_41 ) *(.intvec_tc0_0x29) *(.intvec_tc0_0x29) } > .
    .inttab_tc0_02A BIND (__INTTAB_CPU0 + 0x0540) ALIGN(8) : { *(.intvec_tc0_42 ) *(.intvec_tc0_0x2A) *(.intvec_tc0_0x2a) } > .
    .inttab_tc0_02B BIND (__INTTAB_CPU0 + 0x0560) ALIGN(8) : { *(.intvec_tc0_43 ) *(.intvec_tc0_0x2B) *(.intvec_tc0_0x2b) } > .
    .inttab_tc0_02C BIND (__INTTAB_CPU0 + 0x0580) ALIGN(8) : { *(.intvec_tc0_44 ) *(.intvec_tc0_0x2C) *(.intvec_tc0_0x2c) } > .
    .inttab_tc0_02D BIND (__INTTAB_CPU0 + 0x05A0) ALIGN(8) : { *(.intvec_tc0_45 ) *(.intvec_tc0_0x2D) *(.intvec_tc0_0x2d) } > .
    .inttab_tc0_02E BIND (__INTTAB_CPU0 + 0x05C0) ALIGN(8) : { *(.intvec_tc0_46 ) *(.intvec_tc0_0x2E) *(.intvec_tc0_0x2e) } > .
    .inttab_tc0_02F BIND (__INTTAB_CPU0 + 0x05E0) ALIGN(8) : { *(.intvec_tc0_47 ) *(.intvec_tc0_0x2F) *(.intvec_tc0_0x2f) } > .
    .inttab_tc0_030 BIND (__INTTAB_CPU0 + 0x0600) ALIGN(8) : { *(.intvec_tc0_48 ) *(.intvec_tc0_0x30) *(.intvec_tc0_0x30) } > .
    .inttab_tc0_031 BIND (__INTTAB_CPU0 + 0x0620) ALIGN(8) : { *(.intvec_tc0_49 ) *(.intvec_tc0_0x31) *(.intvec_tc0_0x31) } > .
    .inttab_tc0_032 BIND (__INTTAB_CPU0 + 0x0640) ALIGN(8) : { *(.intvec_tc0_50 ) *(.intvec_tc0_0x32) *(.intvec_tc0_0x32) } > .
    .inttab_tc0_033 BIND (__INTTAB_CPU0 + 0x0660) ALIGN(8) : { *(.intvec_tc0_51 ) *(.intvec_tc0_0x33) *(.intvec_tc0_0x33) } > .
    .inttab_tc0_034 BIND (__INTTAB_CPU0 + 0x0680) ALIGN(8) : { *(.intvec_tc0_52 ) *(.intvec_tc0_0x34) *(.intvec_tc0_0x34) } > .
    .inttab_tc0_035 BIND (__INTTAB_CPU0 + 0x06A0) ALIGN(8) : { *(.intvec_tc0_53 ) *(.intvec_tc0_0x35) *(.intvec_tc0_0x35) } > .
    .inttab_tc0_036 BIND (__INTTAB_CPU0 + 0x06C0) ALIGN(8) : { *(.intvec_tc0_54 ) *(.intvec_tc0_0x36) *(.intvec_tc0_0x36) } > .
    .inttab_tc0_037 BIND (__INTTAB_CPU0 + 0x06E0) ALIGN(8) : { *(.intvec_tc0_55 ) *(.intvec_tc0_0x37) *(.intvec_tc0_0x37) } > .
    .inttab_tc0_038 BIND (__INTTAB_CPU0 + 0x0700) ALIGN(8) : { *(.intvec_tc0_56 ) *(.intvec_tc0_0x38) *(.intvec_tc0_0x38) } > .
    .inttab_tc0_039 BIND (__INTTAB_CPU0 + 0x0720) ALIGN(8) : { *(.intvec_tc0_57 ) *(.intvec_tc0_0x39) *(.intvec_tc0_0x39) } > .
    .inttab_tc0_03A BIND (__INTTAB_CPU0 + 0x0740) ALIGN(8) : { *(.intvec_tc0_58 ) *(.intvec_tc0_0x3A) *(.intvec_tc0_0x3a) } > .
    .inttab_tc0_03B BIND (__INTTAB_CPU0 + 0x0760) ALIGN(8) : { *(.intvec_tc0_59 ) *(.intvec_tc0_0x3B) *(.intvec_tc0_0x3b) } > .
    .inttab_tc0_03C BIND (__INTTAB_CPU0 + 0x0780) ALIGN(8) : { *(.intvec_tc0_60 ) *(.intvec_tc0_0x3C) *(.intvec_tc0_0x3c) } > .
    .inttab_tc0_03D BIND (__INTTAB_CPU0 + 0x07A0) ALIGN(8) : { *(.intvec_tc0_61 ) *(.intvec_tc0_0x3D) *(.intvec_tc0_0x3d) } > .
    .inttab_tc0_03E BIND (__INTTAB_CPU0 + 0x07C0) ALIGN(8) : { *(.intvec_tc0_62 ) *(.intvec_tc0_0x3E) *(.intvec_tc0_0x3e) } > .
    .inttab_tc0_03F BIND (__INTTAB_CPU0 + 0x07E0) ALIGN(8) : { *(.intvec_tc0_63 ) *(.intvec_tc0_0x3F) *(.intvec_tc0_0x3f) } > .
    .inttab_tc0_040 BIND (__INTTAB_CPU0 + 0x0800) ALIGN(8) : { *(.intvec_tc0_64 ) *(.intvec_tc0_0x40) *(.intvec_tc0_0x40) } > .
    .inttab_tc0_041 BIND (__INTTAB_CPU0 + 0x0820) ALIGN(8) : { *(.intvec_tc0_65 ) *(.intvec_tc0_0x41) *(.intvec_tc0_0x41) } > .
    .inttab_tc0_042 BIND (__INTTAB_CPU0 + 0x0840) ALIGN(8) : { *(.intvec_tc0_66 ) *(.intvec_tc0_0x42) *(.intvec_tc0_0x42) } > .
    .inttab_tc0_043 BIND (__INTTAB_CPU0 + 0x0860) ALIGN(8) : { *(.intvec_tc0_67 ) *(.intvec_tc0_0x43) *(.intvec_tc0_0x43) } > .
    .inttab_tc0_044 BIND (__INTTAB_CPU0 + 0x0880) ALIGN(8) : { *(.intvec_tc0_68 ) *(.intvec_tc0_0x44) *(.intvec_tc0_0x44) } > .
    .inttab_tc0_045 BIND (__INTTAB_CPU0 + 0x08A0) ALIGN(8) : { *(.intvec_tc0_69 ) *(.intvec_tc0_0x45) *(.intvec_tc0_0x45) } > .
    .inttab_tc0_046 BIND (__INTTAB_CPU0 + 0x08C0) ALIGN(8) : { *(.intvec_tc0_70 ) *(.intvec_tc0_0x46) *(.intvec_tc0_0x46) } > .
    .inttab_tc0_047 BIND (__INTTAB_CPU0 + 0x08E0) ALIGN(8) : { *(.intvec_tc0_71 ) *(.intvec_tc0_0x47) *(.intvec_tc0_0x47) } > .
    .inttab_tc0_048 BIND (__INTTAB_CPU0 + 0x0900) ALIGN(8) : { *(.intvec_tc0_72 ) *(.intvec_tc0_0x48) *(.intvec_tc0_0x48) } > .
    .inttab_tc0_049 BIND (__INTTAB_CPU0 + 0x0920) ALIGN(8) : { *(.intvec_tc0_73 ) *(.intvec_tc0_0x49) *(.intvec_tc0_0x49) } > .
    .inttab_tc0_04A BIND (__INTTAB_CPU0 + 0x0940) ALIGN(8) : { *(.intvec_tc0_74 ) *(.intvec_tc0_0x4A) *(.intvec_tc0_0x4a) } > .
    .inttab_tc0_04B BIND (__INTTAB_CPU0 + 0x0960) ALIGN(8) : { *(.intvec_tc0_75 ) *(.intvec_tc0_0x4B) *(.intvec_tc0_0x4b) } > .
    .inttab_tc0_04C BIND (__INTTAB_CPU0 + 0x0980) ALIGN(8) : { *(.intvec_tc0_76 ) *(.intvec_tc0_0x4C) *(.intvec_tc0_0x4c) } > .
    .inttab_tc0_04D BIND (__INTTAB_CPU0 + 0x09A0) ALIGN(8) : { *(.intvec_tc0_77 ) *(.intvec_tc0_0x4D) *(.intvec_tc0_0x4d) } > .
    .inttab_tc0_04E BIND (__INTTAB_CPU0 + 0x09C0) ALIGN(8) : { *(.intvec_tc0_78 ) *(.intvec_tc0_0x4E) *(.intvec_tc0_0x4e) } > .
    .inttab_tc0_04F BIND (__INTTAB_CPU0 + 0x09E0) ALIGN(8) : { *(.intvec_tc0_79 ) *(.intvec_tc0_0x4F) *(.intvec_tc0_0x4f) } > .
    .inttab_tc0_050 BIND (__INTTAB_CPU0 + 0x0A00) ALIGN(8) : { *(.intvec_tc0_80 ) *(.intvec_tc0_0x50) *(.intvec_tc0_0x50) } > .
    .inttab_tc0_051 BIND (__INTTAB_CPU0 + 0x0A20) ALIGN(8) : { *(.intvec_tc0_81 ) *(.intvec_tc0_0x51) *(.intvec_tc0_0x51) } > .
    .inttab_tc0_052 BIND (__INTTAB_CPU0 + 0x0A40) ALIGN(8) : { *(.intvec_tc0_82 ) *(.intvec_tc0_0x52) *(.intvec_tc0_0x52) } > .
    .inttab_tc0_053 BIND (__INTTAB_CPU0 + 0x0A60) ALIGN(8) : { *(.intvec_tc0_83 ) *(.intvec_tc0_0x53) *(.intvec_tc0_0x53) } > .
    .inttab_tc0_054 BIND (__INTTAB_CPU0 + 0x0A80) ALIGN(8) : { *(.intvec_tc0_84 ) *(.intvec_tc0_0x54) *(.intvec_tc0_0x54) } > .
    .inttab_tc0_055 BIND (__INTTAB_CPU0 + 0x0AA0) ALIGN(8) : { *(.intvec_tc0_85 ) *(.intvec_tc0_0x55) *(.intvec_tc0_0x55) } > .
    .inttab_tc0_056 BIND (__INTTAB_CPU0 + 0x0AC0) ALIGN(8) : { *(.intvec_tc0_86 ) *(.intvec_tc0_0x56) *(.intvec_tc0_0x56) } > .
    .inttab_tc0_057 BIND (__INTTAB_CPU0 + 0x0AE0) ALIGN(8) : { *(.intvec_tc0_87 ) *(.intvec_tc0_0x57) *(.intvec_tc0_0x57) } > .
    .inttab_tc0_058 BIND (__INTTAB_CPU0 + 0x0B00) ALIGN(8) : { *(.intvec_tc0_88 ) *(.intvec_tc0_0x58) *(.intvec_tc0_0x58) } > .
    .inttab_tc0_059 BIND (__INTTAB_CPU0 + 0x0B20) ALIGN(8) : { *(.intvec_tc0_89 ) *(.intvec_tc0_0x59) *(.intvec_tc0_0x59) } > .
    .inttab_tc0_05A BIND (__INTTAB_CPU0 + 0x0B40) ALIGN(8) : { *(.intvec_tc0_90 ) *(.intvec_tc0_0x5A) *(.intvec_tc0_0x5a) } > .
    .inttab_tc0_05B BIND (__INTTAB_CPU0 + 0x0B60) ALIGN(8) : { *(.intvec_tc0_91 ) *(.intvec_tc0_0x5B) *(.intvec_tc0_0x5b) } > .
    .inttab_tc0_05C BIND (__INTTAB_CPU0 + 0x0B80) ALIGN(8) : { *(.intvec_tc0_92 ) *(.intvec_tc0_0x5C) *(.intvec_tc0_0x5c) } > .
    .inttab_tc0_05D BIND (__INTTAB_CPU0 + 0x0BA0) ALIGN(8) : { *(.intvec_tc0_93 ) *(.intvec_tc0_0x5D) *(.intvec_tc0_0x5d) } > .
    .inttab_tc0_05E BIND (__INTTAB_CPU0 + 0x0BC0) ALIGN(8) : { *(.intvec_tc0_94 ) *(.intvec_tc0_0x5E) *(.intvec_tc0_0x5e) } > .
    .inttab_tc0_05F BIND (__INTTAB_CPU0 + 0x0BE0) ALIGN(8) : { *(.intvec_tc0_95 ) *(.intvec_tc0_0x5F) *(.intvec_tc0_0x5f) } > .
    .inttab_tc0_060 BIND (__INTTAB_CPU0 + 0x0C00) ALIGN(8) : { *(.intvec_tc0_96 ) *(.intvec_tc0_0x60) *(.intvec_tc0_0x60) } > .
    .inttab_tc0_061 BIND (__INTTAB_CPU0 + 0x0C20) ALIGN(8) : { *(.intvec_tc0_97 ) *(.intvec_tc0_0x61) *(.intvec_tc0_0x61) } > .
    .inttab_tc0_062 BIND (__INTTAB_CPU0 + 0x0C40) ALIGN(8) : { *(.intvec_tc0_98 ) *(.intvec_tc0_0x62) *(.intvec_tc0_0x62) } > .
    .inttab_tc0_063 BIND (__INTTAB_CPU0 + 0x0C60) ALIGN(8) : { *(.intvec_tc0_99 ) *(.intvec_tc0_0x63) *(.intvec_tc0_0x63) } > .
    .inttab_tc0_064 BIND (__INTTAB_CPU0 + 0x0C80) ALIGN(8) : { *(.intvec_tc0_100) *(.intvec_tc0_0x64) *(.intvec_tc0_0x64) } > .
    .inttab_tc0_065 BIND (__INTTAB_CPU0 + 0x0CA0) ALIGN(8) : { *(.intvec_tc0_101) *(.intvec_tc0_0x65) *(.intvec_tc0_0x65) } > .
    .inttab_tc0_066 BIND (__INTTAB_CPU0 + 0x0CC0) ALIGN(8) : { *(.intvec_tc0_102) *(.intvec_tc0_0x66) *(.intvec_tc0_0x66) } > .
    .inttab_tc0_067 BIND (__INTTAB_CPU0 + 0x0CE0) ALIGN(8) : { *(.intvec_tc0_103) *(.intvec_tc0_0x67) *(.intvec_tc0_0x67) } > .
    .inttab_tc0_068 BIND (__INTTAB_CPU0 + 0x0D00) ALIGN(8) : { *(.intvec_tc0_104) *(.intvec_tc0_0x68) *(.intvec_tc0_0x68) } > .
    .inttab_tc0_069 BIND (__INTTAB_CPU0 + 0x0D20) ALIGN(8) : { *(.intvec_tc0_105) *(.intvec_tc0_0x69) *(.intvec_tc0_0x69) } > .
    .inttab_tc0_06A BIND (__INTTAB_CPU0 + 0x0D40) ALIGN(8) : { *(.intvec_tc0_106) *(.intvec_tc0_0x6A) *(.intvec_tc0_0x6a) } > .
    .inttab_tc0_06B BIND (__INTTAB_CPU0 + 0x0D60) ALIGN(8) : { *(.intvec_tc0_107) *(.intvec_tc0_0x6B) *(.intvec_tc0_0x6b) } > .
    .inttab_tc0_06C BIND (__INTTAB_CPU0 + 0x0D80) ALIGN(8) : { *(.intvec_tc0_108) *(.intvec_tc0_0x6C) *(.intvec_tc0_0x6c) } > .
    .inttab_tc0_06D BIND (__INTTAB_CPU0 + 0x0DA0) ALIGN(8) : { *(.intvec_tc0_109) *(.intvec_tc0_0x6D) *(.intvec_tc0_0x6d) } > .
    .inttab_tc0_06E BIND (__INTTAB_CPU0 + 0x0DC0) ALIGN(8) : { *(.intvec_tc0_110) *(.intvec_tc0_0x6E) *(.intvec_tc0_0x6e) } > .
    .inttab_tc0_06F BIND (__INTTAB_CPU0 + 0x0DE0) ALIGN(8) : { *(.intvec_tc0_111) *(.intvec_tc0_0x6F) *(.intvec_tc0_0x6f) } > .
    .inttab_tc0_070 BIND (__INTTAB_CPU0 + 0x0E00) ALIGN(8) : { *(.intvec_tc0_112) *(.intvec_tc0_0x70) *(.intvec_tc0_0x70) } > .
    .inttab_tc0_071 BIND (__INTTAB_CPU0 + 0x0E20) ALIGN(8) : { *(.intvec_tc0_113) *(.intvec_tc0_0x71) *(.intvec_tc0_0x71) } > .
    .inttab_tc0_072 BIND (__INTTAB_CPU0 + 0x0E40) ALIGN(8) : { *(.intvec_tc0_114) *(.intvec_tc0_0x72) *(.intvec_tc0_0x72) } > .
    .inttab_tc0_073 BIND (__INTTAB_CPU0 + 0x0E60) ALIGN(8) : { *(.intvec_tc0_115) *(.intvec_tc0_0x73) *(.intvec_tc0_0x73) } > .
    .inttab_tc0_074 BIND (__INTTAB_CPU0 + 0x0E80) ALIGN(8) : { *(.intvec_tc0_116) *(.intvec_tc0_0x74) *(.intvec_tc0_0x74) } > .
    .inttab_tc0_075 BIND (__INTTAB_CPU0 + 0x0EA0) ALIGN(8) : { *(.intvec_tc0_117) *(.intvec_tc0_0x75) *(.intvec_tc0_0x75) } > .
    .inttab_tc0_076 BIND (__INTTAB_CPU0 + 0x0EC0) ALIGN(8) : { *(.intvec_tc0_118) *(.intvec_tc0_0x76) *(.intvec_tc0_0x76) } > .
    .inttab_tc0_077 BIND (__INTTAB_CPU0 + 0x0EE0) ALIGN(8) : { *(.intvec_tc0_119) *(.intvec_tc0_0x77) *(.intvec_tc0_0x77) } > .
    .inttab_tc0_078 BIND (__INTTAB_CPU0 + 0x0F00) ALIGN(8) : { *(.intvec_tc0_120) *(.intvec_tc0_0x78) *(.intvec_tc0_0x78) } > .
    .inttab_tc0_079 BIND (__INTTAB_CPU0 + 0x0F20) ALIGN(8) : { *(.intvec_tc0_121) *(.intvec_tc0_0x79) *(.intvec_tc0_0x79) } > .
    .inttab_tc0_07A BIND (__INTTAB_CPU0 + 0x0F40) ALIGN(8) : { *(.intvec_tc0_122) *(.intvec_tc0_0x7A) *(.intvec_tc0_0x7a) } > .
    .inttab_tc0_07B BIND (__INTTAB_CPU0 + 0x0F60) ALIGN(8) : { *(.intvec_tc0_123) *(.intvec_tc0_0x7B) *(.intvec_tc0_0x7b) } > .
    .inttab_tc0_07C BIND (__INTTAB_CPU0 + 0x0F80) ALIGN(8) : { *(.intvec_tc0_124) *(.intvec_tc0_0x7C) *(.intvec_tc0_0x7c) } > .
    .inttab_tc0_07D BIND (__INTTAB_CPU0 + 0x0FA0) ALIGN(8) : { *(.intvec_tc0_125) *(.intvec_tc0_0x7D) *(.intvec_tc0_0x7d) } > .
    .inttab_tc0_07E BIND (__INTTAB_CPU0 + 0x0FC0) ALIGN(8) : { *(.intvec_tc0_126) *(.intvec_tc0_0x7E) *(.intvec_tc0_0x7e) } > .
    .inttab_tc0_07F BIND (__INTTAB_CPU0 + 0x0FE0) ALIGN(8) : { *(.intvec_tc0_127) *(.intvec_tc0_0x7F) *(.intvec_tc0_0x7f) } > .
    .inttab_tc0_080 BIND (__INTTAB_CPU0 + 0x1000) ALIGN(8) : { *(.intvec_tc0_128) *(.intvec_tc0_0x80) *(.intvec_tc0_0x80) } > .
    .inttab_tc0_081 BIND (__INTTAB_CPU0 + 0x1020) ALIGN(8) : { *(.intvec_tc0_129) *(.intvec_tc0_0x81) *(.intvec_tc0_0x81) } > .
    .inttab_tc0_082 BIND (__INTTAB_CPU0 + 0x1040) ALIGN(8) : { *(.intvec_tc0_130) *(.intvec_tc0_0x82) *(.intvec_tc0_0x82) } > .
    .inttab_tc0_083 BIND (__INTTAB_CPU0 + 0x1060) ALIGN(8) : { *(.intvec_tc0_131) *(.intvec_tc0_0x83) *(.intvec_tc0_0x83) } > .
    .inttab_tc0_084 BIND (__INTTAB_CPU0 + 0x1080) ALIGN(8) : { *(.intvec_tc0_132) *(.intvec_tc0_0x84) *(.intvec_tc0_0x84) } > .
    .inttab_tc0_085 BIND (__INTTAB_CPU0 + 0x10A0) ALIGN(8) : { *(.intvec_tc0_133) *(.intvec_tc0_0x85) *(.intvec_tc0_0x85) } > .
    .inttab_tc0_086 BIND (__INTTAB_CPU0 + 0x10C0) ALIGN(8) : { *(.intvec_tc0_134) *(.intvec_tc0_0x86) *(.intvec_tc0_0x86) } > .
    .inttab_tc0_087 BIND (__INTTAB_CPU0 + 0x10E0) ALIGN(8) : { *(.intvec_tc0_135) *(.intvec_tc0_0x87) *(.intvec_tc0_0x87) } > .
    .inttab_tc0_088 BIND (__INTTAB_CPU0 + 0x1100) ALIGN(8) : { *(.intvec_tc0_136) *(.intvec_tc0_0x88) *(.intvec_tc0_0x88) } > .
    .inttab_tc0_089 BIND (__INTTAB_CPU0 + 0x1120) ALIGN(8) : { *(.intvec_tc0_137) *(.intvec_tc0_0x89) *(.intvec_tc0_0x89) } > .
    .inttab_tc0_08A BIND (__INTTAB_CPU0 + 0x1140) ALIGN(8) : { *(.intvec_tc0_138) *(.intvec_tc0_0x8A) *(.intvec_tc0_0x8a) } > .
    .inttab_tc0_08B BIND (__INTTAB_CPU0 + 0x1160) ALIGN(8) : { *(.intvec_tc0_139) *(.intvec_tc0_0x8B) *(.intvec_tc0_0x8b) } > .
    .inttab_tc0_08C BIND (__INTTAB_CPU0 + 0x1180) ALIGN(8) : { *(.intvec_tc0_140) *(.intvec_tc0_0x8C) *(.intvec_tc0_0x8c) } > .
    .inttab_tc0_08D BIND (__INTTAB_CPU0 + 0x11A0) ALIGN(8) : { *(.intvec_tc0_141) *(.intvec_tc0_0x8D) *(.intvec_tc0_0x8d) } > .
    .inttab_tc0_08E BIND (__INTTAB_CPU0 + 0x11C0) ALIGN(8) : { *(.intvec_tc0_142) *(.intvec_tc0_0x8E) *(.intvec_tc0_0x8e) } > .
    .inttab_tc0_08F BIND (__INTTAB_CPU0 + 0x11E0) ALIGN(8) : { *(.intvec_tc0_143) *(.intvec_tc0_0x8F) *(.intvec_tc0_0x8f) } > .
    .inttab_tc0_090 BIND (__INTTAB_CPU0 + 0x1200) ALIGN(8) : { *(.intvec_tc0_144) *(.intvec_tc0_0x90) *(.intvec_tc0_0x90) } > .
    .inttab_tc0_091 BIND (__INTTAB_CPU0 + 0x1220) ALIGN(8) : { *(.intvec_tc0_145) *(.intvec_tc0_0x91) *(.intvec_tc0_0x91) } > .
    .inttab_tc0_092 BIND (__INTTAB_CPU0 + 0x1240) ALIGN(8) : { *(.intvec_tc0_146) *(.intvec_tc0_0x92) *(.intvec_tc0_0x92) } > .
    .inttab_tc0_093 BIND (__INTTAB_CPU0 + 0x1260) ALIGN(8) : { *(.intvec_tc0_147) *(.intvec_tc0_0x93) *(.intvec_tc0_0x93) } > .
    .inttab_tc0_094 BIND (__INTTAB_CPU0 + 0x1280) ALIGN(8) : { *(.intvec_tc0_148) *(.intvec_tc0_0x94) *(.intvec_tc0_0x94) } > .
    .inttab_tc0_095 BIND (__INTTAB_CPU0 + 0x12A0) ALIGN(8) : { *(.intvec_tc0_149) *(.intvec_tc0_0x95) *(.intvec_tc0_0x95) } > .
    .inttab_tc0_096 BIND (__INTTAB_CPU0 + 0x12C0) ALIGN(8) : { *(.intvec_tc0_150) *(.intvec_tc0_0x96) *(.intvec_tc0_0x96) } > .
    .inttab_tc0_097 BIND (__INTTAB_CPU0 + 0x12E0) ALIGN(8) : { *(.intvec_tc0_151) *(.intvec_tc0_0x97) *(.intvec_tc0_0x97) } > .
    .inttab_tc0_098 BIND (__INTTAB_CPU0 + 0x1300) ALIGN(8) : { *(.intvec_tc0_152) *(.intvec_tc0_0x98) *(.intvec_tc0_0x98) } > .
    .inttab_tc0_099 BIND (__INTTAB_CPU0 + 0x1320) ALIGN(8) : { *(.intvec_tc0_153) *(.intvec_tc0_0x99) *(.intvec_tc0_0x99) } > .
    .inttab_tc0_09A BIND (__INTTAB_CPU0 + 0x1340) ALIGN(8) : { *(.intvec_tc0_154) *(.intvec_tc0_0x9A) *(.intvec_tc0_0x9a) } > .
    .inttab_tc0_09B BIND (__INTTAB_CPU0 + 0x1360) ALIGN(8) : { *(.intvec_tc0_155) *(.intvec_tc0_0x9B) *(.intvec_tc0_0x9b) } > .
    .inttab_tc0_09C BIND (__INTTAB_CPU0 + 0x1380) ALIGN(8) : { *(.intvec_tc0_156) *(.intvec_tc0_0x9C) *(.intvec_tc0_0x9c) } > .
    .inttab_tc0_09D BIND (__INTTAB_CPU0 + 0x13A0) ALIGN(8) : { *(.intvec_tc0_157) *(.intvec_tc0_0x9D) *(.intvec_tc0_0x9d) } > .
    .inttab_tc0_09E BIND (__INTTAB_CPU0 + 0x13C0) ALIGN(8) : { *(.intvec_tc0_158) *(.intvec_tc0_0x9E) *(.intvec_tc0_0x9e) } > .
    .inttab_tc0_09F BIND (__INTTAB_CPU0 + 0x13E0) ALIGN(8) : { *(.intvec_tc0_159) *(.intvec_tc0_0x9F) *(.intvec_tc0_0x9f) } > .
    .inttab_tc0_0A0 BIND (__INTTAB_CPU0 + 0x1400) ALIGN(8) : { *(.intvec_tc0_160) *(.intvec_tc0_0xA0) *(.intvec_tc0_0xa0) } > .
    .inttab_tc0_0A1 BIND (__INTTAB_CPU0 + 0x1420) ALIGN(8) : { *(.intvec_tc0_161) *(.intvec_tc0_0xA1) *(.intvec_tc0_0xa1) } > .
    .inttab_tc0_0A2 BIND (__INTTAB_CPU0 + 0x1440) ALIGN(8) : { *(.intvec_tc0_162) *(.intvec_tc0_0xA2) *(.intvec_tc0_0xa2) } > .
    .inttab_tc0_0A3 BIND (__INTTAB_CPU0 + 0x1460) ALIGN(8) : { *(.intvec_tc0_163) *(.intvec_tc0_0xA3) *(.intvec_tc0_0xa3) } > .
    .inttab_tc0_0A4 BIND (__INTTAB_CPU0 + 0x1480) ALIGN(8) : { *(.intvec_tc0_164) *(.intvec_tc0_0xA4) *(.intvec_tc0_0xa4) } > .
    .inttab_tc0_0A5 BIND (__INTTAB_CPU0 + 0x14A0) ALIGN(8) : { *(.intvec_tc0_165) *(.intvec_tc0_0xA5) *(.intvec_tc0_0xa5) } > .
    .inttab_tc0_0A6 BIND (__INTTAB_CPU0 + 0x14C0) ALIGN(8) : { *(.intvec_tc0_166) *(.intvec_tc0_0xA6) *(.intvec_tc0_0xa6) } > .
    .inttab_tc0_0A7 BIND (__INTTAB_CPU0 + 0x14E0) ALIGN(8) : { *(.intvec_tc0_167) *(.intvec_tc0_0xA7) *(.intvec_tc0_0xa7) } > .
    .inttab_tc0_0A8 BIND (__INTTAB_CPU0 + 0x1500) ALIGN(8) : { *(.intvec_tc0_168) *(.intvec_tc0_0xA8) *(.intvec_tc0_0xa8) } > .
    .inttab_tc0_0A9 BIND (__INTTAB_CPU0 + 0x1520) ALIGN(8) : { *(.intvec_tc0_169) *(.intvec_tc0_0xA9) *(.intvec_tc0_0xa9) } > .
    .inttab_tc0_0AA BIND (__INTTAB_CPU0 + 0x1540) ALIGN(8) : { *(.intvec_tc0_170) *(.intvec_tc0_0xAA) *(.intvec_tc0_0xaa) } > .
    .inttab_tc0_0AB BIND (__INTTAB_CPU0 + 0x1560) ALIGN(8) : { *(.intvec_tc0_171) *(.intvec_tc0_0xAB) *(.intvec_tc0_0xab) } > .
    .inttab_tc0_0AC BIND (__INTTAB_CPU0 + 0x1580) ALIGN(8) : { *(.intvec_tc0_172) *(.intvec_tc0_0xAC) *(.intvec_tc0_0xac) } > .
    .inttab_tc0_0AD BIND (__INTTAB_CPU0 + 0x15A0) ALIGN(8) : { *(.intvec_tc0_173) *(.intvec_tc0_0xAD) *(.intvec_tc0_0xad) } > .
    .inttab_tc0_0AE BIND (__INTTAB_CPU0 + 0x15C0) ALIGN(8) : { *(.intvec_tc0_174) *(.intvec_tc0_0xAE) *(.intvec_tc0_0xae) } > .
    .inttab_tc0_0AF BIND (__INTTAB_CPU0 + 0x15E0) ALIGN(8) : { *(.intvec_tc0_175) *(.intvec_tc0_0xAF) *(.intvec_tc0_0xaf) } > .
    .inttab_tc0_0B0 BIND (__INTTAB_CPU0 + 0x1600) ALIGN(8) : { *(.intvec_tc0_176) *(.intvec_tc0_0xB0) *(.intvec_tc0_0xb0) } > .
    .inttab_tc0_0B1 BIND (__INTTAB_CPU0 + 0x1620) ALIGN(8) : { *(.intvec_tc0_177) *(.intvec_tc0_0xB1) *(.intvec_tc0_0xb1) } > .
    .inttab_tc0_0B2 BIND (__INTTAB_CPU0 + 0x1640) ALIGN(8) : { *(.intvec_tc0_178) *(.intvec_tc0_0xB2) *(.intvec_tc0_0xb2) } > .
    .inttab_tc0_0B3 BIND (__INTTAB_CPU0 + 0x1660) ALIGN(8) : { *(.intvec_tc0_179) *(.intvec_tc0_0xB3) *(.intvec_tc0_0xb3) } > .
    .inttab_tc0_0B4 BIND (__INTTAB_CPU0 + 0x1680) ALIGN(8) : { *(.intvec_tc0_180) *(.intvec_tc0_0xB4) *(.intvec_tc0_0xb4) } > .
    .inttab_tc0_0B5 BIND (__INTTAB_CPU0 + 0x16A0) ALIGN(8) : { *(.intvec_tc0_181) *(.intvec_tc0_0xB5) *(.intvec_tc0_0xb5) } > .
    .inttab_tc0_0B6 BIND (__INTTAB_CPU0 + 0x16C0) ALIGN(8) : { *(.intvec_tc0_182) *(.intvec_tc0_0xB6) *(.intvec_tc0_0xb6) } > .
    .inttab_tc0_0B7 BIND (__INTTAB_CPU0 + 0x16E0) ALIGN(8) : { *(.intvec_tc0_183) *(.intvec_tc0_0xB7) *(.intvec_tc0_0xb7) } > .
    .inttab_tc0_0B8 BIND (__INTTAB_CPU0 + 0x1700) ALIGN(8) : { *(.intvec_tc0_184) *(.intvec_tc0_0xB8) *(.intvec_tc0_0xb8) } > .
    .inttab_tc0_0B9 BIND (__INTTAB_CPU0 + 0x1720) ALIGN(8) : { *(.intvec_tc0_185) *(.intvec_tc0_0xB9) *(.intvec_tc0_0xb9) } > .
    .inttab_tc0_0BA BIND (__INTTAB_CPU0 + 0x1740) ALIGN(8) : { *(.intvec_tc0_186) *(.intvec_tc0_0xBA) *(.intvec_tc0_0xba) } > .
    .inttab_tc0_0BB BIND (__INTTAB_CPU0 + 0x1760) ALIGN(8) : { *(.intvec_tc0_187) *(.intvec_tc0_0xBB) *(.intvec_tc0_0xbb) } > .
    .inttab_tc0_0BC BIND (__INTTAB_CPU0 + 0x1780) ALIGN(8) : { *(.intvec_tc0_188) *(.intvec_tc0_0xBC) *(.intvec_tc0_0xbc) } > .
    .inttab_tc0_0BD BIND (__INTTAB_CPU0 + 0x17A0) ALIGN(8) : { *(.intvec_tc0_189) *(.intvec_tc0_0xBD) *(.intvec_tc0_0xbd) } > .
    .inttab_tc0_0BE BIND (__INTTAB_CPU0 + 0x17C0) ALIGN(8) : { *(.intvec_tc0_190) *(.intvec_tc0_0xBE) *(.intvec_tc0_0xbe) } > .
    .inttab_tc0_0BF BIND (__INTTAB_CPU0 + 0x17E0) ALIGN(8) : { *(.intvec_tc0_191) *(.intvec_tc0_0xBF) *(.intvec_tc0_0xbf) } > .
    .inttab_tc0_0C0 BIND (__INTTAB_CPU0 + 0x1800) ALIGN(8) : { *(.intvec_tc0_192) *(.intvec_tc0_0xC0) *(.intvec_tc0_0xc0) } > .
    .inttab_tc0_0C1 BIND (__INTTAB_CPU0 + 0x1820) ALIGN(8) : { *(.intvec_tc0_193) *(.intvec_tc0_0xC1) *(.intvec_tc0_0xc1) } > .
    .inttab_tc0_0C2 BIND (__INTTAB_CPU0 + 0x1840) ALIGN(8) : { *(.intvec_tc0_194) *(.intvec_tc0_0xC2) *(.intvec_tc0_0xc2) } > .
    .inttab_tc0_0C3 BIND (__INTTAB_CPU0 + 0x1860) ALIGN(8) : { *(.intvec_tc0_195) *(.intvec_tc0_0xC3) *(.intvec_tc0_0xc3) } > .
    .inttab_tc0_0C4 BIND (__INTTAB_CPU0 + 0x1880) ALIGN(8) : { *(.intvec_tc0_196) *(.intvec_tc0_0xC4) *(.intvec_tc0_0xc4) } > .
    .inttab_tc0_0C5 BIND (__INTTAB_CPU0 + 0x18A0) ALIGN(8) : { *(.intvec_tc0_197) *(.intvec_tc0_0xC5) *(.intvec_tc0_0xc5) } > .
    .inttab_tc0_0C6 BIND (__INTTAB_CPU0 + 0x18C0) ALIGN(8) : { *(.intvec_tc0_198) *(.intvec_tc0_0xC6) *(.intvec_tc0_0xc6) } > .
    .inttab_tc0_0C7 BIND (__INTTAB_CPU0 + 0x18E0) ALIGN(8) : { *(.intvec_tc0_199) *(.intvec_tc0_0xC7) *(.intvec_tc0_0xc7) } > .
    .inttab_tc0_0C8 BIND (__INTTAB_CPU0 + 0x1900) ALIGN(8) : { *(.intvec_tc0_200) *(.intvec_tc0_0xC8) *(.intvec_tc0_0xc8) } > .
    .inttab_tc0_0C9 BIND (__INTTAB_CPU0 + 0x1920) ALIGN(8) : { *(.intvec_tc0_201) *(.intvec_tc0_0xC9) *(.intvec_tc0_0xc9) } > .
    .inttab_tc0_0CA BIND (__INTTAB_CPU0 + 0x1940) ALIGN(8) : { *(.intvec_tc0_202) *(.intvec_tc0_0xCA) *(.intvec_tc0_0xca) } > .
    .inttab_tc0_0CB BIND (__INTTAB_CPU0 + 0x1960) ALIGN(8) : { *(.intvec_tc0_203) *(.intvec_tc0_0xCB) *(.intvec_tc0_0xcb) } > .
    .inttab_tc0_0CC BIND (__INTTAB_CPU0 + 0x1980) ALIGN(8) : { *(.intvec_tc0_204) *(.intvec_tc0_0xCC) *(.intvec_tc0_0xcc) } > .
    .inttab_tc0_0CD BIND (__INTTAB_CPU0 + 0x19A0) ALIGN(8) : { *(.intvec_tc0_205) *(.intvec_tc0_0xCD) *(.intvec_tc0_0xcd) } > .
    .inttab_tc0_0CE BIND (__INTTAB_CPU0 + 0x19C0) ALIGN(8) : { *(.intvec_tc0_206) *(.intvec_tc0_0xCE) *(.intvec_tc0_0xce) } > .
    .inttab_tc0_0CF BIND (__INTTAB_CPU0 + 0x19E0) ALIGN(8) : { *(.intvec_tc0_207) *(.intvec_tc0_0xCF) *(.intvec_tc0_0xcf) } > .
    .inttab_tc0_0D0 BIND (__INTTAB_CPU0 + 0x1A00) ALIGN(8) : { *(.intvec_tc0_208) *(.intvec_tc0_0xD0) *(.intvec_tc0_0xd0) } > .
    .inttab_tc0_0D1 BIND (__INTTAB_CPU0 + 0x1A20) ALIGN(8) : { *(.intvec_tc0_209) *(.intvec_tc0_0xD1) *(.intvec_tc0_0xd1) } > .
    .inttab_tc0_0D2 BIND (__INTTAB_CPU0 + 0x1A40) ALIGN(8) : { *(.intvec_tc0_210) *(.intvec_tc0_0xD2) *(.intvec_tc0_0xd2) } > .
    .inttab_tc0_0D3 BIND (__INTTAB_CPU0 + 0x1A60) ALIGN(8) : { *(.intvec_tc0_211) *(.intvec_tc0_0xD3) *(.intvec_tc0_0xd3) } > .
    .inttab_tc0_0D4 BIND (__INTTAB_CPU0 + 0x1A80) ALIGN(8) : { *(.intvec_tc0_212) *(.intvec_tc0_0xD4) *(.intvec_tc0_0xd4) } > .
    .inttab_tc0_0D5 BIND (__INTTAB_CPU0 + 0x1AA0) ALIGN(8) : { *(.intvec_tc0_213) *(.intvec_tc0_0xD5) *(.intvec_tc0_0xd5) } > .
    .inttab_tc0_0D6 BIND (__INTTAB_CPU0 + 0x1AC0) ALIGN(8) : { *(.intvec_tc0_214) *(.intvec_tc0_0xD6) *(.intvec_tc0_0xd6) } > .
    .inttab_tc0_0D7 BIND (__INTTAB_CPU0 + 0x1AE0) ALIGN(8) : { *(.intvec_tc0_215) *(.intvec_tc0_0xD7) *(.intvec_tc0_0xd7) } > .
    .inttab_tc0_0D8 BIND (__INTTAB_CPU0 + 0x1B00) ALIGN(8) : { *(.intvec_tc0_216) *(.intvec_tc0_0xD8) *(.intvec_tc0_0xd8) } > .
    .inttab_tc0_0D9 BIND (__INTTAB_CPU0 + 0x1B20) ALIGN(8) : { *(.intvec_tc0_217) *(.intvec_tc0_0xD9) *(.intvec_tc0_0xd9) } > .
    .inttab_tc0_0DA BIND (__INTTAB_CPU0 + 0x1B40) ALIGN(8) : { *(.intvec_tc0_218) *(.intvec_tc0_0xDA) *(.intvec_tc0_0xda) } > .
    .inttab_tc0_0DB BIND (__INTTAB_CPU0 + 0x1B60) ALIGN(8) : { *(.intvec_tc0_219) *(.intvec_tc0_0xDB) *(.intvec_tc0_0xdb) } > .
    .inttab_tc0_0DC BIND (__INTTAB_CPU0 + 0x1B80) ALIGN(8) : { *(.intvec_tc0_220) *(.intvec_tc0_0xDC) *(.intvec_tc0_0xdc) } > .
    .inttab_tc0_0DD BIND (__INTTAB_CPU0 + 0x1BA0) ALIGN(8) : { *(.intvec_tc0_221) *(.intvec_tc0_0xDD) *(.intvec_tc0_0xdd) } > .
    .inttab_tc0_0DE BIND (__INTTAB_CPU0 + 0x1BC0) ALIGN(8) : { *(.intvec_tc0_222) *(.intvec_tc0_0xDE) *(.intvec_tc0_0xde) } > .
    .inttab_tc0_0DF BIND (__INTTAB_CPU0 + 0x1BE0) ALIGN(8) : { *(.intvec_tc0_223) *(.intvec_tc0_0xDF) *(.intvec_tc0_0xdf) } > .
    .inttab_tc0_0E0 BIND (__INTTAB_CPU0 + 0x1C00) ALIGN(8) : { *(.intvec_tc0_224) *(.intvec_tc0_0xE0) *(.intvec_tc0_0xe0) } > .
    .inttab_tc0_0E1 BIND (__INTTAB_CPU0 + 0x1C20) ALIGN(8) : { *(.intvec_tc0_225) *(.intvec_tc0_0xE1) *(.intvec_tc0_0xe1) } > .
    .inttab_tc0_0E2 BIND (__INTTAB_CPU0 + 0x1C40) ALIGN(8) : { *(.intvec_tc0_226) *(.intvec_tc0_0xE2) *(.intvec_tc0_0xe2) } > .
    .inttab_tc0_0E3 BIND (__INTTAB_CPU0 + 0x1C60) ALIGN(8) : { *(.intvec_tc0_227) *(.intvec_tc0_0xE3) *(.intvec_tc0_0xe3) } > .
    .inttab_tc0_0E4 BIND (__INTTAB_CPU0 + 0x1C80) ALIGN(8) : { *(.intvec_tc0_228) *(.intvec_tc0_0xE4) *(.intvec_tc0_0xe4) } > .
    .inttab_tc0_0E5 BIND (__INTTAB_CPU0 + 0x1CA0) ALIGN(8) : { *(.intvec_tc0_229) *(.intvec_tc0_0xE5) *(.intvec_tc0_0xe5) } > .
    .inttab_tc0_0E6 BIND (__INTTAB_CPU0 + 0x1CC0) ALIGN(8) : { *(.intvec_tc0_230) *(.intvec_tc0_0xE6) *(.intvec_tc0_0xe6) } > .
    .inttab_tc0_0E7 BIND (__INTTAB_CPU0 + 0x1CE0) ALIGN(8) : { *(.intvec_tc0_231) *(.intvec_tc0_0xE7) *(.intvec_tc0_0xe7) } > .
    .inttab_tc0_0E8 BIND (__INTTAB_CPU0 + 0x1D00) ALIGN(8) : { *(.intvec_tc0_232) *(.intvec_tc0_0xE8) *(.intvec_tc0_0xe8) } > .
    .inttab_tc0_0E9 BIND (__INTTAB_CPU0 + 0x1D20) ALIGN(8) : { *(.intvec_tc0_233) *(.intvec_tc0_0xE9) *(.intvec_tc0_0xe9) } > .
    .inttab_tc0_0EA BIND (__INTTAB_CPU0 + 0x1D40) ALIGN(8) : { *(.intvec_tc0_234) *(.intvec_tc0_0xEA) *(.intvec_tc0_0xea) } > .
    .inttab_tc0_0EB BIND (__INTTAB_CPU0 + 0x1D60) ALIGN(8) : { *(.intvec_tc0_235) *(.intvec_tc0_0xEB) *(.intvec_tc0_0xeb) } > .
    .inttab_tc0_0EC BIND (__INTTAB_CPU0 + 0x1D80) ALIGN(8) : { *(.intvec_tc0_236) *(.intvec_tc0_0xEC) *(.intvec_tc0_0xec) } > .
    .inttab_tc0_0ED BIND (__INTTAB_CPU0 + 0x1DA0) ALIGN(8) : { *(.intvec_tc0_237) *(.intvec_tc0_0xED) *(.intvec_tc0_0xed) } > .
    .inttab_tc0_0EE BIND (__INTTAB_CPU0 + 0x1DC0) ALIGN(8) : { *(.intvec_tc0_238) *(.intvec_tc0_0xEE) *(.intvec_tc0_0xee) } > .
    .inttab_tc0_0EF BIND (__INTTAB_CPU0 + 0x1DE0) ALIGN(8) : { *(.intvec_tc0_239) *(.intvec_tc0_0xEF) *(.intvec_tc0_0xef) } > .
    .inttab_tc0_0F0 BIND (__INTTAB_CPU0 + 0x1E00) ALIGN(8) : { *(.intvec_tc0_240) *(.intvec_tc0_0xF0) *(.intvec_tc0_0xf0) } > .
    .inttab_tc0_0F1 BIND (__INTTAB_CPU0 + 0x1E20) ALIGN(8) : { *(.intvec_tc0_241) *(.intvec_tc0_0xF1) *(.intvec_tc0_0xf1) } > .
    .inttab_tc0_0F2 BIND (__INTTAB_CPU0 + 0x1E40) ALIGN(8) : { *(.intvec_tc0_242) *(.intvec_tc0_0xF2) *(.intvec_tc0_0xf2) } > .
    .inttab_tc0_0F3 BIND (__INTTAB_CPU0 + 0x1E60) ALIGN(8) : { *(.intvec_tc0_243) *(.intvec_tc0_0xF3) *(.intvec_tc0_0xf3) } > .
    .inttab_tc0_0F4 BIND (__INTTAB_CPU0 + 0x1E80) ALIGN(8) : { *(.intvec_tc0_244) *(.intvec_tc0_0xF4) *(.intvec_tc0_0xf4) } > .
    .inttab_tc0_0F5 BIND (__INTTAB_CPU0 + 0x1EA0) ALIGN(8) : { *(.intvec_tc0_245) *(.intvec_tc0_0xF5) *(.intvec_tc0_0xf5) } > .
    .inttab_tc0_0F6 BIND (__INTTAB_CPU0 + 0x1EC0) ALIGN(8) : { *(.intvec_tc0_246) *(.intvec_tc0_0xF6) *(.intvec_tc0_0xf6) } > .
    .inttab_tc0_0F7 BIND (__INTTAB_CPU0 + 0x1EE0) ALIGN(8) : { *(.intvec_tc0_247) *(.intvec_tc0_0xF7) *(.intvec_tc0_0xf7) } > .
    .inttab_tc0_0F8 BIND (__INTTAB_CPU0 + 0x1F00) ALIGN(8) : { *(.intvec_tc0_248) *(.intvec_tc0_0xF8) *(.intvec_tc0_0xf8) } > .
    .inttab_tc0_0F9 BIND (__INTTAB_CPU0 + 0x1F20) ALIGN(8) : { *(.intvec_tc0_249) *(.intvec_tc0_0xF9) *(.intvec_tc0_0xf9) } > .
    .inttab_tc0_0FA BIND (__INTTAB_CPU0 + 0x1F40) ALIGN(8) : { *(.intvec_tc0_250) *(.intvec_tc0_0xFA) *(.intvec_tc0_0xfa) } > .
    .inttab_tc0_0FB BIND (__INTTAB_CPU0 + 0x1F60) ALIGN(8) : { *(.intvec_tc0_251) *(.intvec_tc0_0xFB) *(.intvec_tc0_0xfb) } > .
    .inttab_tc0_0FC BIND (__INTTAB_CPU0 + 0x1F80) ALIGN(8) : { *(.intvec_tc0_252) *(.intvec_tc0_0xFC) *(.intvec_tc0_0xfc) } > .
    .inttab_tc0_0FD BIND (__INTTAB_CPU0 + 0x1FA0) ALIGN(8) : { *(.intvec_tc0_253) *(.intvec_tc0_0xFD) *(.intvec_tc0_0xfd) } > .
    .inttab_tc0_0FE BIND (__INTTAB_CPU0 + 0x1FC0) ALIGN(8) : { *(.intvec_tc0_254) *(.intvec_tc0_0xFE) *(.intvec_tc0_0xfe) } > .
    .inttab_tc0_0FF BIND (__INTTAB_CPU0 + 0x1FE0) ALIGN(8) : { *(.intvec_tc0_255) *(.intvec_tc0_0xFF) *(.intvec_tc0_0xff) } > .
    
    /* Boot mode header sections */
    .bmhd_0_orig (0xaf400000) : { KEEP (*(.bmhd_0_orig)) } > ucb
    .bmhd_1_orig (0xaf400200) : { KEEP (*(.bmhd_1_orig)) } > ucb
    .bmhd_2_orig (0xaf400400) : { KEEP (*(.bmhd_2_orig)) } > ucb
    .bmhd_3_orig (0xaf400600) : { KEEP (*(.bmhd_3_orig)) } > ucb
    .ucb_reserved (0xaf400800) : { } > ucb
    .bmhd_0_copy (0xaf401000) : { KEEP (*(.bmhd_0_copy)) } > ucb
    .bmhd_1_copy (0xaf401200) : { KEEP (*(.bmhd_1_copy)) } > ucb
    .bmhd_2_copy (0xaf401400) : { KEEP (*(.bmhd_2_copy)) } > ucb
    .bmhd_3_copy (0xaf401600) : { KEEP (*(.bmhd_3_copy)) } > ucb
    
    
    /* LMU memory sections */
    /* Near absolute LMURAM sections */
    .GLOBAL_lmuzdata ABS       ALIGN(4) : { *(.zlmudata) } > cpu0_dlmu
    .GLOBAL_lmuzbss  ABS CLEAR ALIGN(4) : { *(.zlmubss) } > .
    
    /* Small addressable LMURAM sections */
    .GLOBAL_lmusdata           ALIGN(4) : { PROVIDE(__A9_MEM = .); *(.a9sdata) } > cpu0_dlmu
    .GLOBAL_lmusbss      CLEAR          : { *(.a9sbss) } > .
    .GLOBAL_lmudata            ALIGN(4) : { *(.lmudata) } > .
    .GLOBAL_lmubss       CLEAR ALIGN(4) : { *(.lmubss) } > .
    PROVIDE(_SMALL_DATA_A9_ = __A9_MEM);
    
    /* Far addressable LMURAM sections */
    .CPU0_lmudata       ALIGN(4) : { "*(.lmudata_cpu0)" } > .
    .CPU0_lmubss        ALIGN(4) : { "*(.lmubss_cpu0)" } > .
        
//
// These special symbols mark the bounds of RAM and ROM memory.
// They are used by the MULTI debugger.
//
    PROVIDE(__ghs_ramstart  = MEMADDR(psram0));
    PROVIDE(__ghs_ramend    = MEMENDADDR(psram0));
    PROVIDE(__ghs_romstart  = MEMADDR(pfls0));
    PROVIDE(__ghs_romend    = MEMENDADDR(pfls0));

//
// These special symbols mark the bounds of RAM and ROM images of boot code.
// They are used by the GHS startup code (_start and __ghs_ind_crt0).
//
    PROVIDE(__ghs_rambootcodestart  = 0);
    PROVIDE(__ghs_rambootcodeend    = 0);
    PROVIDE(__ghs_rombootcodestart  = ADDR(.start_tc0));
    PROVIDE(__ghs_rombootcodeend    = ENDADDR(.secinfo));
    PROVIDE(__INTTAB_CPU0= __INTTAB_CPU0);
}

