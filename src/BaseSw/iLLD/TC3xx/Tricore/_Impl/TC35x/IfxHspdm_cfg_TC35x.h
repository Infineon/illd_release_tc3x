/**
 * \file IfxHspdm_cfg_TC35x.h
 * \brief HSPDM on-chip implementation data
 * \ingroup IfxLld_Hspdm
 *
 * \version iLLD_1_22_0
 * \copyright Copyright (c) 2026 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
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
 * \defgroup IfxLld_Hspdm HSPDM
 * \ingroup IfxLld
 * \defgroup IfxLld_Hspdm_Impl Implementation
 * \ingroup IfxLld_Hspdm
 * \defgroup IfxLld_Hspdm_Std Standard Driver
 * \ingroup IfxLld_Hspdm
 */

#ifndef IFXHSPDM_CFG_TC35X_H
#define IFXHSPDM_CFG_TC35X_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"
#include "IfxHspdm_reg.h"
#include "IfxHspdm_regdef.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXHSPDM_NUM_MODULES     (1)

/** \brief maximum buffer size of HSPDM is 8KB.
 */
#define IFXHSPDM_BUFFER_MAX_SIZE (0x2000u)

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief hardware trigger source selection
 */
typedef enum
{
    IfxHspdm_HwTriggerSource_CCU6 = 0  /**< \brief CCU6 is trigger device */
} IfxHspdm_HwTriggerSource;

#endif /* IFXHSPDM_CFG_TC35X_H */
