/**
 * \file IfxGtm_Psm.h
 * \brief GTM  basic functionality
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
 *
 * This Module provides the standard interfaces to manipulate and read PSM sub-module registers in GTM.
 * This Module can be used to abstract the register names and addressing from higher layer software code.
 * PSM includes:
 * FIFO, A2F (AEI to FIFO) and F2A (FIFO to ARU) Interfaces.
 *
 * \defgroup IfxLld_Gtm_Std_Psm PSM
 * \ingroup IfxLld_Gtm_Std
 * \defgroup IfxLld_Gtm_Std_Psm_PSMDataStructures PSM Data Structures
 * \ingroup IfxLld_Gtm_Std_Psm
 * \defgroup IfxLld_Gtm_Std_Psm_PSMEnumerations PSM Enumerations
 * \ingroup IfxLld_Gtm_Std_Psm
 * \defgroup IfxLld_Gtm_Std_Psm_PSMFunctions PSM Functions
 * \ingroup IfxLld_Gtm_Std_Psm
 */

#ifndef IFXGTM_PSM_H
#define IFXGTM_PSM_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxGtm_cfg.h"
#include "IfxGtm.h"
#include "_Impl/IfxGtm_cfg.h"
#include "_Utilities/Ifx_Assert.h"
#include "Src/Std/IfxSrc.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Std_Psm_PSMEnumerations
 * \{ */
/** \brief Enumeration listing the F2A streams
 */
typedef enum
{
    IfxGtm_Psm_F2aStream_0,     /**< \brief F2A Stream 0  */
    IfxGtm_Psm_F2aStream_1,     /**< \brief F2A Stream 1  */
    IfxGtm_Psm_F2aStream_2,     /**< \brief F2A Stream 2  */
    IfxGtm_Psm_F2aStream_3,     /**< \brief F2A Stream 3  */
    IfxGtm_Psm_F2aStream_4,     /**< \brief F2A Stream 4  */
    IfxGtm_Psm_F2aStream_5,     /**< \brief F2A Stream 5  */
    IfxGtm_Psm_F2aStream_6,     /**< \brief F2A Stream 6  */
    IfxGtm_Psm_F2aStream_7      /**< \brief F2A Stream 7  */
} IfxGtm_Psm_F2aStream;

/** \brief Enumeration lisitng the enabled/disabled state of the F2A channel streams.
 */
typedef enum
{
    IfxGtm_Psm_F2aStreamState_readDisabled = 0,  /**< \brief Read as disabled. */
    IfxGtm_Psm_F2aStreamState_disabled     = 1,  /**< \brief Stream disabled and states reset */
    IfxGtm_Psm_F2aStreamState_enabled      = 2,  /**< \brief Stream enabled */
    IfxGtm_Psm_F2aStreamState_readEnabled  = 3   /**< \brief Read as enabled. */
} IfxGtm_Psm_F2aStreamState;

/** \brief Enumeration listing the transfer direction of the F2a Streams.
 * Definition in F2A_CH_STR_CFG.B.DIR
 */
typedef enum
{
    IfxGtm_Psm_F2aTransferDirection_aruToFifo = 0,  /**< \brief ARU to FIFO transfer */
    IfxGtm_Psm_F2aTransferDirection_fifoToAru = 1   /**< \brief FIFO to ARU transfer */
} IfxGtm_Psm_F2aTransferDirection;

/** \brief Enumeration listing the Transfer Mode of the F2A.
 * Definition in F2A_CH_STR_CFG.TMODE
 */
typedef enum
{
    IfxGtm_Psm_F2aTransferMode_transferLowWord   = 0, /**< \brief Transfer ARU bits 23:0 from/to FIFO */
    IfxGtm_Psm_F2aTransferMode_transferHighWord  = 1, /**< \brief Transfer ARU bits 47:24 from/to FIFO */
    IfxGtm_Psm_F2aTransferMode_transferBothWords = 2  /**< \brief Transfer Both words from/to FIFO */
} IfxGtm_Psm_F2aTransferMode;

/** \brief Enumeration lisiting Fifo Channels
 */
typedef enum
{
    IfxGtm_Psm_FifoChannel_0,     /**< \brief FIFO  Channel 0  */
    IfxGtm_Psm_FifoChannel_1,     /**< \brief FIFO  Channel 1  */
    IfxGtm_Psm_FifoChannel_2,     /**< \brief FIFO  Channel 2  */
    IfxGtm_Psm_FifoChannel_3,     /**< \brief FIFO  Channel 3  */
    IfxGtm_Psm_FifoChannel_4,     /**< \brief FIFO  Channel 4  */
    IfxGtm_Psm_FifoChannel_5,     /**< \brief FIFO  Channel 5  */
    IfxGtm_Psm_FifoChannel_6,     /**< \brief FIFO  Channel 6  */
    IfxGtm_Psm_FifoChannel_7      /**< \brief FIFO  Channel 7  */
} IfxGtm_Psm_FifoChannel;

/** \brief Enumeration list of the DMA direction in hysteresis modes.\n
 * definition in FIFO_CH_IRQ_MODE.DMA_HYST_DIR
 */
typedef enum
{
    IfxGtm_Psm_FifoChannelDmaHystDir_read  = 0, /**< \brief read direction */
    IfxGtm_Psm_FifoChannelDmaHystDir_write = 1  /**< \brief write */
} IfxGtm_Psm_FifoChannelDmaHystDir;

/** \brief Interrupts of the Fifo Channel
 */
typedef enum
{
    IfxGtm_Psm_FifoChannelInterrupt_empty   = 0,  /**< \brief empty Fifo Channel */
    IfxGtm_Psm_FifoChannelInterrupt_full    = 1,  /**< \brief full fifo channel */
    IfxGtm_Psm_FifoChannelInterrupt_lowerWm = 2,  /**< \brief Lower watermark reached */
    IfxGtm_Psm_FifoChannelInterrupt_upperWm = 3   /**< \brief Upper watermark reached, */
} IfxGtm_Psm_FifoChannelInterrupt;

/** \brief Enumeration list for modes of FIFO operation.\n
 * Definition in FIFO_CH_CTRL.RBM
 */
typedef enum
{
    IfxGtm_Psm_FifoChannelMode_normal     = 0, /**< \brief normal mode of operation */
    IfxGtm_Psm_FifoChannelMode_ringBuffer = 1  /**< \brief Ring Buffer Mode */
} IfxGtm_Psm_FifoChannelMode;

/** \brief Enumeration listing the Fifo Channel Status.\n
 * Definition in FIFO_CH_STATUS register.
 */
typedef enum
{
    IfxGtm_Psm_FifoChannelStatus_empty   = 0,  /**< \brief empty */
    IfxGtm_Psm_FifoChannelStatus_full    = 1,  /**< \brief full */
    IfxGtm_Psm_FifoChannelStatus_lowerWm = 2,  /**< \brief Lower Watermark reached */
    IfxGtm_Psm_FifoChannelStatus_upperWm = 3,  /**< \brief Upper Watermark reached */
    IfxGtm_Psm_FifoChannelStatus_normal  = 4   /**< \brief normal running status */
} IfxGtm_Psm_FifoChannelStatus;

/** \brief List of mode of interrupt
 * Definition in FIFO_CH_IRQ_MODE.IRQ_MODE
 */
typedef enum
{
    IfxGtm_Psm_InterruptMode_level       = 0,  /**< \brief level mode */
    IfxGtm_Psm_InterruptMode_pulse       = 1,  /**< \brief pulse mode */
    IfxGtm_Psm_InterruptMode_pulseNotify = 2,  /**< \brief pulse notify mode */
    IfxGtm_Psm_InterruptMode_singlePulse = 3   /**< \brief single pulse mode */
} IfxGtm_Psm_InterruptMode;

/** \} */

/** \addtogroup IfxLld_Gtm_Std_Psm_PSMFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \brief Configures the specified FIFO channel with the selected mode of operation.
 *
 * \param[in] fifo      The FIFO object whose channel mode is to be set. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel   The FIFO channel to configure. Range: 0 to 7. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] mode      The mode of operation for the FIFO channel. Range: \ref IfxGtm_Psm_FifoChannelMode
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_setChannelMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelMode mode);

/**
 * \brief Retrieves a pointer to the FIFO channel's Special Function Register (SFR)
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval Ifx_GTM_PSM_FIFO_CH* Pointer to the FIFO channel SFR.
 */
IFX_INLINE Ifx_GTM_PSM_FIFO_CH *IfxGtm_Psm_Fifo_getChannelPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Retrieves a pointer to the FIFO object's SFR block.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 *
 * \retval Ifx_GTM_PSM_FIFO* Pointer to the FIFO SFR block.
 */
IFX_INLINE Ifx_GTM_PSM_FIFO *IfxGtm_Psm_Fifo_getPointer(IfxGtm_Psm_Fifo fifo);

/**
 * \brief Flushes the contents of the specified FIFO channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_flushChannelFifo(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Enables direct RAM access to the specified FIFO.
 *
 * This function unlocks the direct RAM access for the specified FIFO, allowing RAM write access to all its channels.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_enableRamAccess(IfxGtm_Psm_Fifo fifo);

/**
 * \brief Disables Direct RAM access to the specified Fifo.
 *  This function disables direct RAM access for the given Fifo object, and the setting applies to all channels of the specified Fifo.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_disableRamAccess(IfxGtm_Psm_Fifo fifo);

/**
 * \brief Retrieves the logical start address of the specified FIFO channel.
 *  The address range is 0 - (IFXGTM_PSM_FIFORAMSIZE - 1).
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 The logical start address of the specified FIFO channel.
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelStartAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Gets the logical end address of the specified FIFO channel.
 *  The address range is 0 - (IFXGTM_PSM_FIFORAMSIZE-1).
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 The end address of the specified FIFO channel.
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelEndAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Gets the RAM size usage of the specified FIFO channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 The size of the FIFO channel.
 *
 * \details
 *  The size is calculated as (END_ADDRESS - START_ADDRESS) + 1.
 *  Each unit is 29 bits wide.
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelSize(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Gets the fill level of the specified FIFO channel.
 * 
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * 
 * \retval uint32 The fill level of the FIFO channel, in the range: 
 *                0 < Level <= ( (END_ADDRESS - START_ADDRESS) + 1 )
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelFillLevel(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/** 
 * \brief Get the upper watermark address of the Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 Upper Watermark address. ADDR must be in range:
 *                0 <= ADDR <= FIFO[i]_CH[x]_END_ADDR - FIFO[i]_CH[x]_START_ADDR.
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelUpperWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Get the Lower watermark address of the Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 Lower Watermark address. ADDR must be in range:
 *				  0 <= ADDR <= FIFO[i]_CH[z]_END_ADDR - FIFO[i]_CH[z]_START_ADDR.
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelLowerWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Get the write pointer of the specified Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 Write Pointer. Range: 0 to 1023
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelWritePtr(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Get the read pointer of the specified Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval uint32 Read Pointer. Range: 0 to 1023
 */
IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelReadPtr(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Gets the status of an interrupt raised for a specific FIFO channel.
 *
 * \param[in] fifo      The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel   The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] interrupt The type of interrupt to check. Range: \ref IfxGtm_Psm_FifoChannelInterrupt
 *
 * \retval TRUE If the specified interrupt is active for the given channel.
 *         FALSE If the specified interrupt is not active for the given channel.
 */
IFX_INLINE boolean IfxGtm_Psm_Fifo_getChannelInterruptStatus(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt);

/**
 * \brief Configures the interrupt mode for a specified channel of the FIFO module.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] irqmode The interrupt mode to be set for the specified channel. Range: \ref IfxGtm_Psm_InterruptMode
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_setChannelInterruptMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_InterruptMode irqmode);

/**
 * \brief Configures the DMA hysteresis mode for a specific FIFO channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] enabled Boolean flag to enable or disable the DMA hysteresis mode. Range: TRUE or FALSE
 * \param[in] dir     The direction of the DMA hysteresis. Range: \ref IfxGtm_Psm_FifoChannelDmaHystDir
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_setChannelDmaHystMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, boolean enabled, IfxGtm_Psm_FifoChannelDmaHystDir dir);

/**
 * \brief Clears the interrupt of specified type for the given FIFO channel.
 *
 * \param[in] fifo      The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel   The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] interrupt The type of interrupt to clear. Range: \ref IfxGtm_Psm_FifoChannelInterrupt
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_clearChannelInterrupt(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt);

/**
 * \brief Clears all interrupts for the specified FIFO channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Fifo_clearAllChannelInterrupts(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Retrieves a pointer to the F2A of the specified Fifo object.
 *
 * \param[in] f2a The f2a object. Range: \ref IfxGtm_Psm_F2a
 *
 * \retval Ifx_GTM_PSM_F2A* Pointer to the F2A object SFR.
 */
IFX_INLINE Ifx_GTM_PSM_F2A *IfxGtm_Psm_F2a_getPointer(IfxGtm_Psm_F2a f2a);

/**
 * \brief Sets the ARU read address for the specified F2A stream.
 *
 * \param[in] f2a 	    The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 * \param[in] address   The ARU read address to set. Range: 0 to 0x1FF
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_F2a_setAruReadAddress(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, uint32 address);

/**
 * \brief Configures the transfer mode for the specified F2A stream.
 *
 * \param[in] f2a 		The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 * \param[in] mode      The transfer mode to set. Range: \ref IfxGtm_Psm_F2aTransferMode
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_F2a_setTransferMode(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, IfxGtm_Psm_F2aTransferMode mode);

/**
 * \brief Retrieves the current transfer mode configuration for the specified F2A stream.
 *
 * \param[in] f2a 		The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 *
 * \retval IfxGtm_Psm_F2aTransferMode The current transfer mode of the specified F2A stream. Range: \ref IfxGtm_Psm_F2aTransferMode
 */
IFX_INLINE IfxGtm_Psm_F2aTransferMode IfxGtm_Psm_F2a_getTransferMode(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream);

/**
 * \brief Configures the transfer direction of the specified F2A stream.
 *
 * \param[in] f2a 	    The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 * \param[in] dir       The transfer direction to set. Range: \ref IfxGtm_Psm_F2aTransferDirection
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_F2a_setTransferDirection(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, IfxGtm_Psm_F2aTransferDirection dir);

/**
 * \brief Retrieves the transfer direction of the specified F2A stream.
 *
 * \param[in] f2a       The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 *
 * \retval IfxGtm_Psm_F2aTransferDirection The transfer direction of the specified F2A stream. Range: \ref IfxGtm_Psm_F2aTransferDirection
 */
IFX_INLINE IfxGtm_Psm_F2aTransferDirection IfxGtm_Psm_F2a_getTransferDirection(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream);

/**
 * \brief Retrieves the SRC pointer for the specified FIFO channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval Ifx_SRC_SRCR* Pointer to the SRC register of the specified FIFO channel.
 */
IFX_INLINE Ifx_SRC_SRCR *IfxGtm_Psm_Fifo_getChannelSrcPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Get the Pointer to the AFD buffer for Fifo channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval Ifx_GTM_PSM_AFD_CH* afd channel pointer.
 */
IFX_INLINE Ifx_GTM_PSM_AFD_CH *IfxGtm_Psm_Afd_getChannelPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Writes the data into the Buffer access register of specified Fifo Channel
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param data        The data value to be written. Range: 0x00000000 to 0x1FFFFFFF.
 *
 * \retval None
 */
IFX_INLINE void IfxGtm_Psm_Afd_writeChannelBuffer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 data);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \brief Set the logical end address for the specified Fifo Channel.
 *  The address range is 0 - (IFXGTM_PSM_FIFORAMSIZE - 1).
 *  END address should be in range: START address<address<IFXGTM_PSM_FIFORAMSIZE
 *
 * Caution: A modification of the address will flush the corresponding Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] address The end address of the FIFO Channel. Range: (START address + 1) to (IFXGTM_PSM_FIFORAMSIZE - 1).
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelEndAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 address);

