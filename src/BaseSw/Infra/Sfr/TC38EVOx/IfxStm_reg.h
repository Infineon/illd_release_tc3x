/**
 * \file IfxStm_reg.h
 * \brief
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC3EX_UM_V2.0.0.R0
 * Specification: TC3xx User Manual V2.0.0
 * MAY BE CHANGED BY USER [yes/no]: No
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Use of this file is subject to the terms of use agreed between (i) you or 
 * the company in which ordinary course of business you are acting and (ii) 
 * Infineon Technologies AG or its licensees. If and as long as no such 
 * terms of use are agreed, use of this file is subject to following:


 * Boost Software License - Version 1.0 - August 17th, 2003

 * Permission is hereby granted, free of charge, to any person or 
 * organization obtaining a copy of the software and accompanying 
 * documentation covered by this license (the "Software") to use, reproduce,
 * display, distribute, execute, and transmit the Software, and to prepare
 * derivative works of the Software, and to permit third-parties to whom the 
 * Software is furnished to do so, all subject to the following:

 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE 
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxSfr_Stm_Registers_Cfg Stm address
 * \ingroup IfxSfr_Stm_Registers
 * 
 * \defgroup IfxSfr_Stm_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Stm_Registers_Cfg
 *
 * \defgroup IfxSfr_Stm_Registers_Cfg_Stm0 2-STM0
 * \ingroup IfxSfr_Stm_Registers_Cfg
 *
 * \defgroup IfxSfr_Stm_Registers_Cfg_Stm1 2-STM1
 * \ingroup IfxSfr_Stm_Registers_Cfg
 *
 * \defgroup IfxSfr_Stm_Registers_Cfg_Stm2 2-STM2
 * \ingroup IfxSfr_Stm_Registers_Cfg
 *
 * \defgroup IfxSfr_Stm_Registers_Cfg_Stm3 2-STM3
 * \ingroup IfxSfr_Stm_Registers_Cfg
 *
 *
 */
