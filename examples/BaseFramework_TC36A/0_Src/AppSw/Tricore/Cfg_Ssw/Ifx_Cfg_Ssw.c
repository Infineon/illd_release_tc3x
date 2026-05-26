/**
  * \file Ifx_Cfg_Ssw.c
 * \brief Configuration file for the Startup Software
 * \ingroup
 *
 *
 * \copyright Copyright (c) 2026 Infineon Technologies AG. All rights reserved.
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Ifx_Cfg_Ssw.h"
#include "Ifx_Ssw_Infra.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
#if defined(__TASKING__)
#pragma optimize RL
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma GCC optimize ("O1")
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma GCC optimize ("O1")
#endif

#if (IFX_CFG_SSW_ENABLE_PMS_INIT == 1U)
void Ifx_Ssw_Pms_Init(void)
{
    if (IfxPmsEvr_runInitSequence(&IfxPmsEvr_cfgSequenceDefault) == 0)
    {
        __debug();
        /* Application may have call to error handling here*/
    }

    Ifx_Ssw_jumpBackToLink();
}

#if (IFX_CFG_SSW_ENABLE_PMS_INIT_CHECK == 1U)
void Ifx_Ssw_Pms_InitCheck(void)
{

    if (IfxPmsEvr_areInitValuesRight(&IfxPmsEvr_checkRegCfgDefault) == 0)
    {
        __debug();
        /* Application may have call to error handling here*/
    }
    Ifx_Ssw_jumpBackToLink();
}
#endif /* End of Ifx_Ssw_Pms_InitCheck() */
#endif /* End of Ifx_Ssw_Pms_Init() */

#if (IFX_CFG_SSW_ENABLE_LBIST == 1)
void Ifx_Ssw_Lbist(void)
{
    if (!IfxScuLbist_isDone())
    {
        if(Ifx_Ssw_isColdPoweronReset())
        {
            IfxScuLbist_triggerInline(&IfxScuLbist_defaultConfig);
        }
    }
    if (!IfxScuLbist_evaluateResult(IfxScuLbist_defaultConfig.signature))
    {
         __debug();
         /* Application may have call to error handling here*/
         while(1);   /* infinite loop to ensure that error is notified ass debugger is not connected at this point of time */
    }

    Ifx_Ssw_jumpBackToLink();
}
#endif

/** \brief Hook for application specific hardware extensions.
 * \return None
 */
void hardware_init_hook(void)
{}

/** \brief Hook for application specific software extensions.
 * \return None
 */
void software_init_hook(void)
{}

#if defined(__TASKING__)
#pragma endoptimize
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma GCC reset_options
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma GCC reset_options
#endif
