/**
 * \file IfxSpu_cfg_TC35x.h
 * \brief SPU on-chip implementation data
 * \ingroup IfxLld_Spu
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
 *
 * \defgroup IfxLld_Spu SPU
 * \ingroup IfxLld
 * \defgroup IfxLld_Spu_Impl Implementation
 * \ingroup IfxLld_Spu
 * \defgroup IfxLld_Spu_Std Standard Driver
 * \ingroup IfxLld_Spu
 * \defgroup IfxLld_Spu_Impl_Enum Enumerations
 * \ingroup IfxLld_Spu_Impl
 */

#ifndef IFXSPU_CFG_TC35X_H
#define IFXSPU_CFG_TC35X_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Cpu/Std/Ifx_Types.h"
#include "IfxSpu_reg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Base address of Configuration RAM
 */
#define IFXSPU_CONFIG_RAM0_BASE (0xfaa00000)

/** \brief Size of configuration RAM
 */
#define IFXSPU_CONFIG_RAM_SIZE  (64 * 1024)

/** \brief Number of configurable SFRs in a configuration slot
 */
#define IFXSPU_CONFIG_SFRS_LEN  (128)

/** \brief Maximum number of configuration slots in the configuration RAM
 */
#define IFXSPU_CONFIG_SLOT_MAX  (IFXSPU_CONFIG_RAM_SIZE / (IFXSPU_CONFIG_SFRS_LEN * 4))

/** \brief Maximum number of antennae
 */
#define IFXSPU_MAX_ANTENNAE     (8)

#define IFXSPU_NUM_MODULES      (2)

/** \brief Base address of Configuration RAM
 */
#define IFXSPU_CONFIG_RAM1_BASE (0xfae00000)

#define IFXSPU_OFFSETOF(type, member) (((uint32)&(((type *)0)->member)))

#define IFXSPU_MAX_FFT_LENGTH   (2048)

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Spu_Impl_Enum
 * \{ */
/** \brief List of the available SPU resources
 */
typedef enum
{
    IfxSpu_Index_none = -1,  /**< \brief Not Selected */
    IfxSpu_Index_0    = 0,   /**< \brief SPU index 0 */
    IfxSpu_Index_1    = 1    /**< \brief SPU index 1 */
} IfxSpu_Index;

/** \} */

/******************************************************************************/
/*-------------------Global Exported Variables/Constants----------------------*/
/******************************************************************************/

IFX_EXTERN IFX_CONST IfxModule_IndexMap IfxSpu_cfg_indexMap[IFXSPU_NUM_MODULES];

#endif /* IFXSPU_CFG_TC35X_H */
