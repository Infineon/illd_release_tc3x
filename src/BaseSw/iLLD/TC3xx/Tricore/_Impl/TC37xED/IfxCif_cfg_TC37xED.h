/**
 * \file IfxCif_cfg_TC37xED.h
 * \brief CIF on-chip implementation data
 * \ingroup IfxLld_Cif
 *
 * \version iLLD_1_22_0
 * \copyright Copyright (c) 2026 Infineon Technologies AG. All rights reserved.
 *
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
 * \defgroup IfxLld_Cif CIF
 * \ingroup IfxLld
 * \defgroup IfxLld_Cif_Impl Implementation
 * \ingroup IfxLld_Cif
 * \defgroup IfxLld_Cif_Std Standard Driver
 * \ingroup IfxLld_Cif
 */

#ifndef IFXCIF_CFG_TC37XED_H
#define IFXCIF_CFG_TC37XED_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#ifndef IFXCIF_DEBUG
#define IFXCIF_DEBUG       __debug()
#endif

/** \brief Number of extra phats
 */
#define IFXCIF_EXTRA_PATHS (5)

#ifndef IFXCIF_MAX_I2CNAK
#define IFXCIF_MAX_I2CNAK  (16)
#endif

#define IFXCIF_NUM_MODULES (1)

#endif /* IFXCIF_CFG_TC37XED_H */
