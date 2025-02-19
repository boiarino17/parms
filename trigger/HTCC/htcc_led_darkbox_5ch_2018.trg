#
# htcc led
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
#TI_RANDOM_TRIGGER 1 13

TI_INPUT_MASK 0 0 0 1 0 0

TI_CRATE end



FADC250_CRATE all                                                                                                
FADC250_SLOT all         
FADC250_SLOT 3
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 4
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 5
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 6
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 7
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 8
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 9
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 10
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_SLOT 13
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 14
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 15
FADC250_ADC_MASK  0  0  0  0  0  0  0  1  0  1  0  1  0  1  0  1
FADC250_TRG_MASK  0  0  0  0  0  0  0  1  0  1  0  1  0  1  0  1

#zero threshold, pedestal file will be created
FADC250_SLOT all
FADC250_TET 0
FADC250_W_OFFSET  800

#non-zero threshold, pedestal file will be used
#FADC250_TET 20
#FADC250_CONF_FILE fadc250/adcctof1_ped.cnf

FADC250_CRATE end
