/**
 * \file IfxScuRcu.h
 * \brief SCU  basic functionality
 * \ingroup IfxLld_Scu
 *
 * \version iLLD_1_20_0
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
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
 *
 * This file contains the APIs for Reset related functions.
 * Caution: Draft implementation, APIs may change.
 *
 * \defgroup IfxLld_Scu SCU
 * \addtogroup IfxLld_Scu
 * \{
 * \defgroup IfxLld_ScuRcu How to use the Scu Rcu driver?
 * \addtogroup IfxLld_ScuRcu
 * \{
 *
 * The Reset Control Unit (RCU) driver provides functionalities to evaluate the cause of the last system reset,
 * retrieve detailed reset information, and trigger specific types of resets (e.g., application or system reset).
 *
 * In the following sections it will be described, how to integrate the driver into the application framework.
 *
 * \section IfxLld_ScuRcu_Std_Preparation Preparation
 * \subsection IfxLld_ScuRcu_Std_Include Include Files
 *
 * Include following header file into your C code:
 * \code
 * #include <Scu/Std/IfxScuRcu.h>
 * \endcode
 *
 * \subsection IfxLld_ScuRcu_Std_Variables Variables
 *
 * \code
 * // Used locally
 * IfxScuRcu_ResetCode lastReset;
 * \endcode
 *
 * \subsection IfxLld_ScuRcu_Std_ResetDetection Reset Detection
 *
 * \code
 * // This code detects the last occurred reset source and performs appropriate actions.
 *
 * // Evaluate the last reset cause/details
 * lastReset = IfxScuRcu_evaluateReset();
 *
 * // Depending on the last reset type, performs appropriate actions
 * switch (lastReset.resetType)
 * {
 * 		case IfxScuRcu_ResetType_application:
 *        	...
 *          // User code
 *	        ...
 *          break;
 *
 *		case IfxScuRcu_ResetType_system:
 *          ...
 *          // User code
 *	        ...
 *          break;
 *
 *		case IfxScuRcu_ResetType_warmpoweron:
 *      	...
 *          // User code
 *	        ...
 *          break;
 *		default:
 *          ...
 *          // User code
 *	        ...
 *          break;
 * }
 *
 * // Clear Cold Power-On Reset sticky bits
 * IfxScuRcu_clearColdResetStatus();
 *
 * Now last reset type has been retrieved.
 * \endcode
 *
 * Triggering Reset
 *
 * \code
 * // This code triggers either a SW Application Reset or a SW System Reset, based on the parameter resetType
 * // resetType can be IfxScuRcu_ResetType_system or IfxScuRcu_ResetType_application
 * // userResetInfo is the user DATA to reset evaluation
 * IfxScuRcu_performReset(resetType, userResetInfo);
 * \endcode
 *
 * Getting the Reset Reason
 *
 * \code
 * IfxScuRcu_ResetCode resetCode = IfxScuRcu_getResetReason();
 * \endcode
 *
 * \}
 * \}
 *
 * \defgroup IfxLld_Scu_Std_Rcu Rcu Basic Functionality
 * \ingroup IfxLld_Scu_Std
 */

#ifndef IFXSCURCU_H
#define IFXSCURCU_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxScu_cfg.h"
#include "Cpu/Std/Ifx_Types.h"
#include "IfxScu_reg.h"
#include "Scu/Std/IfxScuWdt.h"
#include "Cpu/Std/IfxCpu.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief PowerOn Reset Mask
 */
#define IFXSCURCU_POWERONRESET_MASK                             \
    ((IFX_SCU_RSTSTAT_STBYR_MSK << IFX_SCU_RSTSTAT_STBYR_OFF) | \
     (IFX_SCU_RSTSTAT_SWD_MSK << IFX_SCU_RSTSTAT_SWD_OFF) |     \
     (IFX_SCU_RSTSTAT_EVR33_MSK << IFX_SCU_RSTSTAT_EVR33_OFF) | \
     (IFX_SCU_RSTSTAT_EVRC_MSK << IFX_SCU_RSTSTAT_EVRC_OFF) |   \
     (IFX_SCU_RSTSTAT_CB1_MSK << IFX_SCU_RSTSTAT_CB1_OFF) |     \
     (IFX_SCU_RSTSTAT_CB0_MSK << IFX_SCU_RSTSTAT_CB0_OFF) |     \
     (IFX_SCU_RSTSTAT_PORST_MSK << IFX_SCU_RSTSTAT_PORST_OFF))

/** \brief Application Reset Mask
 */
#if	IFXCPU_NUM_MODULES > 5

