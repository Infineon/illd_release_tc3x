/**
 * \file IfxRif_cfg_TC33xED.h
 * \brief RIF on-chip implementation data
 * \ingroup IfxLld_Rif
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
 *
 * \defgroup IfxLld_Rif RIF
 * \ingroup IfxLld
 * \defgroup IfxLld_Rif_Impl Implementation
 * \ingroup IfxLld_Rif
 * \defgroup IfxLld_Rif_Std Standard Driver
 * \ingroup IfxLld_Rif
 * \defgroup IfxLld_Rif_Impl_Enumerations Enumerations
 * \ingroup IfxLld_Rif_Impl
 * \defgroup IfxLld_Rif_Impl_Variables Global Variables
 * \ingroup IfxLld_Rif_Impl
 */

#ifndef IFXRIF_CFG_TC33XED_H
#define IFXRIF_CFG_TC33XED_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"
#include "IfxRif_reg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXRIF_NUM_MODULES (1)

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Rif_Impl_Enumerations
 * \{ */
/** \brief List of the available RIF resources
 */
typedef enum
{
    IfxRif_Index_none = -1,  /**< \brief Not Selected */
    IfxRif_Index_0    = 0,   /**< \brief RIF index 0  */
    IfxRif_Index_1           /**< \brief RIF index 1  */
} IfxRif_Index;

/** \} */

/** \addtogroup IfxLld_Rif_Impl_Variables
 * \{ */

/******************************************************************************/
/*-------------------Global Exported Variables/Constants----------------------*/
/******************************************************************************/

IFX_EXTERN IfxModule_IndexMap IfxRif_cfg_indexMap[IFXRIF_NUM_MODULES];

/** \} */

#endif /* IFXRIF_CFG_TC33XED_H */
