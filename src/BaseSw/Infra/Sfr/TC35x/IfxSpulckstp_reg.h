/**
 * \file IfxSpulckstp_reg.h
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
 * \defgroup IfxSfr_Spulckstp_Registers_Cfg Spulckstp address
 * \ingroup IfxSfr_Spulckstp_Registers
 * 
 * \defgroup IfxSfr_Spulckstp_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Spulckstp_Registers_Cfg
 *
 * \defgroup IfxSfr_Spulckstp_Registers_Cfg_Spulckstp 2-SPULCKSTP
 * \ingroup IfxSfr_Spulckstp_Registers_Cfg
 *
 *
 */
#ifndef IFXSPULCKSTP_REG_H
#define IFXSPULCKSTP_REG_H 1
/******************************************************************************/
#include "IfxSpulckstp_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Spulckstp_Registers_Cfg_BaseAddress
 * \{  */

/** \brief SPULCKSTP object */
#define MODULE_SPULCKSTP /*lint --e(923, 9078)*/ ((*(Ifx_SPULCKSTP*)0xFA700000u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Spulckstp_Registers_Cfg_Spulckstp
 * \{  */
/** \brief 0, Clock Control */
#define SPULCKSTP_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_CLC*)0xFA700000u)

/** \brief 4, Module Identification Register */
#define SPULCKSTP_MODID /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_MODID*)0xFA700004u)

/** \brief 10, SPU Lockstep Control */
#define SPULCKSTP_CTRL /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_CTRL*)0xFA700010u)

/** \brief 18, Error Monitoring Register */
#define SPULCKSTP_ERROR /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_ERROR*)0xFA700018u)

/** \brief 1C, Error Clear */
#define SPULCKSTP_ERRCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_ERRCLR*)0xFA70001Cu)

/** \brief 20, Alarm Test Register */
#define SPULCKSTP_TEST /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_TEST*)0xFA700020u)

/** \brief 24, SPU Control */
#define SPULCKSTP_SPUCTRL /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_SPUCTRL*)0xFA700024u)

/** \brief E4, Access Enable Register 0 */
#define SPULCKSTP_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_ACCEN0*)0xFA7000E4u)

/** \brief E8, Access Enable Register 1 */
#define SPULCKSTP_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SPULCKSTP_ACCEN1*)0xFA7000E8u)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXSPULCKSTP_REG_H */
