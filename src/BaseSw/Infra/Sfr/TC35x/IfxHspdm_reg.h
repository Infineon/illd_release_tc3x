/**
 * \file IfxHspdm_reg.h
 * \brief
 * \version iLLD_1_22_0
 * \copyright Copyright (c) 2026 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC35XA_UM_V2.0.0.R0
 * Specification: TC3xx User Manual V2.0.0
 * MAY BE CHANGED BY USER [yes/no]: No
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) licenses this file to you under the
 * Infineon Automotive SW Lab License v2025-01 (IFASLL). You may not use
 * this file except in compliance with IFASLL.
 *
 * The full license text is contained in IFASLL202501.pdf delivered with this SW.
 * Unless required by applicable law or agreed to in writing, software distributed
 * under this license is distributed "AS IS" without any warranty or liability of any
 * kind and Infineon hereby expressly disclaims any warranties or representations,
 * whether express, implied, statutory or otherwise, including but not limited to
 * warranties of workmanship, merchantability, fitness for a particular purpose,
 * defects in the licensed items, or non-infringement of third parties'
 * intellectual property rights. See the full license text for the specific
 * language governing permissions and limitations under IFASLL.
 *
 * \defgroup IfxSfr_Hspdm_Registers_Cfg Hspdm address
 * \ingroup IfxSfr_Hspdm_Registers
 * 
 * \defgroup IfxSfr_Hspdm_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Hspdm_Registers_Cfg
 *
 * \defgroup IfxSfr_Hspdm_Registers_Cfg_Hspdm 2-HSPDM
 * \ingroup IfxSfr_Hspdm_Registers_Cfg
 *
 *
 */
#ifndef IFXHSPDM_REG_H
#define IFXHSPDM_REG_H 1
/******************************************************************************/
#include "IfxHspdm_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Hspdm_Registers_Cfg_BaseAddress
 * \{  */

/** \brief HSPDM object */
#define MODULE_HSPDM /*lint --e(923, 9078)*/ ((*(Ifx_HSPDM*)0xF0280000u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Hspdm_Registers_Cfg_Hspdm
 * \{  */
/** \brief 0, SRAM  */
#define HSPDM_SRAM ((void*)0xF0280000u)
#define HSPDM_SRAM_SIZE (0x2000u)
/** \brief 0, Clock Control Register */
#define HSPDM_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_CLC*)0xF0282000u)

/** \brief 8, Module Identification Register */
#define HSPDM_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_ID*)0xF0282008u)

/** \brief 10, RAM Buffer A Register 0 */
#define HSPDM_BUFA0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_BUFA0*)0xF0282010u)

/** \brief 18, RAM Buffer B Register 0 */
#define HSPDM_BUFB0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_BUFB0*)0xF0282018u)

/** \brief 1C, Current Address Register */
#define HSPDM_CURRAD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_CURRAD*)0xF028201Cu)

/** \brief 20, MUTE0 Register */
#define HSPDM_MUTE0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_MUTE0*)0xF0282020u)

/** \brief 24, MUTE1 Register */
#define HSPDM_MUTE1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_MUTE1*)0xF0282024u)

/** \brief 30, ADC Trigger Register */
#define HSPDM_ADCTG /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_ADCTG*)0xF0282030u)

/** \brief 34, ADC Trigger Count Register */
#define HSPDM_ADCTGCNT /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_ADCTGCNT*)0xF0282034u)

/** \brief 38, Configuration Register */
#define HSPDM_CON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_CON*)0xF0282038u)

/** \brief 44, Flags Register */
#define HSPDM_FLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_FLAGS*)0xF0282044u)

/** \brief 48, Flags Set Register */
#define HSPDM_FLAGSSET /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_FLAGSSET*)0xF0282048u)

/** \brief 4C, Flags Clear Register */
#define HSPDM_FLAGSCLEAR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_FLAGSCLEAR*)0xF028204Cu)

/** \brief 50, Flags Enable Register */
#define HSPDM_FLAGSEN /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_FLAGSEN*)0xF0282050u)

/** \brief E8, OCDS Control and Status Register */
#define HSPDM_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_OCS*)0xF02820E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define HSPDM_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_KRSTCLR*)0xF02820ECu)

/** \brief F0, Kernel Reset Register 1 */
#define HSPDM_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_KRST1*)0xF02820F0u)

/** \brief F4, Kernel Reset Register 0 */
#define HSPDM_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_KRST0*)0xF02820F4u)

/** \brief F8, Access Enable Register 1 */
#define HSPDM_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_ACCEN1*)0xF02820F8u)

/** \brief FC, Access Enable Register 0 */
#define HSPDM_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSPDM_ACCEN0*)0xF02820FCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXHSPDM_REG_H */
