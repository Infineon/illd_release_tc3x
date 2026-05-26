/**
 * \file IfxEvadc_PinMap_TC33xED_516.c
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
 */

#include "Ifx_Cfg.h"
#if defined (__TASKING__)
#pragma warning 508		    /* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96	/* To suppress empty file warning */
#endif
#if defined DEVICE_TC33XED && defined IFX_PIN_PACKAGE_516
#include "IfxEvadc_PinMap_TC33xED_516.h"

IfxEvadc_Emux_Out IfxEvadc_EMUX00_P02_6_OUT = {&MODULE_EVADC, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX00_P33_3_OUT = {&MODULE_EVADC, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX01_P02_7_OUT = {&MODULE_EVADC, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX01_P33_2_OUT = {&MODULE_EVADC, {&MODULE_P33, 2}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX02_P02_8_OUT = {&MODULE_EVADC, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX02_P33_1_OUT = {&MODULE_EVADC, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX10_P00_6_OUT = {&MODULE_EVADC, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX10_P33_6_OUT = {&MODULE_EVADC, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX11_P00_7_OUT = {&MODULE_EVADC, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX11_P33_5_OUT = {&MODULE_EVADC, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX12_P00_8_OUT = {&MODULE_EVADC, {&MODULE_P00, 8}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX12_P33_4_OUT = {&MODULE_EVADC, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt5};
IfxEvadc_Vadcg_In IfxEvadc_G0CH0_AN0_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 0}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G0CH1_AN1_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 1}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G0CH2_AN2_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 2}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G0CH3_AN3_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 3}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G0CH4_AN4_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 4}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G0CH5_AN5_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 5}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G0CH6_AN6_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 6}, 6};
IfxEvadc_Vadcg_In IfxEvadc_G0CH7_AN7_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 7}, 7};
IfxEvadc_Vadcg_In IfxEvadc_G1CH0_AN8_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR, 8}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G1CH1_AN9_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR, 9}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G1CH2_AN10_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,10}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G1CH3_AN11_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,11}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G1CH4_AN12_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,12}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G1CH5_AN13_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,13}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G1CH6_AN14_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,14}, 6};
IfxEvadc_Vadcg_In IfxEvadc_G1CH7_AN15_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,15}, 7};
IfxEvadc_Vadcg_In IfxEvadc_G2CH0_AN16_IN = {&MODULE_EVADC, IfxEvadc_GroupId_2, {NULL_PTR,16}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G2CH1_AN17_IN = {&MODULE_EVADC, IfxEvadc_GroupId_2, {NULL_PTR,17}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G2CH2_AN18_IN = {&MODULE_EVADC, IfxEvadc_GroupId_2, {NULL_PTR,18}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G2CH3_AN19_IN = {&MODULE_EVADC, IfxEvadc_GroupId_2, {NULL_PTR,19}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G3CH0_AN20_IN = {&MODULE_EVADC, IfxEvadc_GroupId_3, {NULL_PTR,20}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G3CH1_AN21_IN = {&MODULE_EVADC, IfxEvadc_GroupId_3, {NULL_PTR,21}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G3CH2_AN22_IN = {&MODULE_EVADC, IfxEvadc_GroupId_3, {NULL_PTR,22}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G3CH3_AN23_IN = {&MODULE_EVADC, IfxEvadc_GroupId_3, {NULL_PTR,23}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G4CH0_AN12_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,12}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G4CH1_AN13_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,13}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G4CH2_AN14_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,14}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G4CH3_AN15_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,15}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G4CH4_AN16_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,16}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G4CH5_AN17_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,17}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G4CH6_AN18_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,18}, 6};
IfxEvadc_Vadcg_In IfxEvadc_G4CH7_AN19_IN = {&MODULE_EVADC, IfxEvadc_GroupId_4, {NULL_PTR,19}, 7};
IfxEvadc_Vadcg_In IfxEvadc_G5CH0_AN4_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 4}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G5CH1_AN5_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 5}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G5CH2_AN6_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 6}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G5CH3_AN7_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 7}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G5CH4_AN8_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 8}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G5CH5_AN9_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR, 9}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G5CH6_AN10_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR,10}, 6};
IfxEvadc_Vadcg_In IfxEvadc_G5CH7_AN11_IN = {&MODULE_EVADC, IfxEvadc_GroupId_5, {NULL_PTR,11}, 7};


