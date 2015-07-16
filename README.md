# milton-automation
Automation project for milton-tpx


## Robot/Selenium Installation Guide
[Scout Automation Install Guide](https://goscoutgo.atlassian.net/wiki/pages/viewpage.action?pageId=10223795 "Install Guide")


### SETUP
___

* Create a VirtualENVironment to put your code in
 * virtualenv ~/ve
 * . ~/ve/bin/activate
 * cd ~/ve
* Follow the set up in the section above if you have not already
 * ideally you will want to isolate the automation set up with in a virtualEnv
* Get Latest Code: git clone https://github.com/litl/milton-automation.git
* Install the code requirements: pip install -r requirements.txt



### TALENTFILTER
___
Running TalentFilter 2.0 tests

* pybot -i FIRST tf2/features/TF2_General.txt


### SCOUT
Running Scout Tests
___

**NOTE:** make sure to set your password and keyfile locaiton in settings.py

**WARNING:** These must be run from the scripts/BVT or scripts/Smoke directories or you will lose all your files
___

#### SMOKE
To run smoke tests for TBE/BH and TBE-PCR

**STAGING**

* cd scripts/Smoke
* sh run\_BVT\_stg.sh

**TEST**

* cd scripts/Smoke
* sh run\_BVT\_tst.sh


#### BVT
To run quick tests for build verification

**STAGING**

* cd scripts/BVT
* sh run\_BVT\_stg.sh

**TEST**

* cd scripts/BVT
* sh run\_BVT\_tst.sh




