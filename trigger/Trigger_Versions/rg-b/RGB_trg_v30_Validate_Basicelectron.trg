#########################################
# CLAS12 daq/trigger default config file #
##########################################

##############################
# TI settings (TI master only)
##############################

###################################
# FADC settings (detector-related)
###################################

# Common settings

# compression: 0-no compression, 1-compression, 2-both (verify mode)
FADC250_COMPRESSION  1

FADC250_CRATE all
FADC250_SLOT	   all
FADC250_MODE         1
##FADC250_W_OFFSET  7900
FADC250_W_OFFSET  7650
FADC250_W_WIDTH	   400
FADC250_CRATE end



TDC1190_CRATE all
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8450
TDC1190_CRATE end

TDC1190_CRATE tdcctof1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8250
TDC1190_CRATE end

TDC1190_CRATE adccnd1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8200
TDC1190_CRATE end



VSCM_CRATE all
VSCM_SLOT all
##VSCM_TRIG_WINDOW     96      1064        16 
##VSCM_TRIG_WINDOW     96      1032        16 
##VSCM_TRIG_WINDOW     96      968        16 
##VSCM_TRIG_WINDOW     80      976        16 
#VSCM_TRIG_WINDOW     80      980        16
#VSCM_TRIG_WINDOW     80      978        16
#VSCM_TRIG_WINDOW     80      979        16
VSCM_TRIG_WINDOW     64      979        16
VSCM_CRATE end

DCRB_CRATE all
DCRB_SLOT all
##DCRB_W_OFFSET  7900
DCRB_W_OFFSET  7650
DCRB_CRATE end



#does not work yet !!!!!!!
#SSP_CRATE       rich4
#SSP_SLOT        all
#SSP_RICH_W_WIDTH    300
#SSP_RICH_W_OFFSET  7980
#SSP_CRATE end



#######################################################
#
#######################################################

# ECAL settings
#include trigger/EC/ecal_default.cnf
include trigger/EC/ecal_newgain_prod.cnf

# PCAL settings
#include trigger/EC/pcal_default.cnf
include trigger/EC/pcal_newgain_prod.cnf

# FTOF settings
include trigger/FTOF/ftof_default.cnf

# LTCC settings
include trigger/LTCC/ltcc_default.cnf

# CTOF/HTCC settings
include trigger/CTOF_HTCC/ctof_htcc_newgain_prod.cnf

# CND settings
include trigger/CND/cnd_prod.cnf

#FT CAL AND HODO
include trigger/FT/ft_default.cnf

#SVT
include trigger/SVT/svt_prod.trg

#BAND
include trigger/BAND/band_default_prod.cnf

#######################################
# Trigger stage 1 (crates with FADCs) #
#######################################

# ECAL
VTP_CRATE adcecal1vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal2vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal3vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal4vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal5vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal6vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

# PCAL
VTP_CRATE adcpcal1vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal2vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal3vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal4vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal5vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal6vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end
#
# HTCC
#
VTP_CRATE adcctof1vtp
  include trigger/VTP/htcc_prod_2phe.cnf
VTP_CRATE end

#FT (3 VTPs inside the file)
include trigger/VTP/ftvtp_prod.cnf

# FTOF
VTP_CRATE adcftof1vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof2vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof3vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof4vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof5vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof6vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end

# CTOF
VTP_CRATE adcctof1vtp
  include trigger/VTP/ctofvtp_prod.cnf
VTP_CRATE end

# CND
VTP_CRATE adccnd1vtp
  include trigger/VTP/cndvtp_prod.cnf
VTP_CRATE end


#################################
# Trigger stage 2 (crate trig2) #
#################################

SSP_CRATE trig2
SSP_SLOT all

##SSP_W_OFFSET 7900
SSP_W_OFFSET 7650
SSP_W_WIDTH  400

# 'SSP_GT_' - sectors trigger logic

SSP_GT_LATENCY            5000


#SSP_GT_HTCC_DELAY         140
#SSP_GT_FTOF_DELAY          80
#SSP_GT_ECAL_CLUSTER_DELAY   0
#SSP_GT_PCAL_CLUSTER_DELAY   0
#SSP_GT_CTOF_DELAY          212
#SSP_GT_CND_DELAY           220
#SSP_GT_PCAL_PCU_DELAY      76

#SSP_GT_HTCC_DELAY           1164
SSP_GT_HTCC_DELAY           1132
SSP_GT_ECAL_CLUSTER_DELAY   1024
SSP_GT_PCAL_CLUSTER_DELAY   1024
SSP_GT_CTOF_DELAY           1236
SSP_GT_CND_DELAY            1244
SSP_GT_FTOF_DELAY           1104
SSP_GT_PCAL_PCU_DELAY       1068