#ifndef IFXSTM_REG_H
#define IFXSTM_REG_H 1
/******************************************************************************/
#include "IfxStm_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Stm_Registers_Cfg_BaseAddress
 * \{  */

/** \brief STM object */
#define MODULE_STM0 /*lint --e(923, 9078)*/ ((*(Ifx_STM*)0xF0001000u))
#define MODULE_STM1 /*lint --e(923, 9078)*/ ((*(Ifx_STM*)0xF0001100u))
#define MODULE_STM2 /*lint --e(923, 9078)*/ ((*(Ifx_STM*)0xF0001200u))
#define MODULE_STM3 /*lint --e(923, 9078)*/ ((*(Ifx_STM*)0xF0001300u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Stm_Registers_Cfg_Stm0
 * \{  */
/** \brief 0, Clock Control Register */
#define STM0_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CLC*)0xF0001000u)

/** \brief 8, Module Identification Register */
#define STM0_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ID*)0xF0001008u)

/** \brief 10, Timer Register 0 */
#define STM0_TIM0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0*)0xF0001010u)

/** \brief 14, Timer Register 1 */
#define STM0_TIM1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM1*)0xF0001014u)

/** \brief 18, Timer Register 2 */
#define STM0_TIM2 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM2*)0xF0001018u)

/** \brief 1C, Timer Register 3 */
#define STM0_TIM3 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM3*)0xF000101Cu)

/** \brief 20, Timer Register 4 */
#define STM0_TIM4 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM4*)0xF0001020u)

/** \brief 24, Timer Register 5 */
#define STM0_TIM5 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM5*)0xF0001024u)

/** \brief 28, Timer Register 6 */
#define STM0_TIM6 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM6*)0xF0001028u)

/** \brief 2C, Timer Capture Register */
#define STM0_CAP /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAP*)0xF000102Cu)

/** \brief 30, Compare Register 0 */
#define STM0_CMP0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001030u)

/** \brief 34, Compare Register 1 */
#define STM0_CMP1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001034u)

/** \brief 38, Compare Match Control Register */
#define STM0_CMCON /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMCON*)0xF0001038u)

/** \brief 3C, Interrupt Control Register */
#define STM0_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ICR*)0xF000103Cu)

/** \brief 40, Interrupt Set/Clear Register */
#define STM0_ISCR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ISCR*)0xF0001040u)

/** \brief 50, Timer Register 0 Second View */
#define STM0_TIM0SV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0SV*)0xF0001050u)

/** \brief 54, Timer Capture Register Second View */
#define STM0_CAPSV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAPSV*)0xF0001054u)

/** \brief E8, OCDS Control and Status Register */
#define STM0_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_OCS*)0xF00010E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define STM0_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRSTCLR*)0xF00010ECu)

/** \brief F0, Kernel Reset Register 1 */
#define STM0_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST1*)0xF00010F0u)

/** \brief F4, Kernel Reset Register 0 */
#define STM0_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST0*)0xF00010F4u)

/** \brief F8, Access Enable Register 1 */
#define STM0_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN1*)0xF00010F8u)

/** \brief FC, Access Enable Register 0 */
#define STM0_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN0*)0xF00010FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Stm_Registers_Cfg_Stm1
 * \{  */
/** \brief 0, Clock Control Register */
#define STM1_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CLC*)0xF0001100u)

/** \brief 8, Module Identification Register */
#define STM1_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ID*)0xF0001108u)

/** \brief 10, Timer Register 0 */
#define STM1_TIM0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0*)0xF0001110u)

/** \brief 14, Timer Register 1 */
#define STM1_TIM1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM1*)0xF0001114u)

/** \brief 18, Timer Register 2 */
#define STM1_TIM2 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM2*)0xF0001118u)

/** \brief 1C, Timer Register 3 */
#define STM1_TIM3 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM3*)0xF000111Cu)

/** \brief 20, Timer Register 4 */
#define STM1_TIM4 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM4*)0xF0001120u)

/** \brief 24, Timer Register 5 */
#define STM1_TIM5 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM5*)0xF0001124u)

/** \brief 28, Timer Register 6 */
#define STM1_TIM6 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM6*)0xF0001128u)

/** \brief 2C, Timer Capture Register */
#define STM1_CAP /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAP*)0xF000112Cu)

/** \brief 30, Compare Register 0 */
#define STM1_CMP0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001130u)

/** \brief 34, Compare Register 1 */
#define STM1_CMP1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001134u)

/** \brief 38, Compare Match Control Register */
#define STM1_CMCON /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMCON*)0xF0001138u)

/** \brief 3C, Interrupt Control Register */
#define STM1_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ICR*)0xF000113Cu)

/** \brief 40, Interrupt Set/Clear Register */
#define STM1_ISCR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ISCR*)0xF0001140u)

/** \brief 50, Timer Register 0 Second View */
#define STM1_TIM0SV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0SV*)0xF0001150u)

/** \brief 54, Timer Capture Register Second View */
#define STM1_CAPSV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAPSV*)0xF0001154u)

/** \brief E8, OCDS Control and Status Register */
#define STM1_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_OCS*)0xF00011E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define STM1_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRSTCLR*)0xF00011ECu)

/** \brief F0, Kernel Reset Register 1 */
#define STM1_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST1*)0xF00011F0u)

/** \brief F4, Kernel Reset Register 0 */
#define STM1_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST0*)0xF00011F4u)

/** \brief F8, Access Enable Register 1 */
#define STM1_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN1*)0xF00011F8u)

/** \brief FC, Access Enable Register 0 */
#define STM1_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN0*)0xF00011FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Stm_Registers_Cfg_Stm2
 * \{  */
/** \brief 0, Clock Control Register */
#define STM2_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CLC*)0xF0001200u)

/** \brief 8, Module Identification Register */
#define STM2_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ID*)0xF0001208u)

/** \brief 10, Timer Register 0 */
#define STM2_TIM0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0*)0xF0001210u)

/** \brief 14, Timer Register 1 */
#define STM2_TIM1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM1*)0xF0001214u)

/** \brief 18, Timer Register 2 */
#define STM2_TIM2 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM2*)0xF0001218u)

/** \brief 1C, Timer Register 3 */
#define STM2_TIM3 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM3*)0xF000121Cu)

/** \brief 20, Timer Register 4 */
#define STM2_TIM4 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM4*)0xF0001220u)

/** \brief 24, Timer Register 5 */
#define STM2_TIM5 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM5*)0xF0001224u)

/** \brief 28, Timer Register 6 */
#define STM2_TIM6 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM6*)0xF0001228u)

/** \brief 2C, Timer Capture Register */
#define STM2_CAP /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAP*)0xF000122Cu)

/** \brief 30, Compare Register 0 */
#define STM2_CMP0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001230u)

/** \brief 34, Compare Register 1 */
#define STM2_CMP1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001234u)

/** \brief 38, Compare Match Control Register */
#define STM2_CMCON /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMCON*)0xF0001238u)

/** \brief 3C, Interrupt Control Register */
#define STM2_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ICR*)0xF000123Cu)

/** \brief 40, Interrupt Set/Clear Register */
#define STM2_ISCR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ISCR*)0xF0001240u)

/** \brief 50, Timer Register 0 Second View */
#define STM2_TIM0SV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0SV*)0xF0001250u)

/** \brief 54, Timer Capture Register Second View */
#define STM2_CAPSV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAPSV*)0xF0001254u)

/** \brief E8, OCDS Control and Status Register */
#define STM2_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_OCS*)0xF00012E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define STM2_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRSTCLR*)0xF00012ECu)

/** \brief F0, Kernel Reset Register 1 */
#define STM2_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST1*)0xF00012F0u)

/** \brief F4, Kernel Reset Register 0 */
#define STM2_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST0*)0xF00012F4u)

/** \brief F8, Access Enable Register 1 */
#define STM2_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN1*)0xF00012F8u)

/** \brief FC, Access Enable Register 0 */
#define STM2_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN0*)0xF00012FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Stm_Registers_Cfg_Stm3
 * \{  */
/** \brief 0, Clock Control Register */
#define STM3_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CLC*)0xF0001300u)

/** \brief 8, Module Identification Register */
#define STM3_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ID*)0xF0001308u)

/** \brief 10, Timer Register 0 */
#define STM3_TIM0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0*)0xF0001310u)

/** \brief 14, Timer Register 1 */
#define STM3_TIM1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM1*)0xF0001314u)

/** \brief 18, Timer Register 2 */
#define STM3_TIM2 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM2*)0xF0001318u)

/** \brief 1C, Timer Register 3 */
#define STM3_TIM3 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM3*)0xF000131Cu)

/** \brief 20, Timer Register 4 */
#define STM3_TIM4 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM4*)0xF0001320u)

/** \brief 24, Timer Register 5 */
#define STM3_TIM5 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM5*)0xF0001324u)

/** \brief 28, Timer Register 6 */
#define STM3_TIM6 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM6*)0xF0001328u)

/** \brief 2C, Timer Capture Register */
#define STM3_CAP /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAP*)0xF000132Cu)

/** \brief 30, Compare Register 0 */
#define STM3_CMP0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001330u)

/** \brief 34, Compare Register 1 */
#define STM3_CMP1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMP*)0xF0001334u)

/** \brief 38, Compare Match Control Register */
#define STM3_CMCON /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CMCON*)0xF0001338u)

/** \brief 3C, Interrupt Control Register */
#define STM3_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ICR*)0xF000133Cu)

/** \brief 40, Interrupt Set/Clear Register */
#define STM3_ISCR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ISCR*)0xF0001340u)

/** \brief 50, Timer Register 0 Second View */
#define STM3_TIM0SV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_TIM0SV*)0xF0001350u)

/** \brief 54, Timer Capture Register Second View */
#define STM3_CAPSV /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_CAPSV*)0xF0001354u)

/** \brief E8, OCDS Control and Status Register */
#define STM3_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_OCS*)0xF00013E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define STM3_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRSTCLR*)0xF00013ECu)

/** \brief F0, Kernel Reset Register 1 */
#define STM3_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST1*)0xF00013F0u)

/** \brief F4, Kernel Reset Register 0 */
#define STM3_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_KRST0*)0xF00013F4u)

/** \brief F8, Access Enable Register 1 */
#define STM3_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN1*)0xF00013F8u)

/** \brief FC, Access Enable Register 0 */
#define STM3_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_STM_ACCEN0*)0xF00013FCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXSTM_REG_H */
