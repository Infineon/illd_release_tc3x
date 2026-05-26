/**
 * \file BlinkeyLedExample.c
 * \brief An example for blinking LEDs.
 *
 * \copyright Copyright (c) 2026 Infineon Technologies AG. All rights reserved.
 *
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

#include "IfxSrc.h"
#include "IfxStm.h"
#include "IfxPort.h"
#include "IfxCpu.h"
#include "IfxCpu_Irq.h"
#include "Ifx_Cfg.h"

#define LED0_BLINK_INTERVAL_IN_SECONDS (1)

extern volatile uint32 ledBlink0;
#if (IFXCPU_NUM_MODULES > 1)

extern volatile uint32 ledBlink1;
#if (IFXCPU_NUM_MODULES > 2)

extern volatile uint32 ledBlink2;
#if (IFXCPU_NUM_MODULES > 3)

extern volatile uint32 ledBlink3;
#if (IFXCPU_NUM_MODULES > 4)

extern volatile uint32 ledBlink4;
#if (IFXCPU_NUM_MODULES > 5)

extern volatile uint32 ledBlink5;
#endif /*#if (IFXCPU_NUM_MODULES > 5)*/
#endif /*#if (IFXCPU_NUM_MODULES > 4)*/
#endif /*#if (IFXCPU_NUM_MODULES > 3)*/
#endif /*#if (IFXCPU_NUM_MODULES > 2)*/
#endif /*#if (IFXCPU_NUM_MODULES > 1)*/

void BlinkLed(void)
{
    switch (IfxCpu_getCoreIndex())
    {
    case IfxCpu_ResourceCpu_0:
        IfxPort_setPinState(&MODULE_P33, 4, ledBlink0 ? IfxPort_State_high : IfxPort_State_low);
        break;

#if (IFXCPU_NUM_MODULES > 1)
    case IfxCpu_ResourceCpu_1:
        IfxPort_setPinState(&MODULE_P33, 5, ledBlink1 ? IfxPort_State_high : IfxPort_State_low);
        break;

#if (IFXCPU_NUM_MODULES > 2)
    case IfxCpu_ResourceCpu_2:
        IfxPort_setPinState(&MODULE_P33, 6, ledBlink2 ? IfxPort_State_high : IfxPort_State_low);
        break;

#if (IFXCPU_NUM_MODULES > 3)
    case IfxCpu_ResourceCpu_3:
        IfxPort_setPinState(&MODULE_P33, 7, ledBlink3 ? IfxPort_State_high : IfxPort_State_low);
        break;

#if (IFXCPU_NUM_MODULES > 4)
    case IfxCpu_ResourceCpu_4:
        IfxPort_setPinState(&MODULE_P20, 11, ledBlink4 ? IfxPort_State_high : IfxPort_State_low);
        break;

#if (IFXCPU_NUM_MODULES > 5)
    case IfxCpu_ResourceCpu_5:
        IfxPort_setPinState(&MODULE_P20, 12, ledBlink5 ? IfxPort_State_high : IfxPort_State_low);
        break;
#endif /*#if (IFXCPU_NUM_MODULES > 5)*/
#endif /*#if (IFXCPU_NUM_MODULES > 4)*/
#endif /*#if (IFXCPU_NUM_MODULES > 3)*/
#endif /*#if (IFXCPU_NUM_MODULES > 2)*/
#endif /*#if (IFXCPU_NUM_MODULES > 1)*/

    default:
        break;
    }
}


#define STM0_ISR_PRIORITY 10

void Initialize_StmTicks(void)
{
    IfxStm_CompareConfig stmCompareConfig;
    //    test_var= 1;
    // suspend by debugger enabled
    IfxStm_enableOcdsSuspend(&MODULE_STM0);

#if defined(IFX_USE_SW_MANAGED_INT)
    void Stm0_Isr(void);
    IfxCpu_Irq_installInterruptHandler(Stm0_Isr, STM0_ISR_PRIORITY);
#endif

    //Call the constructor of configuration
    IfxStm_initCompareConfig(&stmCompareConfig);
    //Modify only the number of ticks and enable the trigger output
    stmCompareConfig.ticks           = 1000; /*Interrupt after 1000 ticks from now */
    stmCompareConfig.triggerPriority = STM0_ISR_PRIORITY;
    stmCompareConfig.typeOfService   = IfxSrc_Tos_cpu0;

    //Now Compare functionality is initialized
    IfxStm_initCompare(&MODULE_STM0, &stmCompareConfig);
}


