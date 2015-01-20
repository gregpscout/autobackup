#!/bin/bash

#  ****************  NOTE: This script has to be executed under milton-automation/target directory  ********************
#  ****************  To execute this script "sh run_smoke.sh"  ***************************


#  ***** TBE - Bullhorn Smoke Test Suite  ***** 
pybot -i JOBCREATION_BH --output tbe_bh_create.xml --report tbe_bh_create.html ../src/features/tbe/
pybot -i JOBIMP --output bh_import.xml --report bh_import.html ../src/features/bullhorns/
pybot --rerunfailed bh_import.xml --output bh_import.xml src/features/bullhorns/
pybot -i LINKS --output tbe_links.xml --report tbe_links.html ../src/features/tbe/
pybot --rerunfailed tbe_links.xml --output tbe_links.xml src/features/tbe/
pybot -i ACCEPTSUBMISSION_BH --output tbe_bh_accept.xml --report tbe_accept.html ../src/features/tbe/
pybot --rerunfailed tbe_bh_accept.xml --output tbe_bh_accept.xml src/features/tbe/
pybot -i REJECTSUBMISSION_BH --output tbe_bh_reject.xml --report tbe_reject.html ../src/features/tbe/
pybot --rerunfailed tbe_bh_reject.xml --output tbe_bh_reject.xml src/features/tbe/
pybot -i LINKS --output bh_links.xml --report bh_links.html ../src/features/bullhorns/
pybot --rerunfailed bh_links.xml --output bh_links.xml src/features/bullhorns/
pybot -i PLACEMENT --output bh_placement.xml --report bh_placement.html ../src/features/bullhorns/
pybot --rerunfailed bh_placement.xml --output bh_placement.xml src/features/bullhorns/
rebot --outputdir bh_smoke tbe_bh_create.xml bh_import.xml tbe_links.xml tbe_bh_accept.xml tbe_bh_reject.xml bh_links.xml bh_placement.xml


# ***** TBE - PCR Smoke Test Suite (Assuming job was already created as part of BH smoke) ***** 
pybot -i JOBCREATION_PCR --output tbe_pcr_create.xml --report tbe_pcr_create.html ../src/features/tbe/
pybot -i JOBIMP --output pcr_import.xml --report pcr_import.html ../src/features/pcr/
pybot --rerunfailed pcr_import.xml --output pcr_import.xml ../src/features/pcr/
pybot -i SUBMISSIONS --output pcr_sub.xml --report pcr_sub.html ../src/features/pcr/ 
pybot --rerunfailed pcr_sub.xml --output pcr_sub.xml ../src/features/pcr/
pybot -i LINKS --output pcr_links.xml --report pcr_links.html ../src/features/pcr/
pybot -i ACCEPTSUBMISSION_PCR --output tbe_pcr_accept.xml --report tbe_pcr_accept.html ../src/features/tbe/
pybot --rerunfailed tbe_pcr_accept.xml --output tbe_pcr_accept.xml ../src/features/tbe/
pybot -i REJECTSUBMISSION_PCR --output tbe_pcr_reject.xml --report tbe_pcr_reject.html ../src/features/tbe/
pybot --rerunfailed tbe_pcr_reject.xml --output tbe_pcr_reject.xml ../src/features/tbe/
pybot -i PLACEMENT --output pcr_placement.xml --report pcr_placement.html ../src/features/pcr/
pybot --rerunfailed pcr_placement.xml --output pcr_placement.xml ../src/features/pcr/
pybot -i CLEAN --output pcr_clean.xml --report pcr_clean.html ../src/features/pcr/
rebot --outputdir pcr_smoke tbe_pcr_create.xml pcr_import.xml pcr_sub.xml pcr_links.xml tbe_pcr_accept.xml tbe_pcr_reject.xml pcr_placement.xml pcr_clean.xml