# if use this, add 1024 to all above and SSP_GTC_FT_CLUSTER_DELAY below,
# subtract same from VTP_GT_LATENCY and VTP_W_OFFSET
SSP_GT_DC_SEG_DELAY         0

# ECAL+PCAL cluster sum coincidence width
SSP_GT_ECPC_WIDTH           96

# DCxPCAL matching: cluster coincidence width and minimum energy
SSP_GT_DCPCAL_PCAL_WIDTH    96
SSP_GT_DCPCAL_PCAL_EMIN    600


#pcu
SSP_GT_FTOFPCU_FTOF_WIDTH    32
SSP_GT_FTOFPCU_PCU_WIDTH     32
SSP_GT_FTOFPCU_MATCH_TABLE    0		# 0 is the old map, 1 is the new map Andrea provided after the last run


# 'SSP_GT_STRG_' - sector trigger bits - logic inside single sector

########################
#
# Sector Trigger bit 0 
#
#   DC x HTCC x (PCAL+ECAL)>300MeV x PCAL>60MeV
########################
SSP_GT_STRG                           0
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32



########################
#
# Sector Trigger bit 1 
#
#    NOT USED
########################
SSP_GT_STRG                           1
SSP_GT_STRG_EN                        0

########################
#
# Sector Trigger bit 2 
#
#    HTCC Trigger 
########################

# HTCC trigger logic
SSP_GT_STRG                           2
SSP_GT_STRG_HTCC_EN                   1
SSP_GT_STRG_HTCC_WIDTH                0

########################
#
# Sector Trigger bit 3 
#
# PCAL > 60MeV
########################
SSP_GT_STRG                           3
SSP_GT_STRG_EN                        1

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

########################
#
# Sector Trigger bit 4 #
#
# PCAL + ECAL
########################

SSP_GT_STRG                           4
SSP_GT_STRG_EN                        1

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000


########################
#
# Sector Trigger bit 5 
#   
#   DC Segments: 5 out of 6
########################
SSP_GT_STRG                           5
SSP_GT_STRG_EN                        1

# new DC trigger logic
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


#################
#                      MUON TRIGGER
#
# Sector Trigger bit 6 STRG6: DC x FTOFPCU=+/-3 x PCAL=(10-60)MeV x ECAL=(40-120)MeV
#
# 
#################
SSP_GT_STRG                           6
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           100
SSP_GT_STRG_PCAL_CLUSTER_EMAX           600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_EMAX          1200
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32

#################
#                      MUON TRIGGER
#
# Sector Trigger bit 7 STRG7: DC x FTOFPCU=+/-3 x PCAL=(>10)MeV x ECAL=(>40)MeV
#
# 
#################
SSP_GT_STRG                           7
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


SSP_CRATE end


########################################
# Trigger stage 3 (vtp in trig2 crate) #
########################################

VTP_CRATE trig2vtp

##VTP_W_OFFSET 7900
#VTP_W_OFFSET 7650
#VTP_W_OFFSET 6624
#VTP_W_WIDTH   400

#use for DC trigger diagnostics (and all other should be okay)
VTP_W_OFFSET       7650
VTP_W_WIDTH        1450


#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0


# global latency
##VTP_GT_LATENCY 6450
VTP_GT_LATENCY 5420


VTP_GT_WIDTH   16

# TRIGGER BITS: 
#              trig number 
#              |   ssp trig mask 
#              |   |   ssp sector mask        
#              |   |   |  multiplicity 
#              |   |   |  |  coincidence=#extended_clock_cycles 
#              |   |   |  |  |  ssp central trig mask
#              |   |   |  |  |  |  delay(in 4ns ticks)
#              |   |   |  |  |  |  |    prescaler (0=disable, 1-65535=divider)
#              |   |   |  |  |  |  |    |
# Electron, All Sectors with DC
VTP_GT_TRGBIT  0   1  63  1  1  0  0    1  # SSP STRG0, SECTOR 1-6

# Electron, Individual Sectors with DC
VTP_GT_TRGBIT  1   1   1  1  1  0  0    1  # SSP STRG0, SECTOR 1
VTP_GT_TRGBIT  2   1   2  1  1  0  0    1  # SSP STRG0, SECTOR 2
VTP_GT_TRGBIT  3   1   4  1  1  0  0    1  # SSP STRG0, SECTOR 3
VTP_GT_TRGBIT  4   1   8  1  1  0  0    1  # SSP STRG0, SECTOR 4
VTP_GT_TRGBIT  5   1  16  1  1  0  0    1  # SSP STRG0, SECTOR 5
VTP_GT_TRGBIT  6   1  32  1  1  0  0    1  # SSP STRG0, SECTOR 6

