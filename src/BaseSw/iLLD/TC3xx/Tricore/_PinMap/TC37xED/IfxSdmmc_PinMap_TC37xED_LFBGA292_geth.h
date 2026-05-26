/**
 * \file IfxSdmmc_PinMap_TC37xED_LFBGA292_geth.h
 * \brief SDMMC I/O map
 * \ingroup IfxLld_Sdmmc
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
 * \defgroup IfxLld_Sdmmc_pinmap SDMMC Pin Mapping
 * \ingroup IfxLld_Sdmmc
 */

#ifndef IFXSDMMC_PINMAP_TC37XED_LFBGA292_GETH_H
#define IFXSDMMC_PINMAP_TC37XED_LFBGA292_GETH_H  1

#include <IfxSdmmc_reg.h>
#include <_Impl/IfxSdmmc_cfg.h>
#include <Port/Std/IfxPort.h>
#include "Ifx_PinMap.h"

/** \addtogroup IfxLld_Sdmmc_pinmap
 * \{ */

	
/** \brief CLK pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Clk_Out;

/** \brief CMD pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Cmd_InOut;

/** \brief DAT0 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat0_InOut;

/** \brief DAT1 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat1_InOut;

/** \brief DAT2 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat2_InOut;

/** \brief DAT3 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat3_InOut;

/** \brief DAT4 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat4_InOut;

/** \brief DAT5 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat5_InOut;

/** \brief DAT6 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat6_InOut;

/** \brief DAT7 pin mapping structure */
typedef const struct
{
    Ifx_SDMMC*        module;      /**< \brief Base address */
    IfxPort_Pin       pin;         /**< \brief Port pin */
    Ifx_RxSel         inSelect;    /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;   /**< \brief Port control code */
} IfxSdmmc_Dat7_InOut;


IFX_EXTERN IfxSdmmc_Clk_Out IfxSdmmc0_CLK_P15_1_OUT;  /**< \brief card clock */
IFX_EXTERN IfxSdmmc_Cmd_InOut IfxSdmmc0_CMD_P15_3_INOUT;  /**< \brief command out and input */
IFX_EXTERN IfxSdmmc_Dat0_InOut IfxSdmmc0_DAT0_P20_7_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat1_InOut IfxSdmmc0_DAT1_P20_8_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat2_InOut IfxSdmmc0_DAT2_P20_10_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat3_InOut IfxSdmmc0_DAT3_P20_11_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat4_InOut IfxSdmmc0_DAT4_P20_12_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat5_InOut IfxSdmmc0_DAT5_P20_13_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat6_InOut IfxSdmmc0_DAT6_P20_14_INOUT;  /**< \brief write data out and input */
IFX_EXTERN IfxSdmmc_Dat7_InOut IfxSdmmc0_DAT7_P15_0_INOUT;  /**< \brief write data out and input */

/** \brief Table dimensions */
#define IFXSDMMC_PINMAP_NUM_MODULES 1
#define IFXSDMMC_PINMAP_CLK_OUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_CMD_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT0_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT1_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT2_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT3_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT4_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT5_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT6_INOUT_NUM_ITEMS 1
#define IFXSDMMC_PINMAP_DAT7_INOUT_NUM_ITEMS 1


/** \brief IfxSdmmc_Clk_Out table */
IFX_EXTERN const IfxSdmmc_Clk_Out *IfxSdmmc_Clk_Out_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_CLK_OUT_NUM_ITEMS];

/** \brief IfxSdmmc_Cmd_InOut table */
IFX_EXTERN const IfxSdmmc_Cmd_InOut *IfxSdmmc_Cmd_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_CMD_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat0_InOut table */
IFX_EXTERN const IfxSdmmc_Dat0_InOut *IfxSdmmc_Dat0_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT0_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat1_InOut table */
IFX_EXTERN const IfxSdmmc_Dat1_InOut *IfxSdmmc_Dat1_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT1_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat2_InOut table */
IFX_EXTERN const IfxSdmmc_Dat2_InOut *IfxSdmmc_Dat2_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT2_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat3_InOut table */
IFX_EXTERN const IfxSdmmc_Dat3_InOut *IfxSdmmc_Dat3_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT3_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat4_InOut table */
IFX_EXTERN const IfxSdmmc_Dat4_InOut *IfxSdmmc_Dat4_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT4_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat5_InOut table */
IFX_EXTERN const IfxSdmmc_Dat5_InOut *IfxSdmmc_Dat5_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT5_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat6_InOut table */
IFX_EXTERN const IfxSdmmc_Dat6_InOut *IfxSdmmc_Dat6_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT6_INOUT_NUM_ITEMS];

/** \brief IfxSdmmc_Dat7_InOut table */
IFX_EXTERN const IfxSdmmc_Dat7_InOut *IfxSdmmc_Dat7_InOut_pinTable[IFXSDMMC_PINMAP_NUM_MODULES][IFXSDMMC_PINMAP_DAT7_INOUT_NUM_ITEMS];

/** \} */

#endif /* IFXSDMMC_PINMAP_TC37XED_LFBGA292_GETH_H */
