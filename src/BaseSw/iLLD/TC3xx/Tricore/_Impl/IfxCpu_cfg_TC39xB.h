/**
 * \file IfxCpu_cfg_TC39xB.h
 * \brief CPU on-chip implementation data
 * \ingroup IfxLld_Cpu
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
 * \defgroup IfxLld_Cpu CPU
 * \ingroup IfxLld
 * \defgroup IfxLld_Cpu_Impl Implementation
 * \ingroup IfxLld_Cpu
 * \defgroup IfxLld_Cpu_Std Standard Driver
 * \ingroup IfxLld_Cpu
 */

#ifndef IFXCPU_CFG_TC39XB_H
#define IFXCPU_CFG_TC39XB_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/IfxCpu_Intrinsics.h"
#include "IfxCpu_reg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief CPU count
 */
#define IFXCPU_NUM_MODULES            (6)

/** \brief Segment number of cachable flash region
 */
#define IFXCPU_CACHABLE_FLASH_SEGMENT (8)

/** \brief Segment number of cachable LMU region
 */
#define IFXCPU_CACHABLE_LMU_SEGMENT   (9)

/** \brief All cores (coreIDs) mask. This macro can be defined by the user according to the number of core being enabled.
 * So that can be used for syncronisation among multiple cores. In case user didn't define this macro, by default this
 * mask will be generated for all the available cores of the device.
 * e.g:
 * 1. Check for synchronisation between core 0 and core 5
 * # define 0x41U
 * 2. Check for synchronisation between core 0 to core 5
 * # define 0x5FU
 *
 * Note:
 * Core id values read from CORE_ID register will be as shown below. The value
 * indicates the position of the bit needs to be set while building the macro.
 * Core 0: 0
 * Core 1: 1
 * Core 2: 2
 * Core 3: 3
 * Core 4: 4
 * Core 5: 6
 */
#ifndef IFXCPU_CFG_ALLCORE_DONE
#define IFXCPU_CFG_ALLCORE_DONE       (0x5F)
#endif

/** \brief
 */
#ifndef IFXCPU_ALLCORE_DONE
#define IFXCPU_ALLCORE_DONE           IFXCPU_CFG_ALLCORE_DONE
#else
#ifdef __TASKING__
# pragma message("IFXCPU_ALLCORE_DONE macro is going to be deprecated. Use IFXCPU_CFG_ALLCORE_DONE instead.")
#else
# warning IFXCPU_ALLCORE_DONE macro is going to be deprecated. Use IFXCPU_CFG_ALLCORE_DONE instead.
#endif
#endif

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief Halt status
 */
typedef enum
{
    IfxCpu_DBGST_HALT_run  = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;

/** \brief List of the available CPU ids
 */
typedef enum
{
    IfxCpu_Id_0 = 0,  /**< \brief CPU 0 */
    IfxCpu_Id_1 = 1,  /**< \brief CPU 1 */
    IfxCpu_Id_2 = 2,  /**< \brief CPU 2 */
    IfxCpu_Id_3 = 3,  /**< \brief CPU 3 */
    IfxCpu_Id_4 = 4,  /**< \brief CPU 4 */
    IfxCpu_Id_6 = 6,  /**< \brief CPU 5 */
    IfxCpu_Id_none    /**< \brief None of the CPU */
} IfxCpu_Id;

/** \brief List of the available CPU resources
 */
typedef enum
{
    IfxCpu_Index_0 = 0,  /**< \brief CPU 0 */
    IfxCpu_Index_1 = 1,  /**< \brief CPU 1 */
    IfxCpu_Index_2 = 2,  /**< \brief CPU 2 */
    IfxCpu_Index_3 = 3,  /**< \brief CPU 3 */
    IfxCpu_Index_4 = 4,  /**< \brief CPU 4 */
    IfxCpu_Index_5 = 5,  /**< \brief CPU 5 */
    IfxCpu_Index_none    /**< \brief None of the CPU */
} IfxCpu_Index;

/** \brief Power management status
 */
typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode         = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest    = 2,
    IfxCpu_PMCSR_PMST_idleMode           = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest   = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;

/** \brief List of the available CPU resources
 */
typedef enum
{
    IfxCpu_ResourceCpu_0    = IfxCpu_Index_0,    /**< \brief CPU 0 */
    IfxCpu_ResourceCpu_1    = IfxCpu_Index_1,    /**< \brief CPU 1 */
    IfxCpu_ResourceCpu_2    = IfxCpu_Index_2,    /**< \brief CPU 2 */
    IfxCpu_ResourceCpu_3    = IfxCpu_Index_3,    /**< \brief CPU 3 */
    IfxCpu_ResourceCpu_4    = IfxCpu_Index_4,    /**< \brief CPU 4 */
    IfxCpu_ResourceCpu_5    = IfxCpu_Index_5,    /**< \brief CPU 5 */
    IfxCpu_ResourceCpu_none = IfxCpu_Index_none  /**< \brief None of the CPU */
} IfxCpu_ResourceCpu;

/******************************************************************************/
/*-------------------Global Exported Variables/Constants----------------------*/
/******************************************************************************/

IFX_EXTERN IFX_CONST IfxModule_IndexMap IfxCpu_cfg_indexMap[IFXCPU_NUM_MODULES];

#endif /* IFXCPU_CFG_TC39XB_H */
