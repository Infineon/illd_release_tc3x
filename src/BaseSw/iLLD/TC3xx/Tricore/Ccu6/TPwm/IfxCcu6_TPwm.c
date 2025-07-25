/**
 * \file IfxCcu6_TPwm.c
 * \brief CCU6 TPWM details
 *
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
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
 *
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxCcu6_TPwm.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxCcu6_TPwm_initModule(IfxCcu6_TPwm *tPwm, const IfxCcu6_TPwm_Config *config)
{
    /* pointer to CCU6 registers */
    Ifx_CCU6 *ccu6SFR = config->ccu6; 
    /* adding register pointer to module handler */
    tPwm->ccu6 = ccu6SFR;             

    /* -- hardware module initialisation -- */

    /* enable module if it hasn't been enabled by any other interface */
    if (IfxCcu6_isModuleEnabled(ccu6SFR) == FALSE)
    {
        IfxCcu6_enableModule(ccu6SFR);
    }

    /* Timer 13 initialisation */
    if (config->timer == IfxCcu6_TimerId_t13)
    {
        IfxCcu6_TPwm_initTimer13(config);
    }

    /* Timer 12 initialisation */
    if ((config->timer == IfxCcu6_TimerId_t12) || (config->trigger.t13InSyncWithT12))
    {
        IfxCcu6_TPwm_initTimer12(config);
    }


    /* -- output path initialisation -- */

    /* enable modulation output path */
    IfxCcu6_enableModulationOutput(ccu6SFR, config->timer, config->channelOut);

    /* output passive logic configuration */
    /* TODO check correct polarity: */
    IfxCcu6_setOutputPassiveState(ccu6SFR, config->channelOut, config->base.activeState);

    /* -- Pin mapping -- */
    if(config->pins != NULL_PTR)
    {
        IfxCcu6_TPwm_initPins(config->pins);
    }

    /* -- interrupt initialisation -- */
    IfxCcu6_TPwm_initInterrupt(config->ccu6, config->interrupt1);
    IfxCcu6_TPwm_initInterrupt(config->ccu6, config->interrupt2);
    IfxCcu6_TPwm_initInterrupt(config->ccu6, config->interrupt3);
    IfxCcu6_TPwm_initInterrupt(config->ccu6, config->interrupt4);

    /* -- output trigger initialisation --*/

    if (config->trigger.outputTriggerEnabled)
    {
        IfxCcu6_connectTrigger(ccu6SFR, config->trigger.outputLine, config->trigger.outputTrigger);
    }

    tPwm->timer      = config->timer;
    tPwm->channelOut = config->channelOut;
    tPwm->trigger    = config->trigger;
}


void IfxCcu6_TPwm_initTimer13(const IfxCcu6_TPwm_Config *config)
{
    Ifx_CCU6 *ccu6SFR = config->ccu6; /* pointer to CCU6 registers */

    /* Timer 13 initialisation */

    /* clock initialisation */

    if (config->clock.t13ExtClockEnabled)   /* if external source is selected as reference */
    {
        /* input signal selection */
        if (config->clock.t13ExtClockInput != NULL_PTR)
        {
            IfxCcu6_setT13InputSignal(config->ccu6, config->clock.t13ExtClockInput);
        }

        /* counting input mode selection */
        IfxCcu6_setCountingInputMode(ccu6SFR, IfxCcu6_TimerId_t13, config->clock.t13countingInputMode);

        /* period setting */
        ccu6SFR->T13PR.B.T13PV = (uint16)config->base.period;
    }
    else    /* if internal clock is selected as reference */
    {
        IfxCcu6_setT13Frequency(ccu6SFR, config->base.frequency, config->base.period);
    }

    /* duty cycle initialisation */

    ccu6SFR->T13.B.T13CV = config->timer13.counterValue;
    ccu6SFR->CC63SR.B.CCS = config->timer13.compareValue;

    /* if Timer 13 start is in sync with Timer 12 */
    if (config->trigger.t13InSyncWithT12)
    {
        ccu6SFR->TCTR2.B.T13TEC = config->timer13.t12SyncEvent;
        ccu6SFR->TCTR2.B.T13TED = config->timer13.t12SyncDirection;
    }

}


