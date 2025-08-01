/**
 * \file IfxPsi5_PinMap_TC36x_LQFP144.c
 * \brief PSI5 I/O map
 * \ingroup IfxLld_Psi5
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
#pragma warning 508				/* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96		/* To suppress empty file warning */
#endif

#if defined DEVICE_TC36X && defined IFX_PIN_PACKAGE_LQFP144
#include "IfxPsi5_PinMap_TC36x_LQFP144.h"

IfxPsi5_Rx_In IfxPsi5_RX0A_P00_1_IN = {&MODULE_PSI5, IfxPsi5_ChannelId_0, {&MODULE_P00, 1}, Ifx_RxSel_a};
IfxPsi5_Rx_In IfxPsi5_RX0B_P02_3_IN = {&MODULE_PSI5, IfxPsi5_ChannelId_0, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxPsi5_Rx_In IfxPsi5_RX1A_P00_3_IN = {&MODULE_PSI5, IfxPsi5_ChannelId_1, {&MODULE_P00, 3}, Ifx_RxSel_a};
IfxPsi5_Rx_In IfxPsi5_RX1B_P02_5_IN = {&MODULE_PSI5, IfxPsi5_ChannelId_1, {&MODULE_P02, 5}, Ifx_RxSel_b};
IfxPsi5_Tx_Out IfxPsi5_TX0_P00_2_OUT = {&MODULE_PSI5, IfxPsi5_ChannelId_0, {&MODULE_P00, 2}, IfxPort_OutputIdx_alt4};
IfxPsi5_Tx_Out IfxPsi5_TX0_P02_2_OUT = {&MODULE_PSI5, IfxPsi5_ChannelId_0, {&MODULE_P02, 2}, IfxPort_OutputIdx_alt4};
IfxPsi5_Tx_Out IfxPsi5_TX1_P00_4_OUT = {&MODULE_PSI5, IfxPsi5_ChannelId_1, {&MODULE_P00, 4}, IfxPort_OutputIdx_alt4};
IfxPsi5_Tx_Out IfxPsi5_TX1_P02_6_OUT = {&MODULE_PSI5, IfxPsi5_ChannelId_1, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt4};
IfxPsi5_Tx_Out IfxPsi5_TX1_P33_4_OUT = {&MODULE_PSI5, IfxPsi5_ChannelId_1, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt4};


const IfxPsi5_Rx_In *IfxPsi5_Rx_In_pinTable[IFXPSI5_PINMAP_NUM_MODULES][IFXPSI5_PINMAP_NUM_CHANNELS][IFXPSI5_PINMAP_RX_IN_NUM_ITEMS] = {
    {
        {
            &IfxPsi5_RX0A_P00_1_IN,
            &IfxPsi5_RX0B_P02_3_IN
        },
        {
            &IfxPsi5_RX1A_P00_3_IN,
            &IfxPsi5_RX1B_P02_5_IN
        }
    }
};

const IfxPsi5_Tx_Out *IfxPsi5_Tx_Out_pinTable[IFXPSI5_PINMAP_NUM_MODULES][IFXPSI5_PINMAP_NUM_CHANNELS][IFXPSI5_PINMAP_TX_OUT_NUM_ITEMS] = {
    {
        {
            &IfxPsi5_TX0_P00_2_OUT,
            &IfxPsi5_TX0_P02_2_OUT,
            NULL_PTR
        },
        {
            &IfxPsi5_TX1_P00_4_OUT,
            &IfxPsi5_TX1_P02_6_OUT,
            &IfxPsi5_TX1_P33_4_OUT
        }
    }
};
#endif

#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
