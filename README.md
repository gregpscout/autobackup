# milton-automation
Automation project for milton-tpx


## Robot/Selenium Installation Guide
[Scout Automation Install Guide](https://goscoutgo.atlassian.net/wiki/pages/viewpage.action?pageId=10223795 "Install Guide")


### SETUP
* Create a VirtualENVironment to put your code in
 * virtualenv ~/ve
 * . ~/ve/bin/activate
 * cd ~/ve
* Follow the set up in the section above if you have not already
 * ideally you will want to isolate the automation set up with in a virtualEnv
* Get Latest Code: git clone https://github.com/litl/milton-automation.git
* Install the code requirements: pip install -r requirements.txt


### TALENTFILTER
Running TalentFilter 2.0 tests

pybot -i FIRST tf2/features/TF2_General.txt



### SCOUT
Running Scout Tests

To run smoke tests for TBE/BH and TBE-PCR
sh scripts/run_smoke.sh

To run quick tests for build verification
pybot -i QUICK src/features/