void IfxCcu6_TPwm_initTimer12(const IfxCcu6_TPwm_Config *config)
{
    Ifx_CCU6 *ccu6SFR = config->ccu6; /* pointer to CCU6 registers */

    /* Timer 12 initialisation */

    Ifx_TimerValue period       = config->base.period;
    Ifx_TimerValue compareValue = config->timer12.compareValue;

    /* if Timer 13 start is in sync with Timer 12 */
    if ((config->trigger.t13InSyncWithT12) && (config->base.waitingTime != 0))
    {
        /* if in sync with T12 period match */
        if (config->timer13.t12SyncEvent == IfxCcu6_T13TriggerEvent_onT12Period)
        {
            period = config->base.waitingTime;         /* waiting time as period */
        }
        else if (config->timer13.t12SyncEvent != IfxCcu6_T13TriggerEvent_noAction)
        {
            compareValue = config->base.waitingTime;           /* waiting time as compare value */
            period       = config->base.activeCount;
        }
    }
    else
    {
        /* configuration error */
    }

    /* clock initialisation */

    if (config->clock.t12ExtClockEnabled)   /* if external source is selected as reference */
    {
        /* input signal selection */
        if (config->clock.t12ExtClockInput != NULL_PTR)
        {
            IfxCcu6_setT12InputSignal(config->ccu6, config->clock.t12ExtClockInput);
        }

        /* counting input mode selection */
        IfxCcu6_setCountingInputMode(ccu6SFR, IfxCcu6_TimerId_t12, config->clock.t12countingInputMode);

        /* countining mode selection */
        ccu6SFR->TCTR0.B.CTM = config->timer12.countMode;

        /* period selection for center aligned mode */
        if (config->timer12.countMode == IfxCcu6_T12CountMode_centerAligned)
        {
            period = (period / 2) - 1;
        }

        /* period setting */
        ccu6SFR->T12PR.B.T12PV = (uint16)period;
    }
    else    /* if internal clock is selected as reference */
    {
        /* in case of in sync with T13 T12 runs at same frequency as T13 */
        IfxCcu6_setT12Frequency(ccu6SFR, config->base.frequency, period, config->timer12.countMode);
    }

    /* duty cycle initialisation */
    ccu6SFR->T12.B.T12CV = config->timer12.counterValue;
    IfxCcu6_setT12ChannelMode(ccu6SFR, config->timer12.channelId, config->timer12.channelMode);
    ccu6SFR->CC6SR[config->timer12.channelId].B.CCS = (uint16)compareValue;

    /* dead time injection if selected */
    if (config->timer12.deadTimeValue)
    {
        ccu6SFR->T12DTC.B.DTM = config->timer12.deadTimeValue;
        ccu6SFR->T12DTC.U |= ( 1 << (IFX_CCU6_T12DTC_DTE0_OFF + config->timer12.channelId) );
    }
}


