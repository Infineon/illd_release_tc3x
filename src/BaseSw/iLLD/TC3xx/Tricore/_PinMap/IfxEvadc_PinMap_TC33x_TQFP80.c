/**
 * \file IfxEvadc_PinMap_TC33x_TQFP80.c
 * \brief EVADC I/O map
 * \ingroup IfxLld_Evadc
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
 */
#include "Ifx_Cfg.h"
#if defined (__TASKING__)
#pragma warning 508		/* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96		/* To suppress empty file warning */
#endif
#if defined DEVICE_TC33X && defined IFX_PIN_PACKAGE_TQFP80

#include "IfxEvadc_PinMap_TC33x_TQFP80.h"

IfxEvadc_Emux_Out IfxEvadc_EMUX00_P02_6_OUT = {&MODULE_EVADC, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX01_P02_7_OUT = {&MODULE_EVADC, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX02_P02_8_OUT = {&MODULE_EVADC, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX10_P33_6_OUT = {&MODULE_EVADC, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX11_P33_5_OUT = {&MODULE_EVADC, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt5};
IfxEvadc_Emux_Out IfxEvadc_EMUX12_P33_4_OUT = {&MODULE_EVADC, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt5};
IfxEvadc_Vadcg_In IfxEvadc_G0CH4_AN4_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 4}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G0CH5_AN5_IN = {&MODULE_EVADC, IfxEvadc_GroupId_0, {NULL_PTR, 5}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G1CH0_AN8_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR, 8}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G1CH1_AN9_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR, 9}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G1CH2_AN10_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,10}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G1CH3_AN11_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,11}, 3};
IfxEvadc_Vadcg_In IfxEvadc_G1CH4_AN12_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,12}, 4};
IfxEvadc_Vadcg_In IfxEvadc_G1CH5_AN13_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,13}, 5};
IfxEvadc_Vadcg_In IfxEvadc_G1CH6_AN14_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,14}, 6};
IfxEvadc_Vadcg_In IfxEvadc_G1CH7_AN15_IN = {&MODULE_EVADC, IfxEvadc_GroupId_1, {NULL_PTR,15}, 7};
IfxEvadc_Vadcg_In IfxEvadc_G8CH0_P40_4_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {&MODULE_P40, 4}, 0};
IfxEvadc_Vadcg_In IfxEvadc_G8CH12_AN8_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR, 8}, 12};
IfxEvadc_Vadcg_In IfxEvadc_G8CH13_AN9_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR, 9}, 13};
IfxEvadc_Vadcg_In IfxEvadc_G8CH14_AN10_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR,10}, 14};
IfxEvadc_Vadcg_In IfxEvadc_G8CH15_AN11_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR,11}, 15};
IfxEvadc_Vadcg_In IfxEvadc_G8CH1_P40_5_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {&MODULE_P40, 5}, 1};
IfxEvadc_Vadcg_In IfxEvadc_G8CH2_AN34_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR,34}, 2};
IfxEvadc_Vadcg_In IfxEvadc_G8CH8_AN4_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR, 4}, 8};
IfxEvadc_Vadcg_In IfxEvadc_G8CH9_AN5_IN = {&MODULE_EVADC, IfxEvadc_GroupId_8, {NULL_PTR, 5}, 9};


const IfxEvadc_Emux_Out *IfxEvadc_Emux_Out_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_EMUX_OUT_NUM_ITEMS] = {
    {
        &IfxEvadc_EMUX00_P02_6_OUT,
        &IfxEvadc_EMUX01_P02_7_OUT,
        &IfxEvadc_EMUX02_P02_8_OUT,
        &IfxEvadc_EMUX12_P33_4_OUT,
        &IfxEvadc_EMUX11_P33_5_OUT,
        &IfxEvadc_EMUX10_P33_6_OUT
    }
};

const IfxEvadc_Vadcg_In *IfxEvadc_Vadcg_In_pinTable[IFXEVADC_PINMAP_NUM_MODULES][IFXEVADC_PINMAP_NUM_GROUPS][IFXEVADC_PINMAP_VADCG_IN_NUM_ITEMS] = {
    {
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxEvadc_G0CH4_AN4_IN,
            &IfxEvadc_G0CH5_AN5_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxEvadc_G1CH0_AN8_IN,
            &IfxEvadc_G1CH1_AN9_IN,
            &IfxEvadc_G1CH2_AN10_IN,
            &IfxEvadc_G1CH3_AN11_IN,
            &IfxEvadc_G1CH4_AN12_IN,
            &IfxEvadc_G1CH5_AN13_IN,
            &IfxEvadc_G1CH6_AN14_IN,
            &IfxEvadc_G1CH7_AN15_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxEvadc_G8CH0_P40_4_IN,
            &IfxEvadc_G8CH1_P40_5_IN,
            &IfxEvadc_G8CH2_AN34_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxEvadc_G8CH8_AN4_IN,
            &IfxEvadc_G8CH9_AN5_IN,
            NULL_PTR,
            NULL_PTR,
            &IfxEvadc_G8CH12_AN8_IN,
            &IfxEvadc_G8CH13_AN9_IN,
            &IfxEvadc_G8CH14_AN10_IN,
            &IfxEvadc_G8CH15_AN11_IN
        }
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
