/**
 * \file IfxGtm_Tom_Dtm_PwmHl.h
 * \brief GTM DTM_PWMHL details
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
 * \defgroup IfxLld_Gtm_Tom_Dtm_PwmHl_Usage How to use the GTM TOM DTM PWM Driver
 * \ingroup IfxLld_Gtm_Tom_Dtm_PwmHl
 *
 *  This driver implements the PWM functionalities as defined by \ref library_srvsw_stdif_pwmhl.
 *   The user is free to use either the driver specific APIs below or to used the \ref library_srvsw_stdif_pwmhl "standard interface APIs".
 *
 * \section Specific Specific implementation
 *   Implementation is similar to \ref IfxLld_Gtm_Tom_PwmHl
 *
 *
 *   For a detailed configuration of the microcontroller, see \ref IfxGtm_TomDtm_PwmHl_init().
 *
 * \section Example Usage example
 *   Initialisation is done by, e.g:
 * \code
 *   IfxGtm_TomDtm_PwmHl_Config driverConfig;
 *   IfxGtm_TomDtm_PwmHl        driverData;
 *   IfxStdIf_PwmHl          pwmhl;
 *   IfxGtm_TomDtm_PwmHl_initConfig(&driverConfig, &MODULE_GTM);
 *   IfxGtm_TomDtm_PwmHl_init(&driverData, &driverConfig);
 *   IfxGtm_TomDtm_PwmHl_stdIfPwmHlInit(pwmhl, &driverData);
 * \endcode
 *
 *   During run-time, \ref library_srvsw_stdif_pwmhl "the interface functions" shall be used, e.g.:
 * \code
 *   IfxStdIf_Timer* timer = IfxStdIf_PwmHl_getTimer(pwmhl);
 *   Ifx_TimerValue onTime[3]; // assume configured for three HL channels
 *
 *   onTime[0] = 10;
 *   onTime[1] = 20;
 *   onTime[2] = 30;
 *
 *   IfxStdIf_Timer_disableUpdate(timer);
 *   IfxStdIf_Timer_setPeriod(timer, period);
 *   IfxStdIf_PwmHl_setOnTime(pwmhl, onTime);
 *   IfxStdIf_Timer_applyUpdate(timer);
 * \endcode
 *
 * \defgroup IfxLld_Gtm_Tom_Dtm_PwmHl TOM DTM Interface Driver
 * \ingroup IfxLld_Gtm_Tom
 */

#ifndef IFXGTM_TOM_DTM_PWMHL_H
#define IFXGTM_TOM_DTM_PWMHL_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "StdIf/IfxStdIf_PwmHl.h"
#include "Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
#include "Gtm/Std/IfxGtm_Dtm.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Maximal number of channels handled by the driver. One channel has a top and bottom pwm output
 */
#define IFXGTM_TOM_DTM_PWMHL_MAX_NUM_CHANNELS      (3)

#define IFXGTM_TOM_DTM_PWMHL_MAX_DEADTIME_IN_TICKS (1023)

/******************************************************************************/
/*------------------------------Type Definitions------------------------------*/
/******************************************************************************/

typedef struct IfxGtm_Tom_Dtm_PwmHl_s IfxGtm_TomDtm_PwmHl;

typedef void                        (*IfxGtm_Tom_Dtm_PwmHl_Update)(IfxGtm_TomDtm_PwmHl *driver, Ifx_TimerValue *tOn);

typedef void                        (*IfxGtm_Tom_Dtm_PwmHl_UpdateShift)(IfxGtm_TomDtm_PwmHl *driver, Ifx_TimerValue *tOn, Ifx_TimerValue *shift);

typedef void                        (*IfxGtm_Tom_Dtm_PwmHl_UpdatePulse)(IfxGtm_TomDtm_PwmHl *driver, float32 *tOn, float32 *offset);

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \brief Multi-channels PWM object definition (channels only)
 */
