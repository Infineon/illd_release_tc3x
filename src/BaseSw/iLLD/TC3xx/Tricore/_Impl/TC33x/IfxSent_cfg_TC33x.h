/**
 * \file IfxSent_cfg_TC33x.h
 * \brief SENT on-chip implementation data
 * \ingroup IfxLld_Sent
 *
 * \version iLLD_1_22_0
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
 *
 *
 * \defgroup IfxLld_Sent SENT
 * \ingroup IfxLld
 * \defgroup IfxLld_Sent_Impl Implementation
 * \ingroup IfxLld_Sent
 * \defgroup IfxLld_Sent_Std Standard Driver
 * \ingroup IfxLld_Sent
 */

#ifndef IFXSENT_CFG_TC33X_H
#define IFXSENT_CFG_TC33X_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Specifies all interrupt events
 */
#define IFXSENT_CFG_CHANNEL_INTEN (0x1FEDU)

/** \brief Specifies the step range for calculating module clock
 */
#define IFXSENT_CFG_STEP_RANGE    (1024)

/** \brief Specifies timeout value in transmission
 */
#define IFXSENT_CFG_TIMEOUT_VALUE ((uint16)0xFFFFU)

#define IFXSENT_NUM_CHANNELS      (6)

#define IFXSENT_NUM_MODULES       (1)

/******************************************************************************/
/*-------------------------------Enumerations---------------------------------*/
/******************************************************************************/

/** \brief Specifies the channel Id
 */
typedef enum
{
    IfxSent_ChannelId_0    = 0,  /**< \brief Specifies the channel Id 0 */
    IfxSent_ChannelId_1    = 1,  /**< \brief Specifies the channel Id 1 */
    IfxSent_ChannelId_2    = 2,  /**< \brief Specifies the channel Id 2 */
    IfxSent_ChannelId_3    = 3,  /**< \brief Specifies the channel Id 3 */
    IfxSent_ChannelId_4    = 4,  /**< \brief Specifies the channel Id 4 */
    IfxSent_ChannelId_5    = 5,  /**< \brief Specifies the channel Id 5 */
    IfxSent_ChannelId_none = -1  /**< \brief None Sent channels */
} IfxSent_ChannelId;

#endif /* IFXSENT_CFG_TC33X_H */
