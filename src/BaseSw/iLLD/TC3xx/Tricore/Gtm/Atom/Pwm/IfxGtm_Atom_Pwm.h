/**
 * \file IfxGtm_Atom_Pwm.h
 * \brief GTM PWM details
 * \ingroup IfxLld_Gtm
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
 * \defgroup IfxLld_Gtm_Atom_Pwm_Usage How to use the GTM ATOM PWM Driver
 * \ingroup IfxLld_Gtm_Atom_Pwm
 *
 * This interface allows to generate simple PWM signal on a ATOM out put and can generate interrupts if enabled.
 * this output can also be routed to port pin if required.
 *
 * \section Preparation Preparation
 * \subsection Include Include Files
 *
 * Include following header file into your C code:
 * \code
 *     #include <Gtm/Atom/Pwm/IfxGtm_Atom_Pwm.h>
 * \endcode
 *
 * \subsection Variables Variables
 * define global variables if necessary
 *
 * \code
 * Ifx_GTM *gtm = &MODULE_GTM;
 * #define ATOM0_CH0_PRIO 20
 * \endcode
 *
 * \subsection Interrupts Interrupts
 * define Interrupts if needed
 *
 * \code
 * IFX_INTERRUPT(ATOM0Ch0_ISR, 0, ATOM0_CH0_PRIO)
 * {}
 * \endcode
 *
 * \subsection Initialization Initialization
 *
 * \code
 * // install interrupt handlers
 * IfxCpu_Irq_installInterruptHandler (ATOM0Ch0_ISR, ATOM0_CH0_PRIO);
 *
 * // enable GTM clock
 * {
 *     float32 frequency = IfxGtm_Cmu_getModuleFrequency(gtm);
 *     // Enables the GTM
 *     IfxGtm_enable(gtm);
 *     // Set the global clock frequency to the max
 *     IfxGtm_Cmu_setGclkFrequency(gtm, frequency);
 *     // Set the CMU CLK0
 *     IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, frequency);
 *     // FXCLK: used by TOM and CLK0: used by ATOM
 *     IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);
 * }
 *
 * // initialise ATOM
 * IfxGtm_Atom_Pwm_Config atomConfig;	\\configuration structure
 * IfxGtm_Atom_Pwm_Driver atomHandle;	\\ handle
 *
 * IfxGtm_Atom_Pwm_initConfig(&atomConfig, gtm);
 *
 * atomConfig.tomChannel  = IfxGtm_Tom_Ch_0;
 * atomConfig.period                   = 20;
 * atomConfig.dutyCycle              = 10;
 * atomConfig.interrupt.ccu0Enabled = TRUE;
 * atomConfig.interrupt.isrPriority = ATOM0_CH0_PRIO;
 * atomConfig.pin.outputPin = &IfxGtm_ATOM0_0_TOUT0_P02_0_OUT;
 *
 * IfxGtm_Atom_Pwm_init(&atomHandle, &atomConfig);
 * \endcode
 *
 * ATOM will be now generating a PWM signal on the selected port pin while generating selected interrupt according to above configured period and duty cycle.
 *
 * \defgroup IfxLld_Gtm_Atom_Pwm ATOM PWM Interface Driver
 * \ingroup IfxLld_Gtm_Atom
 * \defgroup IfxLld_Gtm_Atom_Pwm_DataStructures ATOM PWM DataStructures
 * \ingroup IfxLld_Gtm_Atom_Pwm
 * \defgroup IfxLld_Gtm_Atom_Pwm_Pwm_Functions Pwm Functions
 * \ingroup IfxLld_Gtm_Atom_Pwm
 */