/**
 * \brief Set the logical start address for the specified Fifo Channel.
 *  The address range is 0 - (IFXGTM_PSM_FIFORAMSIZE - 1).
 *  START address should be in range: 0<address<IFXGTM_PSM_FIFORAMSIZE
 *
 * Caution: A modification of the address will flush the corresponding Fifo Channel.
 * 
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] address Start address of the FIFO Channel. Range: 0 <= address < IFXGTM_PSM_FIFORAMSIZE
 * 
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelStartAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 address);

/**
 * \brief Set the RAM size of the specified FIFO channel.
 *  The RAM size should be in range: 0 - ((IFXGTM_PSM_FIFORAMSIZE - START address) + 1)
 *
 * Caution: This will modify the END address of the Fifo Channel RAM.
 * This will also flush the FIFO as the END address gets modified.
 * 
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] size    The size of the FIFO channel. Range: 0 to ((IFXGTM_PSM_FIFORAMSIZE - START address) + 1)
 *                  
 * 
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelSize(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 size);

/**
 * \brief Sets the upper watermark level for the specified FIFO channel.
 *  The Upper watermark must be in range: 0 < addr < (END_ADDRESS - START_ADDRESS)
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param[in] upperWm The upper watermark level to set. Range: 0 < upperWm < (END_ADDRESS - START_ADDRESS)
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelUpperWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 upperWm);

/** 
 * \brief set the lower watermark of the specified Fifo Channel.
 *  Lower watermark must be in range: 0 < addr < (END_ADDRESS - START_ADDRESS)
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param lowerWm Lower Watermark level to set. Range: 0 < lowerWm < (END_ADDRESS - START_ADDRESS)
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelLowerWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 lowerWm);

/**
 * \brief Get the Status of the Fifo Channel.
 *  Returns either Full, Empty, Upper WM or Lower WM reached status.
 *  If none of the above, it will return "normal" status.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 *
 * \retval IfxGtm_Psm_FifoChannelStatus Status of the Fifo Channel. Range: \ref IfxGtm_Psm_FifoChannelStatus
 */
