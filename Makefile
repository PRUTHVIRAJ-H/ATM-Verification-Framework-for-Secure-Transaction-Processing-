# Default settings
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# Your Verilog file
VERILOG_SOURCES += $(PWD)/atm_fsm.v

# Use the Python file we just created (without the .py extension)
MODULE = test_atm_fuzzer

# The name of the top-level module inside your Verilog code
TOPLEVEL = atm_fsm

# This flag tells Icarus Verilog to generate the GTKWave .vcd file automatically!
EXTRA_ARGS += -c wave_dump.cmd

include $(shell cocotb-config --makefiles)/Makefile.sim