void BlinkeyLedExample_init(void)
{
	P33_OUT.B.P4  = 1;
	IfxPort_setPinMode(&MODULE_P33, 4, IfxPort_Mode_outputPushPullGeneral);

#if (IFXCPU_NUM_MODULES > 1)
	P33_OUT.B.P5  = 1;
	IfxPort_setPinMode(&MODULE_P33, 5, IfxPort_Mode_outputPushPullGeneral);

#if (IFXCPU_NUM_MODULES > 2)
	P33_OUT.B.P6  = 1;
	IfxPort_setPinMode(&MODULE_P33, 6, IfxPort_Mode_outputPushPullGeneral);

#if (IFXCPU_NUM_MODULES > 3)
	P33_OUT.B.P7  = 1;
	IfxPort_setPinMode(&MODULE_P33, 7, IfxPort_Mode_outputPushPullGeneral);


#if (IFXCPU_NUM_MODULES > 4)
	P20_OUT.B.P11 = 1;
	IfxPort_setPinMode(&MODULE_P20, 11, IfxPort_Mode_outputPushPullGeneral);

#if (IFXCPU_NUM_MODULES > 5)
	P20_OUT.B.P12 = 1;
	IfxPort_setPinMode(&MODULE_P20, 12, IfxPort_Mode_outputPushPullGeneral);
#endif /*#if (IFXCPU_NUM_MODULES > 5)*/
#endif /*#if (IFXCPU_NUM_MODULES > 4)*/
#endif /*#if (IFXCPU_NUM_MODULES > 3)*/
#endif /*#if (IFXCPU_NUM_MODULES > 2)*/
#endif /*#if (IFXCPU_NUM_MODULES > 1)*/


    Initialize_StmTicks();
}


IFX_INTERRUPT(Stm0_Isr, 0, STM0_ISR_PRIORITY)
{
    uint32 stmTicks;
    __enable();
    stmTicks = (uint32)(LED0_BLINK_INTERVAL_IN_SECONDS * IfxStm_getFrequency(&MODULE_STM0));
    IfxStm_updateCompare(&MODULE_STM0, IfxStm_Comparator_0, IfxStm_getCompare(&MODULE_STM0, IfxStm_Comparator_0) + stmTicks);

    if (ledBlink0 == 1)
    {
        ledBlink0 = 0;
#if (IFXCPU_NUM_MODULES > 1)
        ledBlink1 = 0;
#if (IFXCPU_NUM_MODULES > 2)
        ledBlink2 = 0;
#if (IFXCPU_NUM_MODULES > 3)
        ledBlink3 = 0;
#if (IFXCPU_NUM_MODULES > 4)
        ledBlink4 = 0;
#if (IFXCPU_NUM_MODULES > 5)
        ledBlink5 = 0;
#endif /*#if (IFXCPU_NUM_MODULES > 5)*/
#endif /*#if (IFXCPU_NUM_MODULES > 4)*/
#endif /*#if (IFXCPU_NUM_MODULES > 3)*/
#endif /*#if (IFXCPU_NUM_MODULES > 2)*/
#endif /*#if (IFXCPU_NUM_MODULES > 1)*/
    }
    else
    {
        ledBlink0 = 1;
#if (IFXCPU_NUM_MODULES > 1)
        ledBlink1 = 1;
#if (IFXCPU_NUM_MODULES > 2)
        ledBlink2 = 1;
#if (IFXCPU_NUM_MODULES > 3)
        ledBlink3 = 1;
#if (IFXCPU_NUM_MODULES > 4)
        ledBlink4 = 1;
#if (IFXCPU_NUM_MODULES > 5)
        ledBlink5 = 1;
#endif /*#if (IFXCPU_NUM_MODULES > 5)*/
#endif /*#if (IFXCPU_NUM_MODULES > 4)*/
#endif /*#if (IFXCPU_NUM_MODULES > 3)*/
#endif /*#if (IFXCPU_NUM_MODULES > 2)*/
#endif /*#if (IFXCPU_NUM_MODULES > 1)*/

    }
}
