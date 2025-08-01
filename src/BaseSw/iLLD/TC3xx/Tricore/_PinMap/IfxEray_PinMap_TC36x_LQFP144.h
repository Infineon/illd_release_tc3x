/**
 * \file IfxEray_PinMap_TC36x_LQFP144.h
 * \brief ERAY I/O map
 * \ingroup IfxLld_Eray
 *
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 * Use of this file is subject to the terms of use agreed between (i) you or
 * the company in which ordinary course of business you are acting and (ii)
 * Infineon Technologies AG or its licensees. If and as long as no such terms
 * of use are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization
 * obtaining a copy of the software and accompanying documentation covered by
 * this license (the "Software") to use, reproduce, display, distribute,
 * execute, and transmit the Software, and to prepare derivative works of the
 * Software, and to permit third-parties to whom the Software is furnished to
 * do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxLld_Eray_pinmap ERAY Pin Mapping
 * \ingroup IfxLld_Eray
 */

#ifndef IFXERAY_PINMAP_TC36X_LQFP144_H
#define IFXERAY_PINMAP_TC36X_LQFP144_H

#include <IfxEray_reg.h>
#include <_Impl/IfxEray_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Eray_pinmap
 * \{ */

/** \brief RXD pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEray_Rxd_In;

/** \brief TXD pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEray_Txd_Out;

/** \brief TXEN pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEray_Txen_Out;

IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA1_P11_9_IN;  /**< \brief Receive Channel A1 */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA2_P02_1_IN;  /**< \brief Receive Channel A2 */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA3_P14_1_IN;  /**< \brief Receive Channel A3 */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB1_P11_10_IN;  /**< \brief Receive Channel B1 */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB2_P02_3_IN;  /**< \brief Receive Channel B2 */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB3_P14_1_IN;  /**< \brief Receive Channel B3 */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P02_0_OUT;  /**< \brief Transmit Channel A */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P11_3_OUT;  /**< \brief Transmit Channel A */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P14_0_OUT;  /**< \brief Transmit Channel A */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P02_2_OUT;  /**< \brief Transmit Channel B */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P11_12_OUT;  /**< \brief Transmit Channel B */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P14_0_OUT;  /**< \brief Transmit Channel B */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P14_5_OUT;  /**< \brief Transmit Channel B */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENA_P02_4_OUT;  /**< \brief Transmit Enable Channel A */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENA_P11_6_OUT;  /**< \brief Transmit Enable Channel A */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P02_5_OUT;  /**< \brief Transmit Enable Channel B */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P11_11_OUT;  /**< \brief Transmit Enable Channel B */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P11_6_OUT;  /**< \brief Transmit Enable Channel B */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P14_6_OUT;  /**< \brief Transmit Enable Channel B */

/** \brief Table dimensions */
#define IFXERAY_PINMAP_NUM_MODULES 1
#define IFXERAY_PINMAP_NUM_NODES 2
#define IFXERAY_PINMAP_RXD_IN_NUM_ITEMS 4
#define IFXERAY_PINMAP_TXD_OUT_NUM_ITEMS 4
#define IFXERAY_PINMAP_TXEN_OUT_NUM_ITEMS 4


/** \brief IfxEray_Rxd_In table */
IFX_EXTERN const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_RXD_IN_NUM_ITEMS];

/** \brief IfxEray_Txd_Out table */
IFX_EXTERN const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_TXD_OUT_NUM_ITEMS];

/** \brief IfxEray_Txen_Out table */
IFX_EXTERN const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_TXEN_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXERAY_PINMAP_TC36X_LQFP144_H */
