/**
 * \file IfxSpulckstp_bf.h
 * \brief
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: TC35XA_UM_V2.0.0.R0
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
 * \defgroup IfxSfr_Spulckstp_Registers_BitfieldsMask Bitfields mask and offset
 * \ingroup IfxSfr_Spulckstp_Registers
 * 
 */
#ifndef IFXSPULCKSTP_BF_H
#define IFXSPULCKSTP_BF_H 1

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Spulckstp_Registers_BitfieldsMask
 * \{  */
/** \brief Length for Ifx_SPULCKSTP_CLC_Bits.DISR */
#define IFX_SPULCKSTP_CLC_DISR_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_CLC_Bits.DISR */
#define IFX_SPULCKSTP_CLC_DISR_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_CLC_Bits.DISR */
#define IFX_SPULCKSTP_CLC_DISR_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_CLC_Bits.DISS */
#define IFX_SPULCKSTP_CLC_DISS_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_CLC_Bits.DISS */
#define IFX_SPULCKSTP_CLC_DISS_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_CLC_Bits.DISS */
#define IFX_SPULCKSTP_CLC_DISS_OFF (1u)

/** \brief Length for Ifx_SPULCKSTP_CLC_Bits.EDIS */
#define IFX_SPULCKSTP_CLC_EDIS_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_CLC_Bits.EDIS */
#define IFX_SPULCKSTP_CLC_EDIS_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_CLC_Bits.EDIS */
#define IFX_SPULCKSTP_CLC_EDIS_OFF (3u)

/** \brief Length for Ifx_SPULCKSTP_MODID_Bits.MOD_REV */
#define IFX_SPULCKSTP_MODID_MOD_REV_LEN (8u)

/** \brief Mask for Ifx_SPULCKSTP_MODID_Bits.MOD_REV */
#define IFX_SPULCKSTP_MODID_MOD_REV_MSK (0xffu)

/** \brief Offset for Ifx_SPULCKSTP_MODID_Bits.MOD_REV */
#define IFX_SPULCKSTP_MODID_MOD_REV_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_MODID_Bits.MOD_TYPE */
#define IFX_SPULCKSTP_MODID_MOD_TYPE_LEN (8u)

/** \brief Mask for Ifx_SPULCKSTP_MODID_Bits.MOD_TYPE */
#define IFX_SPULCKSTP_MODID_MOD_TYPE_MSK (0xffu)

/** \brief Offset for Ifx_SPULCKSTP_MODID_Bits.MOD_TYPE */
#define IFX_SPULCKSTP_MODID_MOD_TYPE_OFF (8u)

/** \brief Length for Ifx_SPULCKSTP_MODID_Bits.MOD_NUMBER */
#define IFX_SPULCKSTP_MODID_MOD_NUMBER_LEN (16u)

/** \brief Mask for Ifx_SPULCKSTP_MODID_Bits.MOD_NUMBER */
#define IFX_SPULCKSTP_MODID_MOD_NUMBER_MSK (0xffffu)

/** \brief Offset for Ifx_SPULCKSTP_MODID_Bits.MOD_NUMBER */
#define IFX_SPULCKSTP_MODID_MOD_NUMBER_OFF (16u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.LSEN0 */
#define IFX_SPULCKSTP_CTRL_LSEN0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.LSEN0 */
#define IFX_SPULCKSTP_CTRL_LSEN0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.LSEN0 */
#define IFX_SPULCKSTP_CTRL_LSEN0_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.LSEN1 */
#define IFX_SPULCKSTP_CTRL_LSEN1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.LSEN1 */
#define IFX_SPULCKSTP_CTRL_LSEN1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.LSEN1 */
#define IFX_SPULCKSTP_CTRL_LSEN1_OFF (2u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.LSEN2 */
#define IFX_SPULCKSTP_CTRL_LSEN2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.LSEN2 */
#define IFX_SPULCKSTP_CTRL_LSEN2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.LSEN2 */
#define IFX_SPULCKSTP_CTRL_LSEN2_OFF (4u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.LSEN3 */
#define IFX_SPULCKSTP_CTRL_LSEN3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.LSEN3 */
#define IFX_SPULCKSTP_CTRL_LSEN3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.LSEN3 */
#define IFX_SPULCKSTP_CTRL_LSEN3_OFF (6u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.ERRDIS */
#define IFX_SPULCKSTP_CTRL_ERRDIS_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.ERRDIS */
#define IFX_SPULCKSTP_CTRL_ERRDIS_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.ERRDIS */
#define IFX_SPULCKSTP_CTRL_ERRDIS_OFF (16u)

/** \brief Length for Ifx_SPULCKSTP_CTRL_Bits.MS */
#define IFX_SPULCKSTP_CTRL_MS_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_CTRL_Bits.MS */
#define IFX_SPULCKSTP_CTRL_MS_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_CTRL_Bits.MS */
#define IFX_SPULCKSTP_CTRL_MS_OFF (18u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCFAIL0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCFAIL0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCFAIL0_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCFAIL1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCFAIL1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCFAIL1_OFF (2u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCFAIL2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCFAIL2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCFAIL2_OFF (4u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCFAIL3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCFAIL3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCFAIL3_OFF (6u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL0 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL0_OFF (16u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL1 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL1_OFF (18u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL2 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL2_OFF (20u)

/** \brief Length for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERROR_Bits.LCRFAIL3 */
#define IFX_SPULCKSTP_ERROR_LCRFAIL3_OFF (22u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.CLR0 */
#define IFX_SPULCKSTP_ERRCLR_CLR0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.CLR0 */
#define IFX_SPULCKSTP_ERRCLR_CLR0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.CLR0 */
#define IFX_SPULCKSTP_ERRCLR_CLR0_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.CLR1 */
#define IFX_SPULCKSTP_ERRCLR_CLR1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.CLR1 */
#define IFX_SPULCKSTP_ERRCLR_CLR1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.CLR1 */
#define IFX_SPULCKSTP_ERRCLR_CLR1_OFF (2u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.CLR2 */
#define IFX_SPULCKSTP_ERRCLR_CLR2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.CLR2 */
#define IFX_SPULCKSTP_ERRCLR_CLR2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.CLR2 */
#define IFX_SPULCKSTP_ERRCLR_CLR2_OFF (4u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.CLR3 */
#define IFX_SPULCKSTP_ERRCLR_CLR3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.CLR3 */
#define IFX_SPULCKSTP_ERRCLR_CLR3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.CLR3 */
#define IFX_SPULCKSTP_ERRCLR_CLR3_OFF (6u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR0 */
#define IFX_SPULCKSTP_ERRCLR_RCLR0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR0 */
#define IFX_SPULCKSTP_ERRCLR_RCLR0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR0 */
#define IFX_SPULCKSTP_ERRCLR_RCLR0_OFF (16u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR1 */
#define IFX_SPULCKSTP_ERRCLR_RCLR1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR1 */
#define IFX_SPULCKSTP_ERRCLR_RCLR1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR1 */
#define IFX_SPULCKSTP_ERRCLR_RCLR1_OFF (18u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR2 */
#define IFX_SPULCKSTP_ERRCLR_RCLR2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR2 */
#define IFX_SPULCKSTP_ERRCLR_RCLR2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR2 */
#define IFX_SPULCKSTP_ERRCLR_RCLR2_OFF (20u)

/** \brief Length for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR3 */
#define IFX_SPULCKSTP_ERRCLR_RCLR3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR3 */
#define IFX_SPULCKSTP_ERRCLR_RCLR3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_ERRCLR_Bits.RCLR3 */
#define IFX_SPULCKSTP_ERRCLR_RCLR3_OFF (22u)

/** \brief Length for Ifx_SPULCKSTP_TEST_Bits.LSTST0 */
#define IFX_SPULCKSTP_TEST_LSTST0_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_TEST_Bits.LSTST0 */
#define IFX_SPULCKSTP_TEST_LSTST0_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_TEST_Bits.LSTST0 */
#define IFX_SPULCKSTP_TEST_LSTST0_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_TEST_Bits.LSTST1 */
#define IFX_SPULCKSTP_TEST_LSTST1_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_TEST_Bits.LSTST1 */
#define IFX_SPULCKSTP_TEST_LSTST1_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_TEST_Bits.LSTST1 */
#define IFX_SPULCKSTP_TEST_LSTST1_OFF (2u)

/** \brief Length for Ifx_SPULCKSTP_TEST_Bits.LSTST2 */
#define IFX_SPULCKSTP_TEST_LSTST2_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_TEST_Bits.LSTST2 */
#define IFX_SPULCKSTP_TEST_LSTST2_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_TEST_Bits.LSTST2 */
#define IFX_SPULCKSTP_TEST_LSTST2_OFF (4u)

/** \brief Length for Ifx_SPULCKSTP_TEST_Bits.LSTST3 */
#define IFX_SPULCKSTP_TEST_LSTST3_LEN (2u)

/** \brief Mask for Ifx_SPULCKSTP_TEST_Bits.LSTST3 */
#define IFX_SPULCKSTP_TEST_LSTST3_MSK (0x3u)

/** \brief Offset for Ifx_SPULCKSTP_TEST_Bits.LSTST3 */
#define IFX_SPULCKSTP_TEST_LSTST3_OFF (6u)

/** \brief Length for Ifx_SPULCKSTP_SPUCTRL_Bits.TRIGGER */
#define IFX_SPULCKSTP_SPUCTRL_TRIGGER_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_SPUCTRL_Bits.TRIGGER */
#define IFX_SPULCKSTP_SPUCTRL_TRIGGER_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_SPUCTRL_Bits.TRIGGER */
#define IFX_SPULCKSTP_SPUCTRL_TRIGGER_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN0 */
#define IFX_SPULCKSTP_ACCEN0_EN0_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN0 */
#define IFX_SPULCKSTP_ACCEN0_EN0_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN0 */
#define IFX_SPULCKSTP_ACCEN0_EN0_OFF (0u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN1 */
#define IFX_SPULCKSTP_ACCEN0_EN1_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN1 */
#define IFX_SPULCKSTP_ACCEN0_EN1_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN1 */
#define IFX_SPULCKSTP_ACCEN0_EN1_OFF (1u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN2 */
#define IFX_SPULCKSTP_ACCEN0_EN2_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN2 */
#define IFX_SPULCKSTP_ACCEN0_EN2_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN2 */
#define IFX_SPULCKSTP_ACCEN0_EN2_OFF (2u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN3 */
#define IFX_SPULCKSTP_ACCEN0_EN3_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN3 */
#define IFX_SPULCKSTP_ACCEN0_EN3_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN3 */
#define IFX_SPULCKSTP_ACCEN0_EN3_OFF (3u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN4 */
#define IFX_SPULCKSTP_ACCEN0_EN4_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN4 */
#define IFX_SPULCKSTP_ACCEN0_EN4_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN4 */
#define IFX_SPULCKSTP_ACCEN0_EN4_OFF (4u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN5 */
#define IFX_SPULCKSTP_ACCEN0_EN5_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN5 */
#define IFX_SPULCKSTP_ACCEN0_EN5_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN5 */
#define IFX_SPULCKSTP_ACCEN0_EN5_OFF (5u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN6 */
#define IFX_SPULCKSTP_ACCEN0_EN6_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN6 */
#define IFX_SPULCKSTP_ACCEN0_EN6_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN6 */
#define IFX_SPULCKSTP_ACCEN0_EN6_OFF (6u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN7 */
#define IFX_SPULCKSTP_ACCEN0_EN7_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN7 */
#define IFX_SPULCKSTP_ACCEN0_EN7_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN7 */
#define IFX_SPULCKSTP_ACCEN0_EN7_OFF (7u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN8 */
#define IFX_SPULCKSTP_ACCEN0_EN8_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN8 */
#define IFX_SPULCKSTP_ACCEN0_EN8_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN8 */
#define IFX_SPULCKSTP_ACCEN0_EN8_OFF (8u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN9 */
#define IFX_SPULCKSTP_ACCEN0_EN9_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN9 */
#define IFX_SPULCKSTP_ACCEN0_EN9_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN9 */
#define IFX_SPULCKSTP_ACCEN0_EN9_OFF (9u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN10 */
#define IFX_SPULCKSTP_ACCEN0_EN10_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN10 */
#define IFX_SPULCKSTP_ACCEN0_EN10_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN10 */
#define IFX_SPULCKSTP_ACCEN0_EN10_OFF (10u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN11 */
#define IFX_SPULCKSTP_ACCEN0_EN11_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN11 */
#define IFX_SPULCKSTP_ACCEN0_EN11_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN11 */
#define IFX_SPULCKSTP_ACCEN0_EN11_OFF (11u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN12 */
#define IFX_SPULCKSTP_ACCEN0_EN12_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN12 */
#define IFX_SPULCKSTP_ACCEN0_EN12_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN12 */
#define IFX_SPULCKSTP_ACCEN0_EN12_OFF (12u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN13 */
#define IFX_SPULCKSTP_ACCEN0_EN13_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN13 */
#define IFX_SPULCKSTP_ACCEN0_EN13_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN13 */
#define IFX_SPULCKSTP_ACCEN0_EN13_OFF (13u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN14 */
#define IFX_SPULCKSTP_ACCEN0_EN14_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN14 */
#define IFX_SPULCKSTP_ACCEN0_EN14_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN14 */
#define IFX_SPULCKSTP_ACCEN0_EN14_OFF (14u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN15 */
#define IFX_SPULCKSTP_ACCEN0_EN15_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN15 */
#define IFX_SPULCKSTP_ACCEN0_EN15_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN15 */
#define IFX_SPULCKSTP_ACCEN0_EN15_OFF (15u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN16 */
#define IFX_SPULCKSTP_ACCEN0_EN16_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN16 */
#define IFX_SPULCKSTP_ACCEN0_EN16_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN16 */
#define IFX_SPULCKSTP_ACCEN0_EN16_OFF (16u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN17 */
#define IFX_SPULCKSTP_ACCEN0_EN17_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN17 */
#define IFX_SPULCKSTP_ACCEN0_EN17_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN17 */
#define IFX_SPULCKSTP_ACCEN0_EN17_OFF (17u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN18 */
#define IFX_SPULCKSTP_ACCEN0_EN18_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN18 */
#define IFX_SPULCKSTP_ACCEN0_EN18_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN18 */
#define IFX_SPULCKSTP_ACCEN0_EN18_OFF (18u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN19 */
#define IFX_SPULCKSTP_ACCEN0_EN19_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN19 */
#define IFX_SPULCKSTP_ACCEN0_EN19_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN19 */
#define IFX_SPULCKSTP_ACCEN0_EN19_OFF (19u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN20 */
#define IFX_SPULCKSTP_ACCEN0_EN20_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN20 */
#define IFX_SPULCKSTP_ACCEN0_EN20_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN20 */
#define IFX_SPULCKSTP_ACCEN0_EN20_OFF (20u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN21 */
#define IFX_SPULCKSTP_ACCEN0_EN21_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN21 */
#define IFX_SPULCKSTP_ACCEN0_EN21_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN21 */
#define IFX_SPULCKSTP_ACCEN0_EN21_OFF (21u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN22 */
#define IFX_SPULCKSTP_ACCEN0_EN22_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN22 */
#define IFX_SPULCKSTP_ACCEN0_EN22_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN22 */
#define IFX_SPULCKSTP_ACCEN0_EN22_OFF (22u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN23 */
#define IFX_SPULCKSTP_ACCEN0_EN23_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN23 */
#define IFX_SPULCKSTP_ACCEN0_EN23_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN23 */
#define IFX_SPULCKSTP_ACCEN0_EN23_OFF (23u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN24 */
#define IFX_SPULCKSTP_ACCEN0_EN24_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN24 */
#define IFX_SPULCKSTP_ACCEN0_EN24_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN24 */
#define IFX_SPULCKSTP_ACCEN0_EN24_OFF (24u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN25 */
#define IFX_SPULCKSTP_ACCEN0_EN25_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN25 */
#define IFX_SPULCKSTP_ACCEN0_EN25_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN25 */
#define IFX_SPULCKSTP_ACCEN0_EN25_OFF (25u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN26 */
#define IFX_SPULCKSTP_ACCEN0_EN26_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN26 */
#define IFX_SPULCKSTP_ACCEN0_EN26_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN26 */
#define IFX_SPULCKSTP_ACCEN0_EN26_OFF (26u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN27 */
#define IFX_SPULCKSTP_ACCEN0_EN27_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN27 */
#define IFX_SPULCKSTP_ACCEN0_EN27_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN27 */
#define IFX_SPULCKSTP_ACCEN0_EN27_OFF (27u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN28 */
#define IFX_SPULCKSTP_ACCEN0_EN28_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN28 */
#define IFX_SPULCKSTP_ACCEN0_EN28_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN28 */
#define IFX_SPULCKSTP_ACCEN0_EN28_OFF (28u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN29 */
#define IFX_SPULCKSTP_ACCEN0_EN29_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN29 */
#define IFX_SPULCKSTP_ACCEN0_EN29_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN29 */
#define IFX_SPULCKSTP_ACCEN0_EN29_OFF (29u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN30 */
#define IFX_SPULCKSTP_ACCEN0_EN30_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN30 */
#define IFX_SPULCKSTP_ACCEN0_EN30_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN30 */
#define IFX_SPULCKSTP_ACCEN0_EN30_OFF (30u)

/** \brief Length for Ifx_SPULCKSTP_ACCEN0_Bits.EN31 */
#define IFX_SPULCKSTP_ACCEN0_EN31_LEN (1u)

/** \brief Mask for Ifx_SPULCKSTP_ACCEN0_Bits.EN31 */
#define IFX_SPULCKSTP_ACCEN0_EN31_MSK (0x1u)

/** \brief Offset for Ifx_SPULCKSTP_ACCEN0_Bits.EN31 */
#define IFX_SPULCKSTP_ACCEN0_EN31_OFF (31u)

/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXSPULCKSTP_BF_H */
