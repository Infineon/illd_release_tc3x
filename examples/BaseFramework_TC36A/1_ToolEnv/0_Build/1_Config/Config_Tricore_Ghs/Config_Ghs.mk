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

B_GHS_TRICORE_PATH= C:\Tools\Compilers\GreenHills\Compiler\2017.5.5

B_GHS_TRICORE_CC_OPTIONS= -cpu=tc1v162 -g -Ogeneral -Onounroll -minlib -sda=none \
                          --gnu_asm --no_short_enum -c99 -dwarf2 \
                          --no_commons -no_fused_madd -no_float_associativity --no_vla \
                          --diag_error 549,940,1056,1780,1999

B_GHS_TRICORE_ASM_OPTIONS= -cpu=tc1v162 -g -Ospeed -Onounroll --no_commons \
                           --gnu_asm --no-short-enum -c99 

B_GHS_TRICORE_LD_OPTIONS= -cpu=tc1v162 -no-crt0

#Include path for library directories. Add each path with following format as shown below.
#Each path prefixed with -L and separated by a space.
#B_GHS_TRICORE_LIB_INC=-L<path>[ -L<path>][..]
B_GHS_TRICORE_LIB_INC= -L"$(B_GHS_TRICORE_PATH)/lib/tri162"

#Libraries to include shall be listed with option -l, with following format.
#B_GHS_TRICORE_LIBS=-l<lib name>[ -l<lib name>][..]
B_GHS_TRICORE_LIBS= -lsys -lwc_s32 -lansi -lstartup -lind_sf -larch -lmath_sd
