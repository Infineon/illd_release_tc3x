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

B_DCC_TRICORE_PATH= C:\Tools\Compilers\WindRiver\compilers\diab-5.9.9.0\WIN32

B_DCC_TRICORE_CC_OPTIONS= -tTC162PMF:simple -O -XO -Xsection-split=1 \
                          -Xkeep-assembly-file=2 -g3 -Xinline=0 \
                          -Xabsolute18-data=0 -Xabsolute18-const=0 -Xsmall-data=0 -Xsmall-const=0 \
                          -Xdialect-c99 -ei5388,2273,5387,1824,4047,7266

B_DCC_TRICORE_CPP_OPTIONS= -tTC162PMF:simple -O -XO -Xsection-split=1 \
                           -Xkeep-assembly-file=2 -g3 -Xinline=0 \
                           -Xabsolute18-data=0 -Xabsolute18-const=0 -Xsmall-data=0 -Xsmall-const=0 \
                           -Xdialect-c++11 -ei5388,2273,5387,1824,4047,7266

B_DCC_TRICORE_ASM_OPTIONS= $(B_DCC_TRICORE_CC_OPTIONS)

B_DCC_TRICORE_LD_OPTIONS= -tTC162PMF:simple -m6 -Xremove-unused-sections

#Include path for library directories. Add each path with following format as shown below.
#Each path prefixed with -L and separated by a space.
#B_DCC_TRICORE_LIB_INC=-L<path>[ -L<path>][..]
B_DCC_TRICORE_LIB_INC=

B_DCC_TRICORE_LIBS= -lc -lcdinkum -lmdinkum