#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM5_MSK << IFX_SCU_RSTSTAT_STM5_OFF) | \
     (IFX_SCU_RSTSTAT_STM4_MSK << IFX_SCU_RSTSTAT_STM4_OFF) | \
     (IFX_SCU_RSTSTAT_STM3_MSK << IFX_SCU_RSTSTAT_STM3_OFF) | \
     (IFX_SCU_RSTSTAT_STM2_MSK << IFX_SCU_RSTSTAT_STM2_OFF) | \
     (IFX_SCU_RSTSTAT_STM1_MSK << IFX_SCU_RSTSTAT_STM1_OFF) | \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))

#elif IFXCPU_NUM_MODULES > 4

#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM4_MSK << IFX_SCU_RSTSTAT_STM4_OFF) | \
     (IFX_SCU_RSTSTAT_STM3_MSK << IFX_SCU_RSTSTAT_STM3_OFF) | \
     (IFX_SCU_RSTSTAT_STM2_MSK << IFX_SCU_RSTSTAT_STM2_OFF) | \
     (IFX_SCU_RSTSTAT_STM1_MSK << IFX_SCU_RSTSTAT_STM1_OFF) | \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))

#elif IFXCPU_NUM_MODULES > 3

#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM3_MSK << IFX_SCU_RSTSTAT_STM3_OFF) | \
     (IFX_SCU_RSTSTAT_STM2_MSK << IFX_SCU_RSTSTAT_STM2_OFF) | \
     (IFX_SCU_RSTSTAT_STM1_MSK << IFX_SCU_RSTSTAT_STM1_OFF) | \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))

#elif IFXCPU_NUM_MODULES > 2

#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM2_MSK << IFX_SCU_RSTSTAT_STM2_OFF) | \
     (IFX_SCU_RSTSTAT_STM1_MSK << IFX_SCU_RSTSTAT_STM1_OFF) | \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))

#elif IFXCPU_NUM_MODULES > 1

#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM1_MSK << IFX_SCU_RSTSTAT_STM1_OFF) | \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))
     
#else


#define IFXSCURCU_APPLICATIONRESET_MASK                       \
    ((IFX_SCU_RSTSTAT_SW_MSK << IFX_SCU_RSTSTAT_SW_OFF) |     \
     (IFX_SCU_RSTSTAT_STM0_MSK << IFX_SCU_RSTSTAT_STM0_OFF) | \
     (IFX_SCU_RSTSTAT_SMU_MSK << IFX_SCU_RSTSTAT_SMU_OFF) |   \
     (IFX_SCU_RSTSTAT_ESR1_MSK << IFX_SCU_RSTSTAT_ESR1_OFF) | \
     (IFX_SCU_RSTSTAT_ESR0_MSK << IFX_SCU_RSTSTAT_ESR0_OFF))

	 
#endif

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief Reset type
 */
typedef enum
{
    IfxScuRcu_ResetType_coldpoweron = 0,  /**< \brief Cold Power On Reset */
    IfxScuRcu_ResetType_system      = 1,  /**< \brief system Reset */
    IfxScuRcu_ResetType_application = 2,  /**< \brief application reset */
    IfxScuRcu_ResetType_warmpoweron = 3,  /**< \brief Warm Power On Reset */
    IfxScuRcu_ResetType_debug       = 4,  /**< \brief debug reset */
    IfxScuRcu_ResetType_undefined   = 5   /**< \brief Undefined Reset */
} IfxScuRcu_ResetType;

/** \brief Reset Trigger
 */
