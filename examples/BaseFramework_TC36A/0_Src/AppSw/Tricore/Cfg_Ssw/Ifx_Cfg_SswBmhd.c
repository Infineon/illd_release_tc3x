/**
 * \file IfxCpu_Bmhd.c
 * \brief This file contains the Bmhd for Aurix Plus.
 *
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
 */
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Ifx_Ssw.h"

/*******************************************************************************
**                      Type definitions                                     **
*******************************************************************************/


/*******************************************************************************
**                              BMHD constants                                **
*******************************************************************************/

#if defined(__TASKING__)
#pragma section farrom "bmhd_0_orig"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_0_orig" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_0_orig" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_0_orig"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_0_orig" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_0_orig"
#endif
const Ifx_Ssw_Bmhd bmhd_0_orig=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
    0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
    0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x130 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x140 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x150 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x160 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x170 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x180 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x190 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x1A0 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x1B0 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x1C0 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x1D0 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x1E0: Reserved (0x1E0 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_0_copy"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_0_copy" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_0_copy" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_0_copy"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_0_copy" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_0_copy"
#endif
const Ifx_Ssw_Bmhd bmhd_0_copy=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x120 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x120 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x120 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x120 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x120 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x120 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x120 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x120 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x120 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x120 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x120 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1E0: Reserved (0x120 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_1_orig"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_1_orig" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_1_orig" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_1_orig"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_1_orig" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_1_orig"
#endif
const Ifx_Ssw_Bmhd bmhd_1_orig=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x130 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x140 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x150 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x160 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x170 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x180 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x190 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x1A0 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x1B0 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x1C0 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x1D0 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x1E0: Reserved (0x1E0 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_1_copy"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_1_copy" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_1_copy" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_1_copy"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_1_copy" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_1_copy"
#endif
const Ifx_Ssw_Bmhd bmhd_1_copy=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x120 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x120 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x120 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x120 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x120 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x120 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x120 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x120 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x120 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x120 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x120 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1E0: Reserved (0x120 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_2_orig"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_2_orig" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_2_orig" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_2_orig"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_2_orig" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_2_orig"
#endif
const Ifx_Ssw_Bmhd bmhd_2_orig=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x130 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x140 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x150 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x160 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x170 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x180 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x190 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x1A0 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x1B0 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x1C0 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x1D0 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x1E0: Reserved (0x1E0 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_2_copy"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_2_copy" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_2_copy" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_2_copy"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_2_copy" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_2_copy"
#endif
const Ifx_Ssw_Bmhd bmhd_2_copy=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x120 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x120 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x120 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x120 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x120 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x120 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x120 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x120 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x120 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x120 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x120 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1E0: Reserved (0x120 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_3_orig"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_3_orig" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_3_orig" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_3_orig"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_3_orig" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_3_orig"
#endif
const Ifx_Ssw_Bmhd bmhd_3_orig=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x130 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x140 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x150 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x160 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x170 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x180 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x190 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x1A0 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x1B0 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x1C0 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x1D0 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x1E0: Reserved (0x1E0 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#pragma section farrom "bmhd_3_copy"
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".bmhd_3_copy" a
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".bmhd_3_copy" a
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section rodata=".bmhd_3_copy"
#elif defined(__DCC__)
#pragma section CONST ".bmhd_3_copy" far-absolute R
#elif defined(__ghs__)
#pragma ghs section rodata= ".bmhd_3_copy"
#endif
const Ifx_Ssw_Bmhd bmhd_3_copy=
{
    0x003F,         /**< \brief 0x000: .bmi: Boot Mode Index (BMI)*/
    0xB359,         /**< \brief 0x002: .bmhdid: Boot Mode Header ID (CODE) = B359H*/
    0xA0000000,     /**< \brief 0x004: .stad: User Code start address*/
	0xE50C941B,     /**< \brief 0x008: .crc: Check Result for the BMI Header (offset 000H - 007H)*/
	0x1AF36BE4,     /**< \brief 0x00C: .crcInv: Inverted Check Result for the BMI Header (offset 000H - 007H)*/
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x010: Reserved (0x010 - 0x01F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x020: Reserved (0x020 - 0x02F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x030: Reserved (0x030 - 0x03F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x040: Reserved (0x040 - 0x04F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x050: Reserved (0x050 - 0x05F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x060: Reserved (0x060 - 0x06F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x070: Reserved (0x070 - 0x07F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x080: Reserved (0x080 - 0x08F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x090: Reserved (0x090 - 0x09F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0A0: Reserved (0x0A0 - 0x0AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0B0: Reserved (0x0B0 - 0x0BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0C0: Reserved (0x0C0 - 0x0CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0D0: Reserved (0x0D0 - 0x0DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x0E0: Reserved (0x0E0 - 0x0EF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000         /**< \brief 0x0F0: Reserved (0x0F0 - 0x0FF) */
    },
    {
        0x00000000, /**< \brief 0x100: .pw0: Password protection word 0 (lsw) */
        0x00000000, /**< \brief 0x104: .pw1: Password protection word 1 */
        0x00000000, /**< \brief 0x108: .pw2: Password protection word 2 */
        0x00000000, /**< \brief 0x10C: .pw3: Password protection word 3 */
        0x00000000, /**< \brief 0x110: .pw4: Password protection word 4 */
        0x00000000, /**< \brief 0x114: .pw5: Password protection word 5 */
        0x00000000, /**< \brief 0x118: .pw6: Password protection word 6 */
        0x00000000, /**< \brief 0x11C: .pw7: Password protection word 7 (msw) */
    },
    {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x120: Reserved (0x120 - 0x12F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x130: Reserved (0x120 - 0x13F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x140: Reserved (0x120 - 0x14F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x150: Reserved (0x120 - 0x15F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x160: Reserved (0x120 - 0x16F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x170: Reserved (0x120 - 0x17F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x180: Reserved (0x120 - 0x18F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x190: Reserved (0x120 - 0x19F) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1A0: Reserved (0x120 - 0x1AF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1B0: Reserved (0x120 - 0x1BF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1C0: Reserved (0x120 - 0x1CF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1D0: Reserved (0x120 - 0x1DF) */
        0x00000000, 0x00000000, 0x00000000, 0x00000000,        /**< \brief 0x1E0: Reserved (0x120 - 0x1EF) */
    },
    0x43211234      /**< \brief 0x1F0: .confirmation: 32-bit CODE, (always same)*/
};

#if defined(__TASKING__)
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#endif
