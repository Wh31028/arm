################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.c 

OBJS += \
./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.o 

C_DEPS += \
./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/%.o src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/%.su src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/%.cyclo: ../src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/%.c src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I"C:/repos/arm/exam_arm2/stm32f103_boot/src" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/common/core" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/common/hw/include" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/bsp" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/common" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/hw" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/ap" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/Drivers/CMSIS/Include" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/USB_DEVICE/App" -I"C:/repos/arm/exam_arm2/stm32f103_boot/src/lib/cube_f103/USB_DEVICE/Target" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-lib-2f-cube_f103-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-DFU-2f-Src

clean-src-2f-lib-2f-cube_f103-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-DFU-2f-Src:
	-$(RM) ./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.cyclo ./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.d ./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.o ./src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.su

.PHONY: clean-src-2f-lib-2f-cube_f103-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-DFU-2f-Src

