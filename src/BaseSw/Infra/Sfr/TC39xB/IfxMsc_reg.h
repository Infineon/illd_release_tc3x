/**
 * \file IfxMsc_reg.h
 * \brief
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC39XB_UM_V2.0.0.R0
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
 * \defgroup IfxSfr_Msc_Registers_Cfg Msc address
 * \ingroup IfxSfr_Msc_Registers
 * 
 * \defgroup IfxSfr_Msc_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Msc_Registers_Cfg
 *
 * \defgroup IfxSfr_Msc_Registers_Cfg_Msc0 2-MSC0
 * \ingroup IfxSfr_Msc_Registers_Cfg
 *
 * \defgroup IfxSfr_Msc_Registers_Cfg_Msc1 2-MSC1
 * \ingroup IfxSfr_Msc_Registers_Cfg
 *
 * \defgroup IfxSfr_Msc_Registers_Cfg_Msc2 2-MSC2
 * \ingroup IfxSfr_Msc_Registers_Cfg
 *
 * \defgroup IfxSfr_Msc_Registers_Cfg_Msc3 2-MSC3
 * \ingroup IfxSfr_Msc_Registers_Cfg
 *
 *
 */
#ifndef IFXMSC_REG_H
#define IFXMSC_REG_H 1
/******************************************************************************/
#include "IfxMsc_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Msc_Registers_Cfg_BaseAddress
 * \{  */

/** \brief MSC object */
#define MODULE_MSC0 /*lint --e(923, 9078)*/ ((*(Ifx_MSC*)0xF0002600u))
#define MODULE_MSC1 /*lint --e(923, 9078)*/ ((*(Ifx_MSC*)0xF0002700u))
#define MODULE_MSC2 /*lint --e(923, 9078)*/ ((*(Ifx_MSC*)0xF0002800u))
#define MODULE_MSC3 /*lint --e(923, 9078)*/ ((*(Ifx_MSC*)0xF0002900u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Msc_Registers_Cfg_Msc0
 * \{  */
/** \brief 0, Clock Control Register */
#define MSC0_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_CLC*)0xF0002600u)

/** \brief 8, Module Identification Register */
#define MSC0_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ID*)0xF0002608u)

/** \brief C, Fractional Divider Register */
#define MSC0_FDR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_FDR*)0xF000260Cu)

/** \brief 10, Upstream Status Register */
#define MSC0_USR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USR*)0xF0002610u)

/** \brief 14, Downstream Control Register */
#define MSC0_DSC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSC*)0xF0002614u)

/** \brief 18, Downstream Status Register */
#define MSC0_DSS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSS*)0xF0002618u)

/** \brief 1C, Downstream Data Register */
#define MSC0_DD /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DD*)0xF000261Cu)

/** \brief 20, Downstream Command Register */
#define MSC0_DC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DC*)0xF0002620u)

/** \brief 24, Downstream Select Data Source Low Register */
#define MSC0_DSDSL /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSL*)0xF0002624u)

/** \brief 28, Downstream Select Data Source High Register */
#define MSC0_DSDSH /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSH*)0xF0002628u)

/** \brief 2C, Emergency Stop Register */
#define MSC0_ESR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESR*)0xF000262Cu)

/** \brief 30, Upstream Data Register 0 */
#define MSC0_UD0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002630u)

/** \brief 34, Upstream Data Register 1 */
#define MSC0_UD1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002634u)

/** \brief 38, Upstream Data Register 2 */
#define MSC0_UD2 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002638u)

/** \brief 3C, Upstream Data Register 3 */
#define MSC0_UD3 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF000263Cu)

/** \brief 40, Interrupt Control Register */
#define MSC0_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ICR*)0xF0002640u)

/** \brief 44, Interrupt Status Register */
#define MSC0_ISR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISR*)0xF0002644u)

/** \brief 48, Interrupt Set Clear Register */
#define MSC0_ISC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISC*)0xF0002648u)

/** \brief 4C, Output Control Register */
#define MSC0_OCR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCR*)0xF000264Cu)

/** \brief 58, Downstream Control Enhanced Register 1 */
#define MSC0_DSCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSCE*)0xF0002658u)

/** \brief 5C, Upstream Control Enhanced Register 1 */
#define MSC0_USCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USCE*)0xF000265Cu)

/** \brief 60, Downstream Select Data Source Low Extension Register */
#define MSC0_DSDSLE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSLE*)0xF0002660u)

/** \brief 64, Downstream Select Data Source High Extension Register */
#define MSC0_DSDSHE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSHE*)0xF0002664u)

/** \brief 68, Emergency Stop Extension Register */
#define MSC0_ESRE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESRE*)0xF0002668u)

/** \brief 6C, Downstream Timing Extension Register */
#define MSC0_DSTE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSTE*)0xF000266Cu)

/** \brief 70, Downstream Data Mirror Register */
#define MSC0_DDM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDM*)0xF0002670u)

/** \brief 74, Downstream Data Extension Register */
#define MSC0_DDE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDE*)0xF0002674u)

/** \brief 78, Downstream Command Mirror Register */
#define MSC0_DCM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCM*)0xF0002678u)

/** \brief 7C, Downstream Command Extension Register */
#define MSC0_DCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCE*)0xF000267Cu)

/** \brief 80, Asynchronous Block Configuration Register */
#define MSC0_ABC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ABC*)0xF0002680u)

/** \brief E8, OCDS Control and Status */
#define MSC0_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCS*)0xF00026E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define MSC0_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRSTCLR*)0xF00026ECu)

/** \brief F0, Kernel Reset Register 1 */
#define MSC0_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST1*)0xF00026F0u)

/** \brief F4, Kernel Reset Register 0 */
#define MSC0_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST0*)0xF00026F4u)

/** \brief F8, Access Enable Register 1 */
#define MSC0_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN1*)0xF00026F8u)

/** \brief FC, Access Enable Register 0 */
#define MSC0_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN0*)0xF00026FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Msc_Registers_Cfg_Msc1
 * \{  */
/** \brief 0, Clock Control Register */
#define MSC1_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_CLC*)0xF0002700u)

/** \brief 8, Module Identification Register */
#define MSC1_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ID*)0xF0002708u)

/** \brief C, Fractional Divider Register */
#define MSC1_FDR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_FDR*)0xF000270Cu)

/** \brief 10, Upstream Status Register */
#define MSC1_USR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USR*)0xF0002710u)

/** \brief 14, Downstream Control Register */
#define MSC1_DSC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSC*)0xF0002714u)

/** \brief 18, Downstream Status Register */
#define MSC1_DSS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSS*)0xF0002718u)

/** \brief 1C, Downstream Data Register */
#define MSC1_DD /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DD*)0xF000271Cu)

/** \brief 20, Downstream Command Register */
#define MSC1_DC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DC*)0xF0002720u)

/** \brief 24, Downstream Select Data Source Low Register */
#define MSC1_DSDSL /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSL*)0xF0002724u)

/** \brief 28, Downstream Select Data Source High Register */
#define MSC1_DSDSH /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSH*)0xF0002728u)

/** \brief 2C, Emergency Stop Register */
#define MSC1_ESR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESR*)0xF000272Cu)

/** \brief 30, Upstream Data Register 0 */
#define MSC1_UD0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002730u)

/** \brief 34, Upstream Data Register 1 */
#define MSC1_UD1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002734u)

/** \brief 38, Upstream Data Register 2 */
#define MSC1_UD2 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002738u)

/** \brief 3C, Upstream Data Register 3 */
#define MSC1_UD3 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF000273Cu)

/** \brief 40, Interrupt Control Register */
#define MSC1_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ICR*)0xF0002740u)

/** \brief 44, Interrupt Status Register */
#define MSC1_ISR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISR*)0xF0002744u)

/** \brief 48, Interrupt Set Clear Register */
#define MSC1_ISC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISC*)0xF0002748u)

/** \brief 4C, Output Control Register */
#define MSC1_OCR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCR*)0xF000274Cu)

/** \brief 58, Downstream Control Enhanced Register 1 */
#define MSC1_DSCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSCE*)0xF0002758u)

/** \brief 5C, Upstream Control Enhanced Register 1 */
#define MSC1_USCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USCE*)0xF000275Cu)

/** \brief 60, Downstream Select Data Source Low Extension Register */
#define MSC1_DSDSLE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSLE*)0xF0002760u)

/** \brief 64, Downstream Select Data Source High Extension Register */
#define MSC1_DSDSHE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSHE*)0xF0002764u)

/** \brief 68, Emergency Stop Extension Register */
#define MSC1_ESRE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESRE*)0xF0002768u)

/** \brief 6C, Downstream Timing Extension Register */
#define MSC1_DSTE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSTE*)0xF000276Cu)

/** \brief 70, Downstream Data Mirror Register */
#define MSC1_DDM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDM*)0xF0002770u)

/** \brief 74, Downstream Data Extension Register */
#define MSC1_DDE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDE*)0xF0002774u)

/** \brief 78, Downstream Command Mirror Register */
#define MSC1_DCM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCM*)0xF0002778u)

/** \brief 7C, Downstream Command Extension Register */
#define MSC1_DCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCE*)0xF000277Cu)

/** \brief 80, Asynchronous Block Configuration Register */
#define MSC1_ABC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ABC*)0xF0002780u)

/** \brief E8, OCDS Control and Status */
#define MSC1_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCS*)0xF00027E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define MSC1_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRSTCLR*)0xF00027ECu)

/** \brief F0, Kernel Reset Register 1 */
#define MSC1_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST1*)0xF00027F0u)

/** \brief F4, Kernel Reset Register 0 */
#define MSC1_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST0*)0xF00027F4u)

/** \brief F8, Access Enable Register 1 */
#define MSC1_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN1*)0xF00027F8u)

/** \brief FC, Access Enable Register 0 */
#define MSC1_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN0*)0xF00027FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Msc_Registers_Cfg_Msc2
 * \{  */
/** \brief 0, Clock Control Register */
#define MSC2_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_CLC*)0xF0002800u)

/** \brief 8, Module Identification Register */
#define MSC2_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ID*)0xF0002808u)

/** \brief C, Fractional Divider Register */
#define MSC2_FDR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_FDR*)0xF000280Cu)

/** \brief 10, Upstream Status Register */
#define MSC2_USR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USR*)0xF0002810u)

/** \brief 14, Downstream Control Register */
#define MSC2_DSC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSC*)0xF0002814u)

/** \brief 18, Downstream Status Register */
#define MSC2_DSS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSS*)0xF0002818u)

/** \brief 1C, Downstream Data Register */
#define MSC2_DD /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DD*)0xF000281Cu)

/** \brief 20, Downstream Command Register */
#define MSC2_DC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DC*)0xF0002820u)

/** \brief 24, Downstream Select Data Source Low Register */
#define MSC2_DSDSL /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSL*)0xF0002824u)

/** \brief 28, Downstream Select Data Source High Register */
#define MSC2_DSDSH /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSH*)0xF0002828u)

/** \brief 2C, Emergency Stop Register */
#define MSC2_ESR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESR*)0xF000282Cu)

/** \brief 30, Upstream Data Register 0 */
#define MSC2_UD0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002830u)

/** \brief 34, Upstream Data Register 1 */
#define MSC2_UD1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002834u)

/** \brief 38, Upstream Data Register 2 */
#define MSC2_UD2 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002838u)

/** \brief 3C, Upstream Data Register 3 */
#define MSC2_UD3 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF000283Cu)

/** \brief 40, Interrupt Control Register */
#define MSC2_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ICR*)0xF0002840u)

/** \brief 44, Interrupt Status Register */
#define MSC2_ISR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISR*)0xF0002844u)

/** \brief 48, Interrupt Set Clear Register */
#define MSC2_ISC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISC*)0xF0002848u)

/** \brief 4C, Output Control Register */
#define MSC2_OCR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCR*)0xF000284Cu)

/** \brief 58, Downstream Control Enhanced Register 1 */
#define MSC2_DSCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSCE*)0xF0002858u)

/** \brief 5C, Upstream Control Enhanced Register 1 */
#define MSC2_USCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USCE*)0xF000285Cu)

/** \brief 60, Downstream Select Data Source Low Extension Register */
#define MSC2_DSDSLE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSLE*)0xF0002860u)

/** \brief 64, Downstream Select Data Source High Extension Register */
#define MSC2_DSDSHE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSHE*)0xF0002864u)

/** \brief 68, Emergency Stop Extension Register */
#define MSC2_ESRE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESRE*)0xF0002868u)

/** \brief 6C, Downstream Timing Extension Register */
#define MSC2_DSTE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSTE*)0xF000286Cu)

/** \brief 70, Downstream Data Mirror Register */
#define MSC2_DDM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDM*)0xF0002870u)

/** \brief 74, Downstream Data Extension Register */
#define MSC2_DDE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDE*)0xF0002874u)

/** \brief 78, Downstream Command Mirror Register */
#define MSC2_DCM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCM*)0xF0002878u)

/** \brief 7C, Downstream Command Extension Register */
#define MSC2_DCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCE*)0xF000287Cu)

/** \brief 80, Asynchronous Block Configuration Register */
#define MSC2_ABC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ABC*)0xF0002880u)

/** \brief E8, OCDS Control and Status */
#define MSC2_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCS*)0xF00028E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define MSC2_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRSTCLR*)0xF00028ECu)

/** \brief F0, Kernel Reset Register 1 */
#define MSC2_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST1*)0xF00028F0u)

/** \brief F4, Kernel Reset Register 0 */
#define MSC2_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST0*)0xF00028F4u)

/** \brief F8, Access Enable Register 1 */
#define MSC2_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN1*)0xF00028F8u)

/** \brief FC, Access Enable Register 0 */
#define MSC2_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN0*)0xF00028FCu)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Msc_Registers_Cfg_Msc3
 * \{  */
/** \brief 0, Clock Control Register */
#define MSC3_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_CLC*)0xF0002900u)

/** \brief 8, Module Identification Register */
#define MSC3_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ID*)0xF0002908u)

/** \brief C, Fractional Divider Register */
#define MSC3_FDR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_FDR*)0xF000290Cu)

/** \brief 10, Upstream Status Register */
#define MSC3_USR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USR*)0xF0002910u)

/** \brief 14, Downstream Control Register */
#define MSC3_DSC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSC*)0xF0002914u)

/** \brief 18, Downstream Status Register */
#define MSC3_DSS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSS*)0xF0002918u)

/** \brief 1C, Downstream Data Register */
#define MSC3_DD /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DD*)0xF000291Cu)

/** \brief 20, Downstream Command Register */
#define MSC3_DC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DC*)0xF0002920u)

/** \brief 24, Downstream Select Data Source Low Register */
#define MSC3_DSDSL /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSL*)0xF0002924u)

/** \brief 28, Downstream Select Data Source High Register */
#define MSC3_DSDSH /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSH*)0xF0002928u)

/** \brief 2C, Emergency Stop Register */
#define MSC3_ESR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESR*)0xF000292Cu)

/** \brief 30, Upstream Data Register 0 */
#define MSC3_UD0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002930u)

/** \brief 34, Upstream Data Register 1 */
#define MSC3_UD1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002934u)

/** \brief 38, Upstream Data Register 2 */
#define MSC3_UD2 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF0002938u)

/** \brief 3C, Upstream Data Register 3 */
#define MSC3_UD3 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_UD*)0xF000293Cu)

/** \brief 40, Interrupt Control Register */
#define MSC3_ICR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ICR*)0xF0002940u)

/** \brief 44, Interrupt Status Register */
#define MSC3_ISR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISR*)0xF0002944u)

/** \brief 48, Interrupt Set Clear Register */
#define MSC3_ISC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ISC*)0xF0002948u)

/** \brief 4C, Output Control Register */
#define MSC3_OCR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCR*)0xF000294Cu)

/** \brief 58, Downstream Control Enhanced Register 1 */
#define MSC3_DSCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSCE*)0xF0002958u)

/** \brief 5C, Upstream Control Enhanced Register 1 */
#define MSC3_USCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_USCE*)0xF000295Cu)

/** \brief 60, Downstream Select Data Source Low Extension Register */
#define MSC3_DSDSLE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSLE*)0xF0002960u)

/** \brief 64, Downstream Select Data Source High Extension Register */
#define MSC3_DSDSHE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSDSHE*)0xF0002964u)

/** \brief 68, Emergency Stop Extension Register */
#define MSC3_ESRE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ESRE*)0xF0002968u)

/** \brief 6C, Downstream Timing Extension Register */
#define MSC3_DSTE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DSTE*)0xF000296Cu)

/** \brief 70, Downstream Data Mirror Register */
#define MSC3_DDM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDM*)0xF0002970u)

/** \brief 74, Downstream Data Extension Register */
#define MSC3_DDE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DDE*)0xF0002974u)

/** \brief 78, Downstream Command Mirror Register */
#define MSC3_DCM /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCM*)0xF0002978u)

/** \brief 7C, Downstream Command Extension Register */
#define MSC3_DCE /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_DCE*)0xF000297Cu)

/** \brief 80, Asynchronous Block Configuration Register */
#define MSC3_ABC /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ABC*)0xF0002980u)

/** \brief E8, OCDS Control and Status */
#define MSC3_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_OCS*)0xF00029E8u)

/** \brief EC, Kernel Reset Status Clear Register */
#define MSC3_KRSTCLR /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRSTCLR*)0xF00029ECu)

/** \brief F0, Kernel Reset Register 1 */
#define MSC3_KRST1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST1*)0xF00029F0u)

/** \brief F4, Kernel Reset Register 0 */
#define MSC3_KRST0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_KRST0*)0xF00029F4u)

/** \brief F8, Access Enable Register 1 */
#define MSC3_ACCEN1 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN1*)0xF00029F8u)

/** \brief FC, Access Enable Register 0 */
#define MSC3_ACCEN0 /*lint --e(923, 9078)*/ (*(volatile Ifx_MSC_ACCEN0*)0xF00029FCu)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXMSC_REG_H */
