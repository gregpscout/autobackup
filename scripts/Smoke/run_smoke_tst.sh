#!/bin/bash

#  ****************  To execute this script "sh run_smoke_tst.sh"  ***************************



# ***** TBE - PCR Smoke Test Suite  *****

shopt -s extglob
rm -rf !(*.sh|README.txt)

pybot -i BUILD_INFO_TST --output build_info.xml --report build_info.html ../../src/features/common/
pybot -i JOBCREATION_PCR --output tbe_pcr_create.xml --report tbe_pcr_create.html ../../src/features/tbe/
pybot -i JOBIMP --output pcr_import.xml --report pcr_import.html ../../src/features/pcr/
pybot --rerunfailed pcr_import.xml --output pcr_import.xml ../../src/features/pcr/
pybot -i SUBMISSIONS --output pcr_sub.xml --report pcr_sub.html ../../src/features/pcr/
pybot --rerunfailed pcr_sub.xml --output pcr_sub.xml ../../src/features/pcr/
pybot -i LINKS --output pcr_links.xml --report pcr_links.html ../../src/features/pcr/
pybot -i ACCEPTSUBMISSION_PCR --output tbe_pcr_accept.xml --report tbe_pcr_accept.html ../../src/features/tbe/
pybot --rerunfailed tbe_pcr_accept.xml --output tbe_pcr_accept.xml ../../src/features/tbe/
pybot -i REJECTSUBMISSION_PCR --output tbe_pcr_reject.xml --report tbe_pcr_reject.html ../../src/features/tbe/
pybot --rerunfailed tbe_pcr_reject.xml --output tbe_pcr_reject.xml ../../src/features/tbe/
pybot -i PLACEMENT --output pcr_placement.xml --report pcr_placement.html ../../src/features/pcr/
pybot --rerunfailed pcr_placement.xml --output pcr_placement.xml ../../src/features/pcr/
#pybot -i CLEAN --output pcr_clean.xml --report pcr_clean.html ../../src/features/pcr/
rebot --report SMOKE_REPORT.html --log SMOKE_LOG.html --output SMOKE_OUTPUT.xml --ReportTitle Smoke_Tests_for_TBE_PCR build_info.xml tbe_pcr_create.xml pcr_import.xml pcr_sub.xml pcr_links.xml tbe_pcr_accept.xml tbe_pcr_reject.xml pcr_placement.xml #pcr_clean.xml

mkdir SMOKE
mv !(SMOKE|*.sh|README.txt) SMOKE/
cp README.txt SMOKE/
/usr/local/bin/python2.7 ../upload.py SMOKE Test
rm -rf SMOKE
