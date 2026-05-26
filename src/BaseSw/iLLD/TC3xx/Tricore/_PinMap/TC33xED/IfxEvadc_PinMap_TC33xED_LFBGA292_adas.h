/**
 * \file IfxEvadc_PinMap_TC33xED_LFBGA292_adas.h
 * \brief EVADC I/O map
 * \ingroup IfxLld_Evadc
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
 * \defgroup IfxLld_Evadc_pinmap EVADC Pin Mapping
 * \ingroup IfxLld_Evadc
 */

#ifndef IFXEVADC_PINMAP_TC33XED_LFBGA292_ADAS_H
#define IFXEVADC_PINMAP_TC33XED_LFBGA292_ADAS_H  1

#include <IfxEvadc_reg.h>
#include <_Impl/IfxEvadc_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Evadc_pinmap
 * \{ */

/** \brief EVADC Boundary Flag pin mapping structure */
typedef const struct
{
    Ifx_EVADC*        module;    /**< \brief Base address */
    IfxEvadc_GroupId  groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxEvadc_GxBfl_Out;

/** \brief EVADC External Mux pin mapping structure */
typedef const struct
{
    Ifx_EVADC*        module;    /**< \brief Base address */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxEvadc_Emux_Out;

/** \brief EVADC Analog Input */
typedef const struct
{
    Ifx_EVADC*        module;    /**< \brief Base address */
    IfxEvadc_GroupId  groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    uint8             channelId; /**< \brief Channel ID */
} IfxEvadc_Vadcg_In;

IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX00_P02_6_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX00_P33_3_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX01_P02_7_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX01_P33_2_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX02_P02_8_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX02_P33_1_OUT;  /**< \brief Control of external analog multiplexer interface 0 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX10_P00_6_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX10_P33_6_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX11_P00_7_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX11_P33_5_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX12_P00_8_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Emux_Out IfxEvadc_EMUX12_P33_4_OUT;  /**< \brief Control of external analog multiplexer interface 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH0_AN0_IN;  /**< \brief Analog input channel 0, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH1_AN1_IN;  /**< \brief Analog input channel 1, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH2_AN2_IN;  /**< \brief Analog input channel 2, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH3_AN3_IN;  /**< \brief Analog input channel 3, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH4_AN4_IN;  /**< \brief Analog input channel 4, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH5_AN5_IN;  /**< \brief Analog input channel 5, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH6_AN6_IN;  /**< \brief Analog input channel 6, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G0CH7_AN7_IN;  /**< \brief Analog input channel 7, group 0 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH0_AN8_IN;  /**< \brief Analog input channel 0, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH1_AN9_IN;  /**< \brief Analog input channel 1, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH2_AN10_IN;  /**< \brief Analog input channel 2, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH3_AN11_IN;  /**< \brief Analog input channel 3, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH4_AN12_IN;  /**< \brief Analog input channel 4, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH5_AN13_IN;  /**< \brief Analog input channel 5, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH6_AN14_IN;  /**< \brief Analog input channel 6, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G1CH7_AN15_IN;  /**< \brief Analog input channel 7, group 1 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G2CH0_AN16_IN;  /**< \brief Analog input channel 0, group 2 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G2CH1_AN17_IN;  /**< \brief Analog input channel 1, group 2 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G2CH2_AN18_IN;  /**< \brief Analog input channel 2, group 2 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G2CH3_AN19_IN;  /**< \brief Analog input channel 3, group 2 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G3CH0_AN20_IN;  /**< \brief Analog input channel 0, group 3 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G3CH1_AN21_IN;  /**< \brief Analog input channel 1, group 3 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G3CH2_AN22_IN;  /**< \brief Analog input channel 2, group 3 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G3CH3_AN23_IN;  /**< \brief Analog input channel 3, group 3 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH0_AN12_IN;  /**< \brief Analog input channel 0, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH1_AN13_IN;  /**< \brief Analog input channel 1, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH2_AN14_IN;  /**< \brief Analog input channel 2, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH3_AN15_IN;  /**< \brief Analog input channel 3, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH4_AN16_IN;  /**< \brief Analog input channel 4, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH5_AN17_IN;  /**< \brief Analog input channel 5, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH6_AN18_IN;  /**< \brief Analog input channel 6, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G4CH7_AN19_IN;  /**< \brief Analog input channel 7, group 4 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH0_AN4_IN;  /**< \brief Analog input channel 0, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH1_AN5_IN;  /**< \brief Analog input channel 1, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH2_AN6_IN;  /**< \brief Analog input channel 2, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH3_AN7_IN;  /**< \brief Analog input channel 3, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH4_AN8_IN;  /**< \brief Analog input channel 4, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH5_AN9_IN;  /**< \brief Analog input channel 5, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH6_AN10_IN;  /**< \brief Analog input channel 6, group 5 */
IFX_EXTERN IfxEvadc_Vadcg_In IfxEvadc_G5CH7_AN11_IN;  /**< \brief Analog input channel 7, group 5 */

/** \brief Table dimensions */
#define IFXEVADC_PINMAP_NUM_MODULES 1
#define IFXEVADC_PINMAP_NUM_GROUPS 6
#define IFXEVADC_PINMAP_EMUX_OUT_NUM_ITEMS 12
#define IFXEVADC_PINMAP_VADCG_IN_NUM_ITEMS 8


/** \brief IfxEvadc_Emux_Out table */
IFX_EXTERN const IfxEvadc_Emux_Out *IfxEvadc_Emux_Out_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_EMUX_OUT_NUM_ITEMS];

/** \brief IfxEvadc_Vadcg_In table */
IFX_EXTERN const IfxEvadc_Vadcg_In *IfxEvadc_Vadcg_In_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_NUM_GROUPS][IFXEVADC_PINMAP_VADCG_IN_NUM_ITEMS];

/** \} */

#endif /* IFXEVADC_PINMAP_TC33XED_LFBGA292_ADAS_H */
