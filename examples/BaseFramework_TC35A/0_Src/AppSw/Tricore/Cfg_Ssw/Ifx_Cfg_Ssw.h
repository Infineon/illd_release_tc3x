/**
 * \file Ifx_Cfg_Ssw.h
 * \brief Configuration header file for the Startup Software
 * \ingroup
 *
 * \copyright Copyright (c) 2018 Infineon Technologies AG. All rights reserved.
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
