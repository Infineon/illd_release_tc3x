/**
 * \file IfxCif_PinMap_TC37xED_516.h
 * \brief CIF I/O map
 * \ingroup IfxLld_Cif
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
 * \defgroup IfxLld_Cif_pinmap CIF Pin Mapping
 * \ingroup IfxLld_Cif
 */

#ifndef IFXCIF_PINMAP_TC37XED_516_H
#define IFXCIF_PINMAP_TC37XED_516_H  1

#include <IfxCif_reg.h>
#include <_Impl/IfxCif_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Cif_pinmap
 * \{ */

/** \brief CLK pin mapping structure */
typedef const struct
{
    Ifx_CIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
} IfxCif_Pclk_In;

/** \brief D pin mapping structure */
typedef const struct
{
    Ifx_CIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
} IfxCif_D_In;

/** \brief HSNC pin mapping structure */
typedef const struct
{
    Ifx_CIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
} IfxCif_Hsync_In;

/** \brief VSNC pin mapping structure */
typedef const struct
{
    Ifx_CIF*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
} IfxCif_Vsync_In;

IFX_EXTERN IfxCif_D_In IfxCif_D0_P02_0_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D10_P00_1_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D11_P00_2_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D12_P00_3_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D13_P00_4_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D14_P00_5_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D15_P00_6_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D1_P02_1_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D2_P02_2_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D3_P02_3_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D4_P02_4_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D5_P02_5_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D6_P02_6_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D7_P02_7_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D8_P02_8_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_D_In IfxCif_D9_P00_0_IN;  /**< \brief sensor pixel data input */
IFX_EXTERN IfxCif_Hsync_In IfxCif_HSYNC_P00_9_IN;  /**< \brief horizontal synchronization signal input */
IFX_EXTERN IfxCif_Pclk_In IfxCif_PCLK_P00_7_IN;  /**< \brief Sensor Pixel Clock input */
IFX_EXTERN IfxCif_Vsync_In IfxCif_VSYNC_P00_8_IN;  /**< \brief vertical synchronization signal input */

/** \} */

#endif /* IFXCIF_PINMAP_TC37XED_516_H */