#ifndef IFXGTM_ATOM_PWM_H
#define IFXGTM_ATOM_PWM_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_PinMap/IfxGtm_PinMap.h"
#include "Gtm/Std/IfxGtm_Atom.h"
#include "Gtm/Std/IfxGtm_Cmu.h"
#include "Gtm/Std/IfxGtm_Dtm.h"
#include "Cpu/Std/IfxCpu.h"

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Atom_Pwm_DataStructures
 * \{ */
/** \brief configuration structure for interrupts
 */
typedef struct
{
    boolean        ccu0Enabled;       /**< \brief Enable/Disable choice for CCU0 trigger interrupt */
    boolean        ccu1Enabled;       /**< \brief Enable/Disable choice for CCU1 trigger interrupt */
    IfxGtm_IrqMode mode;              /**< \brief IRQ mode of interrupt */
    IfxSrc_Tos     isrProvider;       /**< \brief Type of Service for Ccu0/1 interrupt */
    Ifx_Priority   isrPriority;       /**< \brief Priority for Ccu0/1 interrupt */
} IfxGtm_Atom_Pwm_Interrupt;

/** \brief configuration structure for output pin
 */
typedef struct
{
    IfxGtm_Atom_ToutMap *outputPin;        /**< \brief output pin */
    IfxPort_OutputMode   outputMode;       /**< \brief Output mode */
    IfxPort_PadDriver    padDriver;        /**< \brief Pad driver */
} IfxGtm_Atom_Pwm_pin;

/** \} */

/** \addtogroup IfxLld_Gtm_Atom_Pwm_DataStructures
 * \{ */
/** \brief Configuration structure
 */
typedef struct
{
    Ifx_GTM                  *gtm;                            /**< \brief Pointer to GTM module */
    IfxGtm_Atom               atom;                           /**< \brief Index of the ATOM object used */
    IfxGtm_Atom_Ch            atomChannel;                    /**< \brief ATOM channel used for the timer */
    IfxGtm_Cmu_Clk			  clock;						  /**< \brief Timer input clock */
    IfxGtm_Atom_Mode          mode;                           /**< \brief Atom mode of operation */
    uint32                    period;                         /**< \brief Period */
    uint32                    dutyCycle;                      /**< \brief Duty Cycle */
    Ifx_ActiveState           signalLevel;                    /**< \brief Signal Level */
    boolean                   oneShotModeEnabled;             /**< \brief Enable/Disable the one shot mode */
    IfxGtm_Dtm_ClockSource    dtmClockSource;                 /**< \brief DTM clock source */
    boolean                   synchronousUpdateEnabled;       /**< \brief Synchronous or Asynchronous update */
    boolean                   immediateStartEnabled;          /**< \brief enable immediate start after init */
    IfxGtm_Atom_Pwm_Interrupt interrupt;                      /**< \brief configuration structure for interrupt */
    IfxGtm_Atom_Pwm_pin       pin;                            /**< \brief configuration structure for output pin */
} IfxGtm_Atom_Pwm_Config;

/** \brief Driver Handle
 */
typedef struct
{
    Ifx_GTM          *gtm;               /**< \brief Pointer to GTM module */
    IfxGtm_Atom       atomIndex;         /**< \brief Index of the ATOM object used */
    IfxGtm_Atom_Ch    atomChannel;       /**< \brief ATOM channel used for the timer */
    Ifx_GTM_ATOM     *atom;              /**< \brief Pointer to the ATOM object */
    Ifx_GTM_ATOM_AGC *agc;               /**< \brief Pointer to the AGC object */
    IfxGtm_Atom_Mode  mode;              /**< \brief Atom mode of operation */
} IfxGtm_Atom_Pwm_Driver;

/** \} */

/** \addtogroup IfxLld_Gtm_Atom_Pwm_Pwm_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \brief Initializes the GTM ATOM PWM driver object with the specified configuration.
 *
 * This function sets up the PWM timer using the provided driver handle and configuration.
 * It configures the GTM module, ATOM object, and channel according to the parameters
 * specified in the configuration structure.
 *
 * \param[inout] driver Pointer to GTM ATOM PWM driver object to be initialized. This structure contains
 *                      pointers to the GTM module, ATOM object, and channel, along with mode
 *                      information.
 * \param[in]    config Constant pointer to the PWM timer configuration structure. This
 *             		   structure includes parameters such as clock source, mode, period, duty
 *            		   cycle, signal level, and other control flags.
 *
 * \retval TRUE If the initialization was successful.
 *         FALSE If the initialization failed.
 */
IFX_EXTERN boolean IfxGtm_Atom_Pwm_init(IfxGtm_Atom_Pwm_Driver *driver, const IfxGtm_Atom_Pwm_Config *config);

/**
 * \brief Initializes the configuration structure for the GTM ATOM PWM module to default values.
 *
 * This function sets up the provided configuration structure with default values suitable for
 * initializing the GTM ATOM PWM module. The configuration structure includes parameters such as
 * the timer input clock, mode of operation, period, duty cycle, signal level, and other control
 * flags for features like one-shot mode and synchronous updates.
 *
 * \param[inout] config The configuration structure to be initialized. This structure contains
 *                      various fields that define the operational parameters of the GTM ATOM
 *                      PWM module, such as the timer input clock, mode, period, duty cycle, and
 *                      control flags.
 * \param[in]    gtm    Pointer to the GTM module instance to be used for configuration.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Atom_Pwm_initConfig(IfxGtm_Atom_Pwm_Config *config, Ifx_GTM *gtm);

/**
 * \brief Starts the PWM generation from the configured channel.
 *
 * This function starts the PWM (Pulse Width Modulation) generation
 * using the provided driver handle. The PWM generation can be started immediately
 * or synchronized based on the 'immediate' parameter.
 *
 * \param[inout] driver    Pointer to the GTM ATOM PWM driver handle.
 * \param[in]    immediate Boolean flag indicating whether to start the PWM generation
 *                         immediately (TRUE) or wait for synchronization (FALSE).
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Atom_Pwm_start(IfxGtm_Atom_Pwm_Driver *driver, boolean immediate);

/**
 * \brief Stops the PWM generation from the configured channel.
 *
 * This function halts the PWM (Pulse Width Modulation) signal generation on the specified channel.
 * The 'immediate' parameter determines whether the stop should occur immediately or after the current PWM cycle completes.
 *
 * \param[inout] driver    Pointer to the GTM ATOM PWM driver handle.
 * \param[in]    immediate Boolean flag to specify the stopping behavior.
 *						   Range:	
 * 						   - TRUE: Stop the PWM generation immediately.
 * 						   - FALSE: Stop the PWM generation after the current cycle completes.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Atom_Pwm_stop(IfxGtm_Atom_Pwm_Driver *driver, boolean immediate);

/** \} */

#endif /* IFXGTM_ATOM_PWM_H */
