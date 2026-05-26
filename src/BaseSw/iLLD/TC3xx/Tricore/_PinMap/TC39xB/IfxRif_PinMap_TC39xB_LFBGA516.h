/**
 * \file IfxRif_PinMap_TC39xB_LFBGA516.h
 * \brief RIF I/O map
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
 * \defgroup IfxLld_Rif_pinmap RIF Pin Mapping
 * \ingroup IfxLld_Rif
 */

#ifndef IFXRIF_PINMAP_TC39XB_LFBGA516_H
#define IFXRIF_PINMAP_TC39XB_LFBGA516_H 1

#include <IfxRif_reg.h>
#include <_Impl/IfxRif_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Rif_pinmap
 * \{ */

/** \brief CLK pin mapping structure */
typedef const struct
{
    Ifx_RIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxRif_Clk_In;

/** \brief D pin mapping structure */
typedef const struct
{
    Ifx_RIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxRif_D_In;

/** \brief FR pin mapping structure */
typedef const struct
{
    Ifx_RIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxRif_Fr_In;

/** \brief ExRamp pin mapping structure */
typedef const struct
{
    Ifx_RIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxRif_ExRamp_In;


IFX_EXTERN IfxRif_ExRamp_In IfxRif_RAMP1B_P02_6_IN;  /**< \brief External RAMP B input */
IFX_EXTERN IfxRif_ExRamp_In IfxRif_RAMP1B_P10_8_IN;  /**< \brief External RAMP B input */

/** \brief Table dimensions */
#define IFXRIF_PINMAP_NUM_MODULES 2
#define IFXRIF_PINMAP_EXRAMP_IN_NUM_ITEMS 1


/** \brief IfxRif_ExRamp_In table */
IFX_EXTERN const IfxRif_ExRamp_In *IfxRif_ExRamp_In_pinTable[IFXRIF_PINMAP_NUM_MODULES][IFXRIF_PINMAP_EXRAMP_IN_NUM_ITEMS];

/** \} */

#endif /* IFXRIF_PINMAP_TC39XB_LFBGA516_H */
