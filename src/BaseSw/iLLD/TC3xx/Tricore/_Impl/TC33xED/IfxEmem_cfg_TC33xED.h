/**
 * \file IfxEmem_cfg_TC33xED.h
 * \brief EMEM on-chip implementation data
 * \ingroup IfxLld_Emem
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
 * \defgroup IfxLld_Emem EMEM
 * \ingroup IfxLld
 * \defgroup IfxLld_Emem_Impl Implementation
 * \ingroup IfxLld_Emem
 * \defgroup IfxLld_Emem_Std Standard Driver
 * \ingroup IfxLld_Emem
 */

#ifndef IFXEMEM_CFG_TC33XED_H
#define IFXEMEM_CFG_TC33XED_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"
#include "IfxEmem_mpu_reg.h"
#include "IfxEmem_reg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXEMEM_START_ADDR_CPU_CACHED     0x99000000UL

#define IFXEMEM_START_ADDR_CPU            0xB9000000UL

#define IFXEMEM_START_ADDR_BBB            (0xB9000000UL)

#define IFXEMEM_SIZE                      (0x100000UL)

#define IFXEMEM_XAM_START_ADDR_CPU_CACHED (0x9F100000UL)

#define IFXEMEM_XAM_START_ADDR_CPU        (0xBF100000UL)

#define IFXEMEM_XAM_START_ADDR_BBB        (0xAF100000UL)

#define IFXEMEM_NUM_MODULES               (1)

#define IFXEMEM_NUM_MPU_MODULES           (1)

/** \brief Emem bus size in bytes
 */
#define IFXEMEM_BUS_SIZE                  (256 / 8)

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief List of the available EMEM MPU instances
 */
typedef enum
{
    IfxEmem_MpuIndex_0    = 0,  /**< \brief EMEM Module MPU 0 */
    IfxEmem_MpuIndex_none = -1  /**< \brief Not selected */
} IfxEmem_MpuIndex;

/******************************************************************************/
/*-------------------Global Exported Variables/Constants----------------------*/
/******************************************************************************/

IFX_EXTERN IFX_CONST IfxModule_IndexMap IfxEmem_cfg_indexMap[IFXEMEM_NUM_MPU_MODULES];

#endif /* IFXEMEM_CFG_TC33XED_H */
