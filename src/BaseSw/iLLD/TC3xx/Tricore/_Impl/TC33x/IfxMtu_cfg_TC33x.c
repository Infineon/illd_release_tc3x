/**
 * \file IfxMtu_cfg_TC33x.c
 * \brief Mtu on-chip implementation data
 *
 * \version iLLD_1_22_0
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Ifx_Cfg.h"
#if defined (__TASKING__)
#pragma warning 508		/* To suppress empty file warning */
#endif
#if defined (__ghs__)
#pragma diag_suppress 96		/* To suppress empty file warning */
#endif
#if defined DEVICE_TC33X

#include "IfxMtu_cfg_TC33x.h" 
#include "Mtu/Std/IfxMtu.h"

/******************************************************************************/
/*-----------------------Exported Variables/Constants-------------------------*/
/******************************************************************************/

const IfxMtu_SramItem           IfxMtu_sramTable[IFXMTU_NUM_MBIST_TABLE_ITEMS] = {
    {2 * 4, 16,  6,  0, 1}, /**< \brief IfxMtu_MbistSel_cpu0Dspr0 */
    {2 * 1, 19,  10, 0, 4}, /**< \brief IfxMtu_MbistSel_cpu0Dtag */
    {2 * 2, 64,  8,  0, 1}, /**< \brief IfxMtu_MbistSel_cpu0Pspr */
    {2 * 1, 19,  10, 0, 4}, /**< \brief IfxMtu_MbistSel_cpu0Ptag */
    {2 * 1, 64,  8,  0, 1}, /**< \brief IfxMtu_MbistSel_cpu0Dlmu */   
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {2 * 4, 16,  6,  0, 1}, /**< \brief IfxMtu_MbistSel_cpu1Dspr1 */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {1 * 4, 64,  8,  0, 1}, /**< \brief IfxMtu_MbistSel_dma */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {1 * 1, 32,  7,  0, 1}, /**< \brief IfxMtu_MbistSel_mcan0 */
    {1 * 1, 32,  7,  0, 1}, /**< \brief IfxMtu_MbistSel_mcan1 */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {1 * 2, 32,  7,  0, 1}, /**< \brief IfxMtu_MbistSel_eray0Obf */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {1 * 4, 32,  7,  0, 1}, /**< \brief IfxMtu_MbistSel_eray0IbfTbf */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {1 * 1, 32,  7,  0, 1}, /**< \brief IfxMtu_MbistSel_eray0Mbf */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {2 * 2, 8,   5,  0, 1}, /**< \brief IfxMtu_MbistSel_scrXram */
    {1 * 1, 8,   5,  0, 1}, /**< \brief IfxMtu_MbistSel_scrIram */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,  0,  0, 0}, /**< \brief IfxMtu_MbistSel_none */
};

const IfxMtu_MbistConfigPattern nonDestructiveTestPattern[] = {
    {
        IFXMTU_MBIST_CONFIG_NONDISTTEST_CONFIG0,
        IFXMTU_MBIST_CONFIG_NONDISTTEST_CONFIG1
    }
};

const IfxMtu_MbistSshConfig     mbistSshConfigGang0[] = {
    {
        IfxMtu_MbistSel_mcan0,                                  /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x7F,                                                   /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        1                                                       /* preClearEnable  */
    },
    {
        IfxMtu_MbistSel_mcan1,                                  /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x3F,                                                   /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        1                                                       /* preClearEnable  */
    },
    {
        IfxMtu_MbistSel_cpu0Dspr,                               /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x7F,                                                   /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        0                                                       /* preClearEnable  */
    },
    {
        IfxMtu_MbistSel_cpu0Dlmu,                               /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x3F,                                                   /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        0                                                       /* preClearEnable  */
    },
};

const IfxMtu_MbistSshConfig     mbistSshConfigGang4[] = {
    {
        IfxMtu_MbistSel_cpu0Pspr,                                /* sshSel          */
        0x00,                                                    /* lowAddress      */
        0x2F,                                                    /* highAddress     */
        5,                                                       /* uncorrectableErrorThreshold*/
        0                                                        /* preClearEnable  */
    },
};

const IfxMtu_MbistSshConfig     mbistSshConfigGang6[] = {
    {
        IfxMtu_MbistSel_cpu0Ptag,                               /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x7,                                                    /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        0                                                       /* preClearEnable  */
    },
    {
        IfxMtu_MbistSel_cpu0Dtag,                               /* sshSel          */
        0x00,                                                   /* lowAddress      */
        0x03,                                                   /* highAddress     */
        5,                                                      /* uncorrectableErrorThreshold*/
        1                                                       /* preClearEnable  */
    },
};

const IfxMtu_MbistConfig        mbistGang0Config = {
    IFXMTU_MBIST_CONFIG_NONDISTTEST_MCONTROL,                             /* mcontrol        */
    sizeof(mbistSshConfigGang0) / sizeof(IfxMtu_MbistSshConfig),
    sizeof(nonDestructiveTestPattern) / sizeof(IfxMtu_MbistConfigPattern),
    mbistSshConfigGang0,
    nonDestructiveTestPattern
};

const IfxMtu_MbistConfig        mbistGang4Config = {
    IFXMTU_MBIST_CONFIG_NONDISTTEST_MCONTROL,                             /* mcontrol        */
    sizeof(mbistSshConfigGang4) / sizeof(IfxMtu_MbistSshConfig),
    sizeof(nonDestructiveTestPattern) / sizeof(IfxMtu_MbistConfigPattern),
    mbistSshConfigGang4,
    nonDestructiveTestPattern
};

const IfxMtu_MbistConfig        mbistGang6Config = {
    IFXMTU_MBIST_CONFIG_NONDISTTEST_MCONTROL,                             /* mcontrol        */
    sizeof(mbistSshConfigGang6) / sizeof(IfxMtu_MbistSshConfig),
    sizeof(nonDestructiveTestPattern) / sizeof(IfxMtu_MbistConfigPattern),
    mbistSshConfigGang6,
    nonDestructiveTestPattern
};

const IfxMtu_MbistConfig *const mbistGangConfig[] = {
    &mbistGang0Config,
    &mbistGang4Config,
    &mbistGang6Config,
    (void *)0 //End indicator
};
#endif

#if defined (_TASKING_) || defined (_ghs_)
#pragma restore
#endif
