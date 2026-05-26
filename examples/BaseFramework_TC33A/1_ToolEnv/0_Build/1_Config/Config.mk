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

B_CONFIG_FILES_FOLDER:= 1_ToolEnv/0_Build/1_Config

B_TOOLCHAINS_ROOT?= C:\Tools\Compilers

#Used iLLD version number in the template project
ILLD_VERSION:= V1.22.0

#Include all the required/available configuration files
-include $(B_CONFIG_FILES_FOLDER)/*/Conf*.mk \
		$(B_CONFIG_FILES_FOLDER)/*/*/Conf*.mk
		
#Use the parallel build option from make (use available CPUs from your PC).
#NOTE: this option would be moved to Config.xml in the next BIFACES release!
B_PARALLEL_BUILD= no