# HTCC, Individual Sectors
VTP_GT_TRGBIT  7   4   1  1  1  0  0    1  # SSP STRG2, SECTOR 1
VTP_GT_TRGBIT  8   4   2  1  1  0  0    1  # SSP STRG2, SECTOR 2
VTP_GT_TRGBIT  9   4   4  1  1  0  0    1  # SSP STRG2, SECTOR 3
VTP_GT_TRGBIT  10  4   8  1  1  0  0    1  # SSP STRG2, SECTOR 4
VTP_GT_TRGBIT  11  4  16  1  1  0  0    1  # SSP STRG2, SECTOR 5
VTP_GT_TRGBIT  12  4  32  1  1  0  0    1  # SSP STRG2, SECTOR 6

# FTOF x PCAL=(10-60MeV x ECAL=(40-120)MeV  MUON TRIGGER
VTP_GT_TRGBIT 13  64   9  2  1  0  6    1  #  STRG6, SECTOR 1 & 4
VTP_GT_TRGBIT 14  64  18  2  1  0  6    1  #  STRG6, SECTOR 2 & 5
VTP_GT_TRGBIT 15  64  36  2  1  0  6    1  #  STRG6, SECTOR 3 & 6

# MUON TRIGGER (without emax on ECAL or PCAL)
VTP_GT_TRGBIT 16 128   9  2  1  0  6    1  #  STRG7, SECTOR 1 & 4
VTP_GT_TRGBIT 17 128  18  2  1  0  6    1  #  STRG7, SECTOR 2 & 5
VTP_GT_TRGBIT 18 128  36  2  1  0  6    1  #  STRG7, SECTOR 3 & 6


# PCal + EC, Individual Sectors
VTP_GT_TRGBIT  19  16   1  1  1  0  0    1  # SSP STRG4, SECTOR 1
VTP_GT_TRGBIT  20  16   2  1  1  0  0    1  # SSP STRG4, SECTOR 2
VTP_GT_TRGBIT  21  16   4  1  1  0  0    1  # SSP STRG4, SECTOR 3
VTP_GT_TRGBIT  22  16   8  1  1  0  0    1  # SSP STRG4, SECTOR 4
VTP_GT_TRGBIT  23  16  16  1  1  0  0    1  # SSP STRG4, SECTOR 5
VTP_GT_TRGBIT  24  16  32  1  1  0  0    1  # SSP STRG4, SECTOR 6


# DC_ROADS
VTP_GT_TRGBIT  25  32   1  1  1  0  0    1  # SSP STRG5, SECTOR 1
VTP_GT_TRGBIT  26  32   2  1  1  0  0    1  # SSP STRG5, SECTOR 2
VTP_GT_TRGBIT  27  32   4  1  1  0  0    1  # SSP STRG5, SECTOR 3
VTP_GT_TRGBIT  28  32   8  1  1  0  0    1  # SSP STRG5, SECTOR 4
VTP_GT_TRGBIT  29  32  16  1  1  0  0    1  # SSP STRG5, SECTOR 5
VTP_GT_TRGBIT  30  32  32  1  1  0  0    1  # SSP STRG5, SECTOR 6


# PULSER
VTP_GT_TRG             31
VTP_GT_TRG_PULSER_FREQ 100.0

VTP_CRATE end

############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

#lock-roc mode
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1


# with micromega
#TS_BLOCK_LEVEL   10
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 30 1
#TS_HOLDOFF   2 30 1
#TS_HOLDOFF   3 30 1
#TS_HOLDOFF   4 30 1

# production: 5 5 15 10
TS_BLOCK_LEVEL   40
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1  5 1
TS_HOLDOFF   2  5 1
TS_HOLDOFF   3 15 1
TS_HOLDOFF   4 10 1

# crashes VTPs
#TS_BLOCK_LEVEL   40
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 10 1
#TS_HOLDOFF   2 10 1
#TS_HOLDOFF   3  7 1
#TS_HOLDOFF   4  5 1

#
# TS FP trigger mask
#
# 0x80  - FARADAY
# 0x100 - SVT
# 0x200 - CTOF
# 0x400 - CND
# 0x800 - MVT
# 0x1000 - helicity

TS_FP_INPUT_MASK 0x00001080

### Faraday cup prescale
TS_FP_PRESCALE  8 5


# TS_GTP_PRESCALE bit prescale
# TS_FP_PRESCALE  bit prescale
# Note: actual prescale is 2^(prescale-1)+1
#       prescale from 0 to 15
#       bit from 0 to 31  Prescale=(1-32)

# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 1   4

TS_CRATE end