void IfxCcu6_TPwm_initPins(const IfxCcu6_TPwm_Pins *pins)
{
    /* -- Pin mapping -- */

    IfxCcu6_Cc60_Out *cc60Out = pins->cc60Out;

    if (cc60Out != NULL_PTR)
    {
        IfxCcu6_initCc60OutPin(cc60Out, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cc61_Out *cc61Out = pins->cc61Out;

    if (cc61Out != NULL_PTR)
    {
        IfxCcu6_initCc61OutPin(cc61Out, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cc62_Out *cc62Out = pins->cc62Out;

    if (cc62Out != NULL_PTR)
    {
        IfxCcu6_initCc62OutPin(cc62Out, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cout60_Out *cout60 = pins->cout60;

    if (cout60 != NULL_PTR)
    {
        IfxCcu6_initCout60Pin(cout60, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cout61_Out *cout61 = pins->cout61;

    if (cout61 != NULL_PTR)
    {
        IfxCcu6_initCout61Pin(cout61, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cout62_Out *cout62 = pins->cout62;

    if (cout62 != NULL_PTR)
    {
        IfxCcu6_initCout62Pin(cout62, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_Cout63_Out *cout63 = pins->cout63;

    if (cout63 != NULL_PTR)
    {
        IfxCcu6_initCout63Pin(cout63, pins->outputMode, pins->pinDriver);
    }

    IfxCcu6_T12hr_In *t12hr = pins->t12hr;

    if (t12hr != NULL_PTR)
    {
        IfxCcu6_initT12hrPin(t12hr, pins->t1xhrInputMode);
    }

    IfxCcu6_T13hr_In *t13hr = pins->t13hr;

    if (t13hr != NULL_PTR)
    {
        IfxCcu6_initT13hrPin(t13hr, pins->t1xhrInputMode);
    }
}


void IfxCcu6_TPwm_initInterrupt(Ifx_CCU6 *ccu6, IfxCcu6_TPwm_InterruptConfig interrupt)
{
    /* -- interrupt initialisation -- */

    if (interrupt.priority > 0)
    {
        volatile Ifx_SRC_SRCR *src;
        ccu6->IEN.U = ccu6->IEN.U | (1U << interrupt.source);
        IfxCcu6_routeInterruptNode(ccu6, interrupt.source, interrupt.serviceRequest);

        src = IfxCcu6_getSrcAddress(ccu6, interrupt.serviceRequest);
        IfxSrc_init(src, interrupt.typeOfService, interrupt.priority);
        IfxSrc_enable(src);
    }

}


void IfxCcu6_TPwm_initModuleConfig(IfxCcu6_TPwm_Config *config, Ifx_CCU6 *ccu6)
{
    const IfxCcu6_TPwm_Config defaultConfig = {
        .base                     = {
            .frequency   = 400000,
            .waitingTime = 20,
            .activeCount = 0,
            .period      = 100,
            .activeState = Ifx_ActiveState_high,
        },

        .ccu6  = NULL_PTR,        /* will be initialized below */

        .timer = IfxCcu6_TimerId_t13,

        .clock = {
            .t12ExtClockEnabled   = FALSE,
            .t12ExtClockInput     = NULL_PTR,
            .t12countingInputMode = IfxCcu6_CountingInputMode_internal,

            .t13ExtClockEnabled   = FALSE,
            .t13ExtClockInput     = NULL_PTR,
            .t13countingInputMode = IfxCcu6_CountingInputMode_internal,
        },

        .timer12                  = {
            .channelId     = IfxCcu6_T12Channel_0,
            .channelMode   = IfxCcu6_T12ChannelMode_compareMode,
            .countMode     = IfxCcu6_T12CountMode_edgeAligned,
            .counterValue  = 0,
            .deadTimeValue = 0,
            .compareValue  = 0,
        },

        .timer13                  = {
            .counterValue     = 0,
            .compareValue     = 0,
            .t12SyncEvent     = IfxCcu6_T13TriggerEvent_onCC60RCompare,
            .t12SyncDirection = IfxCcu6_T13TriggerDirection_onT12CountingUp,
        },

        .channelOut = IfxCcu6_ChannelOut_cout3,

        .pins       = NULL_PTR,

        .interrupt1 = {
            .source         = IfxCcu6_InterruptSource_t12PeriodMatch,
            .serviceRequest = IfxCcu6_ServiceRequest_0,
            .priority       = 0,                /* interrupt priority 0 */
            .typeOfService  = IfxSrc_Tos_cpu0,  /* type of service CPU0 */
        },

        .interrupt2               = {
            .source         = IfxCcu6_InterruptSource_t13PeriodMatch,
            .serviceRequest = IfxCcu6_ServiceRequest_1,
            .priority       = 0,                /* interrupt priority 0 */
            .typeOfService  = IfxSrc_Tos_cpu0,  /* type of service CPU0 */
        },

        .interrupt3               = {
            .source         = IfxCcu6_InterruptSource_t12OneMatch,
            .serviceRequest = IfxCcu6_ServiceRequest_2,
            .priority       = 0,                /* interrupt priority 0 */
            .typeOfService  = IfxSrc_Tos_cpu0,  /* type of service CPU0 */
        },

        .interrupt4               = {
            .source         = IfxCcu6_InterruptSource_trap,
            .serviceRequest = IfxCcu6_ServiceRequest_3,
            .priority       = 0,                /* interrupt priority 0 */
            .typeOfService  = IfxSrc_Tos_cpu0,  /* type of service CPU0 */
        },

        .trigger                  = {
            .t12ExtInputTrigger   = NULL_PTR,
            .t13ExtInputTrigger   = NULL_PTR,
            .extInputTriggerMode  = IfxCcu6_ExternalTriggerMode_risingEdge,
            .t13InSyncWithT12     = TRUE,

            .outputTriggerEnabled = TRUE,
            .outputLine           = IfxCcu6_TrigOut_0,
            .outputTrigger        = IfxCcu6_TrigSel_cout63,
        },
    };

    /* Default Configuration */
    *config = defaultConfig;

    /* take over module pointer */
    config->ccu6 = ccu6;
}


void IfxCcu6_TPwm_pause(IfxCcu6_TPwm *tPwm)
{
    IfxCcu6_disableModulationOutput(tPwm->ccu6, tPwm->timer, tPwm->channelOut);
}


void IfxCcu6_TPwm_resume(IfxCcu6_TPwm *tPwm)
{
    IfxCcu6_enableModulationOutput(tPwm->ccu6, tPwm->timer, tPwm->channelOut);
}


void IfxCcu6_TPwm_start(IfxCcu6_TPwm *tPwm)
{
    /* Timer 13 modulation */

    if (tPwm->timer == IfxCcu6_TimerId_t13)
    {
        /* enable shadow transfer */
        IfxCcu6_enableShadowTransfer(tPwm->ccu6, FALSE, TRUE);

        /* start Timer 13 when not in sync with Timer 12 */
        if (!(tPwm->trigger.t13InSyncWithT12))
        {
            if (tPwm->trigger.t13ExtInputTrigger != NULL_PTR)
            {
                /* external start */
                IfxCcu6_setExternalRunMode(tPwm->ccu6, IfxCcu6_TimerId_t13, tPwm->trigger.extInputTriggerMode);
                IfxCcu6_setT13InputSignal(tPwm->ccu6, tPwm->trigger.t13ExtInputTrigger);
            }
            else
            {
                /* internal start */
                IfxCcu6_startTimer(tPwm->ccu6, FALSE, TRUE);
            }
        }
        else
        {}
    }
    else
    {}

    /* Timer 12 alone for modulation or when in sync with Timer 13 */

    if ((tPwm->timer == IfxCcu6_TimerId_t12) || (tPwm->trigger.t13InSyncWithT12))
    {
        /* enable shadow transfer */
        IfxCcu6_enableShadowTransfer(tPwm->ccu6, TRUE, FALSE);

        /* start Timer 12 */
        if (tPwm->trigger.t12ExtInputTrigger != NULL_PTR)
        {
            /* external start */
            IfxCcu6_setExternalRunMode(tPwm->ccu6, IfxCcu6_TimerId_t12, tPwm->trigger.extInputTriggerMode);
            IfxCcu6_setT12InputSignal(tPwm->ccu6, tPwm->trigger.t12ExtInputTrigger);
        }
        else
        {
            /* internal start */
            IfxCcu6_startTimer(tPwm->ccu6, TRUE, FALSE);
        }
    }
    else
    {}
}


void IfxCcu6_TPwm_stop(IfxCcu6_TPwm *tPwm)
{
    /* Timer 13 modulation */

    if ((tPwm->timer == IfxCcu6_TimerId_t13) || (tPwm->trigger.t13InSyncWithT12))
    {
        /* disable shadow transfer */
        IfxCcu6_disableShadowTransfer(tPwm->ccu6, FALSE, TRUE);

        /* remove external input trigger if any */
        if (tPwm->trigger.t13ExtInputTrigger != NULL_PTR)
        {
            IfxCcu6_setExternalRunMode(tPwm->ccu6, IfxCcu6_TimerId_t13, IfxCcu6_ExternalTriggerMode_disable);
        }

        /* remove the sync with Timer 12 */
        if (tPwm->trigger.t13InSyncWithT12)
        {
            tPwm->ccu6->TCTR2.B.T13TEC = IfxCcu6_T13TriggerEvent_noAction;
            tPwm->ccu6->TCTR2.B.T13TED = IfxCcu6_T13TriggerDirection_noAction;
        }

        /* stop Timer 13 */
        IfxCcu6_stopTimer(tPwm->ccu6, FALSE, TRUE);
    }

    /* Timer 12 modulation */

    else
    {
        /* disable shadow transfer */
        IfxCcu6_disableShadowTransfer(tPwm->ccu6, TRUE, FALSE);

        /* remove external input trigger if any */
        if (tPwm->trigger.t12ExtInputTrigger != NULL_PTR)
        {
            IfxCcu6_setExternalRunMode(tPwm->ccu6, IfxCcu6_TimerId_t12, IfxCcu6_ExternalTriggerMode_disable);
        }

        /* stop Timer 12 */
        IfxCcu6_stopTimer(tPwm->ccu6, TRUE, FALSE);
    }

    /* disable the modulation */
    IfxCcu6_disableModulationOutput(tPwm->ccu6, tPwm->timer, tPwm->channelOut);
}
