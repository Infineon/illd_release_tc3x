/**
 * \file IfxCbs_PinMap_TC33xED_LFBGA180_adas.h
 * \brief CBS I/O map
 * \ingroup IfxLld_Cbs
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
 * \defgroup IfxLld_Cbs_pinmap CBS Pin Mapping
 * \ingroup IfxLld_Cbs
 */

#ifndef IFXCBS_PINMAP_TC33XED_LFBGA180_ADAS_H
#define IFXCBS_PINMAP_TC33XED_LFBGA180_ADAS_H  1

#include <IfxCbs_reg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Cbs_pinmap
 * \{ */

typedef enum
{
    IfxCbs_TriggerPin_0 = 0,
    IfxCbs_TriggerPin_1 = 1,
    IfxCbs_TriggerPin_2 = 2,
    IfxCbs_TriggerPin_3 = 3,
    IfxCbs_TriggerPin_4 = 4,
    IfxCbs_TriggerPin_5 = 5,
    IfxCbs_TriggerPin_6 = 6,
    IfxCbs_TriggerPin_7 = 7      
} IfxCbs_TriggerPin; 

/** \brief CBS TGI pin mapping structure */
typedef const struct
{
    Ifx_CBS*         module;    /**< \brief Base address */
    IfxCbs_TriggerPin pinId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    Ifx_RxSel         select;    /**< \brief Input multiplexer value */
} IfxCbs_Tgi_In;

/** \brief CBS TGO pin mapping structure */
typedef const struct
{
    Ifx_CBS*         module;    /**< \brief Base address */
    IfxCbs_TriggerPin pinId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxCbs_Tgo_Out;

IFX_EXTERN IfxCbs_Tgi_In IfxCbs_TGI0_P20_0_IN;  /**< \brief Trigger input */
IFX_EXTERN IfxCbs_Tgi_In IfxCbs_TGI2_P21_6_IN;  /**< \brief Trigger input */
IFX_EXTERN IfxCbs_Tgi_In IfxCbs_TGI3_P21_7_IN;  /**< \brief Trigger input */
IFX_EXTERN IfxCbs_Tgo_Out IfxCbs_TGO0_P20_0_OUT;  /**< \brief Trigger output */
IFX_EXTERN IfxCbs_Tgo_Out IfxCbs_TGO2_P21_6_OUT;  /**< \brief Trigger output */
IFX_EXTERN IfxCbs_Tgo_Out IfxCbs_TGO3_P21_7_OUT;  /**< \brief Trigger output */

/** \brief Table dimensions */
#define IFXCBS_PINMAP_NUM_MODULES 1
#define IFXCBS_PINMAP_NUM_CHANNELS 4
#define IFXCBS_PINMAP_TGI_IN_NUM_ITEMS 1
#define IFXCBS_PINMAP_TGO_OUT_NUM_ITEMS 1


/** \brief IfxCbs_Tgi_In table */
IFX_EXTERN const IfxCbs_Tgi_In *IfxCbs_Tgi_In_pinTable[IFXCBS_PINMAP_NUM_MODULES][IFXCBS_PINMAP_NUM_CHANNELS][IFXCBS_PINMAP_TGI_IN_NUM_ITEMS];

/** \brief IfxCbs_Tgo_Out table */
IFX_EXTERN const IfxCbs_Tgo_Out *IfxCbs_Tgo_Out_pinTable[IFXCBS_PINMAP_NUM_MODULES][IFXCBS_PINMAP_NUM_CHANNELS][IFXCBS_PINMAP_TGO_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXCBS_PINMAP_TC33XED_LFBGA180_ADAS_H */
