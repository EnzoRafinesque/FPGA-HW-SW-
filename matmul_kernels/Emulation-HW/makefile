#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VITIS ?= /tools/Xilinx/Vitis/2021.2
XILINX_VIVADO ?= /tools/Xilinx/Vivado/2021.2
XILINX_HLS ?= $(XILINX_VITIS)/Vivado_HLS

VPP ?= ${XILINX_VITIS}/bin/v++
RM = rm -f
RMDIR = rm -rf

VITIS_PLATFORM = xilinx_zc706_base_202120_1
VITIS_PLATFORM_PATH = $(VITIS_PLATFORM)

TARGET = hw_emu
VPP_OPTS = --target $(TARGET)

#
# Hw kernel files
#


BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/matmul.xo
SRC_KERNEL_OBJS += build/matmul.xo

ALL_MESSAGE_FILES = $(subst .xo,.o,.mdb,$(SRC_KERNEL_OBJS))

#
# primary build targets
#

.PHONY: all clean
all: $(HW_KERNEL_OBJS)


clean:
	-$(RM) $(SRC_KERNEL_OBJS) $(ALL_MESSAGE_FILES) 
	-$(RMDIR) $(BUILD_SUBDIRS)
	-$(RMDIR) .Xil

ifeq ($(MAKECMDGOALS),incremental)
.PHONY: build/matmul.xo
endif

.PHONY: incremental
incremental: all


nothing:

#
# Hw Kernels compile;
#

build/matmul.xo: ../src/krnl_matrixmul.cpp ../src/krnl_matrixmul.h matmul-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config matmul-compile.cfg -o"$@" "$<"

