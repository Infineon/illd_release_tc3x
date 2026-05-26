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
#define IFX_CFG_SCU_XTAL_FREQUENCY		(20000000)	/**< */
#define IFX_CFG_SCU_PLL_FREQUENCY		(300000000) /**< */

/*______________________________________________________________________________
** Configuration for Software managed interrupt
**____________________________________________________________________________*/

//#define IFX_USE_SW_MANAGED_INT

/*______________________________________________________________________________
** Configuration for Trap Hook Functions' Extensions
**____________________________________________________________________________*/

//#define IFX_CFG_EXTEND_TRAP_HOOKS

/*______________________________________________________________________________
** Configuration CPU enable / disable
**____________________________________________________________________________*/

#define IFX_CFG_SSW_ENABLE_TRICORE0   (1U)
#define IFX_CFG_SSW_ENABLE_TRICORE1   (1U)
#define IFX_CFG_SSW_ENABLE_TRICORE2   (1U)
#define IFX_CFG_SSW_ENABLE_TRICORE3   (1U)
#define IFX_CFG_SSW_ENABLE_TRICORE4   (1U)
#define IFX_CFG_SSW_ENABLE_TRICORE5   (1U)

/*______________________________________________________________________________
** Constant which for CPU Synchronization Event
**____________________________________________________________________________*/
#define IFXCPU_CFG_ALLCORE_DONE (             \
        (IFX_CFG_SSW_ENABLE_TRICORE0 << 0U) | \
        (IFX_CFG_SSW_ENABLE_TRICORE1 << 1U) | \
        (IFX_CFG_SSW_ENABLE_TRICORE2 << 2U) | \
        (IFX_CFG_SSW_ENABLE_TRICORE3 << 3U) | \
        (IFX_CFG_SSW_ENABLE_TRICORE4 << 4U) | \
        (IFX_CFG_SSW_ENABLE_TRICORE5 << 6U))



/*______________________________________________________________________________
** Configuration for CPU Caches enable / disable
**____________________________________________________________________________*/

#define IFX_CFG_SSW_ENABLE_TRICORE0_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE0_DCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE1_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE1_DCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE2_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE2_DCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE3_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE3_DCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE4_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE4_DCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE5_PCACHE  1
#define IFX_CFG_SSW_ENABLE_TRICORE5_DCACHE  1

/******************************************************************************/

#endif /* IFX_CFG_H */
