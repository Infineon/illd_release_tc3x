/**
 * \file Ifx_Cfg_Ssw.h
 * \brief Configuration header file for the Startup Software
 * \ingroup
 *
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

#ifndef IFX_CFG_SSW_H_
#define IFX_CFG_SSW_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Ifx_Cfg.h"
#include "Ifx_Ssw.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
/** \brief Set this macro to 1, to configure the PMS EVR.
 */
#ifndef IFX_CFG_SSW_ENABLE_PMS_INIT
#define IFX_CFG_SSW_ENABLE_PMS_INIT       (1U)
#endif
/** \brief Set this macro to 1, to check the PMS EVR configuration.
 */
#ifndef IFX_CFG_SSW_ENABLE_PMS_INIT_CHECK
#define IFX_CFG_SSW_ENABLE_PMS_INIT_CHECK (1U)
#endif
/** \brief Set this macro to 1, to do LBIST checks.
 */
#ifndef IFX_CFG_SSW_ENABLE_LBIST
#define IFX_CFG_SSW_ENABLE_LBIST          (0U)
#endif
/** \brief Set this macro to 1, to do MONBIST checks.
 */
#ifndef IFX_CFG_SSW_ENABLE_MONBIST
#define IFX_CFG_SSW_ENABLE_MONBIST        (0U)
#endif
/** \brief Set this macro to 1, to do MMIC checks.
 */
#ifndef IFX_CFG_SSW_ENABLE_MMIC_CHECK
#define IFX_CFG_SSW_ENABLE_MMIC_CHECK     (0U)
#endif
/** \brief Set this macro to 1, to initialize the PLL.
 */
#ifndef IFX_CFG_SSW_ENABLE_PLL_INIT
#define IFX_CFG_SSW_ENABLE_PLL_INIT       (1U)
#endif
/** \brief Set this macro to 1, to do MBIST checks.
 */
#ifndef IFX_CFG_SSW_ENABLE_MBIST
#define IFX_CFG_SSW_ENABLE_MBIST          (0U)
#endif
/** \brief Set this macro to 1, to do SMU Alarm handling.
 */
#ifndef IFX_CFG_SSW_ENABLE_SMU
#define IFX_CFG_SSW_ENABLE_SMU            (0U)
#endif
/** \brief Set this macro to 1, to enable emem initialisation.
 */
#ifndef IFX_CFG_SSW_ENABLE_EMEM_INIT
#define IFX_CFG_SSW_ENABLE_EMEM_INIT      (0U)
#endif
/******************************************************************************/
/*------------------------  Function Implementations  ------------------------*/
/******************************************************************************/
#if IFX_CFG_SSW_ENABLE_PMS_INIT == 1U
#include "IfxPmsEvr.h"

extern void Ifx_Ssw_Pms_Init(void);
extern void Ifx_Ssw_Pms_InitCheck(void);

/** Callout hook API macro for PMS Initialization
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * initialize the PMS EVR module. This hook is by default defined to empty call by startup implementation.
 * THIS CALLOUT HOOK SHALL NOT BE IMPLEMENTED AS FUNCTION CALL!
 * \param none
 * \return none
 */
#define IFX_CFG_SSW_CALLOUT_PMS_INIT()                     \
    {                                                      \
		Ifx_Ssw_jumpToFunctionWithLink(&Ifx_Ssw_Pms_Init); \
        IFX_CFG_SSW_CALLOUT_PMS_CHECK();                   \
    }

#if IFX_CFG_SSW_ENABLE_PMS_INIT_CHECK == 1U

/** Callout hook API macro for PMS Initialization check
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * cross verify the PMS configuration with the required values. This hook is by default defined to empty
 * call by startup implementation.
 * THIS CALLOUT HOOK SHALL NOT BE IMPLEMENTED AS FUNCTION CALL!
 * \param none
 * \return none
 */
#define IFX_CFG_SSW_CALLOUT_PMS_CHECK()                         \
    {                                                           \
        Ifx_Ssw_jumpToFunctionWithLink(&Ifx_Ssw_Pms_InitCheck); \
    }
