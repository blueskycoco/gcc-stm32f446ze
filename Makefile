#
# The base directory for TivaWare.
#
ROOT=.

#
# Include the common make definitions.
#
include ${ROOT}/makedefs

#
# Where to find header files that do not live in the source directory.
#
IPATH=./Project/CRYP_AESECBmode
IPATH+=./Libraries/CMSIS/Device/ST/STM32F4xx/Include
IPATH+=./Libraries/CMSIS/Include
IPATH+=./Libraries/CMSIS/RTOS/Template
IPATH+=./Libraries/STM32_USB_Device_Library/Class/msc/inc
IPATH+=./Libraries/STM32_USB_Device_Library/Core/inc
IPATH+=./Libraries/STM32F4xx_StdPeriph_Driver/inc
IPATH+=./Libraries/STM32_USB_OTG_Driver/inc

VPATH=./Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates
VPATH+=./Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc_ride7
VPATH+=./Libraries/STM32_USB_Device_Library/Class/msc/src
VPATH+=./Libraries/STM32_USB_Device_Library/Core/src
VPATH+=./Libraries/STM32F4xx_StdPeriph_Driver/src
VPATH+=./Project/CRYP_AESECBmode
VPATH+=./Libraries/STM32_USB_OTG_Driver/src
#
# The default rule, which causes the uart_echo example to be built.
#
all: ${COMPILER}
all: ${COMPILER}/nucleo-stm32f446ze.axf

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf ${COMPILER} ${wildcard *~}
install:
	openocd -f openocd.cfg -c "flash_image"
#	jlink.exe burn.txt

#
# The rule to create the target directory.
#
${COMPILER}:
	@mkdir -p ${COMPILER}

#
# Rules for building the uart_echo example.
#
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/startup_stm32f446xx.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/system_stm32f4xx.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/misc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_adc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_can.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_cec.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_crc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_cryp.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_cryp_aes.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_cryp_des.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_cryp_tdes.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dac.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dbgmcu.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dcmi.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dma.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dma2d.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_dsi.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_exti.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_flash.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_flash_ramfunc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_fmc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_fmpi2c.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_gpio.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_hash.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_hash_md5.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_hash_sha1.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_i2c.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_iwdg.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_lptim.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_ltdc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_pwr.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_qspi.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_rcc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_rng.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_rtc.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_sai.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_sdio.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_spdifrx.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_spi.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_syscfg.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_tim.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_usart.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_wwdg.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/stm32f4xx_it.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/syscalls.o
${COMPILER}/nucleo-stm32f446ze.axf: ${COMPILER}/main.o
${COMPILER}/nucleo-stm32f446ze.axf: STM32F446ZETx_FLASH.ld
SCATTERgcc_nucleo-stm32f446ze=./Libraries/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc_ride7/STM32F446ZETx_FLASH.ld
ENTRY_nucleo-stm32f446ze=Reset_Handler
CFLAGSgcc=-DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DUSE_USB_OTG_FS -DUSE_STM32446_EVAL

#
# Include the automatically generated dependency files.
#
ifneq (${MAKECMDGOALS},clean)
-include ${wildcard ${COMPILER}/*.d} __dummy__
endif