typedef enum
{
    IfxScuRcu_Trigger_esr0      = 0,   /**< \brief ESR0 */
    IfxScuRcu_Trigger_esr1      = 1,   /**< \brief ESR1 */
    IfxScuRcu_Trigger_smu       = 3,   /**< \brief SMU */
    IfxScuRcu_Trigger_sw        = 4,   /**< \brief SW */
    IfxScuRcu_Trigger_stm0      = 5,   /**< \brief STM0 Compare Match */
#if IFXCPU_NUM_MODULES > 1
    IfxScuRcu_Trigger_stm1      = 6,   /**< \brief STM1  Compare Match */
#endif
#if IFXCPU_NUM_MODULES > 2
    IfxScuRcu_Trigger_stm2      = 7,   /**< \brief STM2 Compare Match */
#endif
#if	IFXCPU_NUM_MODULES > 3
    IfxScuRcu_Trigger_stm3      = 8,   /**< \brief STM3 Compare Match */
#endif
#if	IFXCPU_NUM_MODULES > 4
	IfxScuRcu_Trigger_stm4      = 9,   /**< \brief STM4 Compare Match */
#endif
#if IFXCPU_NUM_MODULES > 5
    IfxScuRcu_Trigger_stm5      = 10,  /**< \brief STM5 Compare Match */
#endif
	IfxScuRcu_Trigger_portst    = 16,  /**< \brief PORTST */
    IfxScuRcu_Trigger_cb0       = 18,  /**< \brief Cerberus System Reset */
    IfxScuRcu_Trigger_cb1       = 19,  /**< \brief Cerberus Debug Reset */
    IfxScuRcu_Trigger_cb3       = 20,  /**< \brief Cerberus Application Reset */
    IfxScuRcu_Trigger_evrc      = 23,  /**< \brief EVRC */
    IfxScuRcu_Trigger_evr33     = 24,  /**< \brief EVR33 */
    IfxScuRcu_Trigger_swd       = 25,  /**< \brief Supply Watchdog */
    IfxScuRcu_Trigger_hsms      = 26,  /**< \brief HSM System Reset */
    IfxScuRcu_Trigger_hsma      = 27,  /**< \brief HSM Application Reset */
    IfxScuRcu_Trigger_stbyr     = 28,  /**< \brief Standby Regulator Watchdog */
    IfxScuRcu_Trigger_undefined = 255  /**< \brief Undefined Value */
} IfxScuRcu_Trigger;

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
    boolean             cpuSafeState;       /**< \brief CPU Safe state ( 1- Safe, 0 - Non-Safe) */
    IfxScuRcu_ResetType resetType;          /**< \brief Reset Type */
    IfxScuRcu_Trigger   resetTrigger;       /**< \brief reset Trigger */
    uint16              resetReason;        /**< \brief Reset Reason */
} IfxScuRcu_ResetCode;

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \brief Clears the Cold Reset Status
 * 
 * This function resets the Cold Reset Status to its default state.
 *
 * \retval None
 */
IFX_INLINE void IfxScuRcu_clearColdResetStatus(void);

/**
 * \brief Configures the request trigger in the Reset Configuration Register.
 *
 * This function sets up the trigger source for reset requests based on the specified trigger type and reset type.
 *
 * \param[in] trigger   The trigger source to be configured.
 * 					    Range: \ref IfxScuRcu_Trigger
 * \param[in] resetType The type of reset to be configured.
 *   					Range: \ref IfxScuRcu_ResetType
 *
 * \retval None
 */
IFX_INLINE void IfxScuRcu_configureResetRequestTrigger(IfxScuRcu_Trigger trigger, IfxScuRcu_ResetType resetType);

/**
 * \brief Checks if the previous reset was an application reset.
 *
 * This function determines whether the last system reset was triggered by an application reset.
 *
 * \param[in] rawResetStatus The raw reset status value from the hardware, representing the type of reset that occurred.
 * 							 Range: 0x000000 to 0X7FFD07FB
 *
 * \retval Returns TRUE  The previous reset was an application reset.
 * \retval Returns FALSE The previous reset was not an application reset.
 */
IFX_INLINE boolean IfxScuRcu_isApplicationReset(uint32 rawResetStatus);

/**
 * \brief Reads and returns the raw reset status from the SCU RCU hardware register.
 *
 * This function provides direct access to the raw reset status value stored in the hardware register.
 * The raw reset status indicates the current reset state of the system or specific components, as defined by the hardware.
 *
 * \retval uint32 The raw reset status value, represented as a 32-bit unsigned integer.
 *         		  The value corresponds to the bit field of the reset status register,
 *         		  where each bit may represent the reset status of a specific component or condition,
 *         		  depending on the hardware implementation.
 */
IFX_INLINE uint32 IfxScuRcu_readRawResetStatus(void);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief This function Evaluate the Reset and returns the reset cause/details.
 *
 * This function analyzes the system reset and provides a reset code that includes
 * the type of reset, the trigger source, and the reason behind the reset.
 *
 * \retval IfxScuRcu_ResetCode Reset code which contains Reset type, trigger and reason details.
 */
IFX_EXTERN IfxScuRcu_ResetCode IfxScuRcu_evaluateReset(void);

/**
 * \brief Triggers a system or application reset via software.
 *
 * This function initiates a reset of either the system or the application based on the specified reset type.
 * It also allows passing user-specific reset information.
 *
 * \param[in] resetType     The type of reset to perform.
 * 						    Range: \ref IfxScuRcu_ResetType
 * \param[in] userResetInfo A 16-bit unsigned integer containing user-specific reset information.
 *                          Range: 0x0000 to 0xFFFF
 *
 * \retval None
 */
IFX_EXTERN void IfxScuRcu_performReset(IfxScuRcu_ResetType resetType, uint16 userResetInfo);

