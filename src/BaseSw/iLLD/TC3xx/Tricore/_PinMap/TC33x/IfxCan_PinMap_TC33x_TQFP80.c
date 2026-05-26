/**
 * \file IfxCan_PinMap_TC33x_TQFP80.c
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
#pragma warning 508		/* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96		/* To suppress empty file warning */
#endif
#if defined DEVICE_TC33X && defined IFX_PIN_PACKAGE_TQFP80

#include "IfxCan_PinMap_TC33x_TQFP80.h"

IfxCan_Rxd_In IfxCan_RXD00A_P02_1_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P02, 1}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD00E_P33_7_IN = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33, 7}, Ifx_RxSel_e};
IfxCan_Rxd_In IfxCan_RXD01A_P15_3_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P15, 3}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD01B_P14_1_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P14, 1}, Ifx_RxSel_b};
IfxCan_Rxd_In IfxCan_RXD01D_P33_10_IN = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P33,10}, Ifx_RxSel_d};
IfxCan_Rxd_In IfxCan_RXD02A_P15_1_IN = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P15, 1}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD02B_P02_3_IN = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxCan_Rxd_In IfxCan_RXD03D_P11_10_IN = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P11,10}, Ifx_RxSel_d};
IfxCan_Rxd_In IfxCan_RXD03E_P20_9_IN = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P20, 9}, Ifx_RxSel_e};
IfxCan_Rxd_In IfxCan_RXD11A_P02_4_IN = {&MODULE_CAN1, IfxCan_NodeId_1, {&MODULE_P02, 4}, Ifx_RxSel_a};
IfxCan_Rxd_In IfxCan_RXD13B_P33_5_IN = {&MODULE_CAN1, IfxCan_NodeId_3, {&MODULE_P33, 5}, Ifx_RxSel_b};
IfxCan_Txd_Out IfxCan_TXD00_P02_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P02, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P20_8_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P20, 8}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD00_P33_8_OUT = {&MODULE_CAN0, IfxCan_NodeId_0, {&MODULE_P33, 8}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P14_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P14, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P15_2_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P15, 2}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD01_P33_9_OUT = {&MODULE_CAN0, IfxCan_NodeId_1, {&MODULE_P33, 9}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD02_P02_2_OUT = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P02, 2}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD02_P15_0_OUT = {&MODULE_CAN0, IfxCan_NodeId_2, {&MODULE_P15, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD03_P11_12_OUT = {&MODULE_CAN0, IfxCan_NodeId_3, {&MODULE_P11,12}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD10_P00_0_OUT = {&MODULE_CAN1, IfxCan_NodeId_0, {&MODULE_P00, 0}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD10_P23_1_OUT = {&MODULE_CAN1, IfxCan_NodeId_0, {&MODULE_P23, 1}, IfxPort_OutputIdx_alt5};
IfxCan_Txd_Out IfxCan_TXD11_P02_5_OUT = {&MODULE_CAN1, IfxCan_NodeId_1, {&MODULE_P02, 5}, IfxPort_OutputIdx_alt2};
IfxCan_Txd_Out IfxCan_TXD13_P33_4_OUT = {&MODULE_CAN1, IfxCan_NodeId_3, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt7};


const IfxCan_Rxd_In *IfxCan_Rxd_In_pinTable[IFXCAN_PINMAP_NUM_MODULES][IFXCAN_PINMAP_NUM_NODES][IFXCAN_PINMAP_RXD_IN_NUM_ITEMS] = {
    {
        {
            &IfxCan_RXD00A_P02_1_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
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
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            &IfxCan_RXD03D_P11_10_IN,
            &IfxCan_RXD03E_P20_9_IN
        }
    },
    {
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCan_RXD11A_P02_4_IN,
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
            NULL_PTR
        },
        {
            NULL_PTR,
            &IfxCan_RXD13B_P33_5_IN,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxCan_Txd_Out *IfxCan_Txd_Out_pinTable[IFXCAN_PINMAP_NUM_MODULES][IFXCAN_PINMAP_NUM_NODES][IFXCAN_PINMAP_TXD_OUT_NUM_ITEMS] = {
    {
        {
            &IfxCan_TXD00_P02_0_OUT,
            &IfxCan_TXD00_P20_8_OUT,
            &IfxCan_TXD00_P33_8_OUT
        },
        {
            &IfxCan_TXD01_P14_0_OUT,
            &IfxCan_TXD01_P15_2_OUT,
            &IfxCan_TXD01_P33_9_OUT
        },
        {
            &IfxCan_TXD02_P02_2_OUT,
            &IfxCan_TXD02_P15_0_OUT,
            NULL_PTR
        },
        {
            &IfxCan_TXD03_P11_12_OUT,
            NULL_PTR,
            NULL_PTR
        }
    },
    {
        {
            &IfxCan_TXD10_P00_0_OUT,
            &IfxCan_TXD10_P23_1_OUT,
            NULL_PTR
        },
        {
            &IfxCan_TXD11_P02_5_OUT,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxCan_TXD13_P33_4_OUT,
            NULL_PTR,
            NULL_PTR
        }
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
