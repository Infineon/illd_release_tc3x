###############################################################################
#                                                                             #
#       Copyright (c) 2026 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) licenses this file to you under the     #
# Infineon Automotive SW Lab License v2025-01 (IFASLL). You may not use       #
# this file except in compliance with IFASLL.                                 #
#                                                                             #
# The full license text is contained in IFASLL202501.pdf delivered with this  #
# SW. Unless required by applicable law or agreed to in writing, software     #
# distributed under this license is distributed "AS IS" without any warranty  #
# or liability of any kind and Infineon hereby expressly disclaims any        #
# warranties or representations, whether express, implied, statutory or       #
# otherwise, including but not limited to warranties of workmanship,          #
# merchantability, fitness for a particular purpose, defects in the licensed  #
# items, or non-infringement of third parties' intellectual property rights.  #
# See the full license text for the specific language governing permissions   #
# and limitations under IFASLL.                                               #
#                                                                             #
###############################################################################

B_HIGHTEC_TRICORE_PATH:= C:\Tools\Compilers\HIGHTEC\toolchains\tricore\v10.0.0


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