typedef struct
{
    Ifx_TimerValue  deadtime;               /**< \brief Dead time between the top and bottom channel in ticks */
    Ifx_TimerValue  minPulse;               /**< \brief minimum pulse that is output, shorter pulse time will be output as 0% duty cycle */
    Ifx_TimerValue  maxPulse;               /**< \brief internal parameter */
    Ifx_Pwm_Mode    mode;                   /**< \brief actual PWM mode */
    sint8           setMode;                /**< \brief A non zero flag indicates that the PWM mode is being modified */
    Ifx_ActiveState ccxActiveState;         /**< \brief Top PWM active state */
    Ifx_ActiveState coutxActiveState;       /**< \brief Bottom PWM active state */
    boolean         inverted;               /**< \brief Flag indicating the center aligned inverted mode (TRUE) */
    uint8           channelCount;           /**< \brief Number of PWM channels, one channel is made of a top and bottom channel */
} IfxGtm_Tom_Dtm_PwmHl_Base;

/** \brief GTM TOM: PWM HL configuration
 */
typedef struct
{
    IfxStdIf_PwmHl_Config          base;                /**< \brief PWM HL standard interface configuration */
    IfxGtm_Tom_Timer              *timer;               /**< \brief Pointer to the linked timer object */
    IfxGtm_Tom                     tom;                 /**< \brief TOM unit used */
    IFX_CONST IfxGtm_Tom_ToutMapP *ccx;                 /**< \brief Pointer to an array of size pwmHl.channels.channelCount containing the channels used. Channels must be adjacent channels */
    IFX_CONST IfxGtm_Tom_ToutMapP *coutx;               /**< \brief Pointer to an array of size pwmHl.channels.channelCount containing the channels used. Channels must be adjacent channels */
    IfxGtm_Dtm_ClockSource         deadTimeClock;       /**< \brief Clock used for the dead time generation */
    boolean                        initPins;            /**< \brief TRUE: Initialize pins in driver, FALSE: Don't initialize pins in driver. User handles separately. */
} IfxGtm_Tom_Dtm_PwmHl_Config;

/** \brief Structure for PWM configuration
 */
typedef struct
{
    Ifx_Pwm_Mode                     mode;                 /**< \brief PWM mode */
    boolean                          inverted;             /**< \brief Inverted configuration for the selected mode */
    IfxGtm_Tom_Dtm_PwmHl_Update      update;               /**< \brief update call back function for the selected mode */
    IfxGtm_Tom_Dtm_PwmHl_UpdateShift updateAndShift;       /**< \brief update shift call back function for the selected mode */
    IfxGtm_Tom_Dtm_PwmHl_UpdatePulse updatePulse;          /**< \brief update pulse call back function for the selected mode */
} IfxGtm_Tom_Dtm_PwmHl_Mode;

/** \brief GTM TOM PWM driver
 */
