/**
 * \file Ifx_InterfaceConst.c
 * \brief Interface constants to provide the indirection pointers to data shared with external devices
 * \ingroup
 *
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
#include "Platform_Types.h"

#if defined(__TASKING__)
#pragma section farrom "interface_const"
#pragma protect
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#pragma section ".interface_const"
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#pragma section ".interface_const"
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section text=".interface_const"
#elif defined(__DCC__)
#pragma section CONST ".interface_const" far-absolute R
#endif

volatile const uint32 Ifx_interfaceConst[] = {
    /*Address:80000020 */ 0x00000000,
    /*Project info to be used */
    /*Address:80000024 */ 0x00000000,
    /*Project info to be used */
    /*Address:80000028 */ 0x00000000,
    /*Address:8000002C */ 0x00000000,
    /*Address:80000030 */ 0x00000000,
    /*Address:80000034 */ 0x00000000,
    /*Address:80000038 */ 0x00000000,
    /*Address:8000003C */ 0x00000000,
    /*Address:80000040 */ 0x00000000,
    /*Address:80000044 */ 0x00000000,
    /*Address:80000048 */ 0x00000000,
    /*Pointer TFT display */
    /*Address:8000004C */ 0x00000000,
    /*Address:80000050 */ 0x00000000,
    /*Address:80000054 */ 0x00000000,
    /*Address:80000058 */ 0x00000000,
    /*Address:8000005C */ 0x00000000,
    /*Address:80000060 */ 0x00000000,
    /*Address:80000064 */ 0x00000000,
    /*Address:80000068 */ 0x00000000,
    /*Address:8000006C */ 0x00000000,
    /*Address:80000070 */ 0x00000000,
    /*Address:80000074 */ 0x00000000,
    /*Address:80000078 */ 0x00000000,
    /*Address:8000007C */ 0x00000000,
    /*Address:80000080 */ 0x00000000,
    /*Address:80000084 */ 0x00000000,
    /*Address:80000088 */ 0x00000000,
    /*Address:8000008C */ 0x00000000,
    /*Address:80000090 */ 0x00000000,
    /*Address:80000094 */ 0x00000000,
    /*Address:80000098 */ 0x00000000,
    /*Address:8000009C */ 0x00000000,
    /*Address:800000A0 */ 0x00000000,
    /*Address:800000A4 */ 0x00000000,
    /*Address:800000A8 */ 0x00000000,
    /*Address:800000AC */ 0x00000000,
    /*Address:800000B0 */ 0x00000000,
    /*Address:800000B4 */ 0x00000000,
    /*Address:800000B8 */ 0x00000000,
    /*Address:800000BC */ 0x00000000,
    /*Address:800000C0 */ 0x00000000,
    /*Address:800000C4 */ 0x00000000,
    /*Address:800000C8 */ 0x00000000,
    /*Address:800000CC */ 0x00000000,
    /*Address:800000D0 */ 0x00000000,
    /*Address:800000D4 */ 0x00000000,
    /*Address:800000D8 */ 0x00000000,
    /*Address:800000DC */ 0x00000000,
    /*Address:800000E0 */ 0x00000000,
    /*Address:800000E4 */ 0x00000000,
    /*Address:800000E8 */ 0x00000000,
    /*Address:800000EC */ 0x00000000,
    /*Address:800000F0 */ 0x00000000,
    /*Address:800000F4 */ 0x00000000,
    /*Address:800000F8 */ 0x00000000,
    /*Address:800000FC */ 0x00000000
};

#if defined(__TASKING__)
#pragma endprotect
#elif defined(__HIGHTEC__) && !defined(__clang__)
#pragma section
#elif defined(__GNUC__) && !defined(__HIGHTEC__)
#pragma section
#elif defined(__HIGHTEC__) && defined(__clang__)
#pragma clang section text=""
#endif

