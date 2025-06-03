DEFAULTS {
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

LCF_HEAP_SIZE = 4k;

LCF_DSPR3_START = 0x40000000;
LCF_DSPR3_SIZE = 96k;

LCF_DSPR2_START = 0x50000000;
LCF_DSPR2_SIZE = 96k;

LCF_DSPR1_START = 0x60000000;
LCF_DSPR1_SIZE = 240k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 240k;

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

LCF_INTVEC0_START = 0x802FE000;
LCF_INTVEC1_START = 0x805FE000;
LCF_INTVEC2_START = 0x808FE000;
LCF_INTVEC3_START = 0x809FE000;

__INTTAB_CPU0 = LCF_INTVEC0_START;
__INTTAB_CPU1 = LCF_INTVEC1_START;
__INTTAB_CPU2 = LCF_INTVEC2_START;
__INTTAB_CPU3 = LCF_INTVEC3_START;

LCF_TRAPVEC0_START = 0x80000100;
LCF_TRAPVEC1_START = 0x80300000;
LCF_TRAPVEC2_START = 0x80600000;
LCF_TRAPVEC3_START = 0x80900000;

LCF_STARTPTR_CPU0 = 0x80000000;
LCF_STARTPTR_CPU1 = 0x80300100;
LCF_STARTPTR_CPU2 = 0x80600100;
LCF_STARTPTR_CPU3 = 0x80900100;

LCF_STARTPTR_NC_CPU0 = 0xA0000000;
LCF_STARTPTR_NC_CPU1 = 0xA0300100;
LCF_STARTPTR_NC_CPU2 = 0xA0600100;
LCF_STARTPTR_NC_CPU3 = 0xA0900100;
}