const IfxEvadc_Emux_Out *IfxEvadc_Emux_Out_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_EMUX_OUT_NUM_ITEMS] = {
    {
        &IfxEvadc_EMUX10_P00_6_OUT,
        &IfxEvadc_EMUX11_P00_7_OUT,
        &IfxEvadc_EMUX12_P00_8_OUT,
        &IfxEvadc_EMUX00_P02_6_OUT,
        &IfxEvadc_EMUX01_P02_7_OUT,
        &IfxEvadc_EMUX02_P02_8_OUT,
        &IfxEvadc_EMUX02_P33_1_OUT,
        &IfxEvadc_EMUX01_P33_2_OUT,
        &IfxEvadc_EMUX00_P33_3_OUT,
        &IfxEvadc_EMUX12_P33_4_OUT,
        &IfxEvadc_EMUX11_P33_5_OUT,
        &IfxEvadc_EMUX10_P33_6_OUT
    }
};

const IfxEvadc_Vadcg_In *IfxEvadc_Vadcg_In_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_NUM_GROUPS][IFXEVADC_PINMAP_VADCG_IN_NUM_ITEMS] = {
    {
        {
            &IfxEvadc_G0CH0_AN0_IN,
            &IfxEvadc_G0CH1_AN1_IN,
            &IfxEvadc_G0CH2_AN2_IN,
            &IfxEvadc_G0CH3_AN3_IN,
            &IfxEvadc_G0CH4_AN4_IN,
            &IfxEvadc_G0CH5_AN5_IN,
            &IfxEvadc_G0CH6_AN6_IN,
            &IfxEvadc_G0CH7_AN7_IN
        },
        {
            &IfxEvadc_G1CH0_AN8_IN,
            &IfxEvadc_G1CH1_AN9_IN,
            &IfxEvadc_G1CH2_AN10_IN,
            &IfxEvadc_G1CH3_AN11_IN,
            &IfxEvadc_G1CH4_AN12_IN,
            &IfxEvadc_G1CH5_AN13_IN,
            &IfxEvadc_G1CH6_AN14_IN,
            &IfxEvadc_G1CH7_AN15_IN
        },
        {
            &IfxEvadc_G2CH0_AN16_IN,
            &IfxEvadc_G2CH1_AN17_IN,
            &IfxEvadc_G2CH2_AN18_IN,
            &IfxEvadc_G2CH3_AN19_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxEvadc_G3CH0_AN20_IN,
            &IfxEvadc_G3CH1_AN21_IN,
            &IfxEvadc_G3CH2_AN22_IN,
            &IfxEvadc_G3CH3_AN23_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxEvadc_G4CH0_AN12_IN,
            &IfxEvadc_G4CH1_AN13_IN,
            &IfxEvadc_G4CH2_AN14_IN,
            &IfxEvadc_G4CH3_AN15_IN,
            &IfxEvadc_G4CH4_AN16_IN,
            &IfxEvadc_G4CH5_AN17_IN,
            &IfxEvadc_G4CH6_AN18_IN,
            &IfxEvadc_G4CH7_AN19_IN
        },
        {
            &IfxEvadc_G5CH0_AN4_IN,
            &IfxEvadc_G5CH1_AN5_IN,
            &IfxEvadc_G5CH2_AN6_IN,
            &IfxEvadc_G5CH3_AN7_IN,
            &IfxEvadc_G5CH4_AN8_IN,
            &IfxEvadc_G5CH5_AN9_IN,
            &IfxEvadc_G5CH6_AN10_IN,
            &IfxEvadc_G5CH7_AN11_IN
        }
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
