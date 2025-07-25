/**
 * \file IfxSmu_reg.h
 * \brief
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC37xED_UM_V2.0.0.R0
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
 * \defgroup IfxSfr_Smu_Registers_Cfg Smu address
 * \ingroup IfxSfr_Smu_Registers
 * 
 * \defgroup IfxSfr_Smu_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Smu_Registers_Cfg
 *
 * \defgroup IfxSfr_Smu_Registers_Cfg_Smu 2-SMU
 * \ingroup IfxSfr_Smu_Registers_Cfg
 *
 *
 */
#ifndef IFXSMU_REG_H
#define IFXSMU_REG_H 1
/******************************************************************************/
#include "IfxSmu_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Smu_Registers_Cfg_BaseAddress
 * \{  */

/** \brief SMU object */
#define MODULE_SMU /*lint --e(923, 9078)*/ ((*(Ifx_SMU*)0xF0036800u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Smu_Registers_Cfg_Smu
 * \{  */
/** \brief 0, Clock Control Register */
#define SMU_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_CLC*)0xF0036800u)

/** \brief 8, Module Identification Register */
#define SMU_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_ID*)0xF0036808u)

/** \brief 20, Command Register */
#define SMU_CMD /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_CMD*)0xF0036820u)

/** \brief 24, Status Register */
#define SMU_STS /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_STS*)0xF0036824u)

/** \brief 28, Fault Signaling Protocol */
#define SMU_FSP /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_FSP*)0xF0036828u)

/** \brief 2C, Alarm Global Configuration */
#define SMU_AGC /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGC*)0xF003682Cu)

/** \brief 30, Recovery Timer Configuration */
#define SMU_RTC /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RTC*)0xF0036830u)

/** \brief 34, Key Register */
#define SMU_KEYS /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_KEYS*)0xF0036834u)

/** \brief 38, Debug Register */
#define SMU_DBG /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_DBG*)0xF0036838u)

/** \brief 3C, Port Control */
#define SMU_PCTL /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_PCTL*)0xF003683Cu)

/** \brief 40, Alarm and Fault Counter */
#define SMU_AFCNT /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AFCNT*)0xF0036840u)

/** \brief 60, Recovery Timer 0 Alarm Configuration 0 */
#define SMU_RTAC00 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RTAC00*)0xF0036860u)

/** \brief 64, Recovery Timer 0 Alarm Configuration 1 */
#define SMU_RTAC01 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RTAC01*)0xF0036864u)

/** \brief 68, Recovery Timer 1 Alarm Configuration 0 */
#define SMU_RTAC10 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RTAC10*)0xF0036868u)

/** \brief 6C, Recovery Timer 1 Alarm Configuration 1 */
#define SMU_RTAC11 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RTAC11*)0xF003686Cu)

/** \brief 70, Alarm Executed Status Register */
#define SMU_AEX /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AEX*)0xF0036870u)

/** \brief 74, Alarm Executed Status Clear Register */
#define SMU_AEXCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AEXCLR*)0xF0036874u)

/** \brief 100, Alarm Configuration Register */
#define SMU_AGCF0_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036900u)
/** Alias (User Manual Name) for SMU_AGCF0_0.
* To use register names with standard convension, please use SMU_AGCF0_0.
*/
#define SMU_AG0CF0 (SMU_AGCF0_0)

/** \brief 104, Alarm Configuration Register */
#define SMU_AGCF0_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036904u)
/** Alias (User Manual Name) for SMU_AGCF0_1.
* To use register names with standard convension, please use SMU_AGCF0_1.
*/
#define SMU_AG0CF1 (SMU_AGCF0_1)

/** \brief 108, Alarm Configuration Register */
#define SMU_AGCF0_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036908u)
/** Alias (User Manual Name) for SMU_AGCF0_2.
* To use register names with standard convension, please use SMU_AGCF0_2.
*/
#define SMU_AG0CF2 (SMU_AGCF0_2)

/** \brief 10C, Alarm Configuration Register */
#define SMU_AGCF1_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003690Cu)
/** Alias (User Manual Name) for SMU_AGCF1_0.
* To use register names with standard convension, please use SMU_AGCF1_0.
*/
#define SMU_AG1CF0 (SMU_AGCF1_0)

/** \brief 110, Alarm Configuration Register */
#define SMU_AGCF1_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036910u)
/** Alias (User Manual Name) for SMU_AGCF1_1.
* To use register names with standard convension, please use SMU_AGCF1_1.
*/
#define SMU_AG1CF1 (SMU_AGCF1_1)

/** \brief 114, Alarm Configuration Register */
#define SMU_AGCF1_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036914u)
/** Alias (User Manual Name) for SMU_AGCF1_2.
* To use register names with standard convension, please use SMU_AGCF1_2.
*/
#define SMU_AG1CF2 (SMU_AGCF1_2)

/** \brief 118, Alarm Configuration Register */
#define SMU_AGCF2_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036918u)
/** Alias (User Manual Name) for SMU_AGCF2_0.
* To use register names with standard convension, please use SMU_AGCF2_0.
*/
#define SMU_AG2CF0 (SMU_AGCF2_0)

/** \brief 11C, Alarm Configuration Register */
#define SMU_AGCF2_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003691Cu)
/** Alias (User Manual Name) for SMU_AGCF2_1.
* To use register names with standard convension, please use SMU_AGCF2_1.
*/
#define SMU_AG2CF1 (SMU_AGCF2_1)

/** \brief 120, Alarm Configuration Register */
#define SMU_AGCF2_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036920u)
/** Alias (User Manual Name) for SMU_AGCF2_2.
* To use register names with standard convension, please use SMU_AGCF2_2.
*/
#define SMU_AG2CF2 (SMU_AGCF2_2)

/** \brief 124, Alarm Configuration Register */
#define SMU_AGCF3_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036924u)
/** Alias (User Manual Name) for SMU_AGCF3_0.
* To use register names with standard convension, please use SMU_AGCF3_0.
*/
#define SMU_AG3CF0 (SMU_AGCF3_0)

/** \brief 128, Alarm Configuration Register */
#define SMU_AGCF3_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036928u)
/** Alias (User Manual Name) for SMU_AGCF3_1.
* To use register names with standard convension, please use SMU_AGCF3_1.
*/
#define SMU_AG3CF1 (SMU_AGCF3_1)

/** \brief 12C, Alarm Configuration Register */
#define SMU_AGCF3_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003692Cu)
/** Alias (User Manual Name) for SMU_AGCF3_2.
* To use register names with standard convension, please use SMU_AGCF3_2.
*/
#define SMU_AG3CF2 (SMU_AGCF3_2)

/** \brief 130, Alarm Configuration Register */
#define SMU_AGCF4_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036930u)
/** Alias (User Manual Name) for SMU_AGCF4_0.
* To use register names with standard convension, please use SMU_AGCF4_0.
*/
#define SMU_AG4CF0 (SMU_AGCF4_0)

/** \brief 134, Alarm Configuration Register */
#define SMU_AGCF4_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036934u)
/** Alias (User Manual Name) for SMU_AGCF4_1.
* To use register names with standard convension, please use SMU_AGCF4_1.
*/
#define SMU_AG4CF1 (SMU_AGCF4_1)

/** \brief 138, Alarm Configuration Register */
#define SMU_AGCF4_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036938u)
/** Alias (User Manual Name) for SMU_AGCF4_2.
* To use register names with standard convension, please use SMU_AGCF4_2.
*/
#define SMU_AG4CF2 (SMU_AGCF4_2)

/** \brief 13C, Alarm Configuration Register */
#define SMU_AGCF5_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003693Cu)
/** Alias (User Manual Name) for SMU_AGCF5_0.
* To use register names with standard convension, please use SMU_AGCF5_0.
*/
#define SMU_AG5CF0 (SMU_AGCF5_0)

/** \brief 140, Alarm Configuration Register */
#define SMU_AGCF5_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036940u)
/** Alias (User Manual Name) for SMU_AGCF5_1.
* To use register names with standard convension, please use SMU_AGCF5_1.
*/
#define SMU_AG5CF1 (SMU_AGCF5_1)

/** \brief 144, Alarm Configuration Register */
#define SMU_AGCF5_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036944u)
/** Alias (User Manual Name) for SMU_AGCF5_2.
* To use register names with standard convension, please use SMU_AGCF5_2.
*/
#define SMU_AG5CF2 (SMU_AGCF5_2)

/** \brief 148, Alarm Configuration Register */
#define SMU_AGCF6_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036948u)
/** Alias (User Manual Name) for SMU_AGCF6_0.
* To use register names with standard convension, please use SMU_AGCF6_0.
*/
#define SMU_AG6CF0 (SMU_AGCF6_0)

/** \brief 14C, Alarm Configuration Register */
#define SMU_AGCF6_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003694Cu)
/** Alias (User Manual Name) for SMU_AGCF6_1.
* To use register names with standard convension, please use SMU_AGCF6_1.
*/
#define SMU_AG6CF1 (SMU_AGCF6_1)

/** \brief 150, Alarm Configuration Register */
#define SMU_AGCF6_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036950u)
/** Alias (User Manual Name) for SMU_AGCF6_2.
* To use register names with standard convension, please use SMU_AGCF6_2.
*/
#define SMU_AG6CF2 (SMU_AGCF6_2)

/** \brief 154, Alarm Configuration Register */
#define SMU_AGCF7_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036954u)
/** Alias (User Manual Name) for SMU_AGCF7_0.
* To use register names with standard convension, please use SMU_AGCF7_0.
*/
#define SMU_AG7CF0 (SMU_AGCF7_0)

/** \brief 158, Alarm Configuration Register */
#define SMU_AGCF7_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036958u)
/** Alias (User Manual Name) for SMU_AGCF7_1.
* To use register names with standard convension, please use SMU_AGCF7_1.
*/
#define SMU_AG7CF1 (SMU_AGCF7_1)

/** \brief 15C, Alarm Configuration Register */
#define SMU_AGCF7_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003695Cu)
/** Alias (User Manual Name) for SMU_AGCF7_2.
* To use register names with standard convension, please use SMU_AGCF7_2.
*/
#define SMU_AG7CF2 (SMU_AGCF7_2)

/** \brief 160, Alarm Configuration Register */
#define SMU_AGCF8_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036960u)
/** Alias (User Manual Name) for SMU_AGCF8_0.
* To use register names with standard convension, please use SMU_AGCF8_0.
*/
#define SMU_AG8CF0 (SMU_AGCF8_0)

/** \brief 164, Alarm Configuration Register */
#define SMU_AGCF8_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036964u)
/** Alias (User Manual Name) for SMU_AGCF8_1.
* To use register names with standard convension, please use SMU_AGCF8_1.
*/
#define SMU_AG8CF1 (SMU_AGCF8_1)

/** \brief 168, Alarm Configuration Register */
#define SMU_AGCF8_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036968u)
/** Alias (User Manual Name) for SMU_AGCF8_2.
* To use register names with standard convension, please use SMU_AGCF8_2.
*/
#define SMU_AG8CF2 (SMU_AGCF8_2)

/** \brief 16C, Alarm Configuration Register */
#define SMU_AGCF9_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003696Cu)
/** Alias (User Manual Name) for SMU_AGCF9_0.
* To use register names with standard convension, please use SMU_AGCF9_0.
*/
#define SMU_AG9CF0 (SMU_AGCF9_0)

/** \brief 170, Alarm Configuration Register */
#define SMU_AGCF9_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036970u)
/** Alias (User Manual Name) for SMU_AGCF9_1.
* To use register names with standard convension, please use SMU_AGCF9_1.
*/
#define SMU_AG9CF1 (SMU_AGCF9_1)

/** \brief 174, Alarm Configuration Register */
#define SMU_AGCF9_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036974u)
/** Alias (User Manual Name) for SMU_AGCF9_2.
* To use register names with standard convension, please use SMU_AGCF9_2.
*/
#define SMU_AG9CF2 (SMU_AGCF9_2)

/** \brief 178, Alarm Configuration Register */
#define SMU_AGCF10_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036978u)
/** Alias (User Manual Name) for SMU_AGCF10_0.
* To use register names with standard convension, please use SMU_AGCF10_0.
*/
#define SMU_AG10CF0 (SMU_AGCF10_0)

/** \brief 17C, Alarm Configuration Register */
#define SMU_AGCF10_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003697Cu)
/** Alias (User Manual Name) for SMU_AGCF10_1.
* To use register names with standard convension, please use SMU_AGCF10_1.
*/
#define SMU_AG10CF1 (SMU_AGCF10_1)

/** \brief 180, Alarm Configuration Register */
#define SMU_AGCF10_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036980u)
/** Alias (User Manual Name) for SMU_AGCF10_2.
* To use register names with standard convension, please use SMU_AGCF10_2.
*/
#define SMU_AG10CF2 (SMU_AGCF10_2)

/** \brief 184, Alarm Configuration Register */
#define SMU_AGCF11_0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036984u)
/** Alias (User Manual Name) for SMU_AGCF11_0.
* To use register names with standard convension, please use SMU_AGCF11_0.
*/
#define SMU_AG11CF0 (SMU_AGCF11_0)

/** \brief 188, Alarm Configuration Register */
#define SMU_AGCF11_1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF0036988u)
/** Alias (User Manual Name) for SMU_AGCF11_1.
* To use register names with standard convension, please use SMU_AGCF11_1.
*/
#define SMU_AG11CF1 (SMU_AGCF11_1)

/** \brief 18C, Alarm Configuration Register */
#define SMU_AGCF11_2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGCF*)0xF003698Cu)
/** Alias (User Manual Name) for SMU_AGCF11_2.
* To use register names with standard convension, please use SMU_AGCF11_2.
*/
#define SMU_AG11CF2 (SMU_AGCF11_2)

/** \brief 190, SMU_core FSP Configuration Register */
#define SMU_AGFSP0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF0036990u)
/** Alias (User Manual Name) for SMU_AGFSP0.
* To use register names with standard convension, please use SMU_AGFSP0.
*/
#define SMU_AG0FSP (SMU_AGFSP0)

/** \brief 194, SMU_core FSP Configuration Register */
#define SMU_AGFSP1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF0036994u)
/** Alias (User Manual Name) for SMU_AGFSP1.
* To use register names with standard convension, please use SMU_AGFSP1.
*/
#define SMU_AG1FSP (SMU_AGFSP1)

/** \brief 198, SMU_core FSP Configuration Register */
#define SMU_AGFSP2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF0036998u)
/** Alias (User Manual Name) for SMU_AGFSP2.
* To use register names with standard convension, please use SMU_AGFSP2.
*/
#define SMU_AG2FSP (SMU_AGFSP2)

/** \brief 19C, SMU_core FSP Configuration Register */
#define SMU_AGFSP3 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF003699Cu)
/** Alias (User Manual Name) for SMU_AGFSP3.
* To use register names with standard convension, please use SMU_AGFSP3.
*/
#define SMU_AG3FSP (SMU_AGFSP3)

/** \brief 1A0, SMU_core FSP Configuration Register */
#define SMU_AGFSP4 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369A0u)
/** Alias (User Manual Name) for SMU_AGFSP4.
* To use register names with standard convension, please use SMU_AGFSP4.
*/
#define SMU_AG4FSP (SMU_AGFSP4)

/** \brief 1A4, SMU_core FSP Configuration Register */
#define SMU_AGFSP5 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369A4u)
/** Alias (User Manual Name) for SMU_AGFSP5.
* To use register names with standard convension, please use SMU_AGFSP5.
*/
#define SMU_AG5FSP (SMU_AGFSP5)

/** \brief 1A8, SMU_core FSP Configuration Register */
#define SMU_AGFSP6 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369A8u)
/** Alias (User Manual Name) for SMU_AGFSP6.
* To use register names with standard convension, please use SMU_AGFSP6.
*/
#define SMU_AG6FSP (SMU_AGFSP6)

/** \brief 1AC, SMU_core FSP Configuration Register */
#define SMU_AGFSP7 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369ACu)
/** Alias (User Manual Name) for SMU_AGFSP7.
* To use register names with standard convension, please use SMU_AGFSP7.
*/
#define SMU_AG7FSP (SMU_AGFSP7)

/** \brief 1B0, SMU_core FSP Configuration Register */
#define SMU_AGFSP8 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369B0u)
/** Alias (User Manual Name) for SMU_AGFSP8.
* To use register names with standard convension, please use SMU_AGFSP8.
*/
#define SMU_AG8FSP (SMU_AGFSP8)

/** \brief 1B4, SMU_core FSP Configuration Register */
#define SMU_AGFSP9 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369B4u)
/** Alias (User Manual Name) for SMU_AGFSP9.
* To use register names with standard convension, please use SMU_AGFSP9.
*/
#define SMU_AG9FSP (SMU_AGFSP9)

/** \brief 1B8, SMU_core FSP Configuration Register */
#define SMU_AGFSP10 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369B8u)
/** Alias (User Manual Name) for SMU_AGFSP10.
* To use register names with standard convension, please use SMU_AGFSP10.
*/
#define SMU_AG10FSP (SMU_AGFSP10)

/** \brief 1BC, SMU_core FSP Configuration Register */
#define SMU_AGFSP11 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AGFSP*)0xF00369BCu)
/** Alias (User Manual Name) for SMU_AGFSP11.
* To use register names with standard convension, please use SMU_AGFSP11.
*/
#define SMU_AG11FSP (SMU_AGFSP11)

/** \brief 1C0, Alarm Status Register */
#define SMU_AG0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369C0u)

/** \brief 1C4, Alarm Status Register */
#define SMU_AG1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369C4u)

/** \brief 1C8, Alarm Status Register */
#define SMU_AG2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369C8u)

/** \brief 1CC, Alarm Status Register */
#define SMU_AG3 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369CCu)

/** \brief 1D0, Alarm Status Register */
#define SMU_AG4 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369D0u)

/** \brief 1D4, Alarm Status Register */
#define SMU_AG5 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369D4u)

/** \brief 1D8, Alarm Status Register */
#define SMU_AG6 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369D8u)

/** \brief 1DC, Alarm Status Register */
#define SMU_AG7 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369DCu)

/** \brief 1E0, Alarm Status Register */
#define SMU_AG8 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369E0u)

/** \brief 1E4, Alarm Status Register */
#define SMU_AG9 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369E4u)

/** \brief 1E8, Alarm Status Register */
#define SMU_AG10 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369E8u)

/** \brief 1EC, Alarm Status Register */
#define SMU_AG11 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AG*)0xF00369ECu)

/** \brief 200, Alarm Debug Register */
#define SMU_AD0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A00u)

/** \brief 204, Alarm Debug Register */
#define SMU_AD1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A04u)

/** \brief 208, Alarm Debug Register */
#define SMU_AD2 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A08u)

/** \brief 20C, Alarm Debug Register */
#define SMU_AD3 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A0Cu)

/** \brief 210, Alarm Debug Register */
#define SMU_AD4 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A10u)

/** \brief 214, Alarm Debug Register */
#define SMU_AD5 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A14u)

/** \brief 218, Alarm Debug Register */
#define SMU_AD6 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A18u)

/** \brief 21C, Alarm Debug Register */
#define SMU_AD7 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A1Cu)

/** \brief 220, Alarm Debug Register */
#define SMU_AD8 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A20u)

/** \brief 224, Alarm Debug Register */
#define SMU_AD9 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A24u)

/** \brief 228, Alarm Debug Register */
#define SMU_AD10 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A28u)

/** \brief 22C, Alarm Debug Register */
#define SMU_AD11 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_AD*)0xF0036A2Cu)

/** \brief 300, Register Monitor Control */
#define SMU_RMCTL /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RMCTL*)0xF0036B00u)

/** \brief 304, Register Monitor Error Flags */
#define SMU_RMEF /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RMEF*)0xF0036B04u)

/** \brief 308, Register Monitor Self Test Status */
#define SMU_RMSTS /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_RMSTS*)0xF0036B08u)

/** \brief 7E8, OCDS Control and Status */
#define SMU_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_OCS*)0xF0036FE8u)

/** \brief 7F8, SMU_core Access Enable Register 1 */
#define SMU_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_ACCEN1*)0xF0036FF8u)

/** \brief 7FC, SMU_core Access Enable Register 0 */
#define SMU_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_SMU_ACCEN0*)0xF0036FFCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXSMU_REG_H */
