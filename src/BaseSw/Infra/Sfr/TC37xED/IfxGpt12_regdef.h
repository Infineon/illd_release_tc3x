/**
 * \file IfxGpt12_regdef.h
 * \brief
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC37xED_UM_V2.0.0.R0
 * Specification: TC3xx User Manual V2.0.0
 * MAY BE CHANGED BY USER [yes/no]: No
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Use of this file is subject to the terms of use agreed between (i) you or 
 * the company in which ordinary course of business you are acting and (ii) 
 * Infineon Technologies AG or its licensees. If and as long as no such 
 * terms of use are agreed, use of this file is subject to following:


 * Boost Software License - Version 1.0 - August 17th, 2003

 * Permission is hereby granted, free of charge, to any person or 
 * organization obtaining a copy of the software and accompanying 
 * documentation covered by this license (the "Software") to use, reproduce,
 * display, distribute, execute, and transmit the Software, and to prepare
 * derivative works of the Software, and to permit third-parties to whom the 
 * Software is furnished to do so, all subject to the following:

 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE 
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxSfr_Gpt12_Registers Gpt12 Registers
 * \ingroup IfxSfr
 * 
 * \defgroup IfxSfr_Gpt12_Registers_Bitfields Bitfields
 * \ingroup IfxSfr_Gpt12_Registers
 * 
 * \defgroup IfxSfr_Gpt12_Registers_union Register unions
 * \ingroup IfxSfr_Gpt12_Registers
 * 
 * \defgroup IfxSfr_Gpt12_Registers_struct Memory map
 * \ingroup IfxSfr_Gpt12_Registers
 */
#ifndef IFXGPT12_REGDEF_H
#define IFXGPT12_REGDEF_H 1
/******************************************************************************/
#include "Ifx_TypesReg.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/


/** \addtogroup IfxSfr_Gpt12_Registers_Bitfields
 * \{  */
