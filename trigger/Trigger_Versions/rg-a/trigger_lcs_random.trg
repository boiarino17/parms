##########################################
# CLAS12 daq/trigger default config file #
##########################################

##############################
# TI settings (TI master only)
##############################

###################################
# FADC settings (detector-related)
###################################

# common settings
FADC250_CRATE all
FADC250_SLOT all
FADC250_MODE  1
FADC250_NSB   12
FADC250_NSA   156
FADC250_NPEAK 1
FADC250_DAC   3300
FADC250_TET   20
FADC250_W_OFFSET  7900
FADC250_W_WIDTH   400
FADC250_CRATE end

# ECAL settings
include trigger/EC/ecal_default.cnf

# PCAL settings
include trigger/EC/pcal_default.cnf

# FTOF settings
include trigger/FTOF/ftof_cosmic.cnf

# CTOF/HTCC settings
include trigger/CTOF_HTCC/ctof_htcc_default.cnf

# CND settings
include trigger/CND/cnd_prod.cnf

#FT CAL AND HODO
include trigger/FT/ft_default.cnf

#SVT
include trigger/SVT/svt_prod.trg

# set low fadc thresholds to artificially increase data rate
FADC250_CRATE all
FADC250_SLOT all
FADC250_TET   6
FADC250_W_WIDTH   200
FADC250_CRATE end

FADC250_CRATE adcft1
FADC250_SLOT all
FADC250_TET   50
FADC250_W_WIDTH   200
FADC250_CRATE end

FADC250_CRATE adcft2
FADC250_SLOT all
FADC250_TET   50
FADC250_W_WIDTH   200
FADC250_CRATE end

FADC250_CRATE adcft3
FADC250_SLOT all
FADC250_TET   50
FADC250_W_WIDTH   200
FADC250_CRATE end

DCRB_CRATE all
DCRB_SLOT all
DCRB_THRESHOLD -11
DCRB_W_WIDTH   500
DCRB_CRATE end

DCRB_CRATE dc12
DCRB_SLOT all
DCRB_THRESHOLD -30
DCRB_W_WIDTH   500
DCRB_CRATE end

DCRB_CRATE dc42
DCRB_SLOT all
DCRB_THRESHOLD -30
DCRB_W_WIDTH   500
DCRB_CRATE end

DCRB_CRATE dc52
DCRB_SLOT all
DCRB_THRESHOLD -30
DCRB_W_WIDTH   500
DCRB_CRATE end

DCRB_CRATE dc62
DCRB_SLOT all
DCRB_THRESHOLD -30
DCRB_W_WIDTH   500
DCRB_CRATE end


############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

###TS_FIBER_DELAY_OFFSET 0x80 0xcf

# production: 5 5 15 10
TS_BLOCK_LEVEL   20
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1  5 1
TS_HOLDOFF   2  5 1
TS_HOLDOFF   3 15 1
TS_HOLDOFF   4 10 1

#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

#VTP trigger
#TS_INPUT_MASK 0x3F000000
#hit-based trigger
#TS_INPUT_MASK 0x0000003F

TS_FP_INPUT_MASK 0x00000000  # disable front panel inputs
TS_GTP_INPUT_MASK 0x00003F00 # enable GTP bits 8-13


# first arg: 0-disable, 1-enable; second arg: prescale (15-7Hz, 7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 1 4

TS_CRATE end


#######################################
# Trigger stage 1 (crates with FADCs)
#######################################

#include trigger/VTP/vtp_default.cnf
include trigger/VTP/vtp_lcs.cnf

VTP_CRATE adcecal5vtp
  VTP_ECS_INNER_COSMIC_EMIN       50
  VTP_ECS_OUTER_COSMIC_EMIN       50
  VTP_ECS_INNER_HIT_EMIN          50
  VTP_ECS_OUTER_HIT_EMIN          50
VTP_CRATE end

################################
# Trigger stage 2 (crate trig2)
################################

include trigger/SSP/ssp_lcs.cnf


#######################################
# Trigger stage 3 (vtp in trig2 crate)
#######################################

include trigger/GTP/gtp_lcs.cnf

