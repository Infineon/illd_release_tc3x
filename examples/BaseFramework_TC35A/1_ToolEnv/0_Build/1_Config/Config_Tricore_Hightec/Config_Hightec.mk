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

B_HIGHTEC_TRICORE_PATH:= C:\Tools\Compilers\HIGHTEC\toolchains\tricore\v9.1.2


B_HIGHTEC_TRICORE_CC_OPTIONS= -fdata-sections -ffunction-sections -fno-common \
            -march=tc162 -O2 -std=c99 -Wall -g -gdwarf-2
                           

B_HIGHTEC_TRICORE_ASM_OPTIONS= $(B_HIGHTEC_TRICORE_CC_OPTIONS)

B_HIGHTEC_TRICORE_LD_OPTIONS= -Wl,--gc-sections -march=tc162 -Wl,-n

#Include path for library directories. Add each path with following format as shown below.
#Each path prefixed with -L and separated by a space.
#B_HIGHTEC_TRICORE_LIB_INC=-Wl,-L<path>[ -Wl,-L<path>][..]
B_HIGHTEC_TRICORE_LIB_INC=

#Libraries to include shall be listed with option -l, with following format.
#B_HIGHTEC_TRICORE_LIBS=-l<lib name>[ -l<lib name>][..]
B_HIGHTEC_TRICORE_LIBS=-lc++
