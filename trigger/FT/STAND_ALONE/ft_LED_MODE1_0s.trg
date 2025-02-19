#########################
# adcft1 Crate
#########################

### TI
TI_CRATE adcft1

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 1
TI_BLOCK_LEVEL  1
TI_INPUT_MASK 1 1 1 1 0 0

## HOLD OFF
# 1.44 us holdoff:
TI_HOLDOFF 1 3 1
# 4 triggers in 10*3840ns
TI_HOLDOFF 4 10 1


# PRESCALE-FACTOR = 2**N

TI_INPUT_PRESCALE 1  0
TI_INPUT_PRESCALE 2  0
TI_INPUT_PRESCALE 3  0
TI_INPUT_PRESCALE 4  0
TI_INPUT_PRESCALE 5  0
TI_INPUT_PRESCALE 6  0

TI_CRATE end

### FADC
FADC250_CRATE adcft1

FADC250_SLOT all
FADC250_DAC  3300

#when decreased, ADC pulse moves left
## BEFORE TI DELAY:
## setting for cosmics: OFFSET = 1400
## setting for LED: OFFSET = 700


FADC250_W_OFFSET 940
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
#FADC250_MODE      7
#FADC250_NSB       20
#FADC250_NSA       180
#FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0


FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 50

##########################

include trigger/PEDS/hv_on/adcft1_ped.cnf



FADC250_CRATE end


#########################
# adcft2 Crate
#########################

### TI
TI_CRATE adcft2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end

### FADC
FADC250_CRATE adcft2

FADC250_SLOT all
FADC250_DAC  3300

## BEFORE TI DELAY:
## setting for cosmics: OFFSET = 1400
## setting for LED: OFFSET = 700

FADC250_W_OFFSET 940
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
#FADC250_MODE      7
#FADC250_NSB       20
#FADC250_NSA       180
#FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0


FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
#FADC250_SLOT ##
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  
FADC250_TET 50

include trigger/PEDS/hv_on/adcft2_ped.cnf

FADC250_CRATE end



#########################
# adcft3 Crate
#########################

### TI
TI_CRATE adcft3

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end

### FADC
FADC250_CRATE adcft3

FADC250_SLOT all
FADC250_DAC  3300
#when decreased, ADC pulse moves left
## setting for LED flasher: OFFSET=1000, WIDTH=400
## setting for cosmics: OFFSET=1150, WIDTH=400
FADC250_W_OFFSET 1300
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
#FADC250_MODE      7
#FADC250_NSB       20
#FADC250_NSA       180
#FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 1000

include trigger/PEDS/hv_on/adcft3_ped.cnf

FADC250_CRATE end


