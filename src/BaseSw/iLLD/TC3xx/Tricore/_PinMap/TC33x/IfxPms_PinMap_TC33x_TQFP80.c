/**
 * \file IfxPms_PinMap_TC33x_TQFP80.c
 * \brief PMS I/O map
 * \ingroup IfxLld_Pms
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
#if defined DEVICE_TC33X && defined IFX_PIN_PACKAGE_TQFP80

#include "IfxPms_PinMap_TC33x_TQFP80.h"

IfxPms_Hwcfg_In IfxPms_HWCFG1IN_P14_5_IN = {&MODULE_PMS, {&MODULE_P14, 5}};
IfxPms_Hwcfg_In IfxPms_HWCFG3IN_P14_3_IN = {&MODULE_PMS, {&MODULE_P14, 3}};
IfxPms_Hwcfg_In IfxPms_HWCFG4IN_P10_5_IN = {&MODULE_PMS, {&MODULE_P10, 5}};
IfxPms_Hwcfg_In IfxPms_HWCFG5IN_P10_6_IN = {&MODULE_PMS, {&MODULE_P10, 6}};
IfxPms_Wkp_In IfxPms_PINAWKP_P14_1_IN = {&MODULE_PMS, {&MODULE_P14, 1}, Ifx_RxSel_a};


const IfxPms_Hwcfg_In *IfxPms_Hwcfg_In_pinTable[IFXPMS_PINMAP_NUM_MODULES][IFXPMS_PINMAP_HWCFG_IN_NUM_ITEMS] = {
    {
        &IfxPms_HWCFG3IN_P14_3_IN,
        &IfxPms_HWCFG1IN_P14_5_IN,
        &IfxPms_HWCFG4IN_P10_5_IN,
        &IfxPms_HWCFG5IN_P10_6_IN
    }
};

const IfxPms_Wkp_In *IfxPms_Wkp_In_pinTable[IFXPMS_PINMAP_NUM_MODULES][IFXPMS_PINMAP_WKP_IN_NUM_ITEMS] = {
    {
        &IfxPms_PINAWKP_P14_1_IN
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