struct IfxGtm_Tom_Dtm_PwmHl_s
{
    IfxGtm_Tom_Dtm_PwmHl_Base        base;                                                    /**< \brief Multi-channels PWM object definition (channels only) */
    IfxGtm_Tom_Timer                *timer;                                                   /**< \brief Pointer to the linked timer object */
    IfxGtm_Tom_Dtm_PwmHl_Update      update;                                                  /**< \brief update call back function for the selected mode */
    IfxGtm_Tom_Dtm_PwmHl_UpdateShift updateAndShift;                                          /**< \brief update shift call back function for the selected mode */
    IfxGtm_Tom_Dtm_PwmHl_UpdatePulse updatePulse;                                             /**< \brief update pulse call back function for the selected mode */
    Ifx_GTM_TOM                     *tom;                                                     /**< \brief TOM unit used */
    Ifx_GTM_TOM_TGC                 *tgc;                                                     /**< \brief TGC unit used */
    IfxGtm_Tom_Ch                    ccx[IFXGTM_TOM_DTM_PWMHL_MAX_NUM_CHANNELS];              /**< \brief TOM channels used for the CCCX outputs */
    IfxGtm_Tom_Ch                    coutx[IFXGTM_TOM_DTM_PWMHL_MAX_NUM_CHANNELS];            /**< \brief TOM channels used for the OUTX outputs */
    Ifx_GTM_CDTM_DTM                *dtm[IFXGTM_TOM_DTM_PWMHL_MAX_NUM_CHANNELS];              /**< \brief Dead time module (DTM) used. Matching the Tom */
    IfxGtm_Dtm_Ch                    dtmChannel[IFXGTM_TOM_DTM_PWMHL_MAX_NUM_CHANNELS];       /**< \brief DTM channel used */
    float32                          dtmClockFreq;                                            /**< \brief Deadtime module input clock frequency (cached value) */
};

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \brief Initializes the GTM TOM DTM PWM HL driver with the provided configuration.
 *
 * \note note To ensure that the channels counter are reset by the timer and do not overflow, leading to random signal on the output, the timer must be started before the call to this function.
 *
 * \param[inout] driver Pointer to GTM TOM PWM driver object to be initialized.
 * \param[in]    config Configuration structure containing PWM HL settings.
 *
 * \retval TRUE Initialization successful.
 *         FALSE Initialization failed.
 */
IFX_EXTERN boolean IfxGtm_Tom_Dtm_PwmHl_init(IfxGtm_TomDtm_PwmHl *driver, const IfxGtm_Tom_Dtm_PwmHl_Config *config);

/**
 * \brief Initializes the configuration structure to default values.
 *
 * \param[inout] config Pointer to the configuration structure to be initialized.
 *                  	This structure contains various parameters required for PWM HL
 *                  	operation, including standard interface settings, timer links,
 *                  	and initialization flags.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Tom_Dtm_PwmHl_initConfig(IfxGtm_Tom_Dtm_PwmHl_Config *config);

/**
 * \brief Returns the dead time of the GTM TOM PWM driver instance.
 *
 * \param[in] driver Pointer to the GTM TOM PWM driver instance.
 *
 * \retval float32 The dead time value in seconds.

 */
IFX_EXTERN float32 IfxGtm_Tom_Dtm_PwmHl_getDeadtime(IfxGtm_TomDtm_PwmHl *driver);

/**
 */
/**
 * \brief Retrieves the current dead time configuration in tick units for the PWM HL driver.
 *
 * \param[in] driver Pointer to the GTM TOM PWM driver instance.
 *
 * \retval Ifx_TickTime The current dead time value in tick units.
 */
IFX_EXTERN Ifx_TickTime IfxGtm_Tom_Dtm_PwmHl_getDeadtimeTick(IfxGtm_TomDtm_PwmHl *driver);

/**
 * \brief Returns the minimum pulse width value for the PWM HL driver
 *
 * \param[in] driver Pointer to the GTM TOM PWM driver instance.
 *
 * \retval float32 The minimum pulse width value that can be set for the PWM signal
 */
IFX_EXTERN float32 IfxGtm_Tom_Dtm_PwmHl_getMinPulse(IfxGtm_TomDtm_PwmHl *driver);

/**
 * \brief Retrieves the current PWM mode configuration.
 *
 * \param[in] driver Pointer to the GTM TOM PWM driver instance.
 *
 * \retval Ifx_Pwm_Mode The current PWM mode. Range: \ref Ifx_Pwm_Mode
 */
IFX_EXTERN Ifx_Pwm_Mode IfxGtm_Tom_Dtm_PwmHl_getMode(IfxGtm_TomDtm_PwmHl *driver);

/**
 * \brief Configures the dead time for the GTM TOM PWM driver.
 *
 * \param[inout] driver   Pointer to the GTM TOM PWM driver instance.
 * \param[in]    deadtime The dead time value to be set (unit: seconds).
 *
 * \retval TRUE If the dead time was successfully set.
 *         FALSE If the dead time setting failed.
 */
