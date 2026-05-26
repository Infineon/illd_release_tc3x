/**
 * \file IfxSpu_cfg_TC39xB.h
 * \brief SPU on-chip implementation data
 * \ingroup IfxLld_Spu
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
 *
 * \defgroup IfxLld_Spu SPU
 * \ingroup IfxLld
 * \defgroup IfxLld_Spu_Impl Implementation
 * \ingroup IfxLld_Spu
 * \defgroup IfxLld_Spu_Std Standard Driver
 * \ingroup IfxLld_Spu
 * \defgroup IfxLld_Spu_Impl_Enum Enumerations
 * \ingroup IfxLld_Spu_Impl
 */

#ifndef IFXSPU_CFG_TC39XB_H
#define IFXSPU_CFG_TC39XB_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"
#include "IfxSpu_reg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Base address of Configuration RAM
 */
#define IFXSPU_CONFIG_RAM0_BASE (0xfaa00000)

/** \brief Size of configuration RAM
 */
#define IFXSPU_CONFIG_RAM_SIZE  (64 * 1024)

/** \brief Number of configurable SFRs in a configuration slot
 */
#define IFXSPU_CONFIG_SFRS_LEN  (128)

/** \brief Maximum number of configuration slots in the configuration RAM
 */
#define IFXSPU_CONFIG_SLOT_MAX  (IFXSPU_CONFIG_RAM_SIZE / (IFXSPU_CONFIG_SFRS_LEN * 4))

/** \brief Maximum number of antennae
 */
#define IFXSPU_MAX_ANTENNAE     (8)

#define IFXSPU_NUM_MODULES      (2)

/** \brief Base address of Configuration RAM
 */
#define IFXSPU_CONFIG_RAM1_BASE (0xfae00000)

#define IFXSPU_OFFSETOF(type, member) (((uint32)&(((type *)0)->member)))

#define IFXSPU_MAX_FFT_LENGTH   (2048)

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Spu_Impl_Enum
 * \{ */
/** \brief List of the available SPU resources
 */
typedef enum
{
    IfxSpu_Index_none = -1,  /**< \brief Not Selected */
    IfxSpu_Index_0    = 0,   /**< \brief SPU index 0 */
    IfxSpu_Index_1    = 1    /**< \brief SPU index 1 */
} IfxSpu_Index;

/** \} */

/******************************************************************************/
/*-------------------Global Exported Variables/Constants----------------------*/
/******************************************************************************/

IFX_EXTERN IFX_CONST IfxModule_IndexMap IfxSpu_cfg_indexMap[IFXSPU_NUM_MODULES];

#endif /* IFXSPU_CFG_TC39XB_H */