MEMORY
{
    dsram3: ORIGIN=0x40000000, LENGTH=96K
    psram3: ORIGIN=0x40100000, LENGTH=64K
    
    dsram2: ORIGIN=0x50000000, LENGTH=96K
    psram2: ORIGIN=0x50100000, LENGTH=64K
    
    dsram1: ORIGIN=0x60000000, LENGTH=240K
    psram1: ORIGIN=0x60100000, LENGTH=64K
    
    dsram0: ORIGIN=0x70000000, LENGTH=240K
    psram0: ORIGIN=0x70100000, LENGTH=64K

    psram_local: ORIGIN=0xc0000000, LENGTH=64K
    dsram_local: ORIGIN=0xd0000000, LENGTH=96K
    
    pfls0: ORIGIN=0x80000000, LENGTH=3M
    pfls0_nc: ORIGIN=0xa0000000, LENGTH=3M
    
    pfls1: ORIGIN=0x80300000, LENGTH=3M
    pfls1_nc: ORIGIN=0xa0300000, LENGTH=3M
    
    pfls2: ORIGIN=0x80600000, LENGTH=3M
    pfls2_nc: ORIGIN=0xa0600000, LENGTH=3M
    
    pfls3: ORIGIN=0x80900000, LENGTH=1M
    pfls3_nc: ORIGIN=0xa0900000, LENGTH=1M
    
    dfls0: ORIGIN=0xaf000000, LENGTH=1M
    
    ucb: ORIGIN=0xaf400000, LENGTH=24K
    
    cpu0_dlmu: ORIGIN=0x90000000, LENGTH=64K
    cpu0_dlmu_nc: ORIGIN=0xb0000000, LENGTH=64K
    
    cpu1_dlmu: ORIGIN=0x90010000, LENGTH=64K
    cpu1_dlmu_nc: ORIGIN=0xb0010000, LENGTH=64K
    
    cpu2_dlmu: ORIGIN=0x90020000, LENGTH=64K
    cpu2_dlmu_nc: ORIGIN=0xb0020000, LENGTH=64K
    
    cpu3_dlmu: ORIGIN=0x90030000, LENGTH=64K
    cpu3_dlmu_nc: ORIGIN=0xb0030000, LENGTH=64K
    
    lmuram: ORIGIN=0x90040000, LENGTH=1288K
    lmuram_nc: ORIGIN=0xb0040000, LENGTH=128K
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
    .CPU3_zdata ABS       ALIGN(4) : { "Ifx_Ssw_Tc3.*(.zdata)" "Cpu3_Main.*(.zdata)" "*(.zdata_cpu3)" } > dsram3
    .CPU3_zbss  ABS CLEAR ALIGN(4) : { "Ifx_Ssw_Tc3.*(.zbss)" "Cpu3_Main.*(.zbss)" "*(.zbss_cpu3)" } > .
    
    .CPU2_zdata ABS       ALIGN(4) : { "Ifx_Ssw_Tc2.*(.zdata)" "Cpu2_Main.*(.zdata)" "*(.zdata_cpu2)" } > dsram2
    .CPU2_zbss  ABS CLEAR ALIGN(4) : { "Ifx_Ssw_Tc2.*(.zbss)" "Cpu2_Main.*(.zbss)" "*(.zbss_cpu2)" } > .
    
    .CPU1_zdata ABS       ALIGN(4) : { "Ifx_Ssw_Tc1.*(.zdata)" "Cpu1_Main.*(.zdata)" "*(.zdata_cpu1)" } > dsram1
    .CPU1_zbss  ABS CLEAR ALIGN(4) : { "Ifx_Ssw_Tc1.*(.zbss)" "Cpu1_Main.*(.zbss)" "*(.zbss_cpu1)" } > .
    
    .CPU0_zdata ABS       ALIGN(4) : { "Ifx_Ssw_Tc0.*(.zdata)" "Cpu0_Main.*(.zdata)" "*(.zdata_cpu0)" } > dsram0
    .CPU0_zbss  ABS CLEAR ALIGN(4) : { "Ifx_Ssw_Tc0.*(.zbss)" "Cpu0_Main.*(.zbss)" "*(.zbss_cpu0)" } > .
    
    /*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/
    //.GLOBAL_zdata ABS       ALIGN(4) : { "*(.zdata)"  "*(.zdata.*)" } > dsram3
    //.GLOBAL_zdata ABS       ALIGN(4) : { "*(.zdata)"  "*(.zdata.*)" } > dsram2
    //.GLOBAL_zdata ABS       ALIGN(4) : { "*(.zdata)"  "*(.zdata.*)" } > dsram1
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
    .CPU3_data            ALIGN(4) : { "Ifx_Ssw_Tc3.*(.data)" "Cpu3_Main.*(.data)" "*(.data_cpu3)" } > dsram3
    .CPU3_bss             ALIGN(4) : { "Ifx_Ssw_Tc3.*(.bss)" "Cpu3_Main.*(.bss)" "*(.bss_cpu3)" } > .
    
    .CPU2_data            ALIGN(4) : { "Ifx_Ssw_Tc2.*(.data)" "Cpu2_Main.*(.data)" "*(.data_cpu2)" } > dsram2
    .CPU2_bss             ALIGN(4) : { "Ifx_Ssw_Tc2.*(.bss)" "Cpu2_Main.*(.bss)" "*(.bss_cpu2)" } > .
    
    .CPU1_data            ALIGN(4) : { "Ifx_Ssw_Tc1.*(.data)" "Cpu1_Main.*(.data)" "*(.data_cpu1)" } > dsram1
    .CPU1_bss             ALIGN(4) : { "Ifx_Ssw_Tc1.*(.bss)" "Cpu1_Main.*(.bss)" "*(.bss_cpu1)" } > .
    
    .CPU0_data            ALIGN(4) : { "Ifx_Ssw_Tc0.*(.data)" "Cpu0_Main.*(.data)" "*(.data_cpu0)" } > dsram0
    .CPU0_bss             ALIGN(4) : { "Ifx_Ssw_Tc0.*(.bss)" "Cpu0_Main.*(.bss)" "*(.bss_cpu0)" } > .
    
    /*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/
    //.GLOBAL_data ABS      ALIGN(4) : { "*(.data)"  "*(.data.*)" } > dsram3
    //.GLOBAL_data ABS      ALIGN(4) : { "*(.data)"  "*(.data.*)" } > dsram2
    //.GLOBAL_data ABS      ALIGN(4) : { "*(.data)"  "*(.data.*)" } > dsram1    
    .GLOBAL_data          ALIGN(4) : { "*(.data)"  "*(.data.*)" } > .
    .GLOBAL_bss           ALIGN(4) : { "*(.bss)" "*(.bss.*)" } > .
    
    /* Reserve space for dynamic allocation */
    .heap                 ALIGN(4) PAD(LCF_HEAP_SIZE) : > .
    
    /* Stack and CSA defines */
    .CPU3.ustack BIND(LCF_DSPR3_START + LCF_USTACK3_OFFSET) : { __USTACK3_END = . ;. = . + LCF_USTACK3_SIZE; __USTACK3 = . ; } > dsram3
    .CPU3.istack BIND(LCF_DSPR3_START + LCF_ISTACK3_OFFSET) : { __ISTACK3_END = . ;. = . + LCF_ISTACK3_SIZE; __ISTACK3 = . ; } > .
    .CPU3.csa BIND(LCF_DSPR3_START + LCF_CSA3_OFFSET) :       { __CSA3 = . ; . = . + LCF_CSA3_SIZE; __CSA3_END = . ; } > .
    
    .CPU2.ustack BIND(LCF_DSPR2_START + LCF_USTACK2_OFFSET) : { __USTACK2_END = . ;. = . + LCF_USTACK2_SIZE; __USTACK2 = . ; } > dsram2
    .CPU2.istack BIND(LCF_DSPR2_START + LCF_ISTACK2_OFFSET) : { __ISTACK2_END = . ;. = . + LCF_ISTACK2_SIZE; __ISTACK2 = . ; } > .
    .CPU2.csa BIND(LCF_DSPR2_START + LCF_CSA2_OFFSET) :       { __CSA2 = . ; . = . + LCF_CSA2_SIZE; __CSA2_END = . ; } > .
    
    .CPU1.ustack BIND(LCF_DSPR1_START + LCF_USTACK1_OFFSET) : { __USTACK1_END = . ;. = . + LCF_USTACK1_SIZE; __USTACK1 = . ; } > dsram1
    .CPU1.istack BIND(LCF_DSPR1_START + LCF_ISTACK1_OFFSET) : { __ISTACK1_END = . ;. = . + LCF_ISTACK1_SIZE; __ISTACK1 = . ; } > .
    .CPU1.csa BIND(LCF_DSPR1_START + LCF_CSA1_OFFSET) :       { __CSA1 = . ; . = . + LCF_CSA1_SIZE; __CSA1_END = . ; } > .
    
    .CPU0.ustack BIND(LCF_DSPR0_START + LCF_USTACK0_OFFSET) : { __USTACK0_END = . ;. = . + LCF_USTACK0_SIZE; __USTACK0 = . ; } > dsram0
    .CPU0.istack BIND(LCF_DSPR0_START + LCF_ISTACK0_OFFSET) : { __ISTACK0_END = . ;. = . + LCF_ISTACK0_SIZE; __ISTACK0 = . ; } > .
    .CPU0.csa BIND(LCF_DSPR0_START + LCF_CSA0_OFFSET) :       { __CSA0 = . ; . = . + LCF_CSA0_SIZE; __CSA0_END = . ; } > .
    
    /* PSRAM Sections */
    .CPU3_psram_text      ALIGN(2) : { *(.psram_text_cpu3) *(.cpu3_psram) } > psram3
    .CPU2_psram_text      ALIGN(2) : { *(.psram_text_cpu2) *(.cpu2_psram) } > psram2
    .CPU1_psram_text      ALIGN(2) : { *(.psram_text_cpu1) *(.cpu1_psram) } > psram1
    .CPU0_psram_text      ALIGN(2) : { *(.psram_text_cpu0) *(.cpu0_psram) } > psram0
    
    /* PFLASH Sections */
    /* Fixed memory Allocations for _START  for CPU0*/
    .start_tc0 (LCF_STARTPTR_NC_CPU0) : AT(LCF_STARTPTR_CPU0) { PROVIDE(_start = .); *(.start) } > pfls0_nc
    .start_res0 (LCF_STARTPTR_CPU0 + SIZEOF(.start_tc0)) : {} > pfls0
    .interface_const (0x80000020) : { __IF_CONST = .; KEEP (*(.interface_const)) } > pfls0
    
    /* Fixed memory Allocations for Trap Vector Table */
    .traptab_tc0 (LCF_TRAPVEC0_START) : { PROVIDE(__TRAPTAB_CPU0 = .); *(.traptab_cpu0) . = align(32);} > pfls0
    .traptab_tc1 (LCF_TRAPVEC1_START) : { PROVIDE(__TRAPTAB_CPU1 = .); *(.traptab_cpu1) . = align(32);} > pfls1
    .traptab_tc2 (LCF_TRAPVEC2_START) : { PROVIDE(__TRAPTAB_CPU2 = .); *(.traptab_cpu2) . = align(32);} > pfls2
    .traptab_tc3 (LCF_TRAPVEC3_START) : { PROVIDE(__TRAPTAB_CPU3 = .); *(.traptab_cpu3) . = align(32);} > pfls3
    
    /* Fixed memory Allocations for _START  for CPU1 to 3*/
    .start_tc1 (LCF_STARTPTR_NC_CPU1) : AT(LCF_STARTPTR_CPU1) { PROVIDE(_start_cpu1 = .); *(.start_cpu1) } > pfls1_nc
    .start_res1 (LCF_STARTPTR_CPU1 + SIZEOF(.start_tc1)) : {} > pfls1
    .start_tc2 (LCF_STARTPTR_NC_CPU2) : AT(LCF_STARTPTR_CPU2) { PROVIDE(_start_cpu2 = .); *(.start_cpu2) } > pfls2_nc
    .start_res2 (LCF_STARTPTR_CPU2 + SIZEOF(.start_tc2)) : {} > pfls2
    .start_tc3 (LCF_STARTPTR_NC_CPU3) : AT(LCF_STARTPTR_CPU3) { PROVIDE(_start_cpu3 = .); *(.start_cpu3) } > pfls3_nc
    .start_res3 (LCF_STARTPTR_CPU3 + SIZEOF(.start_tc3)) : {} > pfls3
    PROVIDE(__START0 = LCF_STARTPTR_NC_CPU0);
    PROVIDE(__START1 = LCF_STARTPTR_NC_CPU1);
    PROVIDE(__START2 = LCF_STARTPTR_NC_CPU2);
    PROVIDE(__START3 = LCF_STARTPTR_NC_CPU3);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU0 = 0); /* Not used */
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU1 = 0);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU2 = 0);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU3 = 0);
    /* Near absolute RAM sections */
    .GLOBAL_zrodata ABS   ALIGN(4) : { "Ifx_Ssw_Tc?.*(.zrodata)" "Cpu?_Main.*(.zrodata)" "*(.zrodata)" } > pfls0
    
    /* Small addressable ROM sections */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global constants*/
    //.GLOBAL_srodata         ALIGN(4) : { PROVIDE(__A1_MEM = .); "Ifx_Ssw_Tc?.*(.srodata)" "Cpu?_Main.*(.srodata)" "*(.srodata)" } > pfls3
    //.GLOBAL_srodata         ALIGN(4) : { PROVIDE(__A1_MEM = .); "Ifx_Ssw_Tc?.*(.srodata)" "Cpu?_Main.*(.srodata)" "*(.srodata)" } > pfls2
    //GLOBAL_srodata         ALIGN(4) : { PROVIDE(__A1_MEM = .); "Ifx_Ssw_Tc?.*(.srodata)" "Cpu?_Main.*(.srodata)" "*(.srodata)" } > pfls1
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
    
    .CPU3_rodata          ALIGN(4) : { "Ifx_Ssw_Tc3.*(.rodata)" "Cpu3_Main.*(.rodata)" "*(.rodata_cpu3)" } > pfls3
    .CPU2_rodata          ALIGN(4) : { "Ifx_Ssw_Tc2.*(.rodata)" "Cpu2_Main.*(.rodata)" "*(.rodata_cpu2)" } > pfls2
    .CPU1_rodata          ALIGN(4) : { "Ifx_Ssw_Tc1.*(.rodata)" "Cpu1_Main.*(.rodata)" "*(.rodata_cpu1)" } > pfls1
    .CPU0_rodata          ALIGN(4) : { "Ifx_Ssw_Tc0.*(.rodata)" "Cpu0_Main.*(.rodata)" "*(.rodata_cpu0)" } > pfls0
    
    /* Code sections */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global code sections*/
    //.GLOBAL_text          ALIGN(2) : { "*(.text)" "*(.text.*)" } > pfls3
    //.GLOBAL_text          ALIGN(2) : { "*(.text)" "*(.text.*)" } > pfls2
    //.GLOBAL_text          ALIGN(2) : { "*(.text)" "*(.text.*)" } > pfls1
    .GLOBAL_text          ALIGN(2) : { "*(.text)" "*(.text.*)" } > pfls0
    
    /* The .syscall section is a special section that allows communication
        between the application and the MULTI debugger and/or simulator */
    .syscall              ALIGN(2) : > .
    
    /* The .secinfo section contains information about how to initialize
       memory when your application loads.  It tells us which sections of
       RAM need to be zero-initialized and which sections need to be copied
       from ROM. */
    .secinfo              ALIGN(4) : > .
    
    .CPU3_text            ALIGN(2) : { "Ifx_Ssw_Tc3.*(.text)" "Cpu3_Main.*(.text)" "*(.text_cpu3)" } > pfls3
    .CPU2_text            ALIGN(2) : { "Ifx_Ssw_Tc2.*(.text)" "Cpu2_Main.*(.text)" "*(.text_cpu2)" } > pfls2
    .CPU1_text            ALIGN(2) : { "Ifx_Ssw_Tc1.*(.text)" "Cpu1_Main.*(.text)" "*(.text_cpu1)" } > pfls1
    .CPU0_text            ALIGN(2) : { "Ifx_Ssw_Tc0.*(.text)" "Cpu0_Main.*(.text)" "*(.text_cpu0)" } > pfls0
    
    /* Copy initialization data */
    /*Un comment one of the below statement groups to enable CpuX FLASHs to hold global copy data sections*/
    //.ROM.CPU0_zdata       ROM(.CPU0_zdata) : > pfls3
    //.ROM.CPU0_zdata       ROM(.CPU0_zdata) : > pfls2
    //.ROM.CPU0_zdata       ROM(.CPU0_zdata) : > pfls1
    .ROM.CPU0_zdata        ROM(.CPU0_zdata) : > pfls0
    .ROM.CPU0_data         ROM(.CPU0_data) : > .
    
    .ROM.CPU1_zdata        ROM(.CPU1_zdata) : > .
    .ROM.CPU1_data         ROM(.CPU1_data) : > .
    
    .ROM.CPU2_zdata        ROM(.CPU2_zdata) : > .
    .ROM.CPU2_data         ROM(.CPU2_data) : > .
    
    .ROM.CPU3_zdata        ROM(.CPU3_zdata) : > .
    .ROM.CPU3_data         ROM(.CPU3_data) : > .
    
    .ROM.GLOBAL_zdata      ROM(.GLOBAL_zdata) : > .
    .ROM.GLOBAL_data       ROM(.GLOBAL_data) : > .
    .ROM.GLOBAL_sdata      ROM(.GLOBAL_sdata) : > .
    .ROM.CPU0_lmudata      ROM(.CPU0_lmudata) : > .
    .ROM.CPU1_lmudata      ROM(.CPU1_lmudata) : > .
    .ROM.CPU2_lmudata      ROM(.CPU2_lmudata) : > .
    .ROM.CPU3_lmudata      ROM(.CPU3_lmudata) : > .
    
    .ROM.GLOBAL_lmuzdata   ROM(.GLOBAL_lmuzdata) : > .
    .ROM.GLOBAL_lmusdata   ROM(.GLOBAL_lmusdata) : > .
    .ROM.GLOBAL_lmudata    ROM(.GLOBAL_lmudata) : > .
    
    .ROM.CPU0_psram_text   ROM(.CPU0_psram_text) : > .
    .ROM.CPU1_psram_text   ROM(.CPU1_psram_text) : > .
    .ROM.CPU2_psram_text   ROM(.CPU2_psram_text) : > .
    .ROM.CPU3_psram_text   ROM(.CPU3_psram_text) : > .
    
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
    
    /* Interrupt vector table located at PFLS1 */
    .inttab_tc1_000 BIND (__INTTAB_CPU1 + 0x0000) ALIGN(8) : { *(.intvec_tc1_0  ) *(.intvec_tc1_0x0 ) *(.intvec_tc1_0x0 ) } > pfls1
    .inttab_tc1_001 BIND (__INTTAB_CPU1 + 0x0020) ALIGN(8) : { *(.intvec_tc1_1  ) *(.intvec_tc1_0x1 ) *(.intvec_tc1_0x1 ) } > .
    .inttab_tc1_002 BIND (__INTTAB_CPU1 + 0x0040) ALIGN(8) : { *(.intvec_tc1_2  ) *(.intvec_tc1_0x2 ) *(.intvec_tc1_0x2 ) } > .
    .inttab_tc1_003 BIND (__INTTAB_CPU1 + 0x0060) ALIGN(8) : { *(.intvec_tc1_3  ) *(.intvec_tc1_0x3 ) *(.intvec_tc1_0x3 ) } > .
    .inttab_tc1_004 BIND (__INTTAB_CPU1 + 0x0080) ALIGN(8) : { *(.intvec_tc1_4  ) *(.intvec_tc1_0x4 ) *(.intvec_tc1_0x4 ) } > .
    .inttab_tc1_005 BIND (__INTTAB_CPU1 + 0x00A0) ALIGN(8) : { *(.intvec_tc1_5  ) *(.intvec_tc1_0x5 ) *(.intvec_tc1_0x5 ) } > .
    .inttab_tc1_006 BIND (__INTTAB_CPU1 + 0x00C0) ALIGN(8) : { *(.intvec_tc1_6  ) *(.intvec_tc1_0x6 ) *(.intvec_tc1_0x6 ) } > .
    .inttab_tc1_007 BIND (__INTTAB_CPU1 + 0x00E0) ALIGN(8) : { *(.intvec_tc1_7  ) *(.intvec_tc1_0x7 ) *(.intvec_tc1_0x7 ) } > .
    .inttab_tc1_008 BIND (__INTTAB_CPU1 + 0x0100) ALIGN(8) : { *(.intvec_tc1_8  ) *(.intvec_tc1_0x8 ) *(.intvec_tc1_0x8 ) } > .
    .inttab_tc1_009 BIND (__INTTAB_CPU1 + 0x0120) ALIGN(8) : { *(.intvec_tc1_9  ) *(.intvec_tc1_0x9 ) *(.intvec_tc1_0x9 ) } > .
    .inttab_tc1_00A BIND (__INTTAB_CPU1 + 0x0140) ALIGN(8) : { *(.intvec_tc1_10 ) *(.intvec_tc1_0xA ) *(.intvec_tc1_0xa ) } > .
    .inttab_tc1_00B BIND (__INTTAB_CPU1 + 0x0160) ALIGN(8) : { *(.intvec_tc1_11 ) *(.intvec_tc1_0xB ) *(.intvec_tc1_0xb ) } > .
    .inttab_tc1_00C BIND (__INTTAB_CPU1 + 0x0180) ALIGN(8) : { *(.intvec_tc1_12 ) *(.intvec_tc1_0xC ) *(.intvec_tc1_0xc ) } > .
    .inttab_tc1_00D BIND (__INTTAB_CPU1 + 0x01A0) ALIGN(8) : { *(.intvec_tc1_13 ) *(.intvec_tc1_0xD ) *(.intvec_tc1_0xd ) } > .
    .inttab_tc1_00E BIND (__INTTAB_CPU1 + 0x01C0) ALIGN(8) : { *(.intvec_tc1_14 ) *(.intvec_tc1_0xE ) *(.intvec_tc1_0xe ) } > .
    .inttab_tc1_00F BIND (__INTTAB_CPU1 + 0x01E0) ALIGN(8) : { *(.intvec_tc1_15 ) *(.intvec_tc1_0xF ) *(.intvec_tc1_0xf ) } > .
    .inttab_tc1_010 BIND (__INTTAB_CPU1 + 0x0200) ALIGN(8) : { *(.intvec_tc1_16 ) *(.intvec_tc1_0x10) *(.intvec_tc1_0x10) } > .
    .inttab_tc1_011 BIND (__INTTAB_CPU1 + 0x0220) ALIGN(8) : { *(.intvec_tc1_17 ) *(.intvec_tc1_0x11) *(.intvec_tc1_0x11) } > .
    .inttab_tc1_012 BIND (__INTTAB_CPU1 + 0x0240) ALIGN(8) : { *(.intvec_tc1_18 ) *(.intvec_tc1_0x12) *(.intvec_tc1_0x12) } > .
    .inttab_tc1_013 BIND (__INTTAB_CPU1 + 0x0260) ALIGN(8) : { *(.intvec_tc1_19 ) *(.intvec_tc1_0x13) *(.intvec_tc1_0x13) } > .
    .inttab_tc1_014 BIND (__INTTAB_CPU1 + 0x0280) ALIGN(8) : { *(.intvec_tc1_20 ) *(.intvec_tc1_0x14) *(.intvec_tc1_0x14) } > .
    .inttab_tc1_015 BIND (__INTTAB_CPU1 + 0x02A0) ALIGN(8) : { *(.intvec_tc1_21 ) *(.intvec_tc1_0x15) *(.intvec_tc1_0x15) } > .
    .inttab_tc1_016 BIND (__INTTAB_CPU1 + 0x02C0) ALIGN(8) : { *(.intvec_tc1_22 ) *(.intvec_tc1_0x16) *(.intvec_tc1_0x16) } > .
    .inttab_tc1_017 BIND (__INTTAB_CPU1 + 0x02E0) ALIGN(8) : { *(.intvec_tc1_23 ) *(.intvec_tc1_0x17) *(.intvec_tc1_0x17) } > .
    .inttab_tc1_018 BIND (__INTTAB_CPU1 + 0x0300) ALIGN(8) : { *(.intvec_tc1_24 ) *(.intvec_tc1_0x18) *(.intvec_tc1_0x18) } > .
    .inttab_tc1_019 BIND (__INTTAB_CPU1 + 0x0320) ALIGN(8) : { *(.intvec_tc1_25 ) *(.intvec_tc1_0x19) *(.intvec_tc1_0x19) } > .
    .inttab_tc1_01A BIND (__INTTAB_CPU1 + 0x0340) ALIGN(8) : { *(.intvec_tc1_26 ) *(.intvec_tc1_0x1A) *(.intvec_tc1_0x1a) } > .
    .inttab_tc1_01B BIND (__INTTAB_CPU1 + 0x0360) ALIGN(8) : { *(.intvec_tc1_27 ) *(.intvec_tc1_0x1B) *(.intvec_tc1_0x1b) } > .
    .inttab_tc1_01C BIND (__INTTAB_CPU1 + 0x0380) ALIGN(8) : { *(.intvec_tc1_28 ) *(.intvec_tc1_0x1C) *(.intvec_tc1_0x1c) } > .
    .inttab_tc1_01D BIND (__INTTAB_CPU1 + 0x03A0) ALIGN(8) : { *(.intvec_tc1_29 ) *(.intvec_tc1_0x1D) *(.intvec_tc1_0x1d) } > .
    .inttab_tc1_01E BIND (__INTTAB_CPU1 + 0x03C0) ALIGN(8) : { *(.intvec_tc1_30 ) *(.intvec_tc1_0x1E) *(.intvec_tc1_0x1e) } > .
    .inttab_tc1_01F BIND (__INTTAB_CPU1 + 0x03E0) ALIGN(8) : { *(.intvec_tc1_31 ) *(.intvec_tc1_0x1F) *(.intvec_tc1_0x1f) } > .
    .inttab_tc1_020 BIND (__INTTAB_CPU1 + 0x0400) ALIGN(8) : { *(.intvec_tc1_32 ) *(.intvec_tc1_0x20) *(.intvec_tc1_0x20) } > .
    .inttab_tc1_021 BIND (__INTTAB_CPU1 + 0x0420) ALIGN(8) : { *(.intvec_tc1_33 ) *(.intvec_tc1_0x21) *(.intvec_tc1_0x21) } > .
    .inttab_tc1_022 BIND (__INTTAB_CPU1 + 0x0440) ALIGN(8) : { *(.intvec_tc1_34 ) *(.intvec_tc1_0x22) *(.intvec_tc1_0x22) } > .
    .inttab_tc1_023 BIND (__INTTAB_CPU1 + 0x0460) ALIGN(8) : { *(.intvec_tc1_35 ) *(.intvec_tc1_0x23) *(.intvec_tc1_0x23) } > .
    .inttab_tc1_024 BIND (__INTTAB_CPU1 + 0x0480) ALIGN(8) : { *(.intvec_tc1_36 ) *(.intvec_tc1_0x24) *(.intvec_tc1_0x24) } > .
    .inttab_tc1_025 BIND (__INTTAB_CPU1 + 0x04A0) ALIGN(8) : { *(.intvec_tc1_37 ) *(.intvec_tc1_0x25) *(.intvec_tc1_0x25) } > .
    .inttab_tc1_026 BIND (__INTTAB_CPU1 + 0x04C0) ALIGN(8) : { *(.intvec_tc1_38 ) *(.intvec_tc1_0x26) *(.intvec_tc1_0x26) } > .
    .inttab_tc1_027 BIND (__INTTAB_CPU1 + 0x04E0) ALIGN(8) : { *(.intvec_tc1_39 ) *(.intvec_tc1_0x27) *(.intvec_tc1_0x27) } > .
    .inttab_tc1_028 BIND (__INTTAB_CPU1 + 0x0500) ALIGN(8) : { *(.intvec_tc1_40 ) *(.intvec_tc1_0x28) *(.intvec_tc1_0x28) } > .
    .inttab_tc1_029 BIND (__INTTAB_CPU1 + 0x0520) ALIGN(8) : { *(.intvec_tc1_41 ) *(.intvec_tc1_0x29) *(.intvec_tc1_0x29) } > .
    .inttab_tc1_02A BIND (__INTTAB_CPU1 + 0x0540) ALIGN(8) : { *(.intvec_tc1_42 ) *(.intvec_tc1_0x2A) *(.intvec_tc1_0x2a) } > .
    .inttab_tc1_02B BIND (__INTTAB_CPU1 + 0x0560) ALIGN(8) : { *(.intvec_tc1_43 ) *(.intvec_tc1_0x2B) *(.intvec_tc1_0x2b) } > .
    .inttab_tc1_02C BIND (__INTTAB_CPU1 + 0x0580) ALIGN(8) : { *(.intvec_tc1_44 ) *(.intvec_tc1_0x2C) *(.intvec_tc1_0x2c) } > .
    .inttab_tc1_02D BIND (__INTTAB_CPU1 + 0x05A0) ALIGN(8) : { *(.intvec_tc1_45 ) *(.intvec_tc1_0x2D) *(.intvec_tc1_0x2d) } > .
    .inttab_tc1_02E BIND (__INTTAB_CPU1 + 0x05C0) ALIGN(8) : { *(.intvec_tc1_46 ) *(.intvec_tc1_0x2E) *(.intvec_tc1_0x2e) } > .
    .inttab_tc1_02F BIND (__INTTAB_CPU1 + 0x05E0) ALIGN(8) : { *(.intvec_tc1_47 ) *(.intvec_tc1_0x2F) *(.intvec_tc1_0x2f) } > .
    .inttab_tc1_030 BIND (__INTTAB_CPU1 + 0x0600) ALIGN(8) : { *(.intvec_tc1_48 ) *(.intvec_tc1_0x30) *(.intvec_tc1_0x30) } > .
    .inttab_tc1_031 BIND (__INTTAB_CPU1 + 0x0620) ALIGN(8) : { *(.intvec_tc1_49 ) *(.intvec_tc1_0x31) *(.intvec_tc1_0x31) } > .
    .inttab_tc1_032 BIND (__INTTAB_CPU1 + 0x0640) ALIGN(8) : { *(.intvec_tc1_50 ) *(.intvec_tc1_0x32) *(.intvec_tc1_0x32) } > .
    .inttab_tc1_033 BIND (__INTTAB_CPU1 + 0x0660) ALIGN(8) : { *(.intvec_tc1_51 ) *(.intvec_tc1_0x33) *(.intvec_tc1_0x33) } > .
    .inttab_tc1_034 BIND (__INTTAB_CPU1 + 0x0680) ALIGN(8) : { *(.intvec_tc1_52 ) *(.intvec_tc1_0x34) *(.intvec_tc1_0x34) } > .
    .inttab_tc1_035 BIND (__INTTAB_CPU1 + 0x06A0) ALIGN(8) : { *(.intvec_tc1_53 ) *(.intvec_tc1_0x35) *(.intvec_tc1_0x35) } > .
    .inttab_tc1_036 BIND (__INTTAB_CPU1 + 0x06C0) ALIGN(8) : { *(.intvec_tc1_54 ) *(.intvec_tc1_0x36) *(.intvec_tc1_0x36) } > .
    .inttab_tc1_037 BIND (__INTTAB_CPU1 + 0x06E0) ALIGN(8) : { *(.intvec_tc1_55 ) *(.intvec_tc1_0x37) *(.intvec_tc1_0x37) } > .
    .inttab_tc1_038 BIND (__INTTAB_CPU1 + 0x0700) ALIGN(8) : { *(.intvec_tc1_56 ) *(.intvec_tc1_0x38) *(.intvec_tc1_0x38) } > .
    .inttab_tc1_039 BIND (__INTTAB_CPU1 + 0x0720) ALIGN(8) : { *(.intvec_tc1_57 ) *(.intvec_tc1_0x39) *(.intvec_tc1_0x39) } > .
    .inttab_tc1_03A BIND (__INTTAB_CPU1 + 0x0740) ALIGN(8) : { *(.intvec_tc1_58 ) *(.intvec_tc1_0x3A) *(.intvec_tc1_0x3a) } > .
    .inttab_tc1_03B BIND (__INTTAB_CPU1 + 0x0760) ALIGN(8) : { *(.intvec_tc1_59 ) *(.intvec_tc1_0x3B) *(.intvec_tc1_0x3b) } > .
    .inttab_tc1_03C BIND (__INTTAB_CPU1 + 0x0780) ALIGN(8) : { *(.intvec_tc1_60 ) *(.intvec_tc1_0x3C) *(.intvec_tc1_0x3c) } > .
    .inttab_tc1_03D BIND (__INTTAB_CPU1 + 0x07A0) ALIGN(8) : { *(.intvec_tc1_61 ) *(.intvec_tc1_0x3D) *(.intvec_tc1_0x3d) } > .
    .inttab_tc1_03E BIND (__INTTAB_CPU1 + 0x07C0) ALIGN(8) : { *(.intvec_tc1_62 ) *(.intvec_tc1_0x3E) *(.intvec_tc1_0x3e) } > .
    .inttab_tc1_03F BIND (__INTTAB_CPU1 + 0x07E0) ALIGN(8) : { *(.intvec_tc1_63 ) *(.intvec_tc1_0x3F) *(.intvec_tc1_0x3f) } > .
    .inttab_tc1_040 BIND (__INTTAB_CPU1 + 0x0800) ALIGN(8) : { *(.intvec_tc1_64 ) *(.intvec_tc1_0x40) *(.intvec_tc1_0x40) } > .
    .inttab_tc1_041 BIND (__INTTAB_CPU1 + 0x0820) ALIGN(8) : { *(.intvec_tc1_65 ) *(.intvec_tc1_0x41) *(.intvec_tc1_0x41) } > .
    .inttab_tc1_042 BIND (__INTTAB_CPU1 + 0x0840) ALIGN(8) : { *(.intvec_tc1_66 ) *(.intvec_tc1_0x42) *(.intvec_tc1_0x42) } > .
    .inttab_tc1_043 BIND (__INTTAB_CPU1 + 0x0860) ALIGN(8) : { *(.intvec_tc1_67 ) *(.intvec_tc1_0x43) *(.intvec_tc1_0x43) } > .
    .inttab_tc1_044 BIND (__INTTAB_CPU1 + 0x0880) ALIGN(8) : { *(.intvec_tc1_68 ) *(.intvec_tc1_0x44) *(.intvec_tc1_0x44) } > .
    .inttab_tc1_045 BIND (__INTTAB_CPU1 + 0x08A0) ALIGN(8) : { *(.intvec_tc1_69 ) *(.intvec_tc1_0x45) *(.intvec_tc1_0x45) } > .
    .inttab_tc1_046 BIND (__INTTAB_CPU1 + 0x08C0) ALIGN(8) : { *(.intvec_tc1_70 ) *(.intvec_tc1_0x46) *(.intvec_tc1_0x46) } > .
    .inttab_tc1_047 BIND (__INTTAB_CPU1 + 0x08E0) ALIGN(8) : { *(.intvec_tc1_71 ) *(.intvec_tc1_0x47) *(.intvec_tc1_0x47) } > .
    .inttab_tc1_048 BIND (__INTTAB_CPU1 + 0x0900) ALIGN(8) : { *(.intvec_tc1_72 ) *(.intvec_tc1_0x48) *(.intvec_tc1_0x48) } > .
    .inttab_tc1_049 BIND (__INTTAB_CPU1 + 0x0920) ALIGN(8) : { *(.intvec_tc1_73 ) *(.intvec_tc1_0x49) *(.intvec_tc1_0x49) } > .
    .inttab_tc1_04A BIND (__INTTAB_CPU1 + 0x0940) ALIGN(8) : { *(.intvec_tc1_74 ) *(.intvec_tc1_0x4A) *(.intvec_tc1_0x4a) } > .
    .inttab_tc1_04B BIND (__INTTAB_CPU1 + 0x0960) ALIGN(8) : { *(.intvec_tc1_75 ) *(.intvec_tc1_0x4B) *(.intvec_tc1_0x4b) } > .
    .inttab_tc1_04C BIND (__INTTAB_CPU1 + 0x0980) ALIGN(8) : { *(.intvec_tc1_76 ) *(.intvec_tc1_0x4C) *(.intvec_tc1_0x4c) } > .
    .inttab_tc1_04D BIND (__INTTAB_CPU1 + 0x09A0) ALIGN(8) : { *(.intvec_tc1_77 ) *(.intvec_tc1_0x4D) *(.intvec_tc1_0x4d) } > .
    .inttab_tc1_04E BIND (__INTTAB_CPU1 + 0x09C0) ALIGN(8) : { *(.intvec_tc1_78 ) *(.intvec_tc1_0x4E) *(.intvec_tc1_0x4e) } > .
    .inttab_tc1_04F BIND (__INTTAB_CPU1 + 0x09E0) ALIGN(8) : { *(.intvec_tc1_79 ) *(.intvec_tc1_0x4F) *(.intvec_tc1_0x4f) } > .
    .inttab_tc1_050 BIND (__INTTAB_CPU1 + 0x0A00) ALIGN(8) : { *(.intvec_tc1_80 ) *(.intvec_tc1_0x50) *(.intvec_tc1_0x50) } > .
    .inttab_tc1_051 BIND (__INTTAB_CPU1 + 0x0A20) ALIGN(8) : { *(.intvec_tc1_81 ) *(.intvec_tc1_0x51) *(.intvec_tc1_0x51) } > .
    .inttab_tc1_052 BIND (__INTTAB_CPU1 + 0x0A40) ALIGN(8) : { *(.intvec_tc1_82 ) *(.intvec_tc1_0x52) *(.intvec_tc1_0x52) } > .
    .inttab_tc1_053 BIND (__INTTAB_CPU1 + 0x0A60) ALIGN(8) : { *(.intvec_tc1_83 ) *(.intvec_tc1_0x53) *(.intvec_tc1_0x53) } > .
    .inttab_tc1_054 BIND (__INTTAB_CPU1 + 0x0A80) ALIGN(8) : { *(.intvec_tc1_84 ) *(.intvec_tc1_0x54) *(.intvec_tc1_0x54) } > .
    .inttab_tc1_055 BIND (__INTTAB_CPU1 + 0x0AA0) ALIGN(8) : { *(.intvec_tc1_85 ) *(.intvec_tc1_0x55) *(.intvec_tc1_0x55) } > .
    .inttab_tc1_056 BIND (__INTTAB_CPU1 + 0x0AC0) ALIGN(8) : { *(.intvec_tc1_86 ) *(.intvec_tc1_0x56) *(.intvec_tc1_0x56) } > .
    .inttab_tc1_057 BIND (__INTTAB_CPU1 + 0x0AE0) ALIGN(8) : { *(.intvec_tc1_87 ) *(.intvec_tc1_0x57) *(.intvec_tc1_0x57) } > .
    .inttab_tc1_058 BIND (__INTTAB_CPU1 + 0x0B00) ALIGN(8) : { *(.intvec_tc1_88 ) *(.intvec_tc1_0x58) *(.intvec_tc1_0x58) } > .
    .inttab_tc1_059 BIND (__INTTAB_CPU1 + 0x0B20) ALIGN(8) : { *(.intvec_tc1_89 ) *(.intvec_tc1_0x59) *(.intvec_tc1_0x59) } > .
    .inttab_tc1_05A BIND (__INTTAB_CPU1 + 0x0B40) ALIGN(8) : { *(.intvec_tc1_90 ) *(.intvec_tc1_0x5A) *(.intvec_tc1_0x5a) } > .
    .inttab_tc1_05B BIND (__INTTAB_CPU1 + 0x0B60) ALIGN(8) : { *(.intvec_tc1_91 ) *(.intvec_tc1_0x5B) *(.intvec_tc1_0x5b) } > .
    .inttab_tc1_05C BIND (__INTTAB_CPU1 + 0x0B80) ALIGN(8) : { *(.intvec_tc1_92 ) *(.intvec_tc1_0x5C) *(.intvec_tc1_0x5c) } > .
    .inttab_tc1_05D BIND (__INTTAB_CPU1 + 0x0BA0) ALIGN(8) : { *(.intvec_tc1_93 ) *(.intvec_tc1_0x5D) *(.intvec_tc1_0x5d) } > .
    .inttab_tc1_05E BIND (__INTTAB_CPU1 + 0x0BC0) ALIGN(8) : { *(.intvec_tc1_94 ) *(.intvec_tc1_0x5E) *(.intvec_tc1_0x5e) } > .
    .inttab_tc1_05F BIND (__INTTAB_CPU1 + 0x0BE0) ALIGN(8) : { *(.intvec_tc1_95 ) *(.intvec_tc1_0x5F) *(.intvec_tc1_0x5f) } > .
    .inttab_tc1_060 BIND (__INTTAB_CPU1 + 0x0C00) ALIGN(8) : { *(.intvec_tc1_96 ) *(.intvec_tc1_0x60) *(.intvec_tc1_0x60) } > .
    .inttab_tc1_061 BIND (__INTTAB_CPU1 + 0x0C20) ALIGN(8) : { *(.intvec_tc1_97 ) *(.intvec_tc1_0x61) *(.intvec_tc1_0x61) } > .
    .inttab_tc1_062 BIND (__INTTAB_CPU1 + 0x0C40) ALIGN(8) : { *(.intvec_tc1_98 ) *(.intvec_tc1_0x62) *(.intvec_tc1_0x62) } > .
    .inttab_tc1_063 BIND (__INTTAB_CPU1 + 0x0C60) ALIGN(8) : { *(.intvec_tc1_99 ) *(.intvec_tc1_0x63) *(.intvec_tc1_0x63) } > .
    .inttab_tc1_064 BIND (__INTTAB_CPU1 + 0x0C80) ALIGN(8) : { *(.intvec_tc1_100) *(.intvec_tc1_0x64) *(.intvec_tc1_0x64) } > .
    .inttab_tc1_065 BIND (__INTTAB_CPU1 + 0x0CA0) ALIGN(8) : { *(.intvec_tc1_101) *(.intvec_tc1_0x65) *(.intvec_tc1_0x65) } > .
    .inttab_tc1_066 BIND (__INTTAB_CPU1 + 0x0CC0) ALIGN(8) : { *(.intvec_tc1_102) *(.intvec_tc1_0x66) *(.intvec_tc1_0x66) } > .
    .inttab_tc1_067 BIND (__INTTAB_CPU1 + 0x0CE0) ALIGN(8) : { *(.intvec_tc1_103) *(.intvec_tc1_0x67) *(.intvec_tc1_0x67) } > .
    .inttab_tc1_068 BIND (__INTTAB_CPU1 + 0x0D00) ALIGN(8) : { *(.intvec_tc1_104) *(.intvec_tc1_0x68) *(.intvec_tc1_0x68) } > .
    .inttab_tc1_069 BIND (__INTTAB_CPU1 + 0x0D20) ALIGN(8) : { *(.intvec_tc1_105) *(.intvec_tc1_0x69) *(.intvec_tc1_0x69) } > .
    .inttab_tc1_06A BIND (__INTTAB_CPU1 + 0x0D40) ALIGN(8) : { *(.intvec_tc1_106) *(.intvec_tc1_0x6A) *(.intvec_tc1_0x6a) } > .
    .inttab_tc1_06B BIND (__INTTAB_CPU1 + 0x0D60) ALIGN(8) : { *(.intvec_tc1_107) *(.intvec_tc1_0x6B) *(.intvec_tc1_0x6b) } > .
    .inttab_tc1_06C BIND (__INTTAB_CPU1 + 0x0D80) ALIGN(8) : { *(.intvec_tc1_108) *(.intvec_tc1_0x6C) *(.intvec_tc1_0x6c) } > .
    .inttab_tc1_06D BIND (__INTTAB_CPU1 + 0x0DA0) ALIGN(8) : { *(.intvec_tc1_109) *(.intvec_tc1_0x6D) *(.intvec_tc1_0x6d) } > .
    .inttab_tc1_06E BIND (__INTTAB_CPU1 + 0x0DC0) ALIGN(8) : { *(.intvec_tc1_110) *(.intvec_tc1_0x6E) *(.intvec_tc1_0x6e) } > .
    .inttab_tc1_06F BIND (__INTTAB_CPU1 + 0x0DE0) ALIGN(8) : { *(.intvec_tc1_111) *(.intvec_tc1_0x6F) *(.intvec_tc1_0x6f) } > .
    .inttab_tc1_070 BIND (__INTTAB_CPU1 + 0x0E00) ALIGN(8) : { *(.intvec_tc1_112) *(.intvec_tc1_0x70) *(.intvec_tc1_0x70) } > .
    .inttab_tc1_071 BIND (__INTTAB_CPU1 + 0x0E20) ALIGN(8) : { *(.intvec_tc1_113) *(.intvec_tc1_0x71) *(.intvec_tc1_0x71) } > .
    .inttab_tc1_072 BIND (__INTTAB_CPU1 + 0x0E40) ALIGN(8) : { *(.intvec_tc1_114) *(.intvec_tc1_0x72) *(.intvec_tc1_0x72) } > .
    .inttab_tc1_073 BIND (__INTTAB_CPU1 + 0x0E60) ALIGN(8) : { *(.intvec_tc1_115) *(.intvec_tc1_0x73) *(.intvec_tc1_0x73) } > .
    .inttab_tc1_074 BIND (__INTTAB_CPU1 + 0x0E80) ALIGN(8) : { *(.intvec_tc1_116) *(.intvec_tc1_0x74) *(.intvec_tc1_0x74) } > .
    .inttab_tc1_075 BIND (__INTTAB_CPU1 + 0x0EA0) ALIGN(8) : { *(.intvec_tc1_117) *(.intvec_tc1_0x75) *(.intvec_tc1_0x75) } > .
    .inttab_tc1_076 BIND (__INTTAB_CPU1 + 0x0EC0) ALIGN(8) : { *(.intvec_tc1_118) *(.intvec_tc1_0x76) *(.intvec_tc1_0x76) } > .
    .inttab_tc1_077 BIND (__INTTAB_CPU1 + 0x0EE0) ALIGN(8) : { *(.intvec_tc1_119) *(.intvec_tc1_0x77) *(.intvec_tc1_0x77) } > .
    .inttab_tc1_078 BIND (__INTTAB_CPU1 + 0x0F00) ALIGN(8) : { *(.intvec_tc1_120) *(.intvec_tc1_0x78) *(.intvec_tc1_0x78) } > .
    .inttab_tc1_079 BIND (__INTTAB_CPU1 + 0x0F20) ALIGN(8) : { *(.intvec_tc1_121) *(.intvec_tc1_0x79) *(.intvec_tc1_0x79) } > .
    .inttab_tc1_07A BIND (__INTTAB_CPU1 + 0x0F40) ALIGN(8) : { *(.intvec_tc1_122) *(.intvec_tc1_0x7A) *(.intvec_tc1_0x7a) } > .
    .inttab_tc1_07B BIND (__INTTAB_CPU1 + 0x0F60) ALIGN(8) : { *(.intvec_tc1_123) *(.intvec_tc1_0x7B) *(.intvec_tc1_0x7b) } > .
    .inttab_tc1_07C BIND (__INTTAB_CPU1 + 0x0F80) ALIGN(8) : { *(.intvec_tc1_124) *(.intvec_tc1_0x7C) *(.intvec_tc1_0x7c) } > .
    .inttab_tc1_07D BIND (__INTTAB_CPU1 + 0x0FA0) ALIGN(8) : { *(.intvec_tc1_125) *(.intvec_tc1_0x7D) *(.intvec_tc1_0x7d) } > .
    .inttab_tc1_07E BIND (__INTTAB_CPU1 + 0x0FC0) ALIGN(8) : { *(.intvec_tc1_126) *(.intvec_tc1_0x7E) *(.intvec_tc1_0x7e) } > .
    .inttab_tc1_07F BIND (__INTTAB_CPU1 + 0x0FE0) ALIGN(8) : { *(.intvec_tc1_127) *(.intvec_tc1_0x7F) *(.intvec_tc1_0x7f) } > .
    .inttab_tc1_080 BIND (__INTTAB_CPU1 + 0x1000) ALIGN(8) : { *(.intvec_tc1_128) *(.intvec_tc1_0x80) *(.intvec_tc1_0x80) } > .
    .inttab_tc1_081 BIND (__INTTAB_CPU1 + 0x1020) ALIGN(8) : { *(.intvec_tc1_129) *(.intvec_tc1_0x81) *(.intvec_tc1_0x81) } > .
    .inttab_tc1_082 BIND (__INTTAB_CPU1 + 0x1040) ALIGN(8) : { *(.intvec_tc1_130) *(.intvec_tc1_0x82) *(.intvec_tc1_0x82) } > .
    .inttab_tc1_083 BIND (__INTTAB_CPU1 + 0x1060) ALIGN(8) : { *(.intvec_tc1_131) *(.intvec_tc1_0x83) *(.intvec_tc1_0x83) } > .
    .inttab_tc1_084 BIND (__INTTAB_CPU1 + 0x1080) ALIGN(8) : { *(.intvec_tc1_132) *(.intvec_tc1_0x84) *(.intvec_tc1_0x84) } > .
    .inttab_tc1_085 BIND (__INTTAB_CPU1 + 0x10A0) ALIGN(8) : { *(.intvec_tc1_133) *(.intvec_tc1_0x85) *(.intvec_tc1_0x85) } > .
    .inttab_tc1_086 BIND (__INTTAB_CPU1 + 0x10C0) ALIGN(8) : { *(.intvec_tc1_134) *(.intvec_tc1_0x86) *(.intvec_tc1_0x86) } > .
    .inttab_tc1_087 BIND (__INTTAB_CPU1 + 0x10E0) ALIGN(8) : { *(.intvec_tc1_135) *(.intvec_tc1_0x87) *(.intvec_tc1_0x87) } > .
    .inttab_tc1_088 BIND (__INTTAB_CPU1 + 0x1100) ALIGN(8) : { *(.intvec_tc1_136) *(.intvec_tc1_0x88) *(.intvec_tc1_0x88) } > .
    .inttab_tc1_089 BIND (__INTTAB_CPU1 + 0x1120) ALIGN(8) : { *(.intvec_tc1_137) *(.intvec_tc1_0x89) *(.intvec_tc1_0x89) } > .
    .inttab_tc1_08A BIND (__INTTAB_CPU1 + 0x1140) ALIGN(8) : { *(.intvec_tc1_138) *(.intvec_tc1_0x8A) *(.intvec_tc1_0x8a) } > .
    .inttab_tc1_08B BIND (__INTTAB_CPU1 + 0x1160) ALIGN(8) : { *(.intvec_tc1_139) *(.intvec_tc1_0x8B) *(.intvec_tc1_0x8b) } > .
    .inttab_tc1_08C BIND (__INTTAB_CPU1 + 0x1180) ALIGN(8) : { *(.intvec_tc1_140) *(.intvec_tc1_0x8C) *(.intvec_tc1_0x8c) } > .
    .inttab_tc1_08D BIND (__INTTAB_CPU1 + 0x11A0) ALIGN(8) : { *(.intvec_tc1_141) *(.intvec_tc1_0x8D) *(.intvec_tc1_0x8d) } > .
    .inttab_tc1_08E BIND (__INTTAB_CPU1 + 0x11C0) ALIGN(8) : { *(.intvec_tc1_142) *(.intvec_tc1_0x8E) *(.intvec_tc1_0x8e) } > .
    .inttab_tc1_08F BIND (__INTTAB_CPU1 + 0x11E0) ALIGN(8) : { *(.intvec_tc1_143) *(.intvec_tc1_0x8F) *(.intvec_tc1_0x8f) } > .
    .inttab_tc1_090 BIND (__INTTAB_CPU1 + 0x1200) ALIGN(8) : { *(.intvec_tc1_144) *(.intvec_tc1_0x90) *(.intvec_tc1_0x90) } > .
    .inttab_tc1_091 BIND (__INTTAB_CPU1 + 0x1220) ALIGN(8) : { *(.intvec_tc1_145) *(.intvec_tc1_0x91) *(.intvec_tc1_0x91) } > .
    .inttab_tc1_092 BIND (__INTTAB_CPU1 + 0x1240) ALIGN(8) : { *(.intvec_tc1_146) *(.intvec_tc1_0x92) *(.intvec_tc1_0x92) } > .
    .inttab_tc1_093 BIND (__INTTAB_CPU1 + 0x1260) ALIGN(8) : { *(.intvec_tc1_147) *(.intvec_tc1_0x93) *(.intvec_tc1_0x93) } > .
    .inttab_tc1_094 BIND (__INTTAB_CPU1 + 0x1280) ALIGN(8) : { *(.intvec_tc1_148) *(.intvec_tc1_0x94) *(.intvec_tc1_0x94) } > .
    .inttab_tc1_095 BIND (__INTTAB_CPU1 + 0x12A0) ALIGN(8) : { *(.intvec_tc1_149) *(.intvec_tc1_0x95) *(.intvec_tc1_0x95) } > .
    .inttab_tc1_096 BIND (__INTTAB_CPU1 + 0x12C0) ALIGN(8) : { *(.intvec_tc1_150) *(.intvec_tc1_0x96) *(.intvec_tc1_0x96) } > .
    .inttab_tc1_097 BIND (__INTTAB_CPU1 + 0x12E0) ALIGN(8) : { *(.intvec_tc1_151) *(.intvec_tc1_0x97) *(.intvec_tc1_0x97) } > .
    .inttab_tc1_098 BIND (__INTTAB_CPU1 + 0x1300) ALIGN(8) : { *(.intvec_tc1_152) *(.intvec_tc1_0x98) *(.intvec_tc1_0x98) } > .
    .inttab_tc1_099 BIND (__INTTAB_CPU1 + 0x1320) ALIGN(8) : { *(.intvec_tc1_153) *(.intvec_tc1_0x99) *(.intvec_tc1_0x99) } > .
    .inttab_tc1_09A BIND (__INTTAB_CPU1 + 0x1340) ALIGN(8) : { *(.intvec_tc1_154) *(.intvec_tc1_0x9A) *(.intvec_tc1_0x9a) } > .
    .inttab_tc1_09B BIND (__INTTAB_CPU1 + 0x1360) ALIGN(8) : { *(.intvec_tc1_155) *(.intvec_tc1_0x9B) *(.intvec_tc1_0x9b) } > .
    .inttab_tc1_09C BIND (__INTTAB_CPU1 + 0x1380) ALIGN(8) : { *(.intvec_tc1_156) *(.intvec_tc1_0x9C) *(.intvec_tc1_0x9c) } > .
    .inttab_tc1_09D BIND (__INTTAB_CPU1 + 0x13A0) ALIGN(8) : { *(.intvec_tc1_157) *(.intvec_tc1_0x9D) *(.intvec_tc1_0x9d) } > .
    .inttab_tc1_09E BIND (__INTTAB_CPU1 + 0x13C0) ALIGN(8) : { *(.intvec_tc1_158) *(.intvec_tc1_0x9E) *(.intvec_tc1_0x9e) } > .
    .inttab_tc1_09F BIND (__INTTAB_CPU1 + 0x13E0) ALIGN(8) : { *(.intvec_tc1_159) *(.intvec_tc1_0x9F) *(.intvec_tc1_0x9f) } > .
    .inttab_tc1_0A0 BIND (__INTTAB_CPU1 + 0x1400) ALIGN(8) : { *(.intvec_tc1_160) *(.intvec_tc1_0xA0) *(.intvec_tc1_0xa0) } > .
    .inttab_tc1_0A1 BIND (__INTTAB_CPU1 + 0x1420) ALIGN(8) : { *(.intvec_tc1_161) *(.intvec_tc1_0xA1) *(.intvec_tc1_0xa1) } > .
    .inttab_tc1_0A2 BIND (__INTTAB_CPU1 + 0x1440) ALIGN(8) : { *(.intvec_tc1_162) *(.intvec_tc1_0xA2) *(.intvec_tc1_0xa2) } > .
    .inttab_tc1_0A3 BIND (__INTTAB_CPU1 + 0x1460) ALIGN(8) : { *(.intvec_tc1_163) *(.intvec_tc1_0xA3) *(.intvec_tc1_0xa3) } > .
    .inttab_tc1_0A4 BIND (__INTTAB_CPU1 + 0x1480) ALIGN(8) : { *(.intvec_tc1_164) *(.intvec_tc1_0xA4) *(.intvec_tc1_0xa4) } > .
    .inttab_tc1_0A5 BIND (__INTTAB_CPU1 + 0x14A0) ALIGN(8) : { *(.intvec_tc1_165) *(.intvec_tc1_0xA5) *(.intvec_tc1_0xa5) } > .
    .inttab_tc1_0A6 BIND (__INTTAB_CPU1 + 0x14C0) ALIGN(8) : { *(.intvec_tc1_166) *(.intvec_tc1_0xA6) *(.intvec_tc1_0xa6) } > .
    .inttab_tc1_0A7 BIND (__INTTAB_CPU1 + 0x14E0) ALIGN(8) : { *(.intvec_tc1_167) *(.intvec_tc1_0xA7) *(.intvec_tc1_0xa7) } > .
    .inttab_tc1_0A8 BIND (__INTTAB_CPU1 + 0x1500) ALIGN(8) : { *(.intvec_tc1_168) *(.intvec_tc1_0xA8) *(.intvec_tc1_0xa8) } > .
    .inttab_tc1_0A9 BIND (__INTTAB_CPU1 + 0x1520) ALIGN(8) : { *(.intvec_tc1_169) *(.intvec_tc1_0xA9) *(.intvec_tc1_0xa9) } > .
    .inttab_tc1_0AA BIND (__INTTAB_CPU1 + 0x1540) ALIGN(8) : { *(.intvec_tc1_170) *(.intvec_tc1_0xAA) *(.intvec_tc1_0xaa) } > .
    .inttab_tc1_0AB BIND (__INTTAB_CPU1 + 0x1560) ALIGN(8) : { *(.intvec_tc1_171) *(.intvec_tc1_0xAB) *(.intvec_tc1_0xab) } > .
    .inttab_tc1_0AC BIND (__INTTAB_CPU1 + 0x1580) ALIGN(8) : { *(.intvec_tc1_172) *(.intvec_tc1_0xAC) *(.intvec_tc1_0xac) } > .
    .inttab_tc1_0AD BIND (__INTTAB_CPU1 + 0x15A0) ALIGN(8) : { *(.intvec_tc1_173) *(.intvec_tc1_0xAD) *(.intvec_tc1_0xad) } > .
    .inttab_tc1_0AE BIND (__INTTAB_CPU1 + 0x15C0) ALIGN(8) : { *(.intvec_tc1_174) *(.intvec_tc1_0xAE) *(.intvec_tc1_0xae) } > .
    .inttab_tc1_0AF BIND (__INTTAB_CPU1 + 0x15E0) ALIGN(8) : { *(.intvec_tc1_175) *(.intvec_tc1_0xAF) *(.intvec_tc1_0xaf) } > .
    .inttab_tc1_0B0 BIND (__INTTAB_CPU1 + 0x1600) ALIGN(8) : { *(.intvec_tc1_176) *(.intvec_tc1_0xB0) *(.intvec_tc1_0xb0) } > .
    .inttab_tc1_0B1 BIND (__INTTAB_CPU1 + 0x1620) ALIGN(8) : { *(.intvec_tc1_177) *(.intvec_tc1_0xB1) *(.intvec_tc1_0xb1) } > .
    .inttab_tc1_0B2 BIND (__INTTAB_CPU1 + 0x1640) ALIGN(8) : { *(.intvec_tc1_178) *(.intvec_tc1_0xB2) *(.intvec_tc1_0xb2) } > .
    .inttab_tc1_0B3 BIND (__INTTAB_CPU1 + 0x1660) ALIGN(8) : { *(.intvec_tc1_179) *(.intvec_tc1_0xB3) *(.intvec_tc1_0xb3) } > .
    .inttab_tc1_0B4 BIND (__INTTAB_CPU1 + 0x1680) ALIGN(8) : { *(.intvec_tc1_180) *(.intvec_tc1_0xB4) *(.intvec_tc1_0xb4) } > .
    .inttab_tc1_0B5 BIND (__INTTAB_CPU1 + 0x16A0) ALIGN(8) : { *(.intvec_tc1_181) *(.intvec_tc1_0xB5) *(.intvec_tc1_0xb5) } > .
    .inttab_tc1_0B6 BIND (__INTTAB_CPU1 + 0x16C0) ALIGN(8) : { *(.intvec_tc1_182) *(.intvec_tc1_0xB6) *(.intvec_tc1_0xb6) } > .
    .inttab_tc1_0B7 BIND (__INTTAB_CPU1 + 0x16E0) ALIGN(8) : { *(.intvec_tc1_183) *(.intvec_tc1_0xB7) *(.intvec_tc1_0xb7) } > .
    .inttab_tc1_0B8 BIND (__INTTAB_CPU1 + 0x1700) ALIGN(8) : { *(.intvec_tc1_184) *(.intvec_tc1_0xB8) *(.intvec_tc1_0xb8) } > .
    .inttab_tc1_0B9 BIND (__INTTAB_CPU1 + 0x1720) ALIGN(8) : { *(.intvec_tc1_185) *(.intvec_tc1_0xB9) *(.intvec_tc1_0xb9) } > .
    .inttab_tc1_0BA BIND (__INTTAB_CPU1 + 0x1740) ALIGN(8) : { *(.intvec_tc1_186) *(.intvec_tc1_0xBA) *(.intvec_tc1_0xba) } > .
    .inttab_tc1_0BB BIND (__INTTAB_CPU1 + 0x1760) ALIGN(8) : { *(.intvec_tc1_187) *(.intvec_tc1_0xBB) *(.intvec_tc1_0xbb) } > .
    .inttab_tc1_0BC BIND (__INTTAB_CPU1 + 0x1780) ALIGN(8) : { *(.intvec_tc1_188) *(.intvec_tc1_0xBC) *(.intvec_tc1_0xbc) } > .
    .inttab_tc1_0BD BIND (__INTTAB_CPU1 + 0x17A0) ALIGN(8) : { *(.intvec_tc1_189) *(.intvec_tc1_0xBD) *(.intvec_tc1_0xbd) } > .
    .inttab_tc1_0BE BIND (__INTTAB_CPU1 + 0x17C0) ALIGN(8) : { *(.intvec_tc1_190) *(.intvec_tc1_0xBE) *(.intvec_tc1_0xbe) } > .
    .inttab_tc1_0BF BIND (__INTTAB_CPU1 + 0x17E0) ALIGN(8) : { *(.intvec_tc1_191) *(.intvec_tc1_0xBF) *(.intvec_tc1_0xbf) } > .
    .inttab_tc1_0C0 BIND (__INTTAB_CPU1 + 0x1800) ALIGN(8) : { *(.intvec_tc1_192) *(.intvec_tc1_0xC0) *(.intvec_tc1_0xc0) } > .
    .inttab_tc1_0C1 BIND (__INTTAB_CPU1 + 0x1820) ALIGN(8) : { *(.intvec_tc1_193) *(.intvec_tc1_0xC1) *(.intvec_tc1_0xc1) } > .
    .inttab_tc1_0C2 BIND (__INTTAB_CPU1 + 0x1840) ALIGN(8) : { *(.intvec_tc1_194) *(.intvec_tc1_0xC2) *(.intvec_tc1_0xc2) } > .
    .inttab_tc1_0C3 BIND (__INTTAB_CPU1 + 0x1860) ALIGN(8) : { *(.intvec_tc1_195) *(.intvec_tc1_0xC3) *(.intvec_tc1_0xc3) } > .
    .inttab_tc1_0C4 BIND (__INTTAB_CPU1 + 0x1880) ALIGN(8) : { *(.intvec_tc1_196) *(.intvec_tc1_0xC4) *(.intvec_tc1_0xc4) } > .
    .inttab_tc1_0C5 BIND (__INTTAB_CPU1 + 0x18A0) ALIGN(8) : { *(.intvec_tc1_197) *(.intvec_tc1_0xC5) *(.intvec_tc1_0xc5) } > .
    .inttab_tc1_0C6 BIND (__INTTAB_CPU1 + 0x18C0) ALIGN(8) : { *(.intvec_tc1_198) *(.intvec_tc1_0xC6) *(.intvec_tc1_0xc6) } > .
    .inttab_tc1_0C7 BIND (__INTTAB_CPU1 + 0x18E0) ALIGN(8) : { *(.intvec_tc1_199) *(.intvec_tc1_0xC7) *(.intvec_tc1_0xc7) } > .
    .inttab_tc1_0C8 BIND (__INTTAB_CPU1 + 0x1900) ALIGN(8) : { *(.intvec_tc1_200) *(.intvec_tc1_0xC8) *(.intvec_tc1_0xc8) } > .
    .inttab_tc1_0C9 BIND (__INTTAB_CPU1 + 0x1920) ALIGN(8) : { *(.intvec_tc1_201) *(.intvec_tc1_0xC9) *(.intvec_tc1_0xc9) } > .
    .inttab_tc1_0CA BIND (__INTTAB_CPU1 + 0x1940) ALIGN(8) : { *(.intvec_tc1_202) *(.intvec_tc1_0xCA) *(.intvec_tc1_0xca) } > .
    .inttab_tc1_0CB BIND (__INTTAB_CPU1 + 0x1960) ALIGN(8) : { *(.intvec_tc1_203) *(.intvec_tc1_0xCB) *(.intvec_tc1_0xcb) } > .
    .inttab_tc1_0CC BIND (__INTTAB_CPU1 + 0x1980) ALIGN(8) : { *(.intvec_tc1_204) *(.intvec_tc1_0xCC) *(.intvec_tc1_0xcc) } > .
    .inttab_tc1_0CD BIND (__INTTAB_CPU1 + 0x19A0) ALIGN(8) : { *(.intvec_tc1_205) *(.intvec_tc1_0xCD) *(.intvec_tc1_0xcd) } > .
    .inttab_tc1_0CE BIND (__INTTAB_CPU1 + 0x19C0) ALIGN(8) : { *(.intvec_tc1_206) *(.intvec_tc1_0xCE) *(.intvec_tc1_0xce) } > .
    .inttab_tc1_0CF BIND (__INTTAB_CPU1 + 0x19E0) ALIGN(8) : { *(.intvec_tc1_207) *(.intvec_tc1_0xCF) *(.intvec_tc1_0xcf) } > .
    .inttab_tc1_0D0 BIND (__INTTAB_CPU1 + 0x1A00) ALIGN(8) : { *(.intvec_tc1_208) *(.intvec_tc1_0xD0) *(.intvec_tc1_0xd0) } > .
    .inttab_tc1_0D1 BIND (__INTTAB_CPU1 + 0x1A20) ALIGN(8) : { *(.intvec_tc1_209) *(.intvec_tc1_0xD1) *(.intvec_tc1_0xd1) } > .
    .inttab_tc1_0D2 BIND (__INTTAB_CPU1 + 0x1A40) ALIGN(8) : { *(.intvec_tc1_210) *(.intvec_tc1_0xD2) *(.intvec_tc1_0xd2) } > .
    .inttab_tc1_0D3 BIND (__INTTAB_CPU1 + 0x1A60) ALIGN(8) : { *(.intvec_tc1_211) *(.intvec_tc1_0xD3) *(.intvec_tc1_0xd3) } > .
    .inttab_tc1_0D4 BIND (__INTTAB_CPU1 + 0x1A80) ALIGN(8) : { *(.intvec_tc1_212) *(.intvec_tc1_0xD4) *(.intvec_tc1_0xd4) } > .
    .inttab_tc1_0D5 BIND (__INTTAB_CPU1 + 0x1AA0) ALIGN(8) : { *(.intvec_tc1_213) *(.intvec_tc1_0xD5) *(.intvec_tc1_0xd5) } > .
    .inttab_tc1_0D6 BIND (__INTTAB_CPU1 + 0x1AC0) ALIGN(8) : { *(.intvec_tc1_214) *(.intvec_tc1_0xD6) *(.intvec_tc1_0xd6) } > .
    .inttab_tc1_0D7 BIND (__INTTAB_CPU1 + 0x1AE0) ALIGN(8) : { *(.intvec_tc1_215) *(.intvec_tc1_0xD7) *(.intvec_tc1_0xd7) } > .
    .inttab_tc1_0D8 BIND (__INTTAB_CPU1 + 0x1B00) ALIGN(8) : { *(.intvec_tc1_216) *(.intvec_tc1_0xD8) *(.intvec_tc1_0xd8) } > .
    .inttab_tc1_0D9 BIND (__INTTAB_CPU1 + 0x1B20) ALIGN(8) : { *(.intvec_tc1_217) *(.intvec_tc1_0xD9) *(.intvec_tc1_0xd9) } > .
    .inttab_tc1_0DA BIND (__INTTAB_CPU1 + 0x1B40) ALIGN(8) : { *(.intvec_tc1_218) *(.intvec_tc1_0xDA) *(.intvec_tc1_0xda) } > .
    .inttab_tc1_0DB BIND (__INTTAB_CPU1 + 0x1B60) ALIGN(8) : { *(.intvec_tc1_219) *(.intvec_tc1_0xDB) *(.intvec_tc1_0xdb) } > .
    .inttab_tc1_0DC BIND (__INTTAB_CPU1 + 0x1B80) ALIGN(8) : { *(.intvec_tc1_220) *(.intvec_tc1_0xDC) *(.intvec_tc1_0xdc) } > .
    .inttab_tc1_0DD BIND (__INTTAB_CPU1 + 0x1BA0) ALIGN(8) : { *(.intvec_tc1_221) *(.intvec_tc1_0xDD) *(.intvec_tc1_0xdd) } > .
    .inttab_tc1_0DE BIND (__INTTAB_CPU1 + 0x1BC0) ALIGN(8) : { *(.intvec_tc1_222) *(.intvec_tc1_0xDE) *(.intvec_tc1_0xde) } > .
    .inttab_tc1_0DF BIND (__INTTAB_CPU1 + 0x1BE0) ALIGN(8) : { *(.intvec_tc1_223) *(.intvec_tc1_0xDF) *(.intvec_tc1_0xdf) } > .
    .inttab_tc1_0E0 BIND (__INTTAB_CPU1 + 0x1C00) ALIGN(8) : { *(.intvec_tc1_224) *(.intvec_tc1_0xE0) *(.intvec_tc1_0xe0) } > .
    .inttab_tc1_0E1 BIND (__INTTAB_CPU1 + 0x1C20) ALIGN(8) : { *(.intvec_tc1_225) *(.intvec_tc1_0xE1) *(.intvec_tc1_0xe1) } > .
    .inttab_tc1_0E2 BIND (__INTTAB_CPU1 + 0x1C40) ALIGN(8) : { *(.intvec_tc1_226) *(.intvec_tc1_0xE2) *(.intvec_tc1_0xe2) } > .
    .inttab_tc1_0E3 BIND (__INTTAB_CPU1 + 0x1C60) ALIGN(8) : { *(.intvec_tc1_227) *(.intvec_tc1_0xE3) *(.intvec_tc1_0xe3) } > .
    .inttab_tc1_0E4 BIND (__INTTAB_CPU1 + 0x1C80) ALIGN(8) : { *(.intvec_tc1_228) *(.intvec_tc1_0xE4) *(.intvec_tc1_0xe4) } > .
    .inttab_tc1_0E5 BIND (__INTTAB_CPU1 + 0x1CA0) ALIGN(8) : { *(.intvec_tc1_229) *(.intvec_tc1_0xE5) *(.intvec_tc1_0xe5) } > .
    .inttab_tc1_0E6 BIND (__INTTAB_CPU1 + 0x1CC0) ALIGN(8) : { *(.intvec_tc1_230) *(.intvec_tc1_0xE6) *(.intvec_tc1_0xe6) } > .
    .inttab_tc1_0E7 BIND (__INTTAB_CPU1 + 0x1CE0) ALIGN(8) : { *(.intvec_tc1_231) *(.intvec_tc1_0xE7) *(.intvec_tc1_0xe7) } > .
    .inttab_tc1_0E8 BIND (__INTTAB_CPU1 + 0x1D00) ALIGN(8) : { *(.intvec_tc1_232) *(.intvec_tc1_0xE8) *(.intvec_tc1_0xe8) } > .
    .inttab_tc1_0E9 BIND (__INTTAB_CPU1 + 0x1D20) ALIGN(8) : { *(.intvec_tc1_233) *(.intvec_tc1_0xE9) *(.intvec_tc1_0xe9) } > .
    .inttab_tc1_0EA BIND (__INTTAB_CPU1 + 0x1D40) ALIGN(8) : { *(.intvec_tc1_234) *(.intvec_tc1_0xEA) *(.intvec_tc1_0xea) } > .
    .inttab_tc1_0EB BIND (__INTTAB_CPU1 + 0x1D60) ALIGN(8) : { *(.intvec_tc1_235) *(.intvec_tc1_0xEB) *(.intvec_tc1_0xeb) } > .
    .inttab_tc1_0EC BIND (__INTTAB_CPU1 + 0x1D80) ALIGN(8) : { *(.intvec_tc1_236) *(.intvec_tc1_0xEC) *(.intvec_tc1_0xec) } > .
    .inttab_tc1_0ED BIND (__INTTAB_CPU1 + 0x1DA0) ALIGN(8) : { *(.intvec_tc1_237) *(.intvec_tc1_0xED) *(.intvec_tc1_0xed) } > .
    .inttab_tc1_0EE BIND (__INTTAB_CPU1 + 0x1DC0) ALIGN(8) : { *(.intvec_tc1_238) *(.intvec_tc1_0xEE) *(.intvec_tc1_0xee) } > .
    .inttab_tc1_0EF BIND (__INTTAB_CPU1 + 0x1DE0) ALIGN(8) : { *(.intvec_tc1_239) *(.intvec_tc1_0xEF) *(.intvec_tc1_0xef) } > .
    .inttab_tc1_0F0 BIND (__INTTAB_CPU1 + 0x1E00) ALIGN(8) : { *(.intvec_tc1_240) *(.intvec_tc1_0xF0) *(.intvec_tc1_0xf0) } > .
    .inttab_tc1_0F1 BIND (__INTTAB_CPU1 + 0x1E20) ALIGN(8) : { *(.intvec_tc1_241) *(.intvec_tc1_0xF1) *(.intvec_tc1_0xf1) } > .
    .inttab_tc1_0F2 BIND (__INTTAB_CPU1 + 0x1E40) ALIGN(8) : { *(.intvec_tc1_242) *(.intvec_tc1_0xF2) *(.intvec_tc1_0xf2) } > .
    .inttab_tc1_0F3 BIND (__INTTAB_CPU1 + 0x1E60) ALIGN(8) : { *(.intvec_tc1_243) *(.intvec_tc1_0xF3) *(.intvec_tc1_0xf3) } > .
    .inttab_tc1_0F4 BIND (__INTTAB_CPU1 + 0x1E80) ALIGN(8) : { *(.intvec_tc1_244) *(.intvec_tc1_0xF4) *(.intvec_tc1_0xf4) } > .
    .inttab_tc1_0F5 BIND (__INTTAB_CPU1 + 0x1EA0) ALIGN(8) : { *(.intvec_tc1_245) *(.intvec_tc1_0xF5) *(.intvec_tc1_0xf5) } > .
    .inttab_tc1_0F6 BIND (__INTTAB_CPU1 + 0x1EC0) ALIGN(8) : { *(.intvec_tc1_246) *(.intvec_tc1_0xF6) *(.intvec_tc1_0xf6) } > .
    .inttab_tc1_0F7 BIND (__INTTAB_CPU1 + 0x1EE0) ALIGN(8) : { *(.intvec_tc1_247) *(.intvec_tc1_0xF7) *(.intvec_tc1_0xf7) } > .
    .inttab_tc1_0F8 BIND (__INTTAB_CPU1 + 0x1F00) ALIGN(8) : { *(.intvec_tc1_248) *(.intvec_tc1_0xF8) *(.intvec_tc1_0xf8) } > .
    .inttab_tc1_0F9 BIND (__INTTAB_CPU1 + 0x1F20) ALIGN(8) : { *(.intvec_tc1_249) *(.intvec_tc1_0xF9) *(.intvec_tc1_0xf9) } > .
    .inttab_tc1_0FA BIND (__INTTAB_CPU1 + 0x1F40) ALIGN(8) : { *(.intvec_tc1_250) *(.intvec_tc1_0xFA) *(.intvec_tc1_0xfa) } > .
    .inttab_tc1_0FB BIND (__INTTAB_CPU1 + 0x1F60) ALIGN(8) : { *(.intvec_tc1_251) *(.intvec_tc1_0xFB) *(.intvec_tc1_0xfb) } > .
    .inttab_tc1_0FC BIND (__INTTAB_CPU1 + 0x1F80) ALIGN(8) : { *(.intvec_tc1_252) *(.intvec_tc1_0xFC) *(.intvec_tc1_0xfc) } > .
    .inttab_tc1_0FD BIND (__INTTAB_CPU1 + 0x1FA0) ALIGN(8) : { *(.intvec_tc1_253) *(.intvec_tc1_0xFD) *(.intvec_tc1_0xfd) } > .
    .inttab_tc1_0FE BIND (__INTTAB_CPU1 + 0x1FC0) ALIGN(8) : { *(.intvec_tc1_254) *(.intvec_tc1_0xFE) *(.intvec_tc1_0xfe) } > .
    .inttab_tc1_0FF BIND (__INTTAB_CPU1 + 0x1FE0) ALIGN(8) : { *(.intvec_tc1_255) *(.intvec_tc1_0xFF) *(.intvec_tc1_0xff) } > .
    
    /* Interrupt vector table located at PFLS2 */
    .inttab_tc2_000 BIND (__INTTAB_CPU2 + 0x0000) ALIGN(8) : { *(.intvec_tc2_0  ) *(.intvec_tc2_0x0 ) *(.intvec_tc2_0x0 ) } > pfls2
    .inttab_tc2_001 BIND (__INTTAB_CPU2 + 0x0020) ALIGN(8) : { *(.intvec_tc2_1  ) *(.intvec_tc2_0x1 ) *(.intvec_tc2_0x1 ) } > .
    .inttab_tc2_002 BIND (__INTTAB_CPU2 + 0x0040) ALIGN(8) : { *(.intvec_tc2_2  ) *(.intvec_tc2_0x2 ) *(.intvec_tc2_0x2 ) } > .
    .inttab_tc2_003 BIND (__INTTAB_CPU2 + 0x0060) ALIGN(8) : { *(.intvec_tc2_3  ) *(.intvec_tc2_0x3 ) *(.intvec_tc2_0x3 ) } > .
    .inttab_tc2_004 BIND (__INTTAB_CPU2 + 0x0080) ALIGN(8) : { *(.intvec_tc2_4  ) *(.intvec_tc2_0x4 ) *(.intvec_tc2_0x4 ) } > .
    .inttab_tc2_005 BIND (__INTTAB_CPU2 + 0x00A0) ALIGN(8) : { *(.intvec_tc2_5  ) *(.intvec_tc2_0x5 ) *(.intvec_tc2_0x5 ) } > .
    .inttab_tc2_006 BIND (__INTTAB_CPU2 + 0x00C0) ALIGN(8) : { *(.intvec_tc2_6  ) *(.intvec_tc2_0x6 ) *(.intvec_tc2_0x6 ) } > .
    .inttab_tc2_007 BIND (__INTTAB_CPU2 + 0x00E0) ALIGN(8) : { *(.intvec_tc2_7  ) *(.intvec_tc2_0x7 ) *(.intvec_tc2_0x7 ) } > .
    .inttab_tc2_008 BIND (__INTTAB_CPU2 + 0x0100) ALIGN(8) : { *(.intvec_tc2_8  ) *(.intvec_tc2_0x8 ) *(.intvec_tc2_0x8 ) } > .
    .inttab_tc2_009 BIND (__INTTAB_CPU2 + 0x0120) ALIGN(8) : { *(.intvec_tc2_9  ) *(.intvec_tc2_0x9 ) *(.intvec_tc2_0x9 ) } > .
    .inttab_tc2_00A BIND (__INTTAB_CPU2 + 0x0140) ALIGN(8) : { *(.intvec_tc2_10 ) *(.intvec_tc2_0xA ) *(.intvec_tc2_0xa ) } > .
    .inttab_tc2_00B BIND (__INTTAB_CPU2 + 0x0160) ALIGN(8) : { *(.intvec_tc2_11 ) *(.intvec_tc2_0xB ) *(.intvec_tc2_0xb ) } > .
    .inttab_tc2_00C BIND (__INTTAB_CPU2 + 0x0180) ALIGN(8) : { *(.intvec_tc2_12 ) *(.intvec_tc2_0xC ) *(.intvec_tc2_0xc ) } > .
    .inttab_tc2_00D BIND (__INTTAB_CPU2 + 0x01A0) ALIGN(8) : { *(.intvec_tc2_13 ) *(.intvec_tc2_0xD ) *(.intvec_tc2_0xd ) } > .
    .inttab_tc2_00E BIND (__INTTAB_CPU2 + 0x01C0) ALIGN(8) : { *(.intvec_tc2_14 ) *(.intvec_tc2_0xE ) *(.intvec_tc2_0xe ) } > .
    .inttab_tc2_00F BIND (__INTTAB_CPU2 + 0x01E0) ALIGN(8) : { *(.intvec_tc2_15 ) *(.intvec_tc2_0xF ) *(.intvec_tc2_0xf ) } > .
    .inttab_tc2_010 BIND (__INTTAB_CPU2 + 0x0200) ALIGN(8) : { *(.intvec_tc2_16 ) *(.intvec_tc2_0x10) *(.intvec_tc2_0x10) } > .
    .inttab_tc2_011 BIND (__INTTAB_CPU2 + 0x0220) ALIGN(8) : { *(.intvec_tc2_17 ) *(.intvec_tc2_0x11) *(.intvec_tc2_0x11) } > .
    .inttab_tc2_012 BIND (__INTTAB_CPU2 + 0x0240) ALIGN(8) : { *(.intvec_tc2_18 ) *(.intvec_tc2_0x12) *(.intvec_tc2_0x12) } > .
    .inttab_tc2_013 BIND (__INTTAB_CPU2 + 0x0260) ALIGN(8) : { *(.intvec_tc2_19 ) *(.intvec_tc2_0x13) *(.intvec_tc2_0x13) } > .
    .inttab_tc2_014 BIND (__INTTAB_CPU2 + 0x0280) ALIGN(8) : { *(.intvec_tc2_20 ) *(.intvec_tc2_0x14) *(.intvec_tc2_0x14) } > .
    .inttab_tc2_015 BIND (__INTTAB_CPU2 + 0x02A0) ALIGN(8) : { *(.intvec_tc2_21 ) *(.intvec_tc2_0x15) *(.intvec_tc2_0x15) } > .
    .inttab_tc2_016 BIND (__INTTAB_CPU2 + 0x02C0) ALIGN(8) : { *(.intvec_tc2_22 ) *(.intvec_tc2_0x16) *(.intvec_tc2_0x16) } > .
    .inttab_tc2_017 BIND (__INTTAB_CPU2 + 0x02E0) ALIGN(8) : { *(.intvec_tc2_23 ) *(.intvec_tc2_0x17) *(.intvec_tc2_0x17) } > .
    .inttab_tc2_018 BIND (__INTTAB_CPU2 + 0x0300) ALIGN(8) : { *(.intvec_tc2_24 ) *(.intvec_tc2_0x18) *(.intvec_tc2_0x18) } > .
    .inttab_tc2_019 BIND (__INTTAB_CPU2 + 0x0320) ALIGN(8) : { *(.intvec_tc2_25 ) *(.intvec_tc2_0x19) *(.intvec_tc2_0x19) } > .
    .inttab_tc2_01A BIND (__INTTAB_CPU2 + 0x0340) ALIGN(8) : { *(.intvec_tc2_26 ) *(.intvec_tc2_0x1A) *(.intvec_tc2_0x1a) } > .
    .inttab_tc2_01B BIND (__INTTAB_CPU2 + 0x0360) ALIGN(8) : { *(.intvec_tc2_27 ) *(.intvec_tc2_0x1B) *(.intvec_tc2_0x1b) } > .
    .inttab_tc2_01C BIND (__INTTAB_CPU2 + 0x0380) ALIGN(8) : { *(.intvec_tc2_28 ) *(.intvec_tc2_0x1C) *(.intvec_tc2_0x1c) } > .
    .inttab_tc2_01D BIND (__INTTAB_CPU2 + 0x03A0) ALIGN(8) : { *(.intvec_tc2_29 ) *(.intvec_tc2_0x1D) *(.intvec_tc2_0x1d) } > .
    .inttab_tc2_01E BIND (__INTTAB_CPU2 + 0x03C0) ALIGN(8) : { *(.intvec_tc2_30 ) *(.intvec_tc2_0x1E) *(.intvec_tc2_0x1e) } > .
    .inttab_tc2_01F BIND (__INTTAB_CPU2 + 0x03E0) ALIGN(8) : { *(.intvec_tc2_31 ) *(.intvec_tc2_0x1F) *(.intvec_tc2_0x1f) } > .
    .inttab_tc2_020 BIND (__INTTAB_CPU2 + 0x0400) ALIGN(8) : { *(.intvec_tc2_32 ) *(.intvec_tc2_0x20) *(.intvec_tc2_0x20) } > .
    .inttab_tc2_021 BIND (__INTTAB_CPU2 + 0x0420) ALIGN(8) : { *(.intvec_tc2_33 ) *(.intvec_tc2_0x21) *(.intvec_tc2_0x21) } > .
    .inttab_tc2_022 BIND (__INTTAB_CPU2 + 0x0440) ALIGN(8) : { *(.intvec_tc2_34 ) *(.intvec_tc2_0x22) *(.intvec_tc2_0x22) } > .
    .inttab_tc2_023 BIND (__INTTAB_CPU2 + 0x0460) ALIGN(8) : { *(.intvec_tc2_35 ) *(.intvec_tc2_0x23) *(.intvec_tc2_0x23) } > .
    .inttab_tc2_024 BIND (__INTTAB_CPU2 + 0x0480) ALIGN(8) : { *(.intvec_tc2_36 ) *(.intvec_tc2_0x24) *(.intvec_tc2_0x24) } > .
    .inttab_tc2_025 BIND (__INTTAB_CPU2 + 0x04A0) ALIGN(8) : { *(.intvec_tc2_37 ) *(.intvec_tc2_0x25) *(.intvec_tc2_0x25) } > .
    .inttab_tc2_026 BIND (__INTTAB_CPU2 + 0x04C0) ALIGN(8) : { *(.intvec_tc2_38 ) *(.intvec_tc2_0x26) *(.intvec_tc2_0x26) } > .
    .inttab_tc2_027 BIND (__INTTAB_CPU2 + 0x04E0) ALIGN(8) : { *(.intvec_tc2_39 ) *(.intvec_tc2_0x27) *(.intvec_tc2_0x27) } > .
    .inttab_tc2_028 BIND (__INTTAB_CPU2 + 0x0500) ALIGN(8) : { *(.intvec_tc2_40 ) *(.intvec_tc2_0x28) *(.intvec_tc2_0x28) } > .
    .inttab_tc2_029 BIND (__INTTAB_CPU2 + 0x0520) ALIGN(8) : { *(.intvec_tc2_41 ) *(.intvec_tc2_0x29) *(.intvec_tc2_0x29) } > .
    .inttab_tc2_02A BIND (__INTTAB_CPU2 + 0x0540) ALIGN(8) : { *(.intvec_tc2_42 ) *(.intvec_tc2_0x2A) *(.intvec_tc2_0x2a) } > .
    .inttab_tc2_02B BIND (__INTTAB_CPU2 + 0x0560) ALIGN(8) : { *(.intvec_tc2_43 ) *(.intvec_tc2_0x2B) *(.intvec_tc2_0x2b) } > .
    .inttab_tc2_02C BIND (__INTTAB_CPU2 + 0x0580) ALIGN(8) : { *(.intvec_tc2_44 ) *(.intvec_tc2_0x2C) *(.intvec_tc2_0x2c) } > .
    .inttab_tc2_02D BIND (__INTTAB_CPU2 + 0x05A0) ALIGN(8) : { *(.intvec_tc2_45 ) *(.intvec_tc2_0x2D) *(.intvec_tc2_0x2d) } > .
    .inttab_tc2_02E BIND (__INTTAB_CPU2 + 0x05C0) ALIGN(8) : { *(.intvec_tc2_46 ) *(.intvec_tc2_0x2E) *(.intvec_tc2_0x2e) } > .
    .inttab_tc2_02F BIND (__INTTAB_CPU2 + 0x05E0) ALIGN(8) : { *(.intvec_tc2_47 ) *(.intvec_tc2_0x2F) *(.intvec_tc2_0x2f) } > .
    .inttab_tc2_030 BIND (__INTTAB_CPU2 + 0x0600) ALIGN(8) : { *(.intvec_tc2_48 ) *(.intvec_tc2_0x30) *(.intvec_tc2_0x30) } > .
    .inttab_tc2_031 BIND (__INTTAB_CPU2 + 0x0620) ALIGN(8) : { *(.intvec_tc2_49 ) *(.intvec_tc2_0x31) *(.intvec_tc2_0x31) } > .
    .inttab_tc2_032 BIND (__INTTAB_CPU2 + 0x0640) ALIGN(8) : { *(.intvec_tc2_50 ) *(.intvec_tc2_0x32) *(.intvec_tc2_0x32) } > .
    .inttab_tc2_033 BIND (__INTTAB_CPU2 + 0x0660) ALIGN(8) : { *(.intvec_tc2_51 ) *(.intvec_tc2_0x33) *(.intvec_tc2_0x33) } > .
    .inttab_tc2_034 BIND (__INTTAB_CPU2 + 0x0680) ALIGN(8) : { *(.intvec_tc2_52 ) *(.intvec_tc2_0x34) *(.intvec_tc2_0x34) } > .
    .inttab_tc2_035 BIND (__INTTAB_CPU2 + 0x06A0) ALIGN(8) : { *(.intvec_tc2_53 ) *(.intvec_tc2_0x35) *(.intvec_tc2_0x35) } > .
    .inttab_tc2_036 BIND (__INTTAB_CPU2 + 0x06C0) ALIGN(8) : { *(.intvec_tc2_54 ) *(.intvec_tc2_0x36) *(.intvec_tc2_0x36) } > .
    .inttab_tc2_037 BIND (__INTTAB_CPU2 + 0x06E0) ALIGN(8) : { *(.intvec_tc2_55 ) *(.intvec_tc2_0x37) *(.intvec_tc2_0x37) } > .
    .inttab_tc2_038 BIND (__INTTAB_CPU2 + 0x0700) ALIGN(8) : { *(.intvec_tc2_56 ) *(.intvec_tc2_0x38) *(.intvec_tc2_0x38) } > .
    .inttab_tc2_039 BIND (__INTTAB_CPU2 + 0x0720) ALIGN(8) : { *(.intvec_tc2_57 ) *(.intvec_tc2_0x39) *(.intvec_tc2_0x39) } > .
    .inttab_tc2_03A BIND (__INTTAB_CPU2 + 0x0740) ALIGN(8) : { *(.intvec_tc2_58 ) *(.intvec_tc2_0x3A) *(.intvec_tc2_0x3a) } > .
    .inttab_tc2_03B BIND (__INTTAB_CPU2 + 0x0760) ALIGN(8) : { *(.intvec_tc2_59 ) *(.intvec_tc2_0x3B) *(.intvec_tc2_0x3b) } > .
    .inttab_tc2_03C BIND (__INTTAB_CPU2 + 0x0780) ALIGN(8) : { *(.intvec_tc2_60 ) *(.intvec_tc2_0x3C) *(.intvec_tc2_0x3c) } > .
    .inttab_tc2_03D BIND (__INTTAB_CPU2 + 0x07A0) ALIGN(8) : { *(.intvec_tc2_61 ) *(.intvec_tc2_0x3D) *(.intvec_tc2_0x3d) } > .
    .inttab_tc2_03E BIND (__INTTAB_CPU2 + 0x07C0) ALIGN(8) : { *(.intvec_tc2_62 ) *(.intvec_tc2_0x3E) *(.intvec_tc2_0x3e) } > .
    .inttab_tc2_03F BIND (__INTTAB_CPU2 + 0x07E0) ALIGN(8) : { *(.intvec_tc2_63 ) *(.intvec_tc2_0x3F) *(.intvec_tc2_0x3f) } > .
    .inttab_tc2_040 BIND (__INTTAB_CPU2 + 0x0800) ALIGN(8) : { *(.intvec_tc2_64 ) *(.intvec_tc2_0x40) *(.intvec_tc2_0x40) } > .
    .inttab_tc2_041 BIND (__INTTAB_CPU2 + 0x0820) ALIGN(8) : { *(.intvec_tc2_65 ) *(.intvec_tc2_0x41) *(.intvec_tc2_0x41) } > .
    .inttab_tc2_042 BIND (__INTTAB_CPU2 + 0x0840) ALIGN(8) : { *(.intvec_tc2_66 ) *(.intvec_tc2_0x42) *(.intvec_tc2_0x42) } > .
    .inttab_tc2_043 BIND (__INTTAB_CPU2 + 0x0860) ALIGN(8) : { *(.intvec_tc2_67 ) *(.intvec_tc2_0x43) *(.intvec_tc2_0x43) } > .
    .inttab_tc2_044 BIND (__INTTAB_CPU2 + 0x0880) ALIGN(8) : { *(.intvec_tc2_68 ) *(.intvec_tc2_0x44) *(.intvec_tc2_0x44) } > .
    .inttab_tc2_045 BIND (__INTTAB_CPU2 + 0x08A0) ALIGN(8) : { *(.intvec_tc2_69 ) *(.intvec_tc2_0x45) *(.intvec_tc2_0x45) } > .
    .inttab_tc2_046 BIND (__INTTAB_CPU2 + 0x08C0) ALIGN(8) : { *(.intvec_tc2_70 ) *(.intvec_tc2_0x46) *(.intvec_tc2_0x46) } > .
    .inttab_tc2_047 BIND (__INTTAB_CPU2 + 0x08E0) ALIGN(8) : { *(.intvec_tc2_71 ) *(.intvec_tc2_0x47) *(.intvec_tc2_0x47) } > .
    .inttab_tc2_048 BIND (__INTTAB_CPU2 + 0x0900) ALIGN(8) : { *(.intvec_tc2_72 ) *(.intvec_tc2_0x48) *(.intvec_tc2_0x48) } > .
    .inttab_tc2_049 BIND (__INTTAB_CPU2 + 0x0920) ALIGN(8) : { *(.intvec_tc2_73 ) *(.intvec_tc2_0x49) *(.intvec_tc2_0x49) } > .
    .inttab_tc2_04A BIND (__INTTAB_CPU2 + 0x0940) ALIGN(8) : { *(.intvec_tc2_74 ) *(.intvec_tc2_0x4A) *(.intvec_tc2_0x4a) } > .
    .inttab_tc2_04B BIND (__INTTAB_CPU2 + 0x0960) ALIGN(8) : { *(.intvec_tc2_75 ) *(.intvec_tc2_0x4B) *(.intvec_tc2_0x4b) } > .
    .inttab_tc2_04C BIND (__INTTAB_CPU2 + 0x0980) ALIGN(8) : { *(.intvec_tc2_76 ) *(.intvec_tc2_0x4C) *(.intvec_tc2_0x4c) } > .
    .inttab_tc2_04D BIND (__INTTAB_CPU2 + 0x09A0) ALIGN(8) : { *(.intvec_tc2_77 ) *(.intvec_tc2_0x4D) *(.intvec_tc2_0x4d) } > .
    .inttab_tc2_04E BIND (__INTTAB_CPU2 + 0x09C0) ALIGN(8) : { *(.intvec_tc2_78 ) *(.intvec_tc2_0x4E) *(.intvec_tc2_0x4e) } > .
    .inttab_tc2_04F BIND (__INTTAB_CPU2 + 0x09E0) ALIGN(8) : { *(.intvec_tc2_79 ) *(.intvec_tc2_0x4F) *(.intvec_tc2_0x4f) } > .
    .inttab_tc2_050 BIND (__INTTAB_CPU2 + 0x0A00) ALIGN(8) : { *(.intvec_tc2_80 ) *(.intvec_tc2_0x50) *(.intvec_tc2_0x50) } > .
    .inttab_tc2_051 BIND (__INTTAB_CPU2 + 0x0A20) ALIGN(8) : { *(.intvec_tc2_81 ) *(.intvec_tc2_0x51) *(.intvec_tc2_0x51) } > .
    .inttab_tc2_052 BIND (__INTTAB_CPU2 + 0x0A40) ALIGN(8) : { *(.intvec_tc2_82 ) *(.intvec_tc2_0x52) *(.intvec_tc2_0x52) } > .
    .inttab_tc2_053 BIND (__INTTAB_CPU2 + 0x0A60) ALIGN(8) : { *(.intvec_tc2_83 ) *(.intvec_tc2_0x53) *(.intvec_tc2_0x53) } > .
    .inttab_tc2_054 BIND (__INTTAB_CPU2 + 0x0A80) ALIGN(8) : { *(.intvec_tc2_84 ) *(.intvec_tc2_0x54) *(.intvec_tc2_0x54) } > .
    .inttab_tc2_055 BIND (__INTTAB_CPU2 + 0x0AA0) ALIGN(8) : { *(.intvec_tc2_85 ) *(.intvec_tc2_0x55) *(.intvec_tc2_0x55) } > .
    .inttab_tc2_056 BIND (__INTTAB_CPU2 + 0x0AC0) ALIGN(8) : { *(.intvec_tc2_86 ) *(.intvec_tc2_0x56) *(.intvec_tc2_0x56) } > .
    .inttab_tc2_057 BIND (__INTTAB_CPU2 + 0x0AE0) ALIGN(8) : { *(.intvec_tc2_87 ) *(.intvec_tc2_0x57) *(.intvec_tc2_0x57) } > .
    .inttab_tc2_058 BIND (__INTTAB_CPU2 + 0x0B00) ALIGN(8) : { *(.intvec_tc2_88 ) *(.intvec_tc2_0x58) *(.intvec_tc2_0x58) } > .
    .inttab_tc2_059 BIND (__INTTAB_CPU2 + 0x0B20) ALIGN(8) : { *(.intvec_tc2_89 ) *(.intvec_tc2_0x59) *(.intvec_tc2_0x59) } > .
    .inttab_tc2_05A BIND (__INTTAB_CPU2 + 0x0B40) ALIGN(8) : { *(.intvec_tc2_90 ) *(.intvec_tc2_0x5A) *(.intvec_tc2_0x5a) } > .
    .inttab_tc2_05B BIND (__INTTAB_CPU2 + 0x0B60) ALIGN(8) : { *(.intvec_tc2_91 ) *(.intvec_tc2_0x5B) *(.intvec_tc2_0x5b) } > .
    .inttab_tc2_05C BIND (__INTTAB_CPU2 + 0x0B80) ALIGN(8) : { *(.intvec_tc2_92 ) *(.intvec_tc2_0x5C) *(.intvec_tc2_0x5c) } > .
    .inttab_tc2_05D BIND (__INTTAB_CPU2 + 0x0BA0) ALIGN(8) : { *(.intvec_tc2_93 ) *(.intvec_tc2_0x5D) *(.intvec_tc2_0x5d) } > .
    .inttab_tc2_05E BIND (__INTTAB_CPU2 + 0x0BC0) ALIGN(8) : { *(.intvec_tc2_94 ) *(.intvec_tc2_0x5E) *(.intvec_tc2_0x5e) } > .
    .inttab_tc2_05F BIND (__INTTAB_CPU2 + 0x0BE0) ALIGN(8) : { *(.intvec_tc2_95 ) *(.intvec_tc2_0x5F) *(.intvec_tc2_0x5f) } > .
    .inttab_tc2_060 BIND (__INTTAB_CPU2 + 0x0C00) ALIGN(8) : { *(.intvec_tc2_96 ) *(.intvec_tc2_0x60) *(.intvec_tc2_0x60) } > .
    .inttab_tc2_061 BIND (__INTTAB_CPU2 + 0x0C20) ALIGN(8) : { *(.intvec_tc2_97 ) *(.intvec_tc2_0x61) *(.intvec_tc2_0x61) } > .
    .inttab_tc2_062 BIND (__INTTAB_CPU2 + 0x0C40) ALIGN(8) : { *(.intvec_tc2_98 ) *(.intvec_tc2_0x62) *(.intvec_tc2_0x62) } > .
    .inttab_tc2_063 BIND (__INTTAB_CPU2 + 0x0C60) ALIGN(8) : { *(.intvec_tc2_99 ) *(.intvec_tc2_0x63) *(.intvec_tc2_0x63) } > .
    .inttab_tc2_064 BIND (__INTTAB_CPU2 + 0x0C80) ALIGN(8) : { *(.intvec_tc2_100) *(.intvec_tc2_0x64) *(.intvec_tc2_0x64) } > .
    .inttab_tc2_065 BIND (__INTTAB_CPU2 + 0x0CA0) ALIGN(8) : { *(.intvec_tc2_101) *(.intvec_tc2_0x65) *(.intvec_tc2_0x65) } > .
    .inttab_tc2_066 BIND (__INTTAB_CPU2 + 0x0CC0) ALIGN(8) : { *(.intvec_tc2_102) *(.intvec_tc2_0x66) *(.intvec_tc2_0x66) } > .
    .inttab_tc2_067 BIND (__INTTAB_CPU2 + 0x0CE0) ALIGN(8) : { *(.intvec_tc2_103) *(.intvec_tc2_0x67) *(.intvec_tc2_0x67) } > .
    .inttab_tc2_068 BIND (__INTTAB_CPU2 + 0x0D00) ALIGN(8) : { *(.intvec_tc2_104) *(.intvec_tc2_0x68) *(.intvec_tc2_0x68) } > .
    .inttab_tc2_069 BIND (__INTTAB_CPU2 + 0x0D20) ALIGN(8) : { *(.intvec_tc2_105) *(.intvec_tc2_0x69) *(.intvec_tc2_0x69) } > .
    .inttab_tc2_06A BIND (__INTTAB_CPU2 + 0x0D40) ALIGN(8) : { *(.intvec_tc2_106) *(.intvec_tc2_0x6A) *(.intvec_tc2_0x6a) } > .
    .inttab_tc2_06B BIND (__INTTAB_CPU2 + 0x0D60) ALIGN(8) : { *(.intvec_tc2_107) *(.intvec_tc2_0x6B) *(.intvec_tc2_0x6b) } > .
    .inttab_tc2_06C BIND (__INTTAB_CPU2 + 0x0D80) ALIGN(8) : { *(.intvec_tc2_108) *(.intvec_tc2_0x6C) *(.intvec_tc2_0x6c) } > .
    .inttab_tc2_06D BIND (__INTTAB_CPU2 + 0x0DA0) ALIGN(8) : { *(.intvec_tc2_109) *(.intvec_tc2_0x6D) *(.intvec_tc2_0x6d) } > .
    .inttab_tc2_06E BIND (__INTTAB_CPU2 + 0x0DC0) ALIGN(8) : { *(.intvec_tc2_110) *(.intvec_tc2_0x6E) *(.intvec_tc2_0x6e) } > .
    .inttab_tc2_06F BIND (__INTTAB_CPU2 + 0x0DE0) ALIGN(8) : { *(.intvec_tc2_111) *(.intvec_tc2_0x6F) *(.intvec_tc2_0x6f) } > .
    .inttab_tc2_070 BIND (__INTTAB_CPU2 + 0x0E00) ALIGN(8) : { *(.intvec_tc2_112) *(.intvec_tc2_0x70) *(.intvec_tc2_0x70) } > .
    .inttab_tc2_071 BIND (__INTTAB_CPU2 + 0x0E20) ALIGN(8) : { *(.intvec_tc2_113) *(.intvec_tc2_0x71) *(.intvec_tc2_0x71) } > .
    .inttab_tc2_072 BIND (__INTTAB_CPU2 + 0x0E40) ALIGN(8) : { *(.intvec_tc2_114) *(.intvec_tc2_0x72) *(.intvec_tc2_0x72) } > .
    .inttab_tc2_073 BIND (__INTTAB_CPU2 + 0x0E60) ALIGN(8) : { *(.intvec_tc2_115) *(.intvec_tc2_0x73) *(.intvec_tc2_0x73) } > .
    .inttab_tc2_074 BIND (__INTTAB_CPU2 + 0x0E80) ALIGN(8) : { *(.intvec_tc2_116) *(.intvec_tc2_0x74) *(.intvec_tc2_0x74) } > .
    .inttab_tc2_075 BIND (__INTTAB_CPU2 + 0x0EA0) ALIGN(8) : { *(.intvec_tc2_117) *(.intvec_tc2_0x75) *(.intvec_tc2_0x75) } > .
    .inttab_tc2_076 BIND (__INTTAB_CPU2 + 0x0EC0) ALIGN(8) : { *(.intvec_tc2_118) *(.intvec_tc2_0x76) *(.intvec_tc2_0x76) } > .
    .inttab_tc2_077 BIND (__INTTAB_CPU2 + 0x0EE0) ALIGN(8) : { *(.intvec_tc2_119) *(.intvec_tc2_0x77) *(.intvec_tc2_0x77) } > .
    .inttab_tc2_078 BIND (__INTTAB_CPU2 + 0x0F00) ALIGN(8) : { *(.intvec_tc2_120) *(.intvec_tc2_0x78) *(.intvec_tc2_0x78) } > .
    .inttab_tc2_079 BIND (__INTTAB_CPU2 + 0x0F20) ALIGN(8) : { *(.intvec_tc2_121) *(.intvec_tc2_0x79) *(.intvec_tc2_0x79) } > .
    .inttab_tc2_07A BIND (__INTTAB_CPU2 + 0x0F40) ALIGN(8) : { *(.intvec_tc2_122) *(.intvec_tc2_0x7A) *(.intvec_tc2_0x7a) } > .
    .inttab_tc2_07B BIND (__INTTAB_CPU2 + 0x0F60) ALIGN(8) : { *(.intvec_tc2_123) *(.intvec_tc2_0x7B) *(.intvec_tc2_0x7b) } > .
    .inttab_tc2_07C BIND (__INTTAB_CPU2 + 0x0F80) ALIGN(8) : { *(.intvec_tc2_124) *(.intvec_tc2_0x7C) *(.intvec_tc2_0x7c) } > .
    .inttab_tc2_07D BIND (__INTTAB_CPU2 + 0x0FA0) ALIGN(8) : { *(.intvec_tc2_125) *(.intvec_tc2_0x7D) *(.intvec_tc2_0x7d) } > .
    .inttab_tc2_07E BIND (__INTTAB_CPU2 + 0x0FC0) ALIGN(8) : { *(.intvec_tc2_126) *(.intvec_tc2_0x7E) *(.intvec_tc2_0x7e) } > .
    .inttab_tc2_07F BIND (__INTTAB_CPU2 + 0x0FE0) ALIGN(8) : { *(.intvec_tc2_127) *(.intvec_tc2_0x7F) *(.intvec_tc2_0x7f) } > .
    .inttab_tc2_080 BIND (__INTTAB_CPU2 + 0x1000) ALIGN(8) : { *(.intvec_tc2_128) *(.intvec_tc2_0x80) *(.intvec_tc2_0x80) } > .
    .inttab_tc2_081 BIND (__INTTAB_CPU2 + 0x1020) ALIGN(8) : { *(.intvec_tc2_129) *(.intvec_tc2_0x81) *(.intvec_tc2_0x81) } > .
    .inttab_tc2_082 BIND (__INTTAB_CPU2 + 0x1040) ALIGN(8) : { *(.intvec_tc2_130) *(.intvec_tc2_0x82) *(.intvec_tc2_0x82) } > .
    .inttab_tc2_083 BIND (__INTTAB_CPU2 + 0x1060) ALIGN(8) : { *(.intvec_tc2_131) *(.intvec_tc2_0x83) *(.intvec_tc2_0x83) } > .
    .inttab_tc2_084 BIND (__INTTAB_CPU2 + 0x1080) ALIGN(8) : { *(.intvec_tc2_132) *(.intvec_tc2_0x84) *(.intvec_tc2_0x84) } > .
    .inttab_tc2_085 BIND (__INTTAB_CPU2 + 0x10A0) ALIGN(8) : { *(.intvec_tc2_133) *(.intvec_tc2_0x85) *(.intvec_tc2_0x85) } > .
    .inttab_tc2_086 BIND (__INTTAB_CPU2 + 0x10C0) ALIGN(8) : { *(.intvec_tc2_134) *(.intvec_tc2_0x86) *(.intvec_tc2_0x86) } > .
    .inttab_tc2_087 BIND (__INTTAB_CPU2 + 0x10E0) ALIGN(8) : { *(.intvec_tc2_135) *(.intvec_tc2_0x87) *(.intvec_tc2_0x87) } > .
    .inttab_tc2_088 BIND (__INTTAB_CPU2 + 0x1100) ALIGN(8) : { *(.intvec_tc2_136) *(.intvec_tc2_0x88) *(.intvec_tc2_0x88) } > .
    .inttab_tc2_089 BIND (__INTTAB_CPU2 + 0x1120) ALIGN(8) : { *(.intvec_tc2_137) *(.intvec_tc2_0x89) *(.intvec_tc2_0x89) } > .
    .inttab_tc2_08A BIND (__INTTAB_CPU2 + 0x1140) ALIGN(8) : { *(.intvec_tc2_138) *(.intvec_tc2_0x8A) *(.intvec_tc2_0x8a) } > .
    .inttab_tc2_08B BIND (__INTTAB_CPU2 + 0x1160) ALIGN(8) : { *(.intvec_tc2_139) *(.intvec_tc2_0x8B) *(.intvec_tc2_0x8b) } > .
    .inttab_tc2_08C BIND (__INTTAB_CPU2 + 0x1180) ALIGN(8) : { *(.intvec_tc2_140) *(.intvec_tc2_0x8C) *(.intvec_tc2_0x8c) } > .
    .inttab_tc2_08D BIND (__INTTAB_CPU2 + 0x11A0) ALIGN(8) : { *(.intvec_tc2_141) *(.intvec_tc2_0x8D) *(.intvec_tc2_0x8d) } > .
    .inttab_tc2_08E BIND (__INTTAB_CPU2 + 0x11C0) ALIGN(8) : { *(.intvec_tc2_142) *(.intvec_tc2_0x8E) *(.intvec_tc2_0x8e) } > .
    .inttab_tc2_08F BIND (__INTTAB_CPU2 + 0x11E0) ALIGN(8) : { *(.intvec_tc2_143) *(.intvec_tc2_0x8F) *(.intvec_tc2_0x8f) } > .
    .inttab_tc2_090 BIND (__INTTAB_CPU2 + 0x1200) ALIGN(8) : { *(.intvec_tc2_144) *(.intvec_tc2_0x90) *(.intvec_tc2_0x90) } > .
    .inttab_tc2_091 BIND (__INTTAB_CPU2 + 0x1220) ALIGN(8) : { *(.intvec_tc2_145) *(.intvec_tc2_0x91) *(.intvec_tc2_0x91) } > .
    .inttab_tc2_092 BIND (__INTTAB_CPU2 + 0x1240) ALIGN(8) : { *(.intvec_tc2_146) *(.intvec_tc2_0x92) *(.intvec_tc2_0x92) } > .
    .inttab_tc2_093 BIND (__INTTAB_CPU2 + 0x1260) ALIGN(8) : { *(.intvec_tc2_147) *(.intvec_tc2_0x93) *(.intvec_tc2_0x93) } > .
    .inttab_tc2_094 BIND (__INTTAB_CPU2 + 0x1280) ALIGN(8) : { *(.intvec_tc2_148) *(.intvec_tc2_0x94) *(.intvec_tc2_0x94) } > .
    .inttab_tc2_095 BIND (__INTTAB_CPU2 + 0x12A0) ALIGN(8) : { *(.intvec_tc2_149) *(.intvec_tc2_0x95) *(.intvec_tc2_0x95) } > .
    .inttab_tc2_096 BIND (__INTTAB_CPU2 + 0x12C0) ALIGN(8) : { *(.intvec_tc2_150) *(.intvec_tc2_0x96) *(.intvec_tc2_0x96) } > .
    .inttab_tc2_097 BIND (__INTTAB_CPU2 + 0x12E0) ALIGN(8) : { *(.intvec_tc2_151) *(.intvec_tc2_0x97) *(.intvec_tc2_0x97) } > .
    .inttab_tc2_098 BIND (__INTTAB_CPU2 + 0x1300) ALIGN(8) : { *(.intvec_tc2_152) *(.intvec_tc2_0x98) *(.intvec_tc2_0x98) } > .
    .inttab_tc2_099 BIND (__INTTAB_CPU2 + 0x1320) ALIGN(8) : { *(.intvec_tc2_153) *(.intvec_tc2_0x99) *(.intvec_tc2_0x99) } > .
    .inttab_tc2_09A BIND (__INTTAB_CPU2 + 0x1340) ALIGN(8) : { *(.intvec_tc2_154) *(.intvec_tc2_0x9A) *(.intvec_tc2_0x9a) } > .
    .inttab_tc2_09B BIND (__INTTAB_CPU2 + 0x1360) ALIGN(8) : { *(.intvec_tc2_155) *(.intvec_tc2_0x9B) *(.intvec_tc2_0x9b) } > .
    .inttab_tc2_09C BIND (__INTTAB_CPU2 + 0x1380) ALIGN(8) : { *(.intvec_tc2_156) *(.intvec_tc2_0x9C) *(.intvec_tc2_0x9c) } > .
    .inttab_tc2_09D BIND (__INTTAB_CPU2 + 0x13A0) ALIGN(8) : { *(.intvec_tc2_157) *(.intvec_tc2_0x9D) *(.intvec_tc2_0x9d) } > .
    .inttab_tc2_09E BIND (__INTTAB_CPU2 + 0x13C0) ALIGN(8) : { *(.intvec_tc2_158) *(.intvec_tc2_0x9E) *(.intvec_tc2_0x9e) } > .
    .inttab_tc2_09F BIND (__INTTAB_CPU2 + 0x13E0) ALIGN(8) : { *(.intvec_tc2_159) *(.intvec_tc2_0x9F) *(.intvec_tc2_0x9f) } > .
    .inttab_tc2_0A0 BIND (__INTTAB_CPU2 + 0x1400) ALIGN(8) : { *(.intvec_tc2_160) *(.intvec_tc2_0xA0) *(.intvec_tc2_0xa0) } > .
    .inttab_tc2_0A1 BIND (__INTTAB_CPU2 + 0x1420) ALIGN(8) : { *(.intvec_tc2_161) *(.intvec_tc2_0xA1) *(.intvec_tc2_0xa1) } > .
    .inttab_tc2_0A2 BIND (__INTTAB_CPU2 + 0x1440) ALIGN(8) : { *(.intvec_tc2_162) *(.intvec_tc2_0xA2) *(.intvec_tc2_0xa2) } > .
    .inttab_tc2_0A3 BIND (__INTTAB_CPU2 + 0x1460) ALIGN(8) : { *(.intvec_tc2_163) *(.intvec_tc2_0xA3) *(.intvec_tc2_0xa3) } > .
    .inttab_tc2_0A4 BIND (__INTTAB_CPU2 + 0x1480) ALIGN(8) : { *(.intvec_tc2_164) *(.intvec_tc2_0xA4) *(.intvec_tc2_0xa4) } > .
    .inttab_tc2_0A5 BIND (__INTTAB_CPU2 + 0x14A0) ALIGN(8) : { *(.intvec_tc2_165) *(.intvec_tc2_0xA5) *(.intvec_tc2_0xa5) } > .
    .inttab_tc2_0A6 BIND (__INTTAB_CPU2 + 0x14C0) ALIGN(8) : { *(.intvec_tc2_166) *(.intvec_tc2_0xA6) *(.intvec_tc2_0xa6) } > .
    .inttab_tc2_0A7 BIND (__INTTAB_CPU2 + 0x14E0) ALIGN(8) : { *(.intvec_tc2_167) *(.intvec_tc2_0xA7) *(.intvec_tc2_0xa7) } > .
    .inttab_tc2_0A8 BIND (__INTTAB_CPU2 + 0x1500) ALIGN(8) : { *(.intvec_tc2_168) *(.intvec_tc2_0xA8) *(.intvec_tc2_0xa8) } > .
    .inttab_tc2_0A9 BIND (__INTTAB_CPU2 + 0x1520) ALIGN(8) : { *(.intvec_tc2_169) *(.intvec_tc2_0xA9) *(.intvec_tc2_0xa9) } > .
    .inttab_tc2_0AA BIND (__INTTAB_CPU2 + 0x1540) ALIGN(8) : { *(.intvec_tc2_170) *(.intvec_tc2_0xAA) *(.intvec_tc2_0xaa) } > .
    .inttab_tc2_0AB BIND (__INTTAB_CPU2 + 0x1560) ALIGN(8) : { *(.intvec_tc2_171) *(.intvec_tc2_0xAB) *(.intvec_tc2_0xab) } > .
    .inttab_tc2_0AC BIND (__INTTAB_CPU2 + 0x1580) ALIGN(8) : { *(.intvec_tc2_172) *(.intvec_tc2_0xAC) *(.intvec_tc2_0xac) } > .
    .inttab_tc2_0AD BIND (__INTTAB_CPU2 + 0x15A0) ALIGN(8) : { *(.intvec_tc2_173) *(.intvec_tc2_0xAD) *(.intvec_tc2_0xad) } > .
    .inttab_tc2_0AE BIND (__INTTAB_CPU2 + 0x15C0) ALIGN(8) : { *(.intvec_tc2_174) *(.intvec_tc2_0xAE) *(.intvec_tc2_0xae) } > .
    .inttab_tc2_0AF BIND (__INTTAB_CPU2 + 0x15E0) ALIGN(8) : { *(.intvec_tc2_175) *(.intvec_tc2_0xAF) *(.intvec_tc2_0xaf) } > .
    .inttab_tc2_0B0 BIND (__INTTAB_CPU2 + 0x1600) ALIGN(8) : { *(.intvec_tc2_176) *(.intvec_tc2_0xB0) *(.intvec_tc2_0xb0) } > .
    .inttab_tc2_0B1 BIND (__INTTAB_CPU2 + 0x1620) ALIGN(8) : { *(.intvec_tc2_177) *(.intvec_tc2_0xB1) *(.intvec_tc2_0xb1) } > .
    .inttab_tc2_0B2 BIND (__INTTAB_CPU2 + 0x1640) ALIGN(8) : { *(.intvec_tc2_178) *(.intvec_tc2_0xB2) *(.intvec_tc2_0xb2) } > .
    .inttab_tc2_0B3 BIND (__INTTAB_CPU2 + 0x1660) ALIGN(8) : { *(.intvec_tc2_179) *(.intvec_tc2_0xB3) *(.intvec_tc2_0xb3) } > .
    .inttab_tc2_0B4 BIND (__INTTAB_CPU2 + 0x1680) ALIGN(8) : { *(.intvec_tc2_180) *(.intvec_tc2_0xB4) *(.intvec_tc2_0xb4) } > .
    .inttab_tc2_0B5 BIND (__INTTAB_CPU2 + 0x16A0) ALIGN(8) : { *(.intvec_tc2_181) *(.intvec_tc2_0xB5) *(.intvec_tc2_0xb5) } > .
    .inttab_tc2_0B6 BIND (__INTTAB_CPU2 + 0x16C0) ALIGN(8) : { *(.intvec_tc2_182) *(.intvec_tc2_0xB6) *(.intvec_tc2_0xb6) } > .
    .inttab_tc2_0B7 BIND (__INTTAB_CPU2 + 0x16E0) ALIGN(8) : { *(.intvec_tc2_183) *(.intvec_tc2_0xB7) *(.intvec_tc2_0xb7) } > .
    .inttab_tc2_0B8 BIND (__INTTAB_CPU2 + 0x1700) ALIGN(8) : { *(.intvec_tc2_184) *(.intvec_tc2_0xB8) *(.intvec_tc2_0xb8) } > .
    .inttab_tc2_0B9 BIND (__INTTAB_CPU2 + 0x1720) ALIGN(8) : { *(.intvec_tc2_185) *(.intvec_tc2_0xB9) *(.intvec_tc2_0xb9) } > .
    .inttab_tc2_0BA BIND (__INTTAB_CPU2 + 0x1740) ALIGN(8) : { *(.intvec_tc2_186) *(.intvec_tc2_0xBA) *(.intvec_tc2_0xba) } > .
    .inttab_tc2_0BB BIND (__INTTAB_CPU2 + 0x1760) ALIGN(8) : { *(.intvec_tc2_187) *(.intvec_tc2_0xBB) *(.intvec_tc2_0xbb) } > .
    .inttab_tc2_0BC BIND (__INTTAB_CPU2 + 0x1780) ALIGN(8) : { *(.intvec_tc2_188) *(.intvec_tc2_0xBC) *(.intvec_tc2_0xbc) } > .
    .inttab_tc2_0BD BIND (__INTTAB_CPU2 + 0x17A0) ALIGN(8) : { *(.intvec_tc2_189) *(.intvec_tc2_0xBD) *(.intvec_tc2_0xbd) } > .
    .inttab_tc2_0BE BIND (__INTTAB_CPU2 + 0x17C0) ALIGN(8) : { *(.intvec_tc2_190) *(.intvec_tc2_0xBE) *(.intvec_tc2_0xbe) } > .
    .inttab_tc2_0BF BIND (__INTTAB_CPU2 + 0x17E0) ALIGN(8) : { *(.intvec_tc2_191) *(.intvec_tc2_0xBF) *(.intvec_tc2_0xbf) } > .
    .inttab_tc2_0C0 BIND (__INTTAB_CPU2 + 0x1800) ALIGN(8) : { *(.intvec_tc2_192) *(.intvec_tc2_0xC0) *(.intvec_tc2_0xc0) } > .
    .inttab_tc2_0C1 BIND (__INTTAB_CPU2 + 0x1820) ALIGN(8) : { *(.intvec_tc2_193) *(.intvec_tc2_0xC1) *(.intvec_tc2_0xc1) } > .
    .inttab_tc2_0C2 BIND (__INTTAB_CPU2 + 0x1840) ALIGN(8) : { *(.intvec_tc2_194) *(.intvec_tc2_0xC2) *(.intvec_tc2_0xc2) } > .
    .inttab_tc2_0C3 BIND (__INTTAB_CPU2 + 0x1860) ALIGN(8) : { *(.intvec_tc2_195) *(.intvec_tc2_0xC3) *(.intvec_tc2_0xc3) } > .
    .inttab_tc2_0C4 BIND (__INTTAB_CPU2 + 0x1880) ALIGN(8) : { *(.intvec_tc2_196) *(.intvec_tc2_0xC4) *(.intvec_tc2_0xc4) } > .
    .inttab_tc2_0C5 BIND (__INTTAB_CPU2 + 0x18A0) ALIGN(8) : { *(.intvec_tc2_197) *(.intvec_tc2_0xC5) *(.intvec_tc2_0xc5) } > .
    .inttab_tc2_0C6 BIND (__INTTAB_CPU2 + 0x18C0) ALIGN(8) : { *(.intvec_tc2_198) *(.intvec_tc2_0xC6) *(.intvec_tc2_0xc6) } > .
    .inttab_tc2_0C7 BIND (__INTTAB_CPU2 + 0x18E0) ALIGN(8) : { *(.intvec_tc2_199) *(.intvec_tc2_0xC7) *(.intvec_tc2_0xc7) } > .
    .inttab_tc2_0C8 BIND (__INTTAB_CPU2 + 0x1900) ALIGN(8) : { *(.intvec_tc2_200) *(.intvec_tc2_0xC8) *(.intvec_tc2_0xc8) } > .
    .inttab_tc2_0C9 BIND (__INTTAB_CPU2 + 0x1920) ALIGN(8) : { *(.intvec_tc2_201) *(.intvec_tc2_0xC9) *(.intvec_tc2_0xc9) } > .
    .inttab_tc2_0CA BIND (__INTTAB_CPU2 + 0x1940) ALIGN(8) : { *(.intvec_tc2_202) *(.intvec_tc2_0xCA) *(.intvec_tc2_0xca) } > .
    .inttab_tc2_0CB BIND (__INTTAB_CPU2 + 0x1960) ALIGN(8) : { *(.intvec_tc2_203) *(.intvec_tc2_0xCB) *(.intvec_tc2_0xcb) } > .
    .inttab_tc2_0CC BIND (__INTTAB_CPU2 + 0x1980) ALIGN(8) : { *(.intvec_tc2_204) *(.intvec_tc2_0xCC) *(.intvec_tc2_0xcc) } > .
    .inttab_tc2_0CD BIND (__INTTAB_CPU2 + 0x19A0) ALIGN(8) : { *(.intvec_tc2_205) *(.intvec_tc2_0xCD) *(.intvec_tc2_0xcd) } > .
    .inttab_tc2_0CE BIND (__INTTAB_CPU2 + 0x19C0) ALIGN(8) : { *(.intvec_tc2_206) *(.intvec_tc2_0xCE) *(.intvec_tc2_0xce) } > .
    .inttab_tc2_0CF BIND (__INTTAB_CPU2 + 0x19E0) ALIGN(8) : { *(.intvec_tc2_207) *(.intvec_tc2_0xCF) *(.intvec_tc2_0xcf) } > .
    .inttab_tc2_0D0 BIND (__INTTAB_CPU2 + 0x1A00) ALIGN(8) : { *(.intvec_tc2_208) *(.intvec_tc2_0xD0) *(.intvec_tc2_0xd0) } > .
    .inttab_tc2_0D1 BIND (__INTTAB_CPU2 + 0x1A20) ALIGN(8) : { *(.intvec_tc2_209) *(.intvec_tc2_0xD1) *(.intvec_tc2_0xd1) } > .
    .inttab_tc2_0D2 BIND (__INTTAB_CPU2 + 0x1A40) ALIGN(8) : { *(.intvec_tc2_210) *(.intvec_tc2_0xD2) *(.intvec_tc2_0xd2) } > .
    .inttab_tc2_0D3 BIND (__INTTAB_CPU2 + 0x1A60) ALIGN(8) : { *(.intvec_tc2_211) *(.intvec_tc2_0xD3) *(.intvec_tc2_0xd3) } > .
    .inttab_tc2_0D4 BIND (__INTTAB_CPU2 + 0x1A80) ALIGN(8) : { *(.intvec_tc2_212) *(.intvec_tc2_0xD4) *(.intvec_tc2_0xd4) } > .
    .inttab_tc2_0D5 BIND (__INTTAB_CPU2 + 0x1AA0) ALIGN(8) : { *(.intvec_tc2_213) *(.intvec_tc2_0xD5) *(.intvec_tc2_0xd5) } > .
    .inttab_tc2_0D6 BIND (__INTTAB_CPU2 + 0x1AC0) ALIGN(8) : { *(.intvec_tc2_214) *(.intvec_tc2_0xD6) *(.intvec_tc2_0xd6) } > .
    .inttab_tc2_0D7 BIND (__INTTAB_CPU2 + 0x1AE0) ALIGN(8) : { *(.intvec_tc2_215) *(.intvec_tc2_0xD7) *(.intvec_tc2_0xd7) } > .
    .inttab_tc2_0D8 BIND (__INTTAB_CPU2 + 0x1B00) ALIGN(8) : { *(.intvec_tc2_216) *(.intvec_tc2_0xD8) *(.intvec_tc2_0xd8) } > .
    .inttab_tc2_0D9 BIND (__INTTAB_CPU2 + 0x1B20) ALIGN(8) : { *(.intvec_tc2_217) *(.intvec_tc2_0xD9) *(.intvec_tc2_0xd9) } > .
    .inttab_tc2_0DA BIND (__INTTAB_CPU2 + 0x1B40) ALIGN(8) : { *(.intvec_tc2_218) *(.intvec_tc2_0xDA) *(.intvec_tc2_0xda) } > .
    .inttab_tc2_0DB BIND (__INTTAB_CPU2 + 0x1B60) ALIGN(8) : { *(.intvec_tc2_219) *(.intvec_tc2_0xDB) *(.intvec_tc2_0xdb) } > .
    .inttab_tc2_0DC BIND (__INTTAB_CPU2 + 0x1B80) ALIGN(8) : { *(.intvec_tc2_220) *(.intvec_tc2_0xDC) *(.intvec_tc2_0xdc) } > .
    .inttab_tc2_0DD BIND (__INTTAB_CPU2 + 0x1BA0) ALIGN(8) : { *(.intvec_tc2_221) *(.intvec_tc2_0xDD) *(.intvec_tc2_0xdd) } > .
    .inttab_tc2_0DE BIND (__INTTAB_CPU2 + 0x1BC0) ALIGN(8) : { *(.intvec_tc2_222) *(.intvec_tc2_0xDE) *(.intvec_tc2_0xde) } > .
    .inttab_tc2_0DF BIND (__INTTAB_CPU2 + 0x1BE0) ALIGN(8) : { *(.intvec_tc2_223) *(.intvec_tc2_0xDF) *(.intvec_tc2_0xdf) } > .
    .inttab_tc2_0E0 BIND (__INTTAB_CPU2 + 0x1C00) ALIGN(8) : { *(.intvec_tc2_224) *(.intvec_tc2_0xE0) *(.intvec_tc2_0xe0) } > .
    .inttab_tc2_0E1 BIND (__INTTAB_CPU2 + 0x1C20) ALIGN(8) : { *(.intvec_tc2_225) *(.intvec_tc2_0xE1) *(.intvec_tc2_0xe1) } > .
    .inttab_tc2_0E2 BIND (__INTTAB_CPU2 + 0x1C40) ALIGN(8) : { *(.intvec_tc2_226) *(.intvec_tc2_0xE2) *(.intvec_tc2_0xe2) } > .
    .inttab_tc2_0E3 BIND (__INTTAB_CPU2 + 0x1C60) ALIGN(8) : { *(.intvec_tc2_227) *(.intvec_tc2_0xE3) *(.intvec_tc2_0xe3) } > .
    .inttab_tc2_0E4 BIND (__INTTAB_CPU2 + 0x1C80) ALIGN(8) : { *(.intvec_tc2_228) *(.intvec_tc2_0xE4) *(.intvec_tc2_0xe4) } > .
    .inttab_tc2_0E5 BIND (__INTTAB_CPU2 + 0x1CA0) ALIGN(8) : { *(.intvec_tc2_229) *(.intvec_tc2_0xE5) *(.intvec_tc2_0xe5) } > .
    .inttab_tc2_0E6 BIND (__INTTAB_CPU2 + 0x1CC0) ALIGN(8) : { *(.intvec_tc2_230) *(.intvec_tc2_0xE6) *(.intvec_tc2_0xe6) } > .
    .inttab_tc2_0E7 BIND (__INTTAB_CPU2 + 0x1CE0) ALIGN(8) : { *(.intvec_tc2_231) *(.intvec_tc2_0xE7) *(.intvec_tc2_0xe7) } > .
    .inttab_tc2_0E8 BIND (__INTTAB_CPU2 + 0x1D00) ALIGN(8) : { *(.intvec_tc2_232) *(.intvec_tc2_0xE8) *(.intvec_tc2_0xe8) } > .
    .inttab_tc2_0E9 BIND (__INTTAB_CPU2 + 0x1D20) ALIGN(8) : { *(.intvec_tc2_233) *(.intvec_tc2_0xE9) *(.intvec_tc2_0xe9) } > .
    .inttab_tc2_0EA BIND (__INTTAB_CPU2 + 0x1D40) ALIGN(8) : { *(.intvec_tc2_234) *(.intvec_tc2_0xEA) *(.intvec_tc2_0xea) } > .
    .inttab_tc2_0EB BIND (__INTTAB_CPU2 + 0x1D60) ALIGN(8) : { *(.intvec_tc2_235) *(.intvec_tc2_0xEB) *(.intvec_tc2_0xeb) } > .
    .inttab_tc2_0EC BIND (__INTTAB_CPU2 + 0x1D80) ALIGN(8) : { *(.intvec_tc2_236) *(.intvec_tc2_0xEC) *(.intvec_tc2_0xec) } > .
    .inttab_tc2_0ED BIND (__INTTAB_CPU2 + 0x1DA0) ALIGN(8) : { *(.intvec_tc2_237) *(.intvec_tc2_0xED) *(.intvec_tc2_0xed) } > .
    .inttab_tc2_0EE BIND (__INTTAB_CPU2 + 0x1DC0) ALIGN(8) : { *(.intvec_tc2_238) *(.intvec_tc2_0xEE) *(.intvec_tc2_0xee) } > .
    .inttab_tc2_0EF BIND (__INTTAB_CPU2 + 0x1DE0) ALIGN(8) : { *(.intvec_tc2_239) *(.intvec_tc2_0xEF) *(.intvec_tc2_0xef) } > .
    .inttab_tc2_0F0 BIND (__INTTAB_CPU2 + 0x1E00) ALIGN(8) : { *(.intvec_tc2_240) *(.intvec_tc2_0xF0) *(.intvec_tc2_0xf0) } > .
    .inttab_tc2_0F1 BIND (__INTTAB_CPU2 + 0x1E20) ALIGN(8) : { *(.intvec_tc2_241) *(.intvec_tc2_0xF1) *(.intvec_tc2_0xf1) } > .
    .inttab_tc2_0F2 BIND (__INTTAB_CPU2 + 0x1E40) ALIGN(8) : { *(.intvec_tc2_242) *(.intvec_tc2_0xF2) *(.intvec_tc2_0xf2) } > .
    .inttab_tc2_0F3 BIND (__INTTAB_CPU2 + 0x1E60) ALIGN(8) : { *(.intvec_tc2_243) *(.intvec_tc2_0xF3) *(.intvec_tc2_0xf3) } > .
    .inttab_tc2_0F4 BIND (__INTTAB_CPU2 + 0x1E80) ALIGN(8) : { *(.intvec_tc2_244) *(.intvec_tc2_0xF4) *(.intvec_tc2_0xf4) } > .
    .inttab_tc2_0F5 BIND (__INTTAB_CPU2 + 0x1EA0) ALIGN(8) : { *(.intvec_tc2_245) *(.intvec_tc2_0xF5) *(.intvec_tc2_0xf5) } > .
    .inttab_tc2_0F6 BIND (__INTTAB_CPU2 + 0x1EC0) ALIGN(8) : { *(.intvec_tc2_246) *(.intvec_tc2_0xF6) *(.intvec_tc2_0xf6) } > .
    .inttab_tc2_0F7 BIND (__INTTAB_CPU2 + 0x1EE0) ALIGN(8) : { *(.intvec_tc2_247) *(.intvec_tc2_0xF7) *(.intvec_tc2_0xf7) } > .
    .inttab_tc2_0F8 BIND (__INTTAB_CPU2 + 0x1F00) ALIGN(8) : { *(.intvec_tc2_248) *(.intvec_tc2_0xF8) *(.intvec_tc2_0xf8) } > .
    .inttab_tc2_0F9 BIND (__INTTAB_CPU2 + 0x1F20) ALIGN(8) : { *(.intvec_tc2_249) *(.intvec_tc2_0xF9) *(.intvec_tc2_0xf9) } > .
    .inttab_tc2_0FA BIND (__INTTAB_CPU2 + 0x1F40) ALIGN(8) : { *(.intvec_tc2_250) *(.intvec_tc2_0xFA) *(.intvec_tc2_0xfa) } > .
    .inttab_tc2_0FB BIND (__INTTAB_CPU2 + 0x1F60) ALIGN(8) : { *(.intvec_tc2_251) *(.intvec_tc2_0xFB) *(.intvec_tc2_0xfb) } > .
    .inttab_tc2_0FC BIND (__INTTAB_CPU2 + 0x1F80) ALIGN(8) : { *(.intvec_tc2_252) *(.intvec_tc2_0xFC) *(.intvec_tc2_0xfc) } > .
    .inttab_tc2_0FD BIND (__INTTAB_CPU2 + 0x1FA0) ALIGN(8) : { *(.intvec_tc2_253) *(.intvec_tc2_0xFD) *(.intvec_tc2_0xfd) } > .
    .inttab_tc2_0FE BIND (__INTTAB_CPU2 + 0x1FC0) ALIGN(8) : { *(.intvec_tc2_254) *(.intvec_tc2_0xFE) *(.intvec_tc2_0xfe) } > .
    .inttab_tc2_0FF BIND (__INTTAB_CPU2 + 0x1FE0) ALIGN(8) : { *(.intvec_tc2_255) *(.intvec_tc2_0xFF) *(.intvec_tc2_0xff) } > .
    
    /* Interrupt vector table located at PFLS3 */
    .inttab_tc3_000 BIND (__INTTAB_CPU3 + 0x0000) ALIGN(8) : { *(.intvec_tc3_0  ) *(.intvec_tc3_0x0 ) *(.intvec_tc3_0x0 ) } > pfls3
    .inttab_tc3_001 BIND (__INTTAB_CPU3 + 0x0020) ALIGN(8) : { *(.intvec_tc3_1  ) *(.intvec_tc3_0x1 ) *(.intvec_tc3_0x1 ) } > .
    .inttab_tc3_002 BIND (__INTTAB_CPU3 + 0x0040) ALIGN(8) : { *(.intvec_tc3_2  ) *(.intvec_tc3_0x2 ) *(.intvec_tc3_0x2 ) } > .
    .inttab_tc3_003 BIND (__INTTAB_CPU3 + 0x0060) ALIGN(8) : { *(.intvec_tc3_3  ) *(.intvec_tc3_0x3 ) *(.intvec_tc3_0x3 ) } > .
    .inttab_tc3_004 BIND (__INTTAB_CPU3 + 0x0080) ALIGN(8) : { *(.intvec_tc3_4  ) *(.intvec_tc3_0x4 ) *(.intvec_tc3_0x4 ) } > .
    .inttab_tc3_005 BIND (__INTTAB_CPU3 + 0x00A0) ALIGN(8) : { *(.intvec_tc3_5  ) *(.intvec_tc3_0x5 ) *(.intvec_tc3_0x5 ) } > .
    .inttab_tc3_006 BIND (__INTTAB_CPU3 + 0x00C0) ALIGN(8) : { *(.intvec_tc3_6  ) *(.intvec_tc3_0x6 ) *(.intvec_tc3_0x6 ) } > .
    .inttab_tc3_007 BIND (__INTTAB_CPU3 + 0x00E0) ALIGN(8) : { *(.intvec_tc3_7  ) *(.intvec_tc3_0x7 ) *(.intvec_tc3_0x7 ) } > .
    .inttab_tc3_008 BIND (__INTTAB_CPU3 + 0x0100) ALIGN(8) : { *(.intvec_tc3_8  ) *(.intvec_tc3_0x8 ) *(.intvec_tc3_0x8 ) } > .
    .inttab_tc3_009 BIND (__INTTAB_CPU3 + 0x0120) ALIGN(8) : { *(.intvec_tc3_9  ) *(.intvec_tc3_0x9 ) *(.intvec_tc3_0x9 ) } > .
    .inttab_tc3_00A BIND (__INTTAB_CPU3 + 0x0140) ALIGN(8) : { *(.intvec_tc3_10 ) *(.intvec_tc3_0xA ) *(.intvec_tc3_0xa ) } > .
    .inttab_tc3_00B BIND (__INTTAB_CPU3 + 0x0160) ALIGN(8) : { *(.intvec_tc3_11 ) *(.intvec_tc3_0xB ) *(.intvec_tc3_0xb ) } > .
    .inttab_tc3_00C BIND (__INTTAB_CPU3 + 0x0180) ALIGN(8) : { *(.intvec_tc3_12 ) *(.intvec_tc3_0xC ) *(.intvec_tc3_0xc ) } > .
    .inttab_tc3_00D BIND (__INTTAB_CPU3 + 0x01A0) ALIGN(8) : { *(.intvec_tc3_13 ) *(.intvec_tc3_0xD ) *(.intvec_tc3_0xd ) } > .
    .inttab_tc3_00E BIND (__INTTAB_CPU3 + 0x01C0) ALIGN(8) : { *(.intvec_tc3_14 ) *(.intvec_tc3_0xE ) *(.intvec_tc3_0xe ) } > .
    .inttab_tc3_00F BIND (__INTTAB_CPU3 + 0x01E0) ALIGN(8) : { *(.intvec_tc3_15 ) *(.intvec_tc3_0xF ) *(.intvec_tc3_0xf ) } > .
    .inttab_tc3_010 BIND (__INTTAB_CPU3 + 0x0200) ALIGN(8) : { *(.intvec_tc3_16 ) *(.intvec_tc3_0x10) *(.intvec_tc3_0x10) } > .
    .inttab_tc3_011 BIND (__INTTAB_CPU3 + 0x0220) ALIGN(8) : { *(.intvec_tc3_17 ) *(.intvec_tc3_0x11) *(.intvec_tc3_0x11) } > .
    .inttab_tc3_012 BIND (__INTTAB_CPU3 + 0x0240) ALIGN(8) : { *(.intvec_tc3_18 ) *(.intvec_tc3_0x12) *(.intvec_tc3_0x12) } > .
    .inttab_tc3_013 BIND (__INTTAB_CPU3 + 0x0260) ALIGN(8) : { *(.intvec_tc3_19 ) *(.intvec_tc3_0x13) *(.intvec_tc3_0x13) } > .
    .inttab_tc3_014 BIND (__INTTAB_CPU3 + 0x0280) ALIGN(8) : { *(.intvec_tc3_20 ) *(.intvec_tc3_0x14) *(.intvec_tc3_0x14) } > .
    .inttab_tc3_015 BIND (__INTTAB_CPU3 + 0x02A0) ALIGN(8) : { *(.intvec_tc3_21 ) *(.intvec_tc3_0x15) *(.intvec_tc3_0x15) } > .
    .inttab_tc3_016 BIND (__INTTAB_CPU3 + 0x02C0) ALIGN(8) : { *(.intvec_tc3_22 ) *(.intvec_tc3_0x16) *(.intvec_tc3_0x16) } > .
    .inttab_tc3_017 BIND (__INTTAB_CPU3 + 0x02E0) ALIGN(8) : { *(.intvec_tc3_23 ) *(.intvec_tc3_0x17) *(.intvec_tc3_0x17) } > .
    .inttab_tc3_018 BIND (__INTTAB_CPU3 + 0x0300) ALIGN(8) : { *(.intvec_tc3_24 ) *(.intvec_tc3_0x18) *(.intvec_tc3_0x18) } > .
    .inttab_tc3_019 BIND (__INTTAB_CPU3 + 0x0320) ALIGN(8) : { *(.intvec_tc3_25 ) *(.intvec_tc3_0x19) *(.intvec_tc3_0x19) } > .
    .inttab_tc3_01A BIND (__INTTAB_CPU3 + 0x0340) ALIGN(8) : { *(.intvec_tc3_26 ) *(.intvec_tc3_0x1A) *(.intvec_tc3_0x1a) } > .
    .inttab_tc3_01B BIND (__INTTAB_CPU3 + 0x0360) ALIGN(8) : { *(.intvec_tc3_27 ) *(.intvec_tc3_0x1B) *(.intvec_tc3_0x1b) } > .
    .inttab_tc3_01C BIND (__INTTAB_CPU3 + 0x0380) ALIGN(8) : { *(.intvec_tc3_28 ) *(.intvec_tc3_0x1C) *(.intvec_tc3_0x1c) } > .
    .inttab_tc3_01D BIND (__INTTAB_CPU3 + 0x03A0) ALIGN(8) : { *(.intvec_tc3_29 ) *(.intvec_tc3_0x1D) *(.intvec_tc3_0x1d) } > .
    .inttab_tc3_01E BIND (__INTTAB_CPU3 + 0x03C0) ALIGN(8) : { *(.intvec_tc3_30 ) *(.intvec_tc3_0x1E) *(.intvec_tc3_0x1e) } > .
    .inttab_tc3_01F BIND (__INTTAB_CPU3 + 0x03E0) ALIGN(8) : { *(.intvec_tc3_31 ) *(.intvec_tc3_0x1F) *(.intvec_tc3_0x1f) } > .
    .inttab_tc3_020 BIND (__INTTAB_CPU3 + 0x0400) ALIGN(8) : { *(.intvec_tc3_32 ) *(.intvec_tc3_0x20) *(.intvec_tc3_0x20) } > .
    .inttab_tc3_021 BIND (__INTTAB_CPU3 + 0x0420) ALIGN(8) : { *(.intvec_tc3_33 ) *(.intvec_tc3_0x21) *(.intvec_tc3_0x21) } > .
    .inttab_tc3_022 BIND (__INTTAB_CPU3 + 0x0440) ALIGN(8) : { *(.intvec_tc3_34 ) *(.intvec_tc3_0x22) *(.intvec_tc3_0x22) } > .
    .inttab_tc3_023 BIND (__INTTAB_CPU3 + 0x0460) ALIGN(8) : { *(.intvec_tc3_35 ) *(.intvec_tc3_0x23) *(.intvec_tc3_0x23) } > .
    .inttab_tc3_024 BIND (__INTTAB_CPU3 + 0x0480) ALIGN(8) : { *(.intvec_tc3_36 ) *(.intvec_tc3_0x24) *(.intvec_tc3_0x24) } > .
    .inttab_tc3_025 BIND (__INTTAB_CPU3 + 0x04A0) ALIGN(8) : { *(.intvec_tc3_37 ) *(.intvec_tc3_0x25) *(.intvec_tc3_0x25) } > .
    .inttab_tc3_026 BIND (__INTTAB_CPU3 + 0x04C0) ALIGN(8) : { *(.intvec_tc3_38 ) *(.intvec_tc3_0x26) *(.intvec_tc3_0x26) } > .
    .inttab_tc3_027 BIND (__INTTAB_CPU3 + 0x04E0) ALIGN(8) : { *(.intvec_tc3_39 ) *(.intvec_tc3_0x27) *(.intvec_tc3_0x27) } > .
    .inttab_tc3_028 BIND (__INTTAB_CPU3 + 0x0500) ALIGN(8) : { *(.intvec_tc3_40 ) *(.intvec_tc3_0x28) *(.intvec_tc3_0x28) } > .
    .inttab_tc3_029 BIND (__INTTAB_CPU3 + 0x0520) ALIGN(8) : { *(.intvec_tc3_41 ) *(.intvec_tc3_0x29) *(.intvec_tc3_0x29) } > .
    .inttab_tc3_02A BIND (__INTTAB_CPU3 + 0x0540) ALIGN(8) : { *(.intvec_tc3_42 ) *(.intvec_tc3_0x2A) *(.intvec_tc3_0x2a) } > .
    .inttab_tc3_02B BIND (__INTTAB_CPU3 + 0x0560) ALIGN(8) : { *(.intvec_tc3_43 ) *(.intvec_tc3_0x2B) *(.intvec_tc3_0x2b) } > .
    .inttab_tc3_02C BIND (__INTTAB_CPU3 + 0x0580) ALIGN(8) : { *(.intvec_tc3_44 ) *(.intvec_tc3_0x2C) *(.intvec_tc3_0x2c) } > .
    .inttab_tc3_02D BIND (__INTTAB_CPU3 + 0x05A0) ALIGN(8) : { *(.intvec_tc3_45 ) *(.intvec_tc3_0x2D) *(.intvec_tc3_0x2d) } > .
    .inttab_tc3_02E BIND (__INTTAB_CPU3 + 0x05C0) ALIGN(8) : { *(.intvec_tc3_46 ) *(.intvec_tc3_0x2E) *(.intvec_tc3_0x2e) } > .
    .inttab_tc3_02F BIND (__INTTAB_CPU3 + 0x05E0) ALIGN(8) : { *(.intvec_tc3_47 ) *(.intvec_tc3_0x2F) *(.intvec_tc3_0x2f) } > .
    .inttab_tc3_030 BIND (__INTTAB_CPU3 + 0x0600) ALIGN(8) : { *(.intvec_tc3_48 ) *(.intvec_tc3_0x30) *(.intvec_tc3_0x30) } > .
    .inttab_tc3_031 BIND (__INTTAB_CPU3 + 0x0620) ALIGN(8) : { *(.intvec_tc3_49 ) *(.intvec_tc3_0x31) *(.intvec_tc3_0x31) } > .
    .inttab_tc3_032 BIND (__INTTAB_CPU3 + 0x0640) ALIGN(8) : { *(.intvec_tc3_50 ) *(.intvec_tc3_0x32) *(.intvec_tc3_0x32) } > .
    .inttab_tc3_033 BIND (__INTTAB_CPU3 + 0x0660) ALIGN(8) : { *(.intvec_tc3_51 ) *(.intvec_tc3_0x33) *(.intvec_tc3_0x33) } > .
    .inttab_tc3_034 BIND (__INTTAB_CPU3 + 0x0680) ALIGN(8) : { *(.intvec_tc3_52 ) *(.intvec_tc3_0x34) *(.intvec_tc3_0x34) } > .
    .inttab_tc3_035 BIND (__INTTAB_CPU3 + 0x06A0) ALIGN(8) : { *(.intvec_tc3_53 ) *(.intvec_tc3_0x35) *(.intvec_tc3_0x35) } > .
    .inttab_tc3_036 BIND (__INTTAB_CPU3 + 0x06C0) ALIGN(8) : { *(.intvec_tc3_54 ) *(.intvec_tc3_0x36) *(.intvec_tc3_0x36) } > .
    .inttab_tc3_037 BIND (__INTTAB_CPU3 + 0x06E0) ALIGN(8) : { *(.intvec_tc3_55 ) *(.intvec_tc3_0x37) *(.intvec_tc3_0x37) } > .
    .inttab_tc3_038 BIND (__INTTAB_CPU3 + 0x0700) ALIGN(8) : { *(.intvec_tc3_56 ) *(.intvec_tc3_0x38) *(.intvec_tc3_0x38) } > .
    .inttab_tc3_039 BIND (__INTTAB_CPU3 + 0x0720) ALIGN(8) : { *(.intvec_tc3_57 ) *(.intvec_tc3_0x39) *(.intvec_tc3_0x39) } > .
    .inttab_tc3_03A BIND (__INTTAB_CPU3 + 0x0740) ALIGN(8) : { *(.intvec_tc3_58 ) *(.intvec_tc3_0x3A) *(.intvec_tc3_0x3a) } > .
    .inttab_tc3_03B BIND (__INTTAB_CPU3 + 0x0760) ALIGN(8) : { *(.intvec_tc3_59 ) *(.intvec_tc3_0x3B) *(.intvec_tc3_0x3b) } > .
    .inttab_tc3_03C BIND (__INTTAB_CPU3 + 0x0780) ALIGN(8) : { *(.intvec_tc3_60 ) *(.intvec_tc3_0x3C) *(.intvec_tc3_0x3c) } > .
    .inttab_tc3_03D BIND (__INTTAB_CPU3 + 0x07A0) ALIGN(8) : { *(.intvec_tc3_61 ) *(.intvec_tc3_0x3D) *(.intvec_tc3_0x3d) } > .
    .inttab_tc3_03E BIND (__INTTAB_CPU3 + 0x07C0) ALIGN(8) : { *(.intvec_tc3_62 ) *(.intvec_tc3_0x3E) *(.intvec_tc3_0x3e) } > .
    .inttab_tc3_03F BIND (__INTTAB_CPU3 + 0x07E0) ALIGN(8) : { *(.intvec_tc3_63 ) *(.intvec_tc3_0x3F) *(.intvec_tc3_0x3f) } > .
    .inttab_tc3_040 BIND (__INTTAB_CPU3 + 0x0800) ALIGN(8) : { *(.intvec_tc3_64 ) *(.intvec_tc3_0x40) *(.intvec_tc3_0x40) } > .
    .inttab_tc3_041 BIND (__INTTAB_CPU3 + 0x0820) ALIGN(8) : { *(.intvec_tc3_65 ) *(.intvec_tc3_0x41) *(.intvec_tc3_0x41) } > .
    .inttab_tc3_042 BIND (__INTTAB_CPU3 + 0x0840) ALIGN(8) : { *(.intvec_tc3_66 ) *(.intvec_tc3_0x42) *(.intvec_tc3_0x42) } > .
    .inttab_tc3_043 BIND (__INTTAB_CPU3 + 0x0860) ALIGN(8) : { *(.intvec_tc3_67 ) *(.intvec_tc3_0x43) *(.intvec_tc3_0x43) } > .
    .inttab_tc3_044 BIND (__INTTAB_CPU3 + 0x0880) ALIGN(8) : { *(.intvec_tc3_68 ) *(.intvec_tc3_0x44) *(.intvec_tc3_0x44) } > .
    .inttab_tc3_045 BIND (__INTTAB_CPU3 + 0x08A0) ALIGN(8) : { *(.intvec_tc3_69 ) *(.intvec_tc3_0x45) *(.intvec_tc3_0x45) } > .
    .inttab_tc3_046 BIND (__INTTAB_CPU3 + 0x08C0) ALIGN(8) : { *(.intvec_tc3_70 ) *(.intvec_tc3_0x46) *(.intvec_tc3_0x46) } > .
    .inttab_tc3_047 BIND (__INTTAB_CPU3 + 0x08E0) ALIGN(8) : { *(.intvec_tc3_71 ) *(.intvec_tc3_0x47) *(.intvec_tc3_0x47) } > .
    .inttab_tc3_048 BIND (__INTTAB_CPU3 + 0x0900) ALIGN(8) : { *(.intvec_tc3_72 ) *(.intvec_tc3_0x48) *(.intvec_tc3_0x48) } > .
    .inttab_tc3_049 BIND (__INTTAB_CPU3 + 0x0920) ALIGN(8) : { *(.intvec_tc3_73 ) *(.intvec_tc3_0x49) *(.intvec_tc3_0x49) } > .
    .inttab_tc3_04A BIND (__INTTAB_CPU3 + 0x0940) ALIGN(8) : { *(.intvec_tc3_74 ) *(.intvec_tc3_0x4A) *(.intvec_tc3_0x4a) } > .
    .inttab_tc3_04B BIND (__INTTAB_CPU3 + 0x0960) ALIGN(8) : { *(.intvec_tc3_75 ) *(.intvec_tc3_0x4B) *(.intvec_tc3_0x4b) } > .
    .inttab_tc3_04C BIND (__INTTAB_CPU3 + 0x0980) ALIGN(8) : { *(.intvec_tc3_76 ) *(.intvec_tc3_0x4C) *(.intvec_tc3_0x4c) } > .
    .inttab_tc3_04D BIND (__INTTAB_CPU3 + 0x09A0) ALIGN(8) : { *(.intvec_tc3_77 ) *(.intvec_tc3_0x4D) *(.intvec_tc3_0x4d) } > .
    .inttab_tc3_04E BIND (__INTTAB_CPU3 + 0x09C0) ALIGN(8) : { *(.intvec_tc3_78 ) *(.intvec_tc3_0x4E) *(.intvec_tc3_0x4e) } > .
    .inttab_tc3_04F BIND (__INTTAB_CPU3 + 0x09E0) ALIGN(8) : { *(.intvec_tc3_79 ) *(.intvec_tc3_0x4F) *(.intvec_tc3_0x4f) } > .
    .inttab_tc3_050 BIND (__INTTAB_CPU3 + 0x0A00) ALIGN(8) : { *(.intvec_tc3_80 ) *(.intvec_tc3_0x50) *(.intvec_tc3_0x50) } > .
    .inttab_tc3_051 BIND (__INTTAB_CPU3 + 0x0A20) ALIGN(8) : { *(.intvec_tc3_81 ) *(.intvec_tc3_0x51) *(.intvec_tc3_0x51) } > .
    .inttab_tc3_052 BIND (__INTTAB_CPU3 + 0x0A40) ALIGN(8) : { *(.intvec_tc3_82 ) *(.intvec_tc3_0x52) *(.intvec_tc3_0x52) } > .
    .inttab_tc3_053 BIND (__INTTAB_CPU3 + 0x0A60) ALIGN(8) : { *(.intvec_tc3_83 ) *(.intvec_tc3_0x53) *(.intvec_tc3_0x53) } > .
    .inttab_tc3_054 BIND (__INTTAB_CPU3 + 0x0A80) ALIGN(8) : { *(.intvec_tc3_84 ) *(.intvec_tc3_0x54) *(.intvec_tc3_0x54) } > .
    .inttab_tc3_055 BIND (__INTTAB_CPU3 + 0x0AA0) ALIGN(8) : { *(.intvec_tc3_85 ) *(.intvec_tc3_0x55) *(.intvec_tc3_0x55) } > .
    .inttab_tc3_056 BIND (__INTTAB_CPU3 + 0x0AC0) ALIGN(8) : { *(.intvec_tc3_86 ) *(.intvec_tc3_0x56) *(.intvec_tc3_0x56) } > .
    .inttab_tc3_057 BIND (__INTTAB_CPU3 + 0x0AE0) ALIGN(8) : { *(.intvec_tc3_87 ) *(.intvec_tc3_0x57) *(.intvec_tc3_0x57) } > .
    .inttab_tc3_058 BIND (__INTTAB_CPU3 + 0x0B00) ALIGN(8) : { *(.intvec_tc3_88 ) *(.intvec_tc3_0x58) *(.intvec_tc3_0x58) } > .
    .inttab_tc3_059 BIND (__INTTAB_CPU3 + 0x0B20) ALIGN(8) : { *(.intvec_tc3_89 ) *(.intvec_tc3_0x59) *(.intvec_tc3_0x59) } > .
    .inttab_tc3_05A BIND (__INTTAB_CPU3 + 0x0B40) ALIGN(8) : { *(.intvec_tc3_90 ) *(.intvec_tc3_0x5A) *(.intvec_tc3_0x5a) } > .
    .inttab_tc3_05B BIND (__INTTAB_CPU3 + 0x0B60) ALIGN(8) : { *(.intvec_tc3_91 ) *(.intvec_tc3_0x5B) *(.intvec_tc3_0x5b) } > .
    .inttab_tc3_05C BIND (__INTTAB_CPU3 + 0x0B80) ALIGN(8) : { *(.intvec_tc3_92 ) *(.intvec_tc3_0x5C) *(.intvec_tc3_0x5c) } > .
    .inttab_tc3_05D BIND (__INTTAB_CPU3 + 0x0BA0) ALIGN(8) : { *(.intvec_tc3_93 ) *(.intvec_tc3_0x5D) *(.intvec_tc3_0x5d) } > .
    .inttab_tc3_05E BIND (__INTTAB_CPU3 + 0x0BC0) ALIGN(8) : { *(.intvec_tc3_94 ) *(.intvec_tc3_0x5E) *(.intvec_tc3_0x5e) } > .
    .inttab_tc3_05F BIND (__INTTAB_CPU3 + 0x0BE0) ALIGN(8) : { *(.intvec_tc3_95 ) *(.intvec_tc3_0x5F) *(.intvec_tc3_0x5f) } > .
    .inttab_tc3_060 BIND (__INTTAB_CPU3 + 0x0C00) ALIGN(8) : { *(.intvec_tc3_96 ) *(.intvec_tc3_0x60) *(.intvec_tc3_0x60) } > .
    .inttab_tc3_061 BIND (__INTTAB_CPU3 + 0x0C20) ALIGN(8) : { *(.intvec_tc3_97 ) *(.intvec_tc3_0x61) *(.intvec_tc3_0x61) } > .
    .inttab_tc3_062 BIND (__INTTAB_CPU3 + 0x0C40) ALIGN(8) : { *(.intvec_tc3_98 ) *(.intvec_tc3_0x62) *(.intvec_tc3_0x62) } > .
    .inttab_tc3_063 BIND (__INTTAB_CPU3 + 0x0C60) ALIGN(8) : { *(.intvec_tc3_99 ) *(.intvec_tc3_0x63) *(.intvec_tc3_0x63) } > .
    .inttab_tc3_064 BIND (__INTTAB_CPU3 + 0x0C80) ALIGN(8) : { *(.intvec_tc3_100) *(.intvec_tc3_0x64) *(.intvec_tc3_0x64) } > .
    .inttab_tc3_065 BIND (__INTTAB_CPU3 + 0x0CA0) ALIGN(8) : { *(.intvec_tc3_101) *(.intvec_tc3_0x65) *(.intvec_tc3_0x65) } > .
    .inttab_tc3_066 BIND (__INTTAB_CPU3 + 0x0CC0) ALIGN(8) : { *(.intvec_tc3_102) *(.intvec_tc3_0x66) *(.intvec_tc3_0x66) } > .
    .inttab_tc3_067 BIND (__INTTAB_CPU3 + 0x0CE0) ALIGN(8) : { *(.intvec_tc3_103) *(.intvec_tc3_0x67) *(.intvec_tc3_0x67) } > .
    .inttab_tc3_068 BIND (__INTTAB_CPU3 + 0x0D00) ALIGN(8) : { *(.intvec_tc3_104) *(.intvec_tc3_0x68) *(.intvec_tc3_0x68) } > .
    .inttab_tc3_069 BIND (__INTTAB_CPU3 + 0x0D20) ALIGN(8) : { *(.intvec_tc3_105) *(.intvec_tc3_0x69) *(.intvec_tc3_0x69) } > .
    .inttab_tc3_06A BIND (__INTTAB_CPU3 + 0x0D40) ALIGN(8) : { *(.intvec_tc3_106) *(.intvec_tc3_0x6A) *(.intvec_tc3_0x6a) } > .
    .inttab_tc3_06B BIND (__INTTAB_CPU3 + 0x0D60) ALIGN(8) : { *(.intvec_tc3_107) *(.intvec_tc3_0x6B) *(.intvec_tc3_0x6b) } > .
    .inttab_tc3_06C BIND (__INTTAB_CPU3 + 0x0D80) ALIGN(8) : { *(.intvec_tc3_108) *(.intvec_tc3_0x6C) *(.intvec_tc3_0x6c) } > .
    .inttab_tc3_06D BIND (__INTTAB_CPU3 + 0x0DA0) ALIGN(8) : { *(.intvec_tc3_109) *(.intvec_tc3_0x6D) *(.intvec_tc3_0x6d) } > .
    .inttab_tc3_06E BIND (__INTTAB_CPU3 + 0x0DC0) ALIGN(8) : { *(.intvec_tc3_110) *(.intvec_tc3_0x6E) *(.intvec_tc3_0x6e) } > .
    .inttab_tc3_06F BIND (__INTTAB_CPU3 + 0x0DE0) ALIGN(8) : { *(.intvec_tc3_111) *(.intvec_tc3_0x6F) *(.intvec_tc3_0x6f) } > .
    .inttab_tc3_070 BIND (__INTTAB_CPU3 + 0x0E00) ALIGN(8) : { *(.intvec_tc3_112) *(.intvec_tc3_0x70) *(.intvec_tc3_0x70) } > .
    .inttab_tc3_071 BIND (__INTTAB_CPU3 + 0x0E20) ALIGN(8) : { *(.intvec_tc3_113) *(.intvec_tc3_0x71) *(.intvec_tc3_0x71) } > .
    .inttab_tc3_072 BIND (__INTTAB_CPU3 + 0x0E40) ALIGN(8) : { *(.intvec_tc3_114) *(.intvec_tc3_0x72) *(.intvec_tc3_0x72) } > .
    .inttab_tc3_073 BIND (__INTTAB_CPU3 + 0x0E60) ALIGN(8) : { *(.intvec_tc3_115) *(.intvec_tc3_0x73) *(.intvec_tc3_0x73) } > .
    .inttab_tc3_074 BIND (__INTTAB_CPU3 + 0x0E80) ALIGN(8) : { *(.intvec_tc3_116) *(.intvec_tc3_0x74) *(.intvec_tc3_0x74) } > .
    .inttab_tc3_075 BIND (__INTTAB_CPU3 + 0x0EA0) ALIGN(8) : { *(.intvec_tc3_117) *(.intvec_tc3_0x75) *(.intvec_tc3_0x75) } > .
    .inttab_tc3_076 BIND (__INTTAB_CPU3 + 0x0EC0) ALIGN(8) : { *(.intvec_tc3_118) *(.intvec_tc3_0x76) *(.intvec_tc3_0x76) } > .
    .inttab_tc3_077 BIND (__INTTAB_CPU3 + 0x0EE0) ALIGN(8) : { *(.intvec_tc3_119) *(.intvec_tc3_0x77) *(.intvec_tc3_0x77) } > .
    .inttab_tc3_078 BIND (__INTTAB_CPU3 + 0x0F00) ALIGN(8) : { *(.intvec_tc3_120) *(.intvec_tc3_0x78) *(.intvec_tc3_0x78) } > .
    .inttab_tc3_079 BIND (__INTTAB_CPU3 + 0x0F20) ALIGN(8) : { *(.intvec_tc3_121) *(.intvec_tc3_0x79) *(.intvec_tc3_0x79) } > .
    .inttab_tc3_07A BIND (__INTTAB_CPU3 + 0x0F40) ALIGN(8) : { *(.intvec_tc3_122) *(.intvec_tc3_0x7A) *(.intvec_tc3_0x7a) } > .
    .inttab_tc3_07B BIND (__INTTAB_CPU3 + 0x0F60) ALIGN(8) : { *(.intvec_tc3_123) *(.intvec_tc3_0x7B) *(.intvec_tc3_0x7b) } > .
    .inttab_tc3_07C BIND (__INTTAB_CPU3 + 0x0F80) ALIGN(8) : { *(.intvec_tc3_124) *(.intvec_tc3_0x7C) *(.intvec_tc3_0x7c) } > .
    .inttab_tc3_07D BIND (__INTTAB_CPU3 + 0x0FA0) ALIGN(8) : { *(.intvec_tc3_125) *(.intvec_tc3_0x7D) *(.intvec_tc3_0x7d) } > .
    .inttab_tc3_07E BIND (__INTTAB_CPU3 + 0x0FC0) ALIGN(8) : { *(.intvec_tc3_126) *(.intvec_tc3_0x7E) *(.intvec_tc3_0x7e) } > .
    .inttab_tc3_07F BIND (__INTTAB_CPU3 + 0x0FE0) ALIGN(8) : { *(.intvec_tc3_127) *(.intvec_tc3_0x7F) *(.intvec_tc3_0x7f) } > .
    .inttab_tc3_080 BIND (__INTTAB_CPU3 + 0x1000) ALIGN(8) : { *(.intvec_tc3_128) *(.intvec_tc3_0x80) *(.intvec_tc3_0x80) } > .
    .inttab_tc3_081 BIND (__INTTAB_CPU3 + 0x1020) ALIGN(8) : { *(.intvec_tc3_129) *(.intvec_tc3_0x81) *(.intvec_tc3_0x81) } > .
    .inttab_tc3_082 BIND (__INTTAB_CPU3 + 0x1040) ALIGN(8) : { *(.intvec_tc3_130) *(.intvec_tc3_0x82) *(.intvec_tc3_0x82) } > .
    .inttab_tc3_083 BIND (__INTTAB_CPU3 + 0x1060) ALIGN(8) : { *(.intvec_tc3_131) *(.intvec_tc3_0x83) *(.intvec_tc3_0x83) } > .
    .inttab_tc3_084 BIND (__INTTAB_CPU3 + 0x1080) ALIGN(8) : { *(.intvec_tc3_132) *(.intvec_tc3_0x84) *(.intvec_tc3_0x84) } > .
    .inttab_tc3_085 BIND (__INTTAB_CPU3 + 0x10A0) ALIGN(8) : { *(.intvec_tc3_133) *(.intvec_tc3_0x85) *(.intvec_tc3_0x85) } > .
    .inttab_tc3_086 BIND (__INTTAB_CPU3 + 0x10C0) ALIGN(8) : { *(.intvec_tc3_134) *(.intvec_tc3_0x86) *(.intvec_tc3_0x86) } > .
    .inttab_tc3_087 BIND (__INTTAB_CPU3 + 0x10E0) ALIGN(8) : { *(.intvec_tc3_135) *(.intvec_tc3_0x87) *(.intvec_tc3_0x87) } > .
    .inttab_tc3_088 BIND (__INTTAB_CPU3 + 0x1100) ALIGN(8) : { *(.intvec_tc3_136) *(.intvec_tc3_0x88) *(.intvec_tc3_0x88) } > .
    .inttab_tc3_089 BIND (__INTTAB_CPU3 + 0x1120) ALIGN(8) : { *(.intvec_tc3_137) *(.intvec_tc3_0x89) *(.intvec_tc3_0x89) } > .
    .inttab_tc3_08A BIND (__INTTAB_CPU3 + 0x1140) ALIGN(8) : { *(.intvec_tc3_138) *(.intvec_tc3_0x8A) *(.intvec_tc3_0x8a) } > .
    .inttab_tc3_08B BIND (__INTTAB_CPU3 + 0x1160) ALIGN(8) : { *(.intvec_tc3_139) *(.intvec_tc3_0x8B) *(.intvec_tc3_0x8b) } > .
    .inttab_tc3_08C BIND (__INTTAB_CPU3 + 0x1180) ALIGN(8) : { *(.intvec_tc3_140) *(.intvec_tc3_0x8C) *(.intvec_tc3_0x8c) } > .
    .inttab_tc3_08D BIND (__INTTAB_CPU3 + 0x11A0) ALIGN(8) : { *(.intvec_tc3_141) *(.intvec_tc3_0x8D) *(.intvec_tc3_0x8d) } > .
    .inttab_tc3_08E BIND (__INTTAB_CPU3 + 0x11C0) ALIGN(8) : { *(.intvec_tc3_142) *(.intvec_tc3_0x8E) *(.intvec_tc3_0x8e) } > .
    .inttab_tc3_08F BIND (__INTTAB_CPU3 + 0x11E0) ALIGN(8) : { *(.intvec_tc3_143) *(.intvec_tc3_0x8F) *(.intvec_tc3_0x8f) } > .
    .inttab_tc3_090 BIND (__INTTAB_CPU3 + 0x1200) ALIGN(8) : { *(.intvec_tc3_144) *(.intvec_tc3_0x90) *(.intvec_tc3_0x90) } > .
    .inttab_tc3_091 BIND (__INTTAB_CPU3 + 0x1220) ALIGN(8) : { *(.intvec_tc3_145) *(.intvec_tc3_0x91) *(.intvec_tc3_0x91) } > .
    .inttab_tc3_092 BIND (__INTTAB_CPU3 + 0x1240) ALIGN(8) : { *(.intvec_tc3_146) *(.intvec_tc3_0x92) *(.intvec_tc3_0x92) } > .
    .inttab_tc3_093 BIND (__INTTAB_CPU3 + 0x1260) ALIGN(8) : { *(.intvec_tc3_147) *(.intvec_tc3_0x93) *(.intvec_tc3_0x93) } > .
    .inttab_tc3_094 BIND (__INTTAB_CPU3 + 0x1280) ALIGN(8) : { *(.intvec_tc3_148) *(.intvec_tc3_0x94) *(.intvec_tc3_0x94) } > .
    .inttab_tc3_095 BIND (__INTTAB_CPU3 + 0x12A0) ALIGN(8) : { *(.intvec_tc3_149) *(.intvec_tc3_0x95) *(.intvec_tc3_0x95) } > .
    .inttab_tc3_096 BIND (__INTTAB_CPU3 + 0x12C0) ALIGN(8) : { *(.intvec_tc3_150) *(.intvec_tc3_0x96) *(.intvec_tc3_0x96) } > .
    .inttab_tc3_097 BIND (__INTTAB_CPU3 + 0x12E0) ALIGN(8) : { *(.intvec_tc3_151) *(.intvec_tc3_0x97) *(.intvec_tc3_0x97) } > .
    .inttab_tc3_098 BIND (__INTTAB_CPU3 + 0x1300) ALIGN(8) : { *(.intvec_tc3_152) *(.intvec_tc3_0x98) *(.intvec_tc3_0x98) } > .
    .inttab_tc3_099 BIND (__INTTAB_CPU3 + 0x1320) ALIGN(8) : { *(.intvec_tc3_153) *(.intvec_tc3_0x99) *(.intvec_tc3_0x99) } > .
    .inttab_tc3_09A BIND (__INTTAB_CPU3 + 0x1340) ALIGN(8) : { *(.intvec_tc3_154) *(.intvec_tc3_0x9A) *(.intvec_tc3_0x9a) } > .
    .inttab_tc3_09B BIND (__INTTAB_CPU3 + 0x1360) ALIGN(8) : { *(.intvec_tc3_155) *(.intvec_tc3_0x9B) *(.intvec_tc3_0x9b) } > .
    .inttab_tc3_09C BIND (__INTTAB_CPU3 + 0x1380) ALIGN(8) : { *(.intvec_tc3_156) *(.intvec_tc3_0x9C) *(.intvec_tc3_0x9c) } > .
    .inttab_tc3_09D BIND (__INTTAB_CPU3 + 0x13A0) ALIGN(8) : { *(.intvec_tc3_157) *(.intvec_tc3_0x9D) *(.intvec_tc3_0x9d) } > .
    .inttab_tc3_09E BIND (__INTTAB_CPU3 + 0x13C0) ALIGN(8) : { *(.intvec_tc3_158) *(.intvec_tc3_0x9E) *(.intvec_tc3_0x9e) } > .
    .inttab_tc3_09F BIND (__INTTAB_CPU3 + 0x13E0) ALIGN(8) : { *(.intvec_tc3_159) *(.intvec_tc3_0x9F) *(.intvec_tc3_0x9f) } > .
    .inttab_tc3_0A0 BIND (__INTTAB_CPU3 + 0x1400) ALIGN(8) : { *(.intvec_tc3_160) *(.intvec_tc3_0xA0) *(.intvec_tc3_0xa0) } > .
    .inttab_tc3_0A1 BIND (__INTTAB_CPU3 + 0x1420) ALIGN(8) : { *(.intvec_tc3_161) *(.intvec_tc3_0xA1) *(.intvec_tc3_0xa1) } > .
    .inttab_tc3_0A2 BIND (__INTTAB_CPU3 + 0x1440) ALIGN(8) : { *(.intvec_tc3_162) *(.intvec_tc3_0xA2) *(.intvec_tc3_0xa2) } > .
    .inttab_tc3_0A3 BIND (__INTTAB_CPU3 + 0x1460) ALIGN(8) : { *(.intvec_tc3_163) *(.intvec_tc3_0xA3) *(.intvec_tc3_0xa3) } > .
    .inttab_tc3_0A4 BIND (__INTTAB_CPU3 + 0x1480) ALIGN(8) : { *(.intvec_tc3_164) *(.intvec_tc3_0xA4) *(.intvec_tc3_0xa4) } > .
    .inttab_tc3_0A5 BIND (__INTTAB_CPU3 + 0x14A0) ALIGN(8) : { *(.intvec_tc3_165) *(.intvec_tc3_0xA5) *(.intvec_tc3_0xa5) } > .
    .inttab_tc3_0A6 BIND (__INTTAB_CPU3 + 0x14C0) ALIGN(8) : { *(.intvec_tc3_166) *(.intvec_tc3_0xA6) *(.intvec_tc3_0xa6) } > .
    .inttab_tc3_0A7 BIND (__INTTAB_CPU3 + 0x14E0) ALIGN(8) : { *(.intvec_tc3_167) *(.intvec_tc3_0xA7) *(.intvec_tc3_0xa7) } > .
    .inttab_tc3_0A8 BIND (__INTTAB_CPU3 + 0x1500) ALIGN(8) : { *(.intvec_tc3_168) *(.intvec_tc3_0xA8) *(.intvec_tc3_0xa8) } > .
    .inttab_tc3_0A9 BIND (__INTTAB_CPU3 + 0x1520) ALIGN(8) : { *(.intvec_tc3_169) *(.intvec_tc3_0xA9) *(.intvec_tc3_0xa9) } > .
    .inttab_tc3_0AA BIND (__INTTAB_CPU3 + 0x1540) ALIGN(8) : { *(.intvec_tc3_170) *(.intvec_tc3_0xAA) *(.intvec_tc3_0xaa) } > .
    .inttab_tc3_0AB BIND (__INTTAB_CPU3 + 0x1560) ALIGN(8) : { *(.intvec_tc3_171) *(.intvec_tc3_0xAB) *(.intvec_tc3_0xab) } > .
    .inttab_tc3_0AC BIND (__INTTAB_CPU3 + 0x1580) ALIGN(8) : { *(.intvec_tc3_172) *(.intvec_tc3_0xAC) *(.intvec_tc3_0xac) } > .
    .inttab_tc3_0AD BIND (__INTTAB_CPU3 + 0x15A0) ALIGN(8) : { *(.intvec_tc3_173) *(.intvec_tc3_0xAD) *(.intvec_tc3_0xad) } > .
    .inttab_tc3_0AE BIND (__INTTAB_CPU3 + 0x15C0) ALIGN(8) : { *(.intvec_tc3_174) *(.intvec_tc3_0xAE) *(.intvec_tc3_0xae) } > .
    .inttab_tc3_0AF BIND (__INTTAB_CPU3 + 0x15E0) ALIGN(8) : { *(.intvec_tc3_175) *(.intvec_tc3_0xAF) *(.intvec_tc3_0xaf) } > .
    .inttab_tc3_0B0 BIND (__INTTAB_CPU3 + 0x1600) ALIGN(8) : { *(.intvec_tc3_176) *(.intvec_tc3_0xB0) *(.intvec_tc3_0xb0) } > .
    .inttab_tc3_0B1 BIND (__INTTAB_CPU3 + 0x1620) ALIGN(8) : { *(.intvec_tc3_177) *(.intvec_tc3_0xB1) *(.intvec_tc3_0xb1) } > .
    .inttab_tc3_0B2 BIND (__INTTAB_CPU3 + 0x1640) ALIGN(8) : { *(.intvec_tc3_178) *(.intvec_tc3_0xB2) *(.intvec_tc3_0xb2) } > .
    .inttab_tc3_0B3 BIND (__INTTAB_CPU3 + 0x1660) ALIGN(8) : { *(.intvec_tc3_179) *(.intvec_tc3_0xB3) *(.intvec_tc3_0xb3) } > .
    .inttab_tc3_0B4 BIND (__INTTAB_CPU3 + 0x1680) ALIGN(8) : { *(.intvec_tc3_180) *(.intvec_tc3_0xB4) *(.intvec_tc3_0xb4) } > .
    .inttab_tc3_0B5 BIND (__INTTAB_CPU3 + 0x16A0) ALIGN(8) : { *(.intvec_tc3_181) *(.intvec_tc3_0xB5) *(.intvec_tc3_0xb5) } > .
    .inttab_tc3_0B6 BIND (__INTTAB_CPU3 + 0x16C0) ALIGN(8) : { *(.intvec_tc3_182) *(.intvec_tc3_0xB6) *(.intvec_tc3_0xb6) } > .
    .inttab_tc3_0B7 BIND (__INTTAB_CPU3 + 0x16E0) ALIGN(8) : { *(.intvec_tc3_183) *(.intvec_tc3_0xB7) *(.intvec_tc3_0xb7) } > .
    .inttab_tc3_0B8 BIND (__INTTAB_CPU3 + 0x1700) ALIGN(8) : { *(.intvec_tc3_184) *(.intvec_tc3_0xB8) *(.intvec_tc3_0xb8) } > .
    .inttab_tc3_0B9 BIND (__INTTAB_CPU3 + 0x1720) ALIGN(8) : { *(.intvec_tc3_185) *(.intvec_tc3_0xB9) *(.intvec_tc3_0xb9) } > .
    .inttab_tc3_0BA BIND (__INTTAB_CPU3 + 0x1740) ALIGN(8) : { *(.intvec_tc3_186) *(.intvec_tc3_0xBA) *(.intvec_tc3_0xba) } > .
    .inttab_tc3_0BB BIND (__INTTAB_CPU3 + 0x1760) ALIGN(8) : { *(.intvec_tc3_187) *(.intvec_tc3_0xBB) *(.intvec_tc3_0xbb) } > .
    .inttab_tc3_0BC BIND (__INTTAB_CPU3 + 0x1780) ALIGN(8) : { *(.intvec_tc3_188) *(.intvec_tc3_0xBC) *(.intvec_tc3_0xbc) } > .
    .inttab_tc3_0BD BIND (__INTTAB_CPU3 + 0x17A0) ALIGN(8) : { *(.intvec_tc3_189) *(.intvec_tc3_0xBD) *(.intvec_tc3_0xbd) } > .
    .inttab_tc3_0BE BIND (__INTTAB_CPU3 + 0x17C0) ALIGN(8) : { *(.intvec_tc3_190) *(.intvec_tc3_0xBE) *(.intvec_tc3_0xbe) } > .
    .inttab_tc3_0BF BIND (__INTTAB_CPU3 + 0x17E0) ALIGN(8) : { *(.intvec_tc3_191) *(.intvec_tc3_0xBF) *(.intvec_tc3_0xbf) } > .
    .inttab_tc3_0C0 BIND (__INTTAB_CPU3 + 0x1800) ALIGN(8) : { *(.intvec_tc3_192) *(.intvec_tc3_0xC0) *(.intvec_tc3_0xc0) } > .
    .inttab_tc3_0C1 BIND (__INTTAB_CPU3 + 0x1820) ALIGN(8) : { *(.intvec_tc3_193) *(.intvec_tc3_0xC1) *(.intvec_tc3_0xc1) } > .
    .inttab_tc3_0C2 BIND (__INTTAB_CPU3 + 0x1840) ALIGN(8) : { *(.intvec_tc3_194) *(.intvec_tc3_0xC2) *(.intvec_tc3_0xc2) } > .
    .inttab_tc3_0C3 BIND (__INTTAB_CPU3 + 0x1860) ALIGN(8) : { *(.intvec_tc3_195) *(.intvec_tc3_0xC3) *(.intvec_tc3_0xc3) } > .
    .inttab_tc3_0C4 BIND (__INTTAB_CPU3 + 0x1880) ALIGN(8) : { *(.intvec_tc3_196) *(.intvec_tc3_0xC4) *(.intvec_tc3_0xc4) } > .
    .inttab_tc3_0C5 BIND (__INTTAB_CPU3 + 0x18A0) ALIGN(8) : { *(.intvec_tc3_197) *(.intvec_tc3_0xC5) *(.intvec_tc3_0xc5) } > .
    .inttab_tc3_0C6 BIND (__INTTAB_CPU3 + 0x18C0) ALIGN(8) : { *(.intvec_tc3_198) *(.intvec_tc3_0xC6) *(.intvec_tc3_0xc6) } > .
    .inttab_tc3_0C7 BIND (__INTTAB_CPU3 + 0x18E0) ALIGN(8) : { *(.intvec_tc3_199) *(.intvec_tc3_0xC7) *(.intvec_tc3_0xc7) } > .
    .inttab_tc3_0C8 BIND (__INTTAB_CPU3 + 0x1900) ALIGN(8) : { *(.intvec_tc3_200) *(.intvec_tc3_0xC8) *(.intvec_tc3_0xc8) } > .
    .inttab_tc3_0C9 BIND (__INTTAB_CPU3 + 0x1920) ALIGN(8) : { *(.intvec_tc3_201) *(.intvec_tc3_0xC9) *(.intvec_tc3_0xc9) } > .
    .inttab_tc3_0CA BIND (__INTTAB_CPU3 + 0x1940) ALIGN(8) : { *(.intvec_tc3_202) *(.intvec_tc3_0xCA) *(.intvec_tc3_0xca) } > .
    .inttab_tc3_0CB BIND (__INTTAB_CPU3 + 0x1960) ALIGN(8) : { *(.intvec_tc3_203) *(.intvec_tc3_0xCB) *(.intvec_tc3_0xcb) } > .
    .inttab_tc3_0CC BIND (__INTTAB_CPU3 + 0x1980) ALIGN(8) : { *(.intvec_tc3_204) *(.intvec_tc3_0xCC) *(.intvec_tc3_0xcc) } > .
    .inttab_tc3_0CD BIND (__INTTAB_CPU3 + 0x19A0) ALIGN(8) : { *(.intvec_tc3_205) *(.intvec_tc3_0xCD) *(.intvec_tc3_0xcd) } > .
    .inttab_tc3_0CE BIND (__INTTAB_CPU3 + 0x19C0) ALIGN(8) : { *(.intvec_tc3_206) *(.intvec_tc3_0xCE) *(.intvec_tc3_0xce) } > .
    .inttab_tc3_0CF BIND (__INTTAB_CPU3 + 0x19E0) ALIGN(8) : { *(.intvec_tc3_207) *(.intvec_tc3_0xCF) *(.intvec_tc3_0xcf) } > .
    .inttab_tc3_0D0 BIND (__INTTAB_CPU3 + 0x1A00) ALIGN(8) : { *(.intvec_tc3_208) *(.intvec_tc3_0xD0) *(.intvec_tc3_0xd0) } > .
    .inttab_tc3_0D1 BIND (__INTTAB_CPU3 + 0x1A20) ALIGN(8) : { *(.intvec_tc3_209) *(.intvec_tc3_0xD1) *(.intvec_tc3_0xd1) } > .
    .inttab_tc3_0D2 BIND (__INTTAB_CPU3 + 0x1A40) ALIGN(8) : { *(.intvec_tc3_210) *(.intvec_tc3_0xD2) *(.intvec_tc3_0xd2) } > .
    .inttab_tc3_0D3 BIND (__INTTAB_CPU3 + 0x1A60) ALIGN(8) : { *(.intvec_tc3_211) *(.intvec_tc3_0xD3) *(.intvec_tc3_0xd3) } > .
    .inttab_tc3_0D4 BIND (__INTTAB_CPU3 + 0x1A80) ALIGN(8) : { *(.intvec_tc3_212) *(.intvec_tc3_0xD4) *(.intvec_tc3_0xd4) } > .
    .inttab_tc3_0D5 BIND (__INTTAB_CPU3 + 0x1AA0) ALIGN(8) : { *(.intvec_tc3_213) *(.intvec_tc3_0xD5) *(.intvec_tc3_0xd5) } > .
    .inttab_tc3_0D6 BIND (__INTTAB_CPU3 + 0x1AC0) ALIGN(8) : { *(.intvec_tc3_214) *(.intvec_tc3_0xD6) *(.intvec_tc3_0xd6) } > .
    .inttab_tc3_0D7 BIND (__INTTAB_CPU3 + 0x1AE0) ALIGN(8) : { *(.intvec_tc3_215) *(.intvec_tc3_0xD7) *(.intvec_tc3_0xd7) } > .
    .inttab_tc3_0D8 BIND (__INTTAB_CPU3 + 0x1B00) ALIGN(8) : { *(.intvec_tc3_216) *(.intvec_tc3_0xD8) *(.intvec_tc3_0xd8) } > .
    .inttab_tc3_0D9 BIND (__INTTAB_CPU3 + 0x1B20) ALIGN(8) : { *(.intvec_tc3_217) *(.intvec_tc3_0xD9) *(.intvec_tc3_0xd9) } > .
    .inttab_tc3_0DA BIND (__INTTAB_CPU3 + 0x1B40) ALIGN(8) : { *(.intvec_tc3_218) *(.intvec_tc3_0xDA) *(.intvec_tc3_0xda) } > .
    .inttab_tc3_0DB BIND (__INTTAB_CPU3 + 0x1B60) ALIGN(8) : { *(.intvec_tc3_219) *(.intvec_tc3_0xDB) *(.intvec_tc3_0xdb) } > .
    .inttab_tc3_0DC BIND (__INTTAB_CPU3 + 0x1B80) ALIGN(8) : { *(.intvec_tc3_220) *(.intvec_tc3_0xDC) *(.intvec_tc3_0xdc) } > .
    .inttab_tc3_0DD BIND (__INTTAB_CPU3 + 0x1BA0) ALIGN(8) : { *(.intvec_tc3_221) *(.intvec_tc3_0xDD) *(.intvec_tc3_0xdd) } > .
    .inttab_tc3_0DE BIND (__INTTAB_CPU3 + 0x1BC0) ALIGN(8) : { *(.intvec_tc3_222) *(.intvec_tc3_0xDE) *(.intvec_tc3_0xde) } > .
    .inttab_tc3_0DF BIND (__INTTAB_CPU3 + 0x1BE0) ALIGN(8) : { *(.intvec_tc3_223) *(.intvec_tc3_0xDF) *(.intvec_tc3_0xdf) } > .
    .inttab_tc3_0E0 BIND (__INTTAB_CPU3 + 0x1C00) ALIGN(8) : { *(.intvec_tc3_224) *(.intvec_tc3_0xE0) *(.intvec_tc3_0xe0) } > .
    .inttab_tc3_0E1 BIND (__INTTAB_CPU3 + 0x1C20) ALIGN(8) : { *(.intvec_tc3_225) *(.intvec_tc3_0xE1) *(.intvec_tc3_0xe1) } > .
    .inttab_tc3_0E2 BIND (__INTTAB_CPU3 + 0x1C40) ALIGN(8) : { *(.intvec_tc3_226) *(.intvec_tc3_0xE2) *(.intvec_tc3_0xe2) } > .
    .inttab_tc3_0E3 BIND (__INTTAB_CPU3 + 0x1C60) ALIGN(8) : { *(.intvec_tc3_227) *(.intvec_tc3_0xE3) *(.intvec_tc3_0xe3) } > .
    .inttab_tc3_0E4 BIND (__INTTAB_CPU3 + 0x1C80) ALIGN(8) : { *(.intvec_tc3_228) *(.intvec_tc3_0xE4) *(.intvec_tc3_0xe4) } > .
    .inttab_tc3_0E5 BIND (__INTTAB_CPU3 + 0x1CA0) ALIGN(8) : { *(.intvec_tc3_229) *(.intvec_tc3_0xE5) *(.intvec_tc3_0xe5) } > .
    .inttab_tc3_0E6 BIND (__INTTAB_CPU3 + 0x1CC0) ALIGN(8) : { *(.intvec_tc3_230) *(.intvec_tc3_0xE6) *(.intvec_tc3_0xe6) } > .
    .inttab_tc3_0E7 BIND (__INTTAB_CPU3 + 0x1CE0) ALIGN(8) : { *(.intvec_tc3_231) *(.intvec_tc3_0xE7) *(.intvec_tc3_0xe7) } > .
    .inttab_tc3_0E8 BIND (__INTTAB_CPU3 + 0x1D00) ALIGN(8) : { *(.intvec_tc3_232) *(.intvec_tc3_0xE8) *(.intvec_tc3_0xe8) } > .
    .inttab_tc3_0E9 BIND (__INTTAB_CPU3 + 0x1D20) ALIGN(8) : { *(.intvec_tc3_233) *(.intvec_tc3_0xE9) *(.intvec_tc3_0xe9) } > .
    .inttab_tc3_0EA BIND (__INTTAB_CPU3 + 0x1D40) ALIGN(8) : { *(.intvec_tc3_234) *(.intvec_tc3_0xEA) *(.intvec_tc3_0xea) } > .
    .inttab_tc3_0EB BIND (__INTTAB_CPU3 + 0x1D60) ALIGN(8) : { *(.intvec_tc3_235) *(.intvec_tc3_0xEB) *(.intvec_tc3_0xeb) } > .
    .inttab_tc3_0EC BIND (__INTTAB_CPU3 + 0x1D80) ALIGN(8) : { *(.intvec_tc3_236) *(.intvec_tc3_0xEC) *(.intvec_tc3_0xec) } > .
    .inttab_tc3_0ED BIND (__INTTAB_CPU3 + 0x1DA0) ALIGN(8) : { *(.intvec_tc3_237) *(.intvec_tc3_0xED) *(.intvec_tc3_0xed) } > .
    .inttab_tc3_0EE BIND (__INTTAB_CPU3 + 0x1DC0) ALIGN(8) : { *(.intvec_tc3_238) *(.intvec_tc3_0xEE) *(.intvec_tc3_0xee) } > .
    .inttab_tc3_0EF BIND (__INTTAB_CPU3 + 0x1DE0) ALIGN(8) : { *(.intvec_tc3_239) *(.intvec_tc3_0xEF) *(.intvec_tc3_0xef) } > .
    .inttab_tc3_0F0 BIND (__INTTAB_CPU3 + 0x1E00) ALIGN(8) : { *(.intvec_tc3_240) *(.intvec_tc3_0xF0) *(.intvec_tc3_0xf0) } > .
    .inttab_tc3_0F1 BIND (__INTTAB_CPU3 + 0x1E20) ALIGN(8) : { *(.intvec_tc3_241) *(.intvec_tc3_0xF1) *(.intvec_tc3_0xf1) } > .
    .inttab_tc3_0F2 BIND (__INTTAB_CPU3 + 0x1E40) ALIGN(8) : { *(.intvec_tc3_242) *(.intvec_tc3_0xF2) *(.intvec_tc3_0xf2) } > .
    .inttab_tc3_0F3 BIND (__INTTAB_CPU3 + 0x1E60) ALIGN(8) : { *(.intvec_tc3_243) *(.intvec_tc3_0xF3) *(.intvec_tc3_0xf3) } > .
    .inttab_tc3_0F4 BIND (__INTTAB_CPU3 + 0x1E80) ALIGN(8) : { *(.intvec_tc3_244) *(.intvec_tc3_0xF4) *(.intvec_tc3_0xf4) } > .
    .inttab_tc3_0F5 BIND (__INTTAB_CPU3 + 0x1EA0) ALIGN(8) : { *(.intvec_tc3_245) *(.intvec_tc3_0xF5) *(.intvec_tc3_0xf5) } > .
    .inttab_tc3_0F6 BIND (__INTTAB_CPU3 + 0x1EC0) ALIGN(8) : { *(.intvec_tc3_246) *(.intvec_tc3_0xF6) *(.intvec_tc3_0xf6) } > .
    .inttab_tc3_0F7 BIND (__INTTAB_CPU3 + 0x1EE0) ALIGN(8) : { *(.intvec_tc3_247) *(.intvec_tc3_0xF7) *(.intvec_tc3_0xf7) } > .
    .inttab_tc3_0F8 BIND (__INTTAB_CPU3 + 0x1F00) ALIGN(8) : { *(.intvec_tc3_248) *(.intvec_tc3_0xF8) *(.intvec_tc3_0xf8) } > .
    .inttab_tc3_0F9 BIND (__INTTAB_CPU3 + 0x1F20) ALIGN(8) : { *(.intvec_tc3_249) *(.intvec_tc3_0xF9) *(.intvec_tc3_0xf9) } > .
    .inttab_tc3_0FA BIND (__INTTAB_CPU3 + 0x1F40) ALIGN(8) : { *(.intvec_tc3_250) *(.intvec_tc3_0xFA) *(.intvec_tc3_0xfa) } > .
    .inttab_tc3_0FB BIND (__INTTAB_CPU3 + 0x1F60) ALIGN(8) : { *(.intvec_tc3_251) *(.intvec_tc3_0xFB) *(.intvec_tc3_0xfb) } > .
    .inttab_tc3_0FC BIND (__INTTAB_CPU3 + 0x1F80) ALIGN(8) : { *(.intvec_tc3_252) *(.intvec_tc3_0xFC) *(.intvec_tc3_0xfc) } > .
    .inttab_tc3_0FD BIND (__INTTAB_CPU3 + 0x1FA0) ALIGN(8) : { *(.intvec_tc3_253) *(.intvec_tc3_0xFD) *(.intvec_tc3_0xfd) } > .
    .inttab_tc3_0FE BIND (__INTTAB_CPU3 + 0x1FC0) ALIGN(8) : { *(.intvec_tc3_254) *(.intvec_tc3_0xFE) *(.intvec_tc3_0xfe) } > .
    .inttab_tc3_0FF BIND (__INTTAB_CPU3 + 0x1FE0) ALIGN(8) : { *(.intvec_tc3_255) *(.intvec_tc3_0xFF) *(.intvec_tc3_0xff) } > .
    
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
    
    
    /* Far addressable LMURAM sections */
    .CPU0_lmudata       ALIGN(4) : { "*(.lmudata_cpu0)" } > .
    .CPU0_lmubss        ALIGN(4) : { "*(.lmubss_cpu0)" } > .
    
    .CPU1_lmudata       ALIGN(4) : { "*(.lmudata_cpu1)" } > cpu1_dlmu
    .CPU1_lmubss        ALIGN(4) : { "*(.lmubss_cpu1)" } > .
    
    .CPU2_lmudata       ALIGN(4) : { "*(.lmudata_cpu2)" } > cpu2_dlmu
    .CPU2_lmubss        ALIGN(4) : { "*(.lmubss_cpu2)" } > .
    
    .CPU3_lmudata       ALIGN(4) : { "*(.lmudata_cpu3)" } > cpu3_dlmu
    .CPU3_lmubss        ALIGN(4) : { "*(.lmubss_cpu3)" } > .
    
    /* Small addressable LMURAM sections */
    .GLOBAL_lmusdata           ALIGN(4) : { PROVIDE(__A9_MEM = .); *(.a9sdata) } > lmuram
    .GLOBAL_lmusbss      CLEAR          : { *(.a9sbss) } > .
    .GLOBAL_lmudata            ALIGN(4) : { *(.lmudata) } > .
    .GLOBAL_lmubss       CLEAR ALIGN(4) : { *(.lmubss) } > .
    PROVIDE(_SMALL_DATA_A9_ = __A9_MEM);
    
//
// These special symbols mark the bounds of RAM and ROM memory.
// They are used by the MULTI debugger.
//
    PROVIDE(__ghs_ramstart  = MEMADDR(psram0));
    PROVIDE(__ghs_ramend    = MEMENDADDR(psram0));
    PROVIDE(__ghs_romstart  = MEMADDR(pfls0));
    PROVIDE(__ghs_romend    = MEMENDADDR(pfls3));

//
// These special symbols mark the bounds of RAM and ROM images of boot code.
// They are used by the GHS startup code (_start and __ghs_ind_crt0).
//
    PROVIDE(__ghs_rambootcodestart  = 0);
    PROVIDE(__ghs_rambootcodeend    = 0);
    PROVIDE(__ghs_rombootcodestart  = ADDR(.start_tc0));
    PROVIDE(__ghs_rombootcodeend    = ENDADDR(.secinfo));
    PROVIDE(__INTTAB_CPU0= __INTTAB_CPU0);
    PROVIDE(__INTTAB_CPU1= __INTTAB_CPU1);
    PROVIDE(__INTTAB_CPU2= __INTTAB_CPU2);
    PROVIDE(__INTTAB_CPU3= __INTTAB_CPU3);
}

