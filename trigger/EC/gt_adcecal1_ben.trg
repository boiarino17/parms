#########################
# trig1 Crate
#########################

TS_CRATE trig1

TS_FIBER_DELAY_OFFSET 0x80 0xcf
TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1

TS_HOLDOFF 1 60 1
TS_HOLDOFF 2 60 1
TS_HOLDOFF 3 60 1
TS_HOLDOFF 4 60 1

TS_INPUT_PRESCALE 1 0
TS_INPUT_PRESCALE 2 0
TS_INPUT_PRESCALE 3 0
TS_INPUT_PRESCALE 4 0
TS_INPUT_PRESCALE 5 0
TS_INPUT_PRESCALE 6 0

TS_INPUT_MASK 1 1 1 1 1 1

# first arg: 0-disable, 1-enable; second arg: prescale (7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 9

TS_CRATE end

#########################
# trig2 Crate
#########################

### TI
TI_CRATE trig2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE trig2vtp

VTP_W_OFFSET 7300
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   0  0  0  0

VTP_GT_LATENCY 6000

VTP_GT_WIDTH   16

VTP_GT_TRGBIT  0 15 63 1 1

VTP_CRATE end




### SSP
SSP_CRATE trig2

SSP_SLOT all

SSP_W_OFFSET 7300
SSP_W_WIDTH  400

SSP_GT_LATENCY            4000
SSP_GT_ECAL_ESUM_DELAY    0
SSP_GT_ECAL_CLUSTER_DELAY 0
SSP_GT_ECAL_ESUM_INTWIDTH 40
SSP_GT_PCAL_ESUM_DELAY    0
SSP_GT_PCAL_CLUSTER_DELAY 0
SSP_GT_PCAL_ESUM_INTWIDTH 40

# Sector Trigger bit 0
SSP_GT_STRG_EN                        0  1

SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      0  0
SSP_GT_STRG_PCAL_CLUSTER_EMIN         0  0
SSP_GT_STRG_PCAL_CLUSTER_WIDTH        0  0

SSP_GT_STRG_ECALOUT_CLUSTER_EMIN_EN   0  0
SSP_GT_STRG_ECALOUT_CLUSTER_EMIN      0  0
SSP_GT_STRG_ECALOUT_CLUSTER_WIDTH     0  0

SSP_GT_STRG_ECALIN_CLUSTER_EMIN_EN    0  1
SSP_GT_STRG_ECALIN_CLUSTER_EMIN       0  100
SSP_GT_STRG_ECALIN_CLUSTER_WIDTH      0  40

SSP_GT_STRG_PCAL_ESUM_EN              0  0
SSP_GT_STRG_ECAL_ESUM_EN              0  0

SSP_GT_STRG_ECAL_ESUM_MIN             0  0
SSP_GT_STRG_ECAL_ESUM_WIDTH           0  0

SSP_GT_STRG_PCAL_ESUM_MIN             0  0
SSP_GT_STRG_PCAL_ESUM_WIDTH           0  0

SSP_CRATE end


#########################
# adcecal1 Crate
#########################

### TI
TI_CRATE adcecal1

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal1vtp

VTP_W_OFFSET 7300
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
VTP_ECINNER_HIT_DALITZ   0    1023

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   0    1023

VTP_CRATE end




### FADC
FADC250_CRATE adcecal1

FADC250_SLOT all
FADC250_DAC  3300

FADC250_W_OFFSET 7300
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1

FADC250_NSB       12
FADC250_NSA       80
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_GAIN 1.0

FADC250_TET 200

include trigger/EC/adcecal1_peds.cnf

FADC250_CRATE end

