/**
 * \file IfxMsc_PinMap_TC37xED_TQFP144.c
 * \brief MSC I/O map
 * \ingroup IfxLld_Msc
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
#pragma warning 508		    /* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96	/* To suppress empty file warning */
#endif
#if defined DEVICE_TC37XED && defined IFX_PIN_PACKAGE_TQFP144
#include "IfxMsc_PinMap_TC37xED_TQFP144.h"

IfxMsc_En_Out IfxMsc0_EN0_P10_2_OUT = {&MODULE_MSC0, 0, {&MODULE_P10, 2}, IfxPort_OutputIdx_alt4};
IfxMsc_En_Out IfxMsc0_EN0_P10_3_OUT = {&MODULE_MSC0, 0, {&MODULE_P10, 3}, IfxPort_OutputIdx_alt4};
IfxMsc_En_Out IfxMsc0_EN0_P11_11_OUT = {&MODULE_MSC0, 0, {&MODULE_P11,11}, IfxPort_OutputIdx_alt5};
IfxMsc_En_Out IfxMsc0_EN0_P15_5_OUT = {&MODULE_MSC0, 0, {&MODULE_P15, 5}, IfxPort_OutputIdx_alt5};
IfxMsc_En_Out IfxMsc0_EN1_P10_1_OUT = {&MODULE_MSC0, 1, {&MODULE_P10, 1}, IfxPort_OutputIdx_alt4};
IfxMsc_En_Out IfxMsc0_EN1_P11_2_OUT = {&MODULE_MSC0, 1, {&MODULE_P11, 2}, IfxPort_OutputIdx_alt5};
IfxMsc_En_Out IfxMsc0_EN1_P13_0_OUT = {&MODULE_MSC0, 1, {&MODULE_P13, 0}, IfxPort_OutputIdx_alt4};
IfxMsc_En_Out IfxMsc0_EN1_P15_3_OUT = {&MODULE_MSC0, 1, {&MODULE_P15, 3}, IfxPort_OutputIdx_alt5};
IfxMsc_En_Out IfxMsc1_EN0_P32_4_OUT = {&MODULE_MSC1, 0, {&MODULE_P32, 4}, IfxPort_OutputIdx_alt5};
IfxMsc_Fcln_Out IfxMsc0_FCLN_P13_0_OUT = {&MODULE_MSC0, {&MODULE_P13, 0}, IfxPort_OutputIdx_alt5};
IfxMsc_Fcln_Out IfxMsc1_FCLN_P22_0_OUT = {&MODULE_MSC1, {&MODULE_P22, 0}, IfxPort_OutputIdx_alt5};
IfxMsc_Fclp_Out IfxMsc0_FCLP_P11_6_OUT = {&MODULE_MSC0, {&MODULE_P11, 6}, IfxPort_OutputIdx_alt5};
IfxMsc_Fclp_Out IfxMsc0_FCLP_P13_1_OUT = {&MODULE_MSC0, {&MODULE_P13, 1}, IfxPort_OutputIdx_alt5};
IfxMsc_Fclp_Out IfxMsc0_FCLP_P13_2_OUT = {&MODULE_MSC0, {&MODULE_P13, 2}, IfxPort_OutputIdx_alt4};
IfxMsc_Fclp_Out IfxMsc1_FCLP_P22_1_OUT = {&MODULE_MSC1, {&MODULE_P22, 1}, IfxPort_OutputIdx_alt5};
IfxMsc_Inj_In IfxMsc0_INJ0_P00_0_IN = {&MODULE_MSC0, {&MODULE_P00, 0}, Ifx_RxSel_a};
IfxMsc_Inj_In IfxMsc0_INJ1_P10_5_IN = {&MODULE_MSC0, {&MODULE_P10, 5}, Ifx_RxSel_b};
IfxMsc_Inj_In IfxMsc1_INJ1_P33_13_IN = {&MODULE_MSC1, {&MODULE_P33,13}, Ifx_RxSel_b};
IfxMsc_Sdi_In IfxMsc0_SDI0_P11_10_IN = {&MODULE_MSC0, {&MODULE_P11,10}, Ifx_RxSel_a};
IfxMsc_Sdi_In IfxMsc0_SDI1_P10_2_IN = {&MODULE_MSC0, {&MODULE_P10, 2}, Ifx_RxSel_b};
IfxMsc_Sdi_In IfxMsc0_SDI2_P14_3_IN = {&MODULE_MSC0, {&MODULE_P14, 3}, Ifx_RxSel_c};
IfxMsc_Sdi_In IfxMsc0_SDI3_P11_3_IN = {&MODULE_MSC0, {&MODULE_P11, 3}, Ifx_RxSel_d};
IfxMsc_Sdi_In IfxMsc1_SDI0_P23_1_IN = {&MODULE_MSC1, {&MODULE_P23, 1}, Ifx_RxSel_a};
IfxMsc_Sdi_In IfxMsc1_SDI1_P02_3_IN = {&MODULE_MSC1, {&MODULE_P02, 3}, Ifx_RxSel_b};
IfxMsc_Sdi_In IfxMsc1_SDI2_P32_4_IN = {&MODULE_MSC1, {&MODULE_P32, 4}, Ifx_RxSel_c};
IfxMsc_Son_Out IfxMsc0_SON_P13_2_OUT = {&MODULE_MSC0, {&MODULE_P13, 2}, IfxPort_OutputIdx_alt5};
IfxMsc_Son_Out IfxMsc1_SON_P22_2_OUT = {&MODULE_MSC1, {&MODULE_P22, 2}, IfxPort_OutputIdx_alt5};
IfxMsc_Sop_Out IfxMsc0_SOP_P11_9_OUT = {&MODULE_MSC0, {&MODULE_P11, 9}, IfxPort_OutputIdx_alt5};
IfxMsc_Sop_Out IfxMsc0_SOP_P13_3_OUT = {&MODULE_MSC0, {&MODULE_P13, 3}, IfxPort_OutputIdx_alt5};
IfxMsc_Sop_Out IfxMsc1_SOP_P22_3_OUT = {&MODULE_MSC1, {&MODULE_P22, 3}, IfxPort_OutputIdx_alt5};