IFX_EXTERN IfxGtm_Psm_FifoChannelStatus IfxGtm_Psm_Fifo_getChannelStatus(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel);

/**
 * \brief Enable the interrupt type.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param interrupt The interrupt type. Range: \ref IfxGtm_Psm_FifoChannelInterrupt
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_enableChannelInterrupt(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt);

/**
 * \brief Disable the interrupt for Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param interrupt The interrupt type. Range: \ref IfxGtm_Psm_FifoChannelInterrupt
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_disableChannelInterrupt(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt);

/**
 * \brief Forces the Interrupt from Fifo Channel.
 *
 * \param[in] fifo    The FIFO object. Range: \ref IfxGtm_Psm_Fifo
 * \param[in] channel The FIFO channel. Range: \ref IfxGtm_Psm_FifoChannel
 * \param interrupt The interrupt type. Range: \ref IfxGtm_Psm_FifoChannelInterrupt
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_Fifo_setChannelInterrupt(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt);

/**
 * \brief Enable the selected stream of the F2A.
 *
 * \param[in] f2a       The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 *
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_F2a_enableStream(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream);

/**
 * \brief Disables the specified stream of the F2A.
 *
 * \param[in] f2a       The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 * \retval None
 */
IFX_EXTERN void IfxGtm_Psm_F2a_disableStream(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream);

