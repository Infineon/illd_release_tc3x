# iLLD Release TC3x

## Folder structure
illd_release_tc3x contains the following folders and file
* `doc`      : contains the TC3xx UM and iLLD Release note
* `examples` : contains the BaseFramework for all the TC3xx devices and BlinkyLed example project
* `exe`      : Contains the installer for the iLLD package
* `src`      : contains the source code for TC3xx
* `Readme.md`: Contains information about the folder structure, package usage and iLLD software
			   release version.


## Build Instructions & Usage
The TC3xx BaseFramework project contains only the AppSw, Libraries need to be added for compilation.
Create Libraries folder under "BaseFramework_TC39B\0_Src" and copy the content from illd_release_tc3x\src\BaseSw into it.

## Build BlinkyLed Example
For instructions on integrating the example files into the TC3xx Baseframework, please refer to the Example_BlinkingLED.pdf document.

To compile the iLLDs for the TC39xB device, add the following macros to the AppSw/CpuGeneric/Config/Ifx_Cfg.h file:
	
	#define DEVICE_TC39XB			1
	#define IFX_PIN_PACKAGE_516		1 /**< Pin package supported: IFX_PIN_PACKAGE_516, IFX_PIN_PACKAGE_LFBGA292,
									   * IFX_PIN_PACKAGE_LFBGA292_ADAS, IFX_PIN_PACKAGE_LFBGA516 
									  */

When building the blinky example for other devices, update the Ifx_cfg.h file accordingly by adding the relevant device-specific macros.								  
									  
## iLLD version info
iLLD Release version	V1.20.0

								   
## Revision History
### V1.0
Initial release


