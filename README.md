milton-automation
=================

Automation project for milton-tpx


=================
SETUP

virtualenv ve
. ve/bin/activate
pip install -r requirements.txt


=================
Run TalentFilter 2.0 tests

pybot -i FIRST tf2/features/TF2_General.txt



=================
Run Scout Tests

To run smoke tests for TBE/BH and TBE-PCR
sh scripts/run_smoke.sh

To run quick tests for build verification
pybot -i QUICK src/features/



