#
# main config file
#

#
# TI settings
#
TI_CRATE all

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1

# trigger rules
# 1 trigger in Nx0.48us
#TI_HOLDOFF 1 50 0

# 4 triggers in Nx3.84us
#TI_HOLDOFF 4 10 1

#500kHz / 2^15 => ~15Hz random
TI_RANDOM_TRIGGER 1 15

#TI_INPUT_MASK 0 0 0 0 0 0

TI_CRATE end


#
#
#

FADC250_CRATE all

FADC250_SLOT all

FADC250_DAC  3300
FADC250_TET     0


FADC250_W_OFFSET 1000    #async
FADC250_W_WIDTH  400   #async

#raw mode
FADC250_MODE      1
#FADC250_NSA       12
#FADC250_NSB       8

#pulse mode
#FADC250_MODE      3
#FADC250_NSB       20
#FADC250_NSA       120
#FADC250_NPEAK     3

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_CRATE end