/**
 * \brief Get the state of the specified fifo stream.
 *
 * \param[in] f2a       The f2a object. Range: \ref IfxGtm_Psm_F2a
 * \param[in] f2aStream The F2A stream number. Range: \ref IfxGtm_Psm_F2aStream
 *
 * \retval IfxGtm_Psm_F2aStreamState stream state. Range: \ref IfxGtm_Psm_F2aStreamState
 */
IFX_EXTERN IfxGtm_Psm_F2aStreamState IfxGtm_Psm_F2a_getStreamState(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxGtm_Psm_Fifo_setChannelMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelMode mode)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->CTRL.B.RBM = (uint32)mode;
}


IFX_INLINE Ifx_GTM_PSM_FIFO_CH *IfxGtm_Psm_Fifo_getChannelPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    return (Ifx_GTM_PSM_FIFO_CH *)&(MODULE_GTM.PSM[fifo].FIFO.CH[channel]);
}


IFX_INLINE Ifx_GTM_PSM_FIFO *IfxGtm_Psm_Fifo_getPointer(IfxGtm_Psm_Fifo fifo)
{
    return (Ifx_GTM_PSM_FIFO *)&(MODULE_GTM.PSM[fifo].FIFO);
}


IFX_INLINE void IfxGtm_Psm_Fifo_flushChannelFifo(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->CTRL.B.FLUSH = (uint32)1;
}


