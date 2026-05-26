/**
 * \file IfxCbs_PinMap_TC33xED_LFBGA180_adas.c
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
 */

#include "Ifx_Cfg.h"
#if defined (__TASKING__)
#pragma warning 508		    /* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96	/* To suppress empty file warning */
#endif
#if defined DEVICE_TC33XED && defined IFX_PIN_PACKAGE_LFBGA180_ADAS
#include "IfxCbs_PinMap_TC33xED_LFBGA180_adas.h"

IfxCbs_Tgi_In IfxCbs_TGI0_P20_0_IN = {&MODULE_CBS, IfxCbs_TriggerPin_0, {&MODULE_P20, 0}, Ifx_RxSel_a};
IfxCbs_Tgi_In IfxCbs_TGI2_P21_6_IN = {&MODULE_CBS, IfxCbs_TriggerPin_2, {&MODULE_P21, 6}, Ifx_RxSel_a};
IfxCbs_Tgi_In IfxCbs_TGI3_P21_7_IN = {&MODULE_CBS, IfxCbs_TriggerPin_3, {&MODULE_P21, 7}, Ifx_RxSel_a};
IfxCbs_Tgo_Out IfxCbs_TGO0_P20_0_OUT = {&MODULE_CBS, IfxCbs_TriggerPin_0, {&MODULE_P20, 0}, IfxPort_OutputIdx_general};
IfxCbs_Tgo_Out IfxCbs_TGO2_P21_6_OUT = {&MODULE_CBS, IfxCbs_TriggerPin_2, {&MODULE_P21, 6}, IfxPort_OutputIdx_general};
IfxCbs_Tgo_Out IfxCbs_TGO3_P21_7_OUT = {&MODULE_CBS, IfxCbs_TriggerPin_3, {&MODULE_P21, 7}, IfxPort_OutputIdx_general};


const IfxCbs_Tgi_In *IfxCbs_Tgi_In_pinTable[IFXCBS_PINMAP_NUM_MODULES][IFXCBS_PINMAP_NUM_CHANNELS][IFXCBS_PINMAP_TGI_IN_NUM_ITEMS] = {
    {
        {
            &IfxCbs_TGI0_P20_0_IN
        },
        {
            NULL_PTR
        },
        {
            &IfxCbs_TGI2_P21_6_IN
        },
        {
            &IfxCbs_TGI3_P21_7_IN
        }
    }
};

const IfxCbs_Tgo_Out *IfxCbs_Tgo_Out_pinTable[IFXCBS_PINMAP_NUM_MODULES][IFXCBS_PINMAP_NUM_CHANNELS][IFXCBS_PINMAP_TGO_OUT_NUM_ITEMS] = {
    {
        {
            &IfxCbs_TGO0_P20_0_OUT
        },
        {
            NULL_PTR
        },
        {
            &IfxCbs_TGO2_P21_6_OUT
        },
        {
            &IfxCbs_TGO3_P21_7_OUT
        }
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