/** \brief Access Enable Register 0 */
typedef struct _Ifx_GPT12_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;             /**< \brief [0:0] Access Enable for Master TAG ID 0 - EN0 (rw) */
    Ifx_UReg_32Bit EN1:1;             /**< \brief [1:1] Access Enable for Master TAG ID 1 - EN1 (rw) */
    Ifx_UReg_32Bit EN2:1;             /**< \brief [2:2] Access Enable for Master TAG ID 2 - EN2 (rw) */
    Ifx_UReg_32Bit EN3:1;             /**< \brief [3:3] Access Enable for Master TAG ID 3 - EN3 (rw) */
    Ifx_UReg_32Bit EN4:1;             /**< \brief [4:4] Access Enable for Master TAG ID 4 - EN4 (rw) */
    Ifx_UReg_32Bit EN5:1;             /**< \brief [5:5] Access Enable for Master TAG ID 5 - EN5 (rw) */
    Ifx_UReg_32Bit EN6:1;             /**< \brief [6:6] Access Enable for Master TAG ID 6 - EN6 (rw) */
    Ifx_UReg_32Bit EN7:1;             /**< \brief [7:7] Access Enable for Master TAG ID 7 - EN7 (rw) */
    Ifx_UReg_32Bit EN8:1;             /**< \brief [8:8] Access Enable for Master TAG ID 8 - EN8 (rw) */
    Ifx_UReg_32Bit EN9:1;             /**< \brief [9:9] Access Enable for Master TAG ID 9 - EN9 (rw) */
    Ifx_UReg_32Bit EN10:1;            /**< \brief [10:10] Access Enable for Master TAG ID 10 - EN10 (rw) */
    Ifx_UReg_32Bit EN11:1;            /**< \brief [11:11] Access Enable for Master TAG ID 11 - EN11 (rw) */
    Ifx_UReg_32Bit EN12:1;            /**< \brief [12:12] Access Enable for Master TAG ID 12 - EN12 (rw) */
    Ifx_UReg_32Bit EN13:1;            /**< \brief [13:13] Access Enable for Master TAG ID 13 - EN13 (rw) */
    Ifx_UReg_32Bit EN14:1;            /**< \brief [14:14] Access Enable for Master TAG ID 14 - EN14 (rw) */
    Ifx_UReg_32Bit EN15:1;            /**< \brief [15:15] Access Enable for Master TAG ID 15 - EN15 (rw) */
    Ifx_UReg_32Bit EN16:1;            /**< \brief [16:16] Access Enable for Master TAG ID 16 - EN16 (rw) */
    Ifx_UReg_32Bit EN17:1;            /**< \brief [17:17] Access Enable for Master TAG ID 17 - EN17 (rw) */
    Ifx_UReg_32Bit EN18:1;            /**< \brief [18:18] Access Enable for Master TAG ID 18 - EN18 (rw) */
    Ifx_UReg_32Bit EN19:1;            /**< \brief [19:19] Access Enable for Master TAG ID 19 - EN19 (rw) */
    Ifx_UReg_32Bit EN20:1;            /**< \brief [20:20] Access Enable for Master TAG ID 20 - EN20 (rw) */
    Ifx_UReg_32Bit EN21:1;            /**< \brief [21:21] Access Enable for Master TAG ID 21 - EN21 (rw) */
    Ifx_UReg_32Bit EN22:1;            /**< \brief [22:22] Access Enable for Master TAG ID 22 - EN22 (rw) */
    Ifx_UReg_32Bit EN23:1;            /**< \brief [23:23] Access Enable for Master TAG ID 23 - EN23 (rw) */
    Ifx_UReg_32Bit EN24:1;            /**< \brief [24:24] Access Enable for Master TAG ID 24 - EN24 (rw) */
    Ifx_UReg_32Bit EN25:1;            /**< \brief [25:25] Access Enable for Master TAG ID 25 - EN25 (rw) */
    Ifx_UReg_32Bit EN26:1;            /**< \brief [26:26] Access Enable for Master TAG ID 26 - EN26 (rw) */
    Ifx_UReg_32Bit EN27:1;            /**< \brief [27:27] Access Enable for Master TAG ID 27 - EN27 (rw) */
    Ifx_UReg_32Bit EN28:1;            /**< \brief [28:28] Access Enable for Master TAG ID 28 - EN28 (rw) */
    Ifx_UReg_32Bit EN29:1;            /**< \brief [29:29] Access Enable for Master TAG ID 29 - EN29 (rw) */
    Ifx_UReg_32Bit EN30:1;            /**< \brief [30:30] Access Enable for Master TAG ID 30 - EN30 (rw) */
    Ifx_UReg_32Bit EN31:1;            /**< \brief [31:31] Access Enable for Master TAG ID 31 - EN31 (rw) */
} Ifx_GPT12_ACCEN0_Bits;

/** \brief Capture and Reload Register */
typedef struct _Ifx_GPT12_CAPREL_Bits
{
    Ifx_UReg_32Bit CAPREL:16;         /**< \brief [15:0] Current reload value or Captured value - CAPREL (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_CAPREL_Bits;

/** \brief Clock Control Register */
typedef struct _Ifx_GPT12_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;            /**< \brief [0:0] Module Disable Request Bit - DISR (rw) */
    Ifx_UReg_32Bit DISS:1;            /**< \brief [1:1] Module Disable Status Bit - DISS (rh) */
    Ifx_UReg_32Bit reserved_2:1;      /**< \brief [2:2] \internal Reserved */
    Ifx_UReg_32Bit EDIS:1;            /**< \brief [3:3] Sleep Mode Enable Control - EDIS (rw) */
    Ifx_UReg_32Bit reserved_4:12;     /**< \brief [15:4] \internal Reserved */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_CLC_Bits;

/** \brief Identification Register */
typedef struct _Ifx_GPT12_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;          /**< \brief [7:0] Module Revision Number - MODREV (r) */
    Ifx_UReg_32Bit MODTYPE:8;         /**< \brief [15:8] Module Type - MODTYPE (r) */
    Ifx_UReg_32Bit MODNUMBER:16;      /**< \brief [31:16] Module Number - MODNUMBER (r) */
} Ifx_GPT12_ID_Bits;

