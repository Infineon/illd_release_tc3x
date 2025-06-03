###############################################################################
#                                                                             #
#       Copyright (c) 2018 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) is supplying this file for use          #
# exclusively with Infineon’s microcontroller products. This file can be      #
# freely distributed within development tools that are supporting such        #
# microcontroller products.                                                   #
#                                                                             #
# THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED #
# OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.#
# INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,#
# OR CONSEQUENTIAL DAMAGES, FOR	ANY REASON WHATSOEVER.                        #
#                                                                             #
###############################################################################

B_GCC_TRICORE_PATH:= C:\Tools\TriCore_GCC_11_3_mingw
                           
B_GCC_TRICORE_CC_OPTIONS= -mtc162 -g -O2 -fno-common -fstrict-volatile-bitfields \
                           -ffunction-sections -fdata-sections -Wall -std=c99 -gdwarf-3                           

B_GCC_TRICORE_ASM_OPTIONS= $(GCC_TC_CC_OPTIONS)

B_GCC_TRICORE_LD_OPTIONS= -mtc162 -Wl,--gc-sections -nocrt0 -Wl,-n

#Include path for library directories. Add each path with following format as shown below.
#Each path prefixed with -L and separated by a space.
#B_GCC_TRICORE_LIB_INC=-Wl,-L<path>[ -Wl,-L<path>][..]
B_GCC_TRICORE_LIB_INC=

#Libraries to include shall be listed with option -l, with following format.
#B_GCC_TRICORE_LIBS=-l<lib name>[ -l<lib name>][..]
#B_GCC_TRICORE_LIBS= -lstdc++
B_GCC_TRICORE_LIBS=
