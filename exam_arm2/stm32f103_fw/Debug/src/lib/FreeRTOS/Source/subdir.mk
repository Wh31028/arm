################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/FreeRTOS/Source/croutine.c \
../src/lib/FreeRTOS/Source/event_groups.c \
../src/lib/FreeRTOS/Source/list.c \
../src/lib/FreeRTOS/Source/queue.c \
../src/lib/FreeRTOS/Source/stream_buffer.c \
../src/lib/FreeRTOS/Source/tasks.c \
../src/lib/FreeRTOS/Source/timers.c 

OBJS += \
./src/lib/FreeRTOS/Source/croutine.o \
./src/lib/FreeRTOS/Source/event_groups.o \
./src/lib/FreeRTOS/Source/list.o \
./src/lib/FreeRTOS/Source/queue.o \
./src/lib/FreeRTOS/Source/stream_buffer.o \
./src/lib/FreeRTOS/Source/tasks.o \
./src/lib/FreeRTOS/Source/timers.o 

C_DEPS += \
./src/lib/FreeRTOS/Source/croutine.d \
./src/lib/FreeRTOS/Source/event_groups.d \
./src/lib/FreeRTOS/Source/list.d \
./src/lib/FreeRTOS/Source/queue.d \
./src/lib/FreeRTOS/Source/stream_buffer.d \
./src/lib/FreeRTOS/Source/tasks.d \
./src/lib/FreeRTOS/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/FreeRTOS/Source/%.o src/lib/FreeRTOS/Source/%.su src/lib/FreeRTOS/Source/%.cyclo: ../src/lib/FreeRTOS/Source/%.c src/lib/FreeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -DUSER_VECT_TAB_ADDRESS -c -I"C:/repos/arm/exam_arm2/stm32f103_fw/src" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common/core" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common/hw/include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/bsp" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/common" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/hw" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/ap" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/FreeRTOS/Source/include" -I"C:/repos/arm/exam_arm2/stm32f103_fw/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-lib-2f-FreeRTOS-2f-Source

clean-src-2f-lib-2f-FreeRTOS-2f-Source:
	-$(RM) ./src/lib/FreeRTOS/Source/croutine.cyclo ./src/lib/FreeRTOS/Source/croutine.d ./src/lib/FreeRTOS/Source/croutine.o ./src/lib/FreeRTOS/Source/croutine.su ./src/lib/FreeRTOS/Source/event_groups.cyclo ./src/lib/FreeRTOS/Source/event_groups.d ./src/lib/FreeRTOS/Source/event_groups.o ./src/lib/FreeRTOS/Source/event_groups.su ./src/lib/FreeRTOS/Source/list.cyclo ./src/lib/FreeRTOS/Source/list.d ./src/lib/FreeRTOS/Source/list.o ./src/lib/FreeRTOS/Source/list.su ./src/lib/FreeRTOS/Source/queue.cyclo ./src/lib/FreeRTOS/Source/queue.d ./src/lib/FreeRTOS/Source/queue.o ./src/lib/FreeRTOS/Source/queue.su ./src/lib/FreeRTOS/Source/stream_buffer.cyclo ./src/lib/FreeRTOS/Source/stream_buffer.d ./src/lib/FreeRTOS/Source/stream_buffer.o ./src/lib/FreeRTOS/Source/stream_buffer.su ./src/lib/FreeRTOS/Source/tasks.cyclo ./src/lib/FreeRTOS/Source/tasks.d ./src/lib/FreeRTOS/Source/tasks.o ./src/lib/FreeRTOS/Source/tasks.su ./src/lib/FreeRTOS/Source/timers.cyclo ./src/lib/FreeRTOS/Source/timers.d ./src/lib/FreeRTOS/Source/timers.o ./src/lib/FreeRTOS/Source/timers.su

.PHONY: clean-src-2f-lib-2f-FreeRTOS-2f-Source

