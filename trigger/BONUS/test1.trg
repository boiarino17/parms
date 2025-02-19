#
# cnd cosmic
#

#
# TI settings
#
TI_CRATE all

TI_FIBER_DELAY_OFFSET 0x80 0xcf
#TI_BLOCK_LEVEL 1
#TI_BUFFER_LEVEL 1
#TI_BLOCK_LEVEL 40
#TI_BUFFER_LEVEL 8

TI_INPUT_MASK 0 0 0 0 0 0

# trigger rules
# 1 trigger in Nx0.48us
#TI_HOLDOFF 1 50 0

# 4 triggers in Nx3.84us
#TI_HOLDOFF 4 10 1

#500kHz / 2^15 => ~15Hz random
TI_RANDOM_TRIGGER 1 3

TI_CRATE end

