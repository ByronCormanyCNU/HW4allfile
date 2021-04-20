################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../waiter/file_IO.cpp \
../waiter/waiter.cpp 

OBJS += \
./waiter/file_IO.o \
./waiter/waiter.o 

CPP_DEPS += \
./waiter/file_IO.d \
./waiter/waiter.d 


# Each subdirectory must supply rules for building sources it contributes
waiter/%.o: ../waiter/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -pthread -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