IFX_INLINE void IfxGtm_Psm_Fifo_enableRamAccess(IfxGtm_Psm_Fifo fifo)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, (IfxGtm_Psm_FifoChannel)0);
    fifoCh->CTRL.B.WULOCK = (uint32)1;
}


IFX_INLINE void IfxGtm_Psm_Fifo_disableRamAccess(IfxGtm_Psm_Fifo fifo)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, (IfxGtm_Psm_FifoChannel)0);
    fifoCh->CTRL.B.WULOCK = (uint32)0;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelStartAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)fifoCh->START_ADDR.B.ADDR;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelEndAddress(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)fifoCh->END_ADDR.B.ADDR;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelSize(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)(((uint32)fifoCh->END_ADDR.B.ADDR - (uint32)fifoCh->START_ADDR.B.ADDR) + (uint32)1);
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelFillLevel(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)fifoCh->FILL_LEVEL.B.LEVEL;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelUpperWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)fifoCh->UPPER_WM.B.ADDR;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelLowerWatermark(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    return (uint32)fifoCh->LOWER_WM.B.ADDR;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelWritePtr(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);

    return (uint32)fifoCh->WR_PTR.B.ADDR;
}


IFX_INLINE uint32 IfxGtm_Psm_Fifo_getChannelReadPtr(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);

    return (uint32)fifoCh->RD_PTR.B.ADDR;
}


