/**
 * \file IfxEmem_reg.h
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
 * \defgroup IfxSfr_Emem_Registers_Cfg Emem address
 * \ingroup IfxSfr_Emem_Registers
 * 
 * \defgroup IfxSfr_Emem_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Emem_Registers_Cfg
 *
 * \defgroup IfxSfr_Emem_Registers_Cfg_Emem 2-EMEM
 * \ingroup IfxSfr_Emem_Registers_Cfg
 *
 *
 */
#ifndef IFXEMEM_REG_H
#define IFXEMEM_REG_H 1
/******************************************************************************/
#include "IfxEmem_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Emem_Registers_Cfg_BaseAddress
 * \{  */

/** \brief EMEM object */
#define MODULE_EMEM /*lint --e(923, 9078)*/ ((*(Ifx_EMEM*)0xFA006000u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Emem_Registers_Cfg_Emem
 * \{  */
/** \brief 0, EMEM Core Clock Control Register */
#define EMEM_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_CLC*)0xFA006000u)

/** \brief 8, EMEM Core Module Identification Register */
#define EMEM_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_ID*)0xFA006008u)

/** \brief 20, EMEM Core Tile Configuration Register */
#define EMEM_TILECONFIG /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_TILECONFIG*)0xFA006020u)

/** \brief 24, EMEM Core Tile Control Common Memory Register */
#define EMEM_TILECC /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_TILECC*)0xFA006024u)

/** \brief 28, EMEM Core Tile Control Trace Memory Register */
#define EMEM_TILECT /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_TILECT*)0xFA006028u)

/** \brief 2C, EMEM Core Tile Status Register */
#define EMEM_TILESTATE /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_TILESTATE*)0xFA00602Cu)

/** \brief 34, EMEM Core Standby RAM Control Register */
#define EMEM_SBRCTR /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_SBRCTR*)0xFA006034u)

/** \brief F8, EMEM Core Access Enable Register 1 */
#define EMEM_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_ACCEN1*)0xFA0060F8u)

/** \brief FC, EMEM Core Access Enable Register 0 */
#define EMEM_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_EMEM_ACCEN0*)0xFA0060FCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXEMEM_REG_H */
