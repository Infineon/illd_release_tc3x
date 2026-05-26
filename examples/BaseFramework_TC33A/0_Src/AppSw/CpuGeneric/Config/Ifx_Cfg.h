/**
 * \file Ifx_Cfg.h
 * \brief Project configuration file.
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

#ifndef IFX_CFG_H
#define IFX_CFG_H 1
/******************************************************************************/

/*______________________________________________________________________________
** Configuration for IfxScu_cfg.h
**____________________________________________________________________________*/
#define IFX_CFG_SCU_XTAL_FREQUENCY		(20000000)	/**< default supported: 40000000, 25000000, 20000000, 16000000 */

/* PLL,PLL1 and PLL2 frequency are defined in IfxScu_Cfg.h. To change the default frequency, uncomment below lines
 * and choose one of the supported values.
 */
// #define IFX_CFG_SCU_PLL_FREQUENCY		(300000000) /**< default supported: 300000000, 240000000, 200000000, 160000000, 133000000, 80000000 */
// #define IFX_CFG_SCU_PLL1_FREQUENCY		(320000000) /**< default supported: 320000000, 160000000 */
// #define IFX_CFG_SCU_PLL2_FREQUENCY		(200000000) /**< default supported: 200000000 */

/*______________________________________________________________________________
** Configuration for Software managed interrupt
**____________________________________________________________________________*/

//#define IFX_USE_SW_MANAGED_INT

/*______________________________________________________________________________
** Configuration for Trap Hook Functions' Extensions
**____________________________________________________________________________*/

//#define IFX_CFG_EXTEND_TRAP_HOOKS

//#define IFX_CFG_SSW_RETURN_FROM_MAIN

/*______________________________________________________________________________
** Configuration for Device and Pin package
**____________________________________________________________________________*/

#define DEVICE_TC33X			1

#define IFX_PIN_PACKAGE_516		1 /**< Pin package supported: IFX_PIN_PACKAGE_516, IFX_PIN_PACKAGE_LFBGA180,
								   * IFX_PIN_PACKAGE_LFBGA292, IFX_PIN_PACKAGE_TQFP80, IFX_PIN_PACKAGE_TQFP100
								   * IFX_PIN_PACKAGE_TQFP144 
								   */
										   
/******************************************************************************/

#endif /* IFX_CFG_H */
