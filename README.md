milton-automation
=================
Automation project for milton-tpx


Robot/Selenium Installation Guide
=================
https://goscoutgo.atlassian.net/wiki/pages/viewpage.action?pageId=10223795


SETUP
=================
virtualenv ve
. ve/bin/activate
pip install -r requirements.txt


TALENTFILTER
=================
Running TalentFilter 2.0 tests

pybot -i FIRST tf2/features/TF2_General.txt



SCOUT
=================
Running Scout Tests

To run smoke tests for TBE/BH and TBE-PCR
sh scripts/run_smoke.sh

To run quick tests for build verification
pybot -i QUICK src/features/