/** \brief Kernel Reset Register 0 */
typedef struct _Ifx_GPT12_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;             /**< \brief [0:0] Kernel Reset - RST (rwh) */
    Ifx_UReg_32Bit RSTSTAT:1;         /**< \brief [1:1] Kernel Reset Status - RSTSTAT (rh) */
    Ifx_UReg_32Bit reserved_2:30;     /**< \brief [31:2] \internal Reserved */
} Ifx_GPT12_KRST0_Bits;

/** \brief Kernel Reset Register 1 */
typedef struct _Ifx_GPT12_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;             /**< \brief [0:0] Kernel Reset - RST (rwh) */
    Ifx_UReg_32Bit reserved_1:31;     /**< \brief [31:1] \internal Reserved */
} Ifx_GPT12_KRST1_Bits;

/** \brief Kernel Reset Status Clear Register */
typedef struct _Ifx_GPT12_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;             /**< \brief [0:0] Kernel Reset Status Clear - CLR (w) */
    Ifx_UReg_32Bit reserved_1:31;     /**< \brief [31:1] \internal Reserved */
} Ifx_GPT12_KRSTCLR_Bits;

/** \brief OCDS Control and Status Register */
typedef struct _Ifx_GPT12_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:4;      /**< \brief [3:0] \internal Reserved */
    Ifx_UReg_32Bit reserved_4:20;     /**< \brief [23:4] \internal Reserved */
    Ifx_UReg_32Bit SUS:4;             /**< \brief [27:24] OCDS Suspend Control - SUS (rw) */
    Ifx_UReg_32Bit SUS_P:1;           /**< \brief [28:28] SUS Write Protection - SUS_P (w) */
    Ifx_UReg_32Bit SUSSTA:1;          /**< \brief [29:29] Suspend State - SUSSTA (rh) */
    Ifx_UReg_32Bit reserved_30:2;     /**< \brief [31:30] \internal Reserved */
} Ifx_GPT12_OCS_Bits;