/**
 * \brief Evaluates and returns the reset reason and details.
 *
 * This function retrieves the reset code, which contains information about the type, trigger, and reason for the system reset.
 *
 * \retval IfxScuRcu_ResetCode Reset code which contains Reset type, trigger and reason details.
 */
IFX_EXTERN IfxScuRcu_ResetCode IfxScuRcu_getResetReason(void);

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxScuRcu_clearColdResetStatus(void)
{
    uint16 password;

    password = IfxScuWdt_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[IfxCpu_getCoreIndex()]);
    IfxScuWdt_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[IfxCpu_getCoreIndex()], password);
    /* Clear Cold Reset status */
    MODULE_SCU.RSTCON2.B.CLRC = 1U;
    IfxScuWdt_setCpuEndinitInline(&MODULE_SCU.WDTCPU[IfxCpu_getCoreIndex()], password);
}


IFX_INLINE void IfxScuRcu_configureResetRequestTrigger(IfxScuRcu_Trigger trigger, IfxScuRcu_ResetType resetType)
{
    Ifx_SCU_RSTCON Rstcon;
    uint8          resetConfig = 2; /* Default - Application reset  */
    uint16         password;
    password = IfxScuWdt_getSafetyWatchdogPassword();
    Rstcon.U = MODULE_SCU.RSTCON.U;

    if (resetType == IfxScuRcu_ResetType_system)
    {
        resetConfig = 1;
    }

    switch (trigger)
    {
    case IfxScuRcu_Trigger_esr0:
        Rstcon.B.ESR0 = resetConfig;
        break;
    case IfxScuRcu_Trigger_esr1:
        Rstcon.B.ESR1 = resetConfig;
        break;
    case IfxScuRcu_Trigger_smu:
        Rstcon.B.SMU = resetConfig;
        break;
    case IfxScuRcu_Trigger_sw:
        Rstcon.B.SW = resetConfig;
        break;
    case IfxScuRcu_Trigger_stm0:
        Rstcon.B.STM0 = resetConfig;
        break;
#if IFXCPU_NUM_MODULES > 1
    case IfxScuRcu_Trigger_stm1:
        Rstcon.B.STM1 = resetConfig;
        break;
#endif
#if IFXCPU_NUM_MODULES > 2
    case IfxScuRcu_Trigger_stm2:
        Rstcon.B.STM2 = resetConfig;
        break;
#endif
#if IFXCPU_NUM_MODULES > 3
    case IfxScuRcu_Trigger_stm3:
        Rstcon.B.STM3 = resetConfig;
        break;
#endif
#if IFXCPU_NUM_MODULES > 4
        case IfxScuRcu_Trigger_stm4:
        Rstcon.B.STM4 = resetConfig;
        break;
#endif
#if IFXCPU_NUM_MODULES > 5
    case IfxScuRcu_Trigger_stm5:
        Rstcon.B.STM5 = resetConfig;
        break;
#endif
    default:
        break;
    }

    IfxScuWdt_clearSafetyEndinitInline(password);

    MODULE_SCU.RSTCON.U = Rstcon.U;
    IfxScuWdt_setSafetyEndinit(password);
}


IFX_INLINE boolean IfxScuRcu_isApplicationReset(uint32 rawResetStatus)
{
    boolean returnVal;
    uint32  tempValue;

    if ((rawResetStatus & IFXSCURCU_POWERONRESET_MASK) > 0)
    {
        returnVal = 0;
    }
    else if ((rawResetStatus & IFXSCURCU_APPLICATIONRESET_MASK) > 0)   // CB3 TP HSMA ??
    {
        // get the bit which is set at RSTSTAT (assumption: RSTSTAT register was cleared before and only one bit can be set)
        tempValue = rawResetStatus & IFXSCURCU_APPLICATIONRESET_MASK;
        tempValue = (SCU_RSTCON.U >> ((31U - __clz(tempValue)) * 2)) & 3U;

        if (tempValue == 2)
        {
            returnVal = 1;
        }
        else
        {
            returnVal = 0;
        }
    }
    else if ((rawResetStatus & (IFX_SCU_RSTSTAT_CB3_MSK << IFX_SCU_RSTSTAT_CB3_OFF)))
    {
        // CB3 reset is not configurable and is always application reset
        returnVal = 1;
    }
    else if (CPU0_KRST0.B.RSTSTAT != 0)   /*CPU0 KRST status */
    {
        returnVal = 1;
    }
    else
    {
        returnVal = 0;
    }

    return returnVal;
}


IFX_INLINE uint32 IfxScuRcu_readRawResetStatus(void)
{
    return MODULE_SCU.RSTSTAT.U;
}


#endif /* IFXSCURCU_H */
