/**
 * \file IfxAgbt_reg.h
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
 * \defgroup IfxSfr_Agbt_Registers_Cfg Agbt address
 * \ingroup IfxSfr_Agbt_Registers
 * 
 * \defgroup IfxSfr_Agbt_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Agbt_Registers_Cfg
 *
 * \defgroup IfxSfr_Agbt_Registers_Cfg_Agbt 2-AGBT
 * \ingroup IfxSfr_Agbt_Registers_Cfg
 *
 *
 */
#ifndef IFXAGBT_REG_H
#define IFXAGBT_REG_H 1
/******************************************************************************/
#include "IfxAgbt_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Agbt_Registers_Cfg_BaseAddress
 * \{  */

/** \brief AGBT object */
#define MODULE_AGBT /*lint --e(923, 9078)*/ ((*(Ifx_AGBT*)0xFA001000u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Agbt_Registers_Cfg_Agbt
 * \{  */
/** \brief 0, Clock Control Register */
#define AGBT_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_CLC*)0xFA001000u)

/** \brief 8, Module Identification Register */
#define AGBT_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_ID*)0xFA001008u)

/** \brief 10, Trace Control Register */
#define AGBT_TCR /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_TCR*)0xFA001010u)

/** \brief 14, Trace Status Register */
#define AGBT_TSR /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_TSR*)0xFA001014u)

/** \brief 18, FIFO Control Register */
#define AGBT_FCTRL /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_FCTRL*)0xFA001018u)

/** \brief 1C, Trace Auto Channel UP */
#define AGBT_TACU /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_TACU*)0xFA00101Cu)

/** \brief 20, FIFO Block Fill Level */
#define AGBT_FBFLV /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_FBFLV*)0xFA001020u)

/** \brief 24, Interrupt Status Register */
#define AGBT_IRS /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_IRS*)0xFA001024u)

/** \brief 28, Interrupt enable register */
#define AGBT_IRE /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_IRE*)0xFA001028u)

/** \brief 30, Physical layer Control Register 1 */
#define AGBT_PYCR1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PYCR1*)0xFA001030u)

/** \brief 34, Physical layer Control Register 2 */
#define AGBT_PYCR2 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PYCR2*)0xFA001034u)

/** \brief 38, PLL analog part, Control Register 1 */
#define AGBT_PACR1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PACR1*)0xFA001038u)

/** \brief 3C, PLL analog part, Control Register 2 */
#define AGBT_PACR2 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PACR2*)0xFA00103Cu)

/** \brief 40, PLL digital part, Control Register 1 */
#define AGBT_PDCR1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PDCR1*)0xFA001040u)

/** \brief 4C, PLL digital part, status Register 1 */
#define AGBT_PDST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_PDST1*)0xFA00104Cu)

/** \brief EC, Kernel Reset Status Clear Register */
#define AGBT_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_KRSTCLR*)0xFA0010ECu)

/** \brief F0, Kernel Reset Register 1 */
#define AGBT_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_KRST1*)0xFA0010F0u)

/** \brief F4, Kernel Reset Register 0 */
#define AGBT_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_KRST0*)0xFA0010F4u)

/** \brief F8, Access Enable Register 1 */
#define AGBT_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_ACCEN1*)0xFA0010F8u)

/** \brief FC, Access Enable Register 0 */
#define AGBT_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_AGBT_ACCEN0*)0xFA0010FCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXAGBT_REG_H */