#else
#define IFX_CFG_SSW_CALLOUT_PMS_CHECK()
#endif /* End of IFX_CFG_SSW_ENABLE_PMS_INIT_CHECK */

#endif /* End of IFX_CFG_SSW_ENABLE_PMS_INIT */

/** Callout hook API macro for LBIST check
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * do LBIST checks. This hook is by default defined to empty call by startup implementation.
 * THIS CALLOUT HOOK SHALL NOT BE IMPLEMENTED AS FUNCTION CALL!
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_LBIST == 1U
#include "IfxScuLbist.h"

extern void Ifx_Ssw_Lbist(void);

#define IFX_CFG_SSW_CALLOUT_LBIST()                     \
    {                                                   \
        Ifx_Ssw_jumpToFunctionWithLink(&Ifx_Ssw_Lbist); \
    }

#endif /* End of IFX_CFG_SSW_ENABLE_LBIST */

/** Callout hook API macro for MONBIST check
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * do MONBIST checks. This hook is by default defined to empty call by startup implementation.
 * THIS CALLOUT HOOK SHALL NOT BE IMPLEMENTED AS FUNCTION CALL!
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_MONBIST == 1U

#include "IfxSmuStdby.h"

extern void Ifx_Ssw_Monbist(void);

#define IFX_CFG_SSW_CALLOUT_MONBIST()                 \
{                                                     \
    Ifx_Ssw_jumpToFunctionWithLink(&Ifx_Ssw_Monbist); \
}
#endif /* End of IFX_CFG_SSW_ENABLE_MONBIST */

/** Callout hook API macro for PLL initialization
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * initialize the PLL. This hook is by default defined to empty call by startup implementation.
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_PLL_INIT == 1U
#include "IfxScuCcu.h"

#define IFX_CFG_SSW_CALLOUT_PLL_INIT()                          \
    {                                                           \
        if (IfxScuCcu_init(&IfxScuCcu_defaultClockConfig) == 1) \
        {                                                       \
            __debug();                                          \
        }                                                       \
    }

#endif /* End of IFX_CFG_SSW_ENABLE_PLL_INIT */

/** Callout hook API macro for MBIST check
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * do MBIST checks. This hook is by default defined to empty call by startup implementation.
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_MBIST == 1U
#include "IfxMtu.h"

#define IFX_CFG_SSW_CALLOUT_MBIST() \
    {                               \
        IFX_EXTERN const IfxMtu_MbistConfig *const mbistGangConfig[]; \
        if (IfxMtu_runMbistAll(mbistGangConfig) == 1U)                \
        {                                                             \
            __debug();                                                \
        }                                                             \
    }

#endif /* End of IFX_CFG_SSW_ENABLE_MBIST */

/** Callout hook API macro for MMIC check
 * This need to be configured by application to do MMIC checks.
 * This hook is by default defined to empty call by startup implementation.
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_MMIC_CHECK == 1U
#define IFX_CFG_SSW_CALLOUT_MMIC_CHECK()
#endif /* End of IFX_CFG_SSW_ENABLE_MMIC_CHECK */

/** Callout hook API macro for SMU alarm handling
 * This need to be configured by application to do SMU alarm handling.
 * This hook is by default defined to empty call by startup implementation.
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_SMU == 1U
#define IFX_CFG_SSW_CALLOUT_SMU()
#endif /* End of IFX_CFG_SSW_ENABLE_SMU */

/** Callout hook API macro to unlock EMEM
 * This callout hook is referenced in Startup sequence. This need to be configured by application to
 * initialize EMEM. This unlocks the EMEM. This hook is by default defined to empty call by startup implementation.
 * \param none
 * \return none
 */
#if IFX_CFG_SSW_ENABLE_EMEM_INIT == 1U
#include "IfxEmem_reg.h"

extern void Ifx_Ssw_UnlockEmem(void);

#define IFX_CFG_SSW_CALLOUT_EMEM_INIT() \
  {                                     \
     Ifx_Ssw_UnlockEmem();              \
  }
#endif

#endif /* IFX_CFG_SSW_H_ */
