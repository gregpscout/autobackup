#!/usr/local/bin/python2.7

import sys, os, time

import datetime as dt
now = dt.datetime.now()
inDir = sys.argv[1]
outDir = sys.argv[2]
dirdate = now.strftime("%Y_%m_%d_%H_%M_%S")
dirname = "%s_%s" % (inDir, dirdate)


remote_dir_root = "/home/ubuntu/report/Scout/%s/%s" % (outDir, inDir)
#remote_dir_root = "/home/ubuntu/report/Scout/%s" % os.environ['USER']
remote_report_dir ="%s/%s" % (remote_dir_root, dirname)
mkdir_cmd = "mkdir -p %s" % (remote_report_dir)
res = os.system('ssh -i ~/.ssh/yzhaotalentdrive.pem ubuntu@qa01.talentfilter.biz "%s" ' % mkdir_cmd)
res2 = os.system('scp -i ~/.ssh/yzhaotalentdrive.pem %s/* ubuntu@qa01.talentfilter.biz:%s' %(inDir, remote_report_dir))