IFX_EXTERN boolean IfxGtm_Tom_Dtm_PwmHl_setDeadtime(IfxGtm_TomDtm_PwmHl *driver, float32 deadtime);


/**
 * \brief Sets the minimum pulse width for the PWM signal.
 *
 * \param[inout] driver   Pointer to the GTM TOM PWM driver instance.
 * \param[in]    minPulse Minimum pulse width value (in seconds).
 *
 * \retval TRUE If the minimum pulse was successfully set.
 *         FALSE If the operation failed.
 */
IFX_EXTERN boolean IfxGtm_Tom_Dtm_PwmHl_setMinPulse(IfxGtm_TomDtm_PwmHl *driver, float32 minPulse);

/**
 * \brief Sets the PWM mode, which will be applied after calling setOnTime() and applyUpdate().
 *
 * \param[inout] driver Pointer to the GTM TOM PWM driver instance.
 * \param[in]    mode   Pwm mode to be set. Range: \ref Ifx_Pwm_Mode
 *
 * \retval TRUE If mode set successfully.
 *         FALSE If mode setting failed.
 */
IFX_EXTERN boolean IfxGtm_Tom_Dtm_PwmHl_setMode(IfxGtm_TomDtm_PwmHl *driver, Ifx_Pwm_Mode mode);

/**
 * \brief Sets the ON time for the PWM signal.
 *
 * \param[inout] driver Pointer to the GTM TOM PWM driver instance.
 * \param[in]    tOn    Pointer to the timer value specifying the ON time.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Tom_Dtm_PwmHl_setOnTime(IfxGtm_TomDtm_PwmHl *driver, Ifx_TimerValue *tOn);

/** \brief Sets the ON time and Shift.
 *
 * \param[inout] driver Pointer to the GTM TOM PWM driver instance.
 * \param[in]    tOn    Pointer to the timer value specifying the ON time.
 * \param[in]    shift  Pointer to the timer value specifying the shift value in ticks.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Tom_Dtm_PwmHl_setOnTimeAndShift(IfxGtm_TomDtm_PwmHl *driver, Ifx_TimerValue *tOn, Ifx_TimerValue *shift);

/**
 * \brief Configures the PWM signal with specified ON times and offset values for all phases.
 *
 * \param[inout] driver Pointer to the GTM TOM PWM driver instance.
 * \param[in]    tOn    Array of ON times for each phase. The array contains values for phase 0 top, phase 1 top, ..., phase 0 bottom, phase 1 bottom, etc.
 * \param[in]    offset Array of offset values for each phase. The array contains values for phase 0 top, phase 1 top, ..., phase 0 bottom, phase 1 bottom, etc.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Tom_Dtm_PwmHl_setPulse(IfxGtm_TomDtm_PwmHl *driver, float32 *tOn, float32 *offset);

/**
 * \brief Sets up the PWM channels for the GTM TOM driver
 * 
 * \param[inout] driver   Pointer to the GTM TOM PWM driver instance.
 * \param[in]    activeCh Pointer to a boolean indicating active channels.
 * \param[in]    stuckSt  Pointer to a boolean indicating stuck states.
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Tom_Dtm_PwmHl_setupChannels(IfxGtm_TomDtm_PwmHl *driver, boolean *activeCh, boolean *stuckSt);

/**
 * \brief Initializes the standard interface PWM.
 *
 * \param[inout] stdif  Standard interface object that will be initialized by the function.
 * \param[in]    driver Interface driver to be used by the standard interface. Must be initialized separately.
 *
 * \retval TRUE If initialization was successful.
 * 	 	   FALSE If initialization failed.
 */
IFX_EXTERN boolean IfxGtm_Tom_Dtm_PwmHl_stdIfPwmHlInit(IfxStdIf_PwmHl *stdif, IfxGtm_TomDtm_PwmHl *driver);
#endif /* IFXGTM_TOM_DTM_PWMHL_H */
