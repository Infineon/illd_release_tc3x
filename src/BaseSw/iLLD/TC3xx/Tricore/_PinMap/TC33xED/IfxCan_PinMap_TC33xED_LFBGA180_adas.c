/**
 * \file IfxCan_PinMap_TC33xED_LFBGA180_adas.c
 * \brief CAN I/O map
 * \ingroup IfxLld_Can
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
#include "IfxCan_PinMap_TC33xED_LFBGA180_adas.h"

IfxCan_Rxd_In IfxCan_RXD00A_P02_1_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P02, 1}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD00B_P20_7_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P20, 7}, Ifx_RxSel_b};
IfxCan_Rxd_In IfxCan_RXD00C_P12_0_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P12, 0}, Ifx_RxSel_c};
IfxCan_Rxd_In IfxCan_RXD00D_P33_12_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33,12}, Ifx_RxSel_d};
IfxCan_Rxd_In IfxCan_RXD00E_P33_7_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33, 7}, Ifx_RxSel_e};
IfxCan_Rxd_In IfxCan_RXD01A_P15_3_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P15, 3}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD01B_P14_1_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P14, 1}, Ifx_RxSel_b};
IfxCan_Rxd_In IfxCan_RXD01D_P33_10_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P33,10}, Ifx_RxSel_d};
IfxCan_Rxd_In IfxCan_RXD02A_P15_1_IN = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P15, 1}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD02B_P02_3_IN = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxCan_Rxd_In IfxCan_RXD02E_P10_2_IN = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P10, 2}, Ifx_RxSel_e};
IfxCan_Rxd_In IfxCan_RXD03C_P20_0_IN = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P20, 0}, Ifx_RxSel_c};
IfxCan_Rxd_In IfxCan_RXD03D_P11_10_IN = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P11,10}, Ifx_RxSel_d};
IfxCan_Rxd_In IfxCan_RXD03E_P20_9_IN = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P20, 9}, Ifx_RxSel_e};
IfxCan_Txd_Out IfxCan_TXD00_P02_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P02, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P12_1_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P12, 1}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P20_8_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P20, 8}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P33_13_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33,13}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P33_8_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33, 8}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P14_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P14, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P15_2_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P15, 2}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P33_9_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P33, 9}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD02_P02_2_OUT = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P02, 2}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD02_P10_3_OUT = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P10, 3}, IfxPort_OutputIdx_alt6};
IfxCan_Txd_Out IfxCan_TXD02_P15_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P15, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD03_P11_12_OUT = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P11,12}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD03_P20_10_OUT = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P20,10}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD03_P20_3_OUT = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P20, 3}, IfxPort_OutputIdx_alt5};


const IfxCan_Rxd_In *IfxCan_Rxd_In_pinTable[IFXCAN_PINMAP_NUM_MODULES][IFXCAN_PINMAP_NUM_NODES][IFXCAN_PINMAP_RXD_IN_NUM_ITEMS] = {
    {
        {
            &IfxCan_RXD00A_P02_1_IN,
            &IfxCan_RXD00B_P20_7_IN,
            &IfxCan_RXD00C_P12_0_IN,
            &IfxCan_RXD00D_P33_12_IN,
            &IfxCan_RXD00E_P33_7_IN
        },
        {
            &IfxCan_RXD01A_P15_3_IN,
            &IfxCan_RXD01B_P14_1_IN,
            NULL_PTR,
            &IfxCan_RXD01D_P33_10_IN,
            NULL_PTR
        },
        {
            &IfxCan_RXD02A_P15_1_IN,
            &IfxCan_RXD02B_P02_3_IN,
            NULL_PTR,
            NULL_PTR,
            &IfxCan_RXD02E_P10_2_IN
        },
        {
            NULL_PTR,
            NULL_PTR,
            &IfxCan_RXD03C_P20_0_IN,
            &IfxCan_RXD03D_P11_10_IN,
            &IfxCan_RXD03E_P20_9_IN
        }
    }
};

const IfxCan_Txd_Out *IfxCan_Txd_Out_pinTable[IFXCAN_PINMAP_NUM_MODULES][IFXCAN_PINMAP_NUM_NODES][IFXCAN_PINMAP_TXD_OUT_NUM_ITEMS] = {
    {
        {
            &IfxCan_TXD00_P02_0_OUT,
            &IfxCan_TXD00_P12_1_OUT,
            &IfxCan_TXD00_P20_8_OUT,
            &IfxCan_TXD00_P33_8_OUT,
            &IfxCan_TXD00_P33_13_OUT
        },
        {
            &IfxCan_TXD01_P14_0_OUT,
            &IfxCan_TXD01_P15_2_OUT,
            &IfxCan_TXD01_P33_9_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCan_TXD02_P02_2_OUT,
            &IfxCan_TXD02_P10_3_OUT,
            &IfxCan_TXD02_P15_0_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCan_TXD03_P11_12_OUT,
            &IfxCan_TXD03_P20_3_OUT,
            &IfxCan_TXD03_P20_10_OUT,
            NULL_PTR,
            NULL_PTR
        }
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
