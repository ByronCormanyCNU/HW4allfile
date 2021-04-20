################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../baker/Baker.cpp \
../baker/box.cpp 

OBJS += \
./baker/Baker.o \
./baker/box.o 

CPP_DEPS += \
./baker/Baker.d \
./baker/box.d 


# Each subdirectory must supply rules for building sources it contributes
baker/%.o: ../baker/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -pthread -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


