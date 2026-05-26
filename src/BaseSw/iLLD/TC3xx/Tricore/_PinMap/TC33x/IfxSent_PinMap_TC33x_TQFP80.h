/**
 * \file IfxSent_PinMap_TC33x_TQFP80.h
 * \brief SENT I/O map
 * \ingroup IfxLld_Sent
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
 * \defgroup IfxLld_Sent_pinmap SENT Pin Mapping
 * \ingroup IfxLld_Sent
 */

#ifndef IFXSENT_PINMAP_TC33X_TQFP80_H
#define IFXSENT_PINMAP_TC33X_TQFP80_H  1

#include <IfxSent_reg.h>
#include <_Impl/IfxSent_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Sent_pinmap
 * \{ */

/** \brief SENT pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    Ifx_RxSel         select;    /**< \brief Input multiplexer value */
} IfxSent_Sent_In;

/** \brief SPC pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxSent_Spc_Out;

IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0C_P02_8_IN;  /**< \brief Receive input channel 0 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1C_P02_7_IN;  /**< \brief Receive input channel 1 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2C_P02_6_IN;  /**< \brief Receive input channel 2 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3C_P02_5_IN;  /**< \brief Receive input channel 3 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4A_P40_4_IN;  /**< \brief Receive input channel 4 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT4C_P33_6_IN;  /**< \brief Receive input channel 4 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5A_P40_5_IN;  /**< \brief Receive input channel 5 */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT5C_P33_5_IN;  /**< \brief Receive input channel 5 */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC1_P02_7_OUT;  /**< \brief Transmit output */

/** \brief Table dimensions */
#define IFXSENT_PINMAP_NUM_MODULES 1
#define IFXSENT_PINMAP_NUM_CHANNELS 6
#define IFXSENT_PINMAP_SENT_IN_NUM_ITEMS 3
#define IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS 1


/** \brief IfxSent_Sent_In table */
IFX_EXTERN const IfxSent_Sent_In *IfxSent_Sent_In_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SENT_IN_NUM_ITEMS];

/** \brief IfxSent_Spc_Out table */
IFX_EXTERN const IfxSent_Spc_Out *IfxSent_Spc_Out_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXSENT_PINMAP_TC33X_TQFP80_H */
