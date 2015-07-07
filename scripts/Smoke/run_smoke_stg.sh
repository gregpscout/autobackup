#!/bin/bash

#  ****************  To execute this script "sh run_smoke_stg.sh"  ***************************


#  ***** TBE - Bullhorn Smoke Test Suite  *****

shopt -s extglob
rm -rf !(*.sh|README.txt)

pybot -i BUILD_INFO_STG --output build_info.xml --report build_info.html ../../src/features/common/
pybot -i JOBCREATION_BH --output tbe_bh_create.xml --report tbe_bh_create.html ../../src/features/tbe/
pybot -i JOBIMP --output bh_import.xml --report bh_import.html ../../src/features/bullhorns/
pybot --rerunfailed bh_import.xml --output bh_import.xml ../../src/features/bullhorns/
pybot -i LINKS --output tbe_links.xml --report tbe_links.html ../../src/features/tbe/
pybot --rerunfailed tbe_links.xml --output tbe_links.xml ../../src/features/tbe/
pybot -i ACCEPTSUBMISSION_BH --output tbe_bh_accept.xml --report tbe_accept.html ../../src/features/tbe/
pybot --rerunfailed tbe_bh_accept.xml --output tbe_bh_accept.xml ../../src/features/tbe/
pybot -i REJECTSUBMISSION_BH --output tbe_bh_reject.xml --report tbe_reject.html ../../src/features/tbe/
pybot --rerunfailed tbe_bh_reject.xml --output tbe_bh_reject.xml ../../src/features/tbe/
pybot -i LINKS --output bh_links.xml --report bh_links.html ../../src/features/bullhorns/
pybot --rerunfailed bh_links.xml --output bh_links.xml ../../src/features/bullhorns/
pybot -i PLACEMENT --output bh_placement.xml --report bh_placement.html ../../src/features/bullhorns/
pybot --rerunfailed bh_placement.xml --output bh_placement.xml ../../src/features/bullhorns/
rebot --report SMOKE_REPORT.html --log SMOKE_LOG.html --output SMOKE_OUTPUT.xml --ReportTitle Smoke_Tests_for_TBE_Bullhorn build_info.xml tbe_bh_create.xml bh_import.xml tbe_links.xml tbe_bh_accept.xml tbe_bh_reject.xml bh_links.xml bh_placement.xml

mkdir SMOKE
mv !(SMOKE|*.sh|README.txt) SMOKE/
cp README.txt SMOKE/

/usr/local/bin/python2.7 ../upload.py SMOKE Staging
rm -rf SMOKE