IFX_INLINE boolean IfxGtm_Psm_Fifo_getChannelInterruptStatus(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh     = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    uint32               irq_notify = (uint32)fifoCh->IRQ.NOTIFY.U;
    return ((irq_notify >> interrupt) & (uint32)1) == (uint32)1;
}


IFX_INLINE void IfxGtm_Psm_Fifo_setChannelInterruptMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_InterruptMode irqmode)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->IRQ.MODE.B.IRQ_MODE = irqmode;
}


IFX_INLINE void IfxGtm_Psm_Fifo_setChannelDmaHystMode(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, boolean enabled, IfxGtm_Psm_FifoChannelDmaHystDir dir)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->IRQ.MODE.B.DMA_HYSTERESIS = (uint32)enabled;
    fifoCh->IRQ.MODE.B.DMA_HYST_DIR   = (uint32)dir;
}


IFX_INLINE void IfxGtm_Psm_Fifo_clearChannelInterrupt(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, IfxGtm_Psm_FifoChannelInterrupt interrupt)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->IRQ.NOTIFY.U |= ((uint32)1 << (uint32)interrupt);
}


IFX_INLINE void IfxGtm_Psm_Fifo_clearAllChannelInterrupts(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    Ifx_GTM_PSM_FIFO_CH *fifoCh = IfxGtm_Psm_Fifo_getChannelPointer(fifo, channel);
    fifoCh->IRQ.NOTIFY.U |= (uint32)0xFu;
}