/** \brief Port Input Select Register */
typedef struct _Ifx_GPT12_PISEL_Bits
{
    Ifx_UReg_32Bit IST2IN:1;          /**< \brief [0:0] Input Select for T2IN - IST2IN (rw) */
    Ifx_UReg_32Bit IST2EUD:1;         /**< \brief [1:1] Input Select for T2EUD - IST2EUD (rw) */
    Ifx_UReg_32Bit IST3IN:2;          /**< \brief [3:2] Input Select for T3IN - IST3IN (rw) */
    Ifx_UReg_32Bit IST3EUD:2;         /**< \brief [5:4] Input Select for T3EUD - IST3EUD (rw) */
    Ifx_UReg_32Bit IST4IN:2;          /**< \brief [7:6] Input Select for T4IN - IST4IN (rw) */
    Ifx_UReg_32Bit IST4EUD:2;         /**< \brief [9:8] Input Select for T4EUD - IST4EUD (rw) */
    Ifx_UReg_32Bit IST5IN:1;          /**< \brief [10:10] Input Select for T5IN - IST5IN (rw) */
    Ifx_UReg_32Bit IST5EUD:1;         /**< \brief [11:11] Input Select for T5EUD - IST5EUD (rw) */
    Ifx_UReg_32Bit IST6IN:1;          /**< \brief [12:12] Input Select for T6IN - IST6IN (rw) */
    Ifx_UReg_32Bit IST6EUD:1;         /**< \brief [13:13] Input Select for T6EUD - IST6EUD (rw) */
    Ifx_UReg_32Bit ISCAPIN:2;         /**< \brief [15:14] Input Select for CAPIN - ISCAPIN (rw) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_PISEL_Bits;

/** \brief Timer T2 Register */
typedef struct _Ifx_GPT12_T2_Bits
{
    Ifx_UReg_32Bit T2:16;             /**< \brief [15:0] Timer T2 - T2 (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T2_Bits;

/** \brief Timer T2 Control Register */
typedef struct _Ifx_GPT12_T2CON_Bits
{
    Ifx_UReg_32Bit T2I:3;             /**< \brief [2:0] Timer T2 Input Parameter Selection - T2I (rw) */
    Ifx_UReg_32Bit T2M:3;             /**< \brief [5:3] Timer T2 Mode Control (Basic Operating Mode) - T2M (rw) */
    Ifx_UReg_32Bit T2R:1;             /**< \brief [6:6] Timer T2 Run Bit - T2R (rw) */
    Ifx_UReg_32Bit T2UD:1;            /**< \brief [7:7] Timer T2 Up/Down Control - T2UD (rw) */
    Ifx_UReg_32Bit T2UDE:1;           /**< \brief [8:8] Timer T2 External Up/Down Enable - T2UDE (rw) */
    Ifx_UReg_32Bit T2RC:1;            /**< \brief [9:9] Timer T2 Remote Control - T2RC (rw) */
    Ifx_UReg_32Bit reserved_10:2;     /**< \brief [11:10] \internal Reserved */
    Ifx_UReg_32Bit T2IRDIS:1;         /**< \brief [12:12] Timer T2 Interrupt Disable - T2IRDIS (rw) */
    Ifx_UReg_32Bit T2EDGE:1;          /**< \brief [13:13] Timer T2 Edge Detection - T2EDGE (rwh) */
    Ifx_UReg_32Bit T2CHDIR:1;         /**< \brief [14:14] Timer T2 Count Direction Change - T2CHDIR (rwh) */
    Ifx_UReg_32Bit T2RDIR:1;          /**< \brief [15:15] Timer T2 Rotation Direction - T2RDIR (rh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T2CON_Bits;

/** \brief Timer T3 Register */
typedef struct _Ifx_GPT12_T3_Bits
{
    Ifx_UReg_32Bit T3:16;             /**< \brief [15:0] Timer T3 - T3 (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T3_Bits;

/** \brief Timer T3 Control Register */
typedef struct _Ifx_GPT12_T3CON_Bits
{
    Ifx_UReg_32Bit T3I:3;             /**< \brief [2:0] Timer T3 Input Parameter Selection - T3I (rw) */
    Ifx_UReg_32Bit T3M:3;             /**< \brief [5:3] Timer T3 Mode Control - T3M (rw) */
    Ifx_UReg_32Bit T3R:1;             /**< \brief [6:6] Timer T3 Run Bit - T3R (rw) */
    Ifx_UReg_32Bit T3UD:1;            /**< \brief [7:7] Timer T3 Up/Down Control - T3UD (rw) */
    Ifx_UReg_32Bit T3UDE:1;           /**< \brief [8:8] Timer T3 External Up/Down Enable - T3UDE (rw) */
    Ifx_UReg_32Bit T3OE:1;            /**< \brief [9:9] Overflow/Underflow Output Enable - T3OE (rw) */
    Ifx_UReg_32Bit T3OTL:1;           /**< \brief [10:10] Timer T3 Overflow Toggle Latch - T3OTL (rwh) */
    Ifx_UReg_32Bit BPS1:2;            /**< \brief [12:11] GPT1 Block Prescaler Control - BPS1 (rw) */
    Ifx_UReg_32Bit T3EDGE:1;          /**< \brief [13:13] Timer T3 Edge Detection Flag - T3EDGE (rwh) */
    Ifx_UReg_32Bit T3CHDIR:1;         /**< \brief [14:14] Timer T3 Count Direction Change Flag - T3CHDIR (rwh) */
    Ifx_UReg_32Bit T3RDIR:1;          /**< \brief [15:15] Timer T3 Rotation Direction Flag - T3RDIR (rh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T3CON_Bits;

/** \brief Timer T4 Register */
typedef struct _Ifx_GPT12_T4_Bits
{
    Ifx_UReg_32Bit T4:16;             /**< \brief [15:0] Timer T4 - T4 (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T4_Bits;

/** \brief Timer T4 Control Register */
typedef struct _Ifx_GPT12_T4CON_Bits
{
    Ifx_UReg_32Bit T4I:3;             /**< \brief [2:0] Timer T4 Input Parameter Selection - T4I (rw) */
    Ifx_UReg_32Bit T4M:3;             /**< \brief [5:3] Timer T4 Mode Control (Basic Operating Mode) - T4M (rw) */
    Ifx_UReg_32Bit T4R:1;             /**< \brief [6:6] Timer T4 Run Bit - T4R (rw) */
    Ifx_UReg_32Bit T4UD:1;            /**< \brief [7:7] Timer T4 Up/Down Control - T4UD (rw) */
    Ifx_UReg_32Bit T4UDE:1;           /**< \brief [8:8] Timer T4 External Up/Down Enable - T4UDE (rw) */
    Ifx_UReg_32Bit T4RC:1;            /**< \brief [9:9] Timer T4 Remote Control - T4RC (rw) */
    Ifx_UReg_32Bit CLRT2EN:1;         /**< \brief [10:10] Clear Timer T2 Enable - CLRT2EN (rw) */
    Ifx_UReg_32Bit CLRT3EN:1;         /**< \brief [11:11] Clear Timer T3 Enable - CLRT3EN (rw) */
    Ifx_UReg_32Bit T4IRDIS:1;         /**< \brief [12:12] Timer T4 Interrupt Disable - T4IRDIS (rw) */
    Ifx_UReg_32Bit T4EDGE:1;          /**< \brief [13:13] Timer T4 Edge Detection - T4EDGE (rwh) */
    Ifx_UReg_32Bit T4CHDIR:1;         /**< \brief [14:14] Timer T4 Count Direction Change - T4CHDIR (rwh) */
    Ifx_UReg_32Bit T4RDIR:1;          /**< \brief [15:15] Timer T4 Rotation Direction - T4RDIR (rh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T4CON_Bits;

/** \brief Timer T5 Register */
typedef struct _Ifx_GPT12_T5_Bits
{
    Ifx_UReg_32Bit T5:16;             /**< \brief [15:0] Timer T5 - T5 (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T5_Bits;

/** \brief Timer T5 Control Register */
typedef struct _Ifx_GPT12_T5CON_Bits
{
    Ifx_UReg_32Bit T5I:3;             /**< \brief [2:0] Timer T5 Input Parameter Selection - T5I (rw) */
    Ifx_UReg_32Bit T5M:3;             /**< \brief [5:3] Timer T5 Mode Control (Basic Operating Mode) - T5M (rw) */
    Ifx_UReg_32Bit T5R:1;             /**< \brief [6:6] Timer T5 Run Bit - T5R (rw) */
    Ifx_UReg_32Bit T5UD:1;            /**< \brief [7:7] Timer T5 Up/Down Control - T5UD (rw) */
    Ifx_UReg_32Bit T5UDE:1;           /**< \brief [8:8] Timer T5 External Up/Down Enable - T5UDE (rw) */
    Ifx_UReg_32Bit T5RC:1;            /**< \brief [9:9] Timer T5 Remote Control - T5RC (rw) */
    Ifx_UReg_32Bit CT3:1;             /**< \brief [10:10] Timer T3 Capture Trigger Enable - CT3 (rw) */
    Ifx_UReg_32Bit reserved_11:1;     /**< \brief [11:11] \internal Reserved */
    Ifx_UReg_32Bit CI:2;              /**< \brief [13:12] Register CAPREL Capture Trigger Selection - CI (rw) */
    Ifx_UReg_32Bit T5CLR:1;           /**< \brief [14:14] Timer T5 Clear Enable Bit - T5CLR (rw) */
    Ifx_UReg_32Bit T5SC:1;            /**< \brief [15:15] Timer T5 Capture Mode Enable - T5SC (rw) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T5CON_Bits;

/** \brief Timer T6 Register */
typedef struct _Ifx_GPT12_T6_Bits
{
    Ifx_UReg_32Bit T6:16;             /**< \brief [15:0] Timer T6 - T6 (rwh) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T6_Bits;

/** \brief Timer T6 Control Register */
typedef struct _Ifx_GPT12_T6CON_Bits
{
    Ifx_UReg_32Bit T6I:3;             /**< \brief [2:0] Timer T6 Input Parameter Selection - T6I (rw) */
    Ifx_UReg_32Bit T6M:3;             /**< \brief [5:3] Timer T6 Mode Control (Basic Operating Mode) - T6M (rw) */
    Ifx_UReg_32Bit T6R:1;             /**< \brief [6:6] Timer T6 Run Bit - T6R (rw) */
    Ifx_UReg_32Bit T6UD:1;            /**< \brief [7:7] Timer T6 Up/Down Control - T6UD (rw) */
    Ifx_UReg_32Bit T6UDE:1;           /**< \brief [8:8] Timer T6 External Up/Down Enable - T6UDE (rw) */
    Ifx_UReg_32Bit T6OE:1;            /**< \brief [9:9] Overflow/Underflow Output Enable - T6OE (rw) */
    Ifx_UReg_32Bit T6OTL:1;           /**< \brief [10:10] Timer T6 Overflow Toggle Latch - T6OTL (rwh) */
    Ifx_UReg_32Bit BPS2:2;            /**< \brief [12:11] GPT2 Block Prescaler Control - BPS2 (rw) */
    Ifx_UReg_32Bit reserved_13:1;     /**< \brief [13:13] \internal Reserved */
    Ifx_UReg_32Bit T6CLR:1;           /**< \brief [14:14] Timer T6 Clear Enable Bit - T6CLR (rw) */
    Ifx_UReg_32Bit T6SR:1;            /**< \brief [15:15] Timer T6 Reload Mode Enable - T6SR (rw) */
    Ifx_UReg_32Bit reserved_16:16;    /**< \brief [31:16] \internal Reserved */
} Ifx_GPT12_T6CON_Bits;

/** \}  */
/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_gpt12_Registers_union
 * \{   */
/** \brief Access Enable Register 0   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_ACCEN0_Bits B;          /**< \brief Bitfield access */
} Ifx_GPT12_ACCEN0;

/** \brief Capture and Reload Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_CAPREL_Bits B;          /**< \brief Bitfield access */
} Ifx_GPT12_CAPREL;

/** \brief Clock Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_CLC_Bits B;             /**< \brief Bitfield access */
} Ifx_GPT12_CLC;

/** \brief Identification Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_ID_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_ID;

/** \brief Kernel Reset Register 0   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_KRST0_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_KRST0;

/** \brief Kernel Reset Register 1   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_KRST1_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_KRST1;

/** \brief Kernel Reset Status Clear Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_KRSTCLR_Bits B;         /**< \brief Bitfield access */
} Ifx_GPT12_KRSTCLR;

/** \brief OCDS Control and Status Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_OCS_Bits B;             /**< \brief Bitfield access */
} Ifx_GPT12_OCS;

/** \brief Port Input Select Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_PISEL_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_PISEL;

/** \brief Timer T2 Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T2_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_T2;

/** \brief Timer T2 Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T2CON_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_T2CON;

/** \brief Timer T3 Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T3_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_T3;

/** \brief Timer T3 Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T3CON_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_T3CON;

/** \brief Timer T4 Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T4_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_T4;

/** \brief Timer T4 Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T4CON_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_T4CON;

/** \brief Timer T5 Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T5_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_T5;

/** \brief Timer T5 Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T5CON_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_T5CON;

/** \brief Timer T6 Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T6_Bits B;              /**< \brief Bitfield access */
} Ifx_GPT12_T6;

/** \brief Timer T6 Control Register   */
typedef union
{
    Ifx_UReg_32Bit U;                 /**< \brief Unsigned access */
    Ifx_SReg_32Bit I;                 /**< \brief Signed access */
    Ifx_GPT12_T6CON_Bits B;           /**< \brief Bitfield access */
} Ifx_GPT12_T6CON;

/** \}  */

/******************************************************************************/
/** \addtogroup IfxSfr_Gpt12_Registers_struct
 * \{  */
/******************************************************************************/
/** \name Object L0
 * \{  */

/** \brief GPT12 object */
typedef volatile struct _Ifx_GPT12
{
       Ifx_GPT12_CLC                       CLC;                    /**< \brief 0, Clock Control Register*/
       Ifx_GPT12_PISEL                     PISEL;                  /**< \brief 4, Port Input Select Register*/
       Ifx_GPT12_ID                        ID;                     /**< \brief 8, Identification Register*/
       Ifx_UReg_8Bit                       reserved_C[4];          /**< \brief C, \internal Reserved */
       Ifx_GPT12_T2CON                     T2CON;                  /**< \brief 10, Timer T2 Control Register*/
       Ifx_GPT12_T3CON                     T3CON;                  /**< \brief 14, Timer T3 Control Register*/
       Ifx_GPT12_T4CON                     T4CON;                  /**< \brief 18, Timer T4 Control Register*/
       Ifx_GPT12_T5CON                     T5CON;                  /**< \brief 1C, Timer T5 Control Register*/
       Ifx_GPT12_T6CON                     T6CON;                  /**< \brief 20, Timer T6 Control Register*/
       Ifx_UReg_8Bit                       reserved_24[12];        /**< \brief 24, \internal Reserved */
       Ifx_GPT12_CAPREL                    CAPREL;                 /**< \brief 30, Capture and Reload Register*/
       Ifx_GPT12_T2                        T2;                     /**< \brief 34, Timer T2 Register*/
       Ifx_GPT12_T3                        T3;                     /**< \brief 38, Timer T3 Register*/
       Ifx_GPT12_T4                        T4;                     /**< \brief 3C, Timer T4 Register*/
       Ifx_GPT12_T5                        T5;                     /**< \brief 40, Timer T5 Register*/
       Ifx_GPT12_T6                        T6;                     /**< \brief 44, Timer T6 Register*/
       Ifx_UReg_8Bit                       reserved_48[160];       /**< \brief 48, \internal Reserved */
       Ifx_GPT12_OCS                       OCS;                    /**< \brief E8, OCDS Control and Status Register*/
       Ifx_GPT12_KRSTCLR                   KRSTCLR;                /**< \brief EC, Kernel Reset Status Clear Register*/
       Ifx_GPT12_KRST1                     KRST1;                  /**< \brief F0, Kernel Reset Register 1*/
       Ifx_GPT12_KRST0                     KRST0;                  /**< \brief F4, Kernel Reset Register 0*/
       Ifx_UReg_8Bit                       reserved_F8[4];         /**< \brief F8, \internal Reserved */
       Ifx_GPT12_ACCEN0                    ACCEN0;                 /**< \brief FC, Access Enable Register 0*/
} Ifx_GPT12;

/** \}  */
/******************************************************************************/
/** \}  */


/******************************************************************************/

/******************************************************************************/

#endif /* IFXGPT12_REGDEF_H */