const IfxMsc_En_Out *IfxMsc_En_Out_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_NUM_TARGETS][IFXMSC_PINMAP_EN_OUT_NUM_ITEMS] = {
    {
        {
            &IfxMsc0_EN0_P10_2_OUT,
            &IfxMsc0_EN0_P10_3_OUT,
            &IfxMsc0_EN0_P11_11_OUT,
            &IfxMsc0_EN0_P15_5_OUT
        },
        {
            &IfxMsc0_EN1_P10_1_OUT,
            &IfxMsc0_EN1_P11_2_OUT,
            &IfxMsc0_EN1_P13_0_OUT,
            &IfxMsc0_EN1_P15_3_OUT
        }
    },
    {
        {
            &IfxMsc1_EN0_P32_4_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        }
    }
};

const IfxMsc_Fcln_Out *IfxMsc_Fcln_Out_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_FCLN_OUT_NUM_ITEMS] = {
    {
        &IfxMsc0_FCLN_P13_0_OUT
    },
    {
        &IfxMsc1_FCLN_P22_0_OUT
    }
};

const IfxMsc_Fclp_Out *IfxMsc_Fclp_Out_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_FCLP_OUT_NUM_ITEMS] = {
    {
        &IfxMsc0_FCLP_P11_6_OUT,
        &IfxMsc0_FCLP_P13_1_OUT,
        &IfxMsc0_FCLP_P13_2_OUT
    },
    {
        &IfxMsc1_FCLP_P22_1_OUT,
        NULL_PTR,
        NULL_PTR
    }
};

const IfxMsc_Inj_In *IfxMsc_Inj_In_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_INJ_IN_NUM_ITEMS] = {
    {
        &IfxMsc0_INJ0_P00_0_IN,
        &IfxMsc0_INJ1_P10_5_IN
    },
    {
        NULL_PTR,
        &IfxMsc1_INJ1_P33_13_IN
    }
};

const IfxMsc_Sdi_In *IfxMsc_Sdi_In_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_SDI_IN_NUM_ITEMS] = {
    {
        &IfxMsc0_SDI0_P11_10_IN,
        &IfxMsc0_SDI1_P10_2_IN,
        &IfxMsc0_SDI2_P14_3_IN,
        &IfxMsc0_SDI3_P11_3_IN
    },
    {
        &IfxMsc1_SDI0_P23_1_IN,
        &IfxMsc1_SDI1_P02_3_IN,
        &IfxMsc1_SDI2_P32_4_IN,
        NULL_PTR
    }
};

const IfxMsc_Son_Out *IfxMsc_Son_Out_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_SON_OUT_NUM_ITEMS] = {
    {
        &IfxMsc0_SON_P13_2_OUT
    },
    {
        &IfxMsc1_SON_P22_2_OUT
    }
};

const IfxMsc_Sop_Out *IfxMsc_Sop_Out_pinTable[IFXMSC_PINMAP_NUM_MODULES][IFXMSC_PINMAP_SOP_OUT_NUM_ITEMS] = {
    {
        &IfxMsc0_SOP_P11_9_OUT,
        &IfxMsc0_SOP_P13_3_OUT
    },
    {
        &IfxMsc1_SOP_P22_3_OUT,
        NULL_PTR
    }
};
#endif
#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
