/**
 * \file IfxHspdm_PinMap_TC39xB_LFBGA292_adas.c
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
 */

#include "Ifx_Cfg.h"
#if defined (__TASKING__)
#pragma warning 508		/* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96		/* To suppress empty file warning */
#endif
#if defined DEVICE_TC39XB && defined IFX_PIN_PACKAGE_LFBGA292_ADAS
#include "IfxHspdm_PinMap_TC39xB_LFBGA292_adas.h" 

IfxHspdm_Bs_Out IfxHspdm0_BS0_OUT_P22_4_OUT = {&MODULE_HSPDM, {&MODULE_P22, 4}, IfxPort_OutputIdx_alt7};
IfxHspdm_Bs_Out IfxHspdm0_BS1_OUT_P22_5_OUT = {&MODULE_HSPDM, {&MODULE_P22, 5}, IfxPort_OutputIdx_alt7};
IfxHspdm_Mute_Out IfxHspdm0_MUTE_P22_3_OUT = {&MODULE_HSPDM, {&MODULE_P22, 3}, IfxPort_OutputIdx_alt7};


const IfxHspdm_Bs_Out *IfxHspdm_Bs_Out_pinTable[IFXHSPDM_PINMAP_NUM_MODULES][IFXHSPDM_PINMAP_NUM_0S][IFXHSPDM_PINMAP_BS_OUT_NUM_ITEMS] = {
    {
        {
            &IfxHspdm0_BS0_OUT_P22_4_OUT,
            &IfxHspdm0_BS1_OUT_P22_5_OUT
        }
    }
};

const IfxHspdm_Mute_Out *IfxHspdm_Mute_Out_pinTable[IFXHSPDM_PINMAP_NUM_MODULES][IFXHSPDM_PINMAP_NUM_0S][IFXHSPDM_PINMAP_MUTE_OUT_NUM_ITEMS] = {
    {
        {
            &IfxHspdm0_MUTE_P22_3_OUT
        }
    }
};
#endif

#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
