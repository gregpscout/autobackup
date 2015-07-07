#!/bin/bash

#  ****************  To execute this script "sh run_BVT_tst.sh"  ***************************

shopt -s extglob
rm -rf !(*.sh|README.txt)
pybot -i QUICK_TEST --output BVT_TESTS.xml --report BVT_report.html --log BVT_log.html ../../src/features/
#pybot --rerunfailed BVT_TESTS.xml --output BVT_TESTS.xml ../../src/features/
mkdir BVT
mv !(BVT|*.sh|README.txt) BVT/
cp README.txt BVT/
/usr/local/bin/python2.7 ../upload.py BVT Test
rm -rf BVT
