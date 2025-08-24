################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/common/core/qbuffer.c 

OBJS += \
./src/common/core/qbuffer.o 

C_DEPS += \
./src/common/core/qbuffer.d 


# Each subdirectory must supply rules for building sources it contributes
src/common/core/%.o src/common/core/%.su src/common/core/%.cyclo: ../src/common/core/%.c src/common/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -DUSER_VECT_TAB_ADDRESS -c -I"C:/repos/arm/exam_arm2/stm32f103_fw/src" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common/core" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common/hw/include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/bsp" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/hw" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/ap" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-common-2f-core

clean-src-2f-common-2f-core:
	-$(RM) ./src/common/core/qbuffer.cyclo ./src/common/core/qbuffer.d ./src/common/core/qbuffer.o ./src/common/core/qbuffer.su

.PHONY: clean-src-2f-common-2f-core

