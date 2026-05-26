/**
 * \file IfxHspdm_PinMap_TC33xED_LFBGA292_adas.h
 * \brief HSPDM I/O map
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
 * \defgroup IfxLld_Hspdm_pinmap HSPDM Pin Mapping
 * \ingroup IfxLld_Hspdm
 */

#ifndef IFXHSPDM_PINMAP_TC33XED_LFBGA292_ADAS_H
#define IFXHSPDM_PINMAP_TC33XED_LFBGA292_ADAS_H  1

#include <IfxHspdm_reg.h>
#include <_Impl/IfxHspdm_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Hspdm_pinmap
 * \{ */

/** \brief HSPDM BS pin mapping structure */
typedef const struct
{
    Ifx_HSPDM*         module;    /**< \brief Base address */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxHspdm_Bs_Out;

/** \brief HSPDM MUTE pin mapping structure */
typedef const struct
{
    Ifx_HSPDM*         module;    /**< \brief Base address */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxHspdm_Mute_Out;

IFX_EXTERN IfxHspdm_Bs_Out IfxHspdm0_BS0_OUT_P22_4_OUT;  /**< \brief Bit stream 0 output to the pad */
IFX_EXTERN IfxHspdm_Bs_Out IfxHspdm0_BS1_OUT_P22_5_OUT;  /**< \brief Bit stream 1 output to the pad */
IFX_EXTERN IfxHspdm_Mute_Out IfxHspdm0_MUTE_P22_3_OUT;  /**< \brief Mute output from the micro controller which could be used to control an external Transmitter */

/** \brief Table dimensions */
#define IFXHSPDM_PINMAP_NUM_MODULES 1
#define IFXHSPDM_PINMAP_NUM_0S 1
#define IFXHSPDM_PINMAP_BS_OUT_NUM_ITEMS 2
#define IFXHSPDM_PINMAP_MUTE_OUT_NUM_ITEMS 1


/** \brief IfxHspdm_Bs_Out table */
IFX_EXTERN const IfxHspdm_Bs_Out *IfxHspdm_Bs_Out_pinTable[IFXHSPDM_PINMAP_NUM_MODULES][IFXHSPDM_PINMAP_NUM_0S][IFXHSPDM_PINMAP_BS_OUT_NUM_ITEMS];

/** \brief IfxHspdm_Mute_Out table */
IFX_EXTERN const IfxHspdm_Mute_Out *IfxHspdm_Mute_Out_pinTable[IFXHSPDM_PINMAP_NUM_MODULES][IFXHSPDM_PINMAP_NUM_0S][IFXHSPDM_PINMAP_MUTE_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXHSPDM_PINMAP_TC33XED_LFBGA292_ADAS_H */