IFX_INLINE Ifx_GTM_PSM_F2A *IfxGtm_Psm_F2a_getPointer(IfxGtm_Psm_F2a f2a)
{
    return (Ifx_GTM_PSM_F2A *)&(MODULE_GTM.PSM[f2a].F2A);
}


IFX_INLINE void IfxGtm_Psm_F2a_setAruReadAddress(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, uint32 address)
{
    Ifx_GTM_PSM_F2A *f2aPtr = IfxGtm_Psm_F2a_getPointer(f2a);

    f2aPtr->RD_CH[f2aStream].ARU_RD_FIFO.B.ADDR = address;
}


IFX_INLINE void IfxGtm_Psm_F2a_setTransferMode(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, IfxGtm_Psm_F2aTransferMode mode)
{
    Ifx_GTM_PSM_F2A *f2aPtr = IfxGtm_Psm_F2a_getPointer(f2a);

    f2aPtr->STR_CH[f2aStream].STR_CFG.B.TMODE = (uint32)mode;
}


IFX_INLINE IfxGtm_Psm_F2aTransferMode IfxGtm_Psm_F2a_getTransferMode(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream)
{
    Ifx_GTM_PSM_F2A *f2aPtr = IfxGtm_Psm_F2a_getPointer(f2a);

    return (IfxGtm_Psm_F2aTransferMode)(f2aPtr->STR_CH[f2aStream].STR_CFG.B.TMODE);
}


IFX_INLINE void IfxGtm_Psm_F2a_setTransferDirection(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream, IfxGtm_Psm_F2aTransferDirection dir)
{
    Ifx_GTM_PSM_F2A *f2aPtr = IfxGtm_Psm_F2a_getPointer(f2a);

    f2aPtr->STR_CH[f2aStream].STR_CFG.B.DIR = (uint32)dir;
}


IFX_INLINE IfxGtm_Psm_F2aTransferDirection IfxGtm_Psm_F2a_getTransferDirection(IfxGtm_Psm_F2a f2a, IfxGtm_Psm_F2aStream f2aStream)
{
    Ifx_GTM_PSM_F2A *f2aPtr = IfxGtm_Psm_F2a_getPointer(f2a);

    return (IfxGtm_Psm_F2aTransferDirection)f2aPtr->STR_CH[f2aStream].STR_CFG.B.DIR;
}


IFX_INLINE Ifx_SRC_SRCR *IfxGtm_Psm_Fifo_getChannelSrcPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    return (Ifx_SRC_SRCR *)&MODULE_SRC.GTM_PSM[fifo][channel];
}


IFX_INLINE Ifx_GTM_PSM_AFD_CH *IfxGtm_Psm_Afd_getChannelPointer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel)
{
    return (Ifx_GTM_PSM_AFD_CH *)&(MODULE_GTM.PSM[fifo].AFD.CH[channel]);
}


IFX_INLINE void IfxGtm_Psm_Afd_writeChannelBuffer(IfxGtm_Psm_Fifo fifo, IfxGtm_Psm_FifoChannel channel, uint32 data)
{
    Ifx_GTM_PSM_AFD_CH *AfdCh = IfxGtm_Psm_Afd_getChannelPointer(fifo, channel);

    AfdCh->BUF_ACC.B.DATA = data;
}


#endif /* IFXGTM_PSM_H */
