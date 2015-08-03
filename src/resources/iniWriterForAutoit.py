import ConfigParser
import string
import os
import sys
from ConfigParser import SafeConfigParser


def addConfigItem(iniFileLocation, thisSection, thisItemName, thisItemValue):
    """append item to the ini file for a specific app under test"""

    parser = SafeConfigParser()
    parser.read(iniFileLocation)


    if parser.has_option(thisSection, thisItemName):
        parser.has_option(thisSection, thisItemName)
        parser.remove_option(thisSection, thisItemName)    
        parser.set(thisSection, thisItemName, thisItemValue)
    else:
        parser.set(thisSection, thisItemName, thisItemValue)

    for section in parser.sections():
        print section
        for name, value in parser.items(section):
            print '  %s = %r' % (name, value)

    with open(iniFileLocation, 'wb') as configfile:
        parser.write(configfile)



def createConfigFile(iniFileLocation, thisSection, clientName, company, userName, password, job, job2, job3, subName, subName2, subName3):
    """create an ini file for a specific app to test"""
    # print
    # print
    print "iniFileLocation: %s" % iniFileLocation
    # print 'section %s' % thisSection
    # print 'database %s' % database
    # print 'company %s' % company
    # print 'username %s' % username
    # print 'password %s!' % password
    print 'job %s' % job

    parser = ConfigParser.SafeConfigParser()

   #   parser.add_section('LOGIN')
   #   parser.set('LOGIN', 'company', company)
   #   parser.set('LOGIN', 'username', username)
   #   parser.set('LOGIN', 'password', password)

    parser.add_section(thisSection)
    parser.set(thisSection, 'clientName', clientName)
    parser.set(thisSection, 'company', company)
    parser.set(thisSection, 'userName', userName)
    parser.set(thisSection, 'password', password)
    parser.set(thisSection, 'job', job)
    parser.set(thisSection, 'job2', job2)
    parser.set(thisSection, 'job3', job3)
    parser.set(thisSection, 'subName', subName)
    parser.set(thisSection, 'subName2', subName2)
    parser.set(thisSection, 'subName3', subName3)


    # for section in parser.sections():
    #     print section
    #     for name, value in parser.items(section):
    #         print '  %s = %r' % (name, value)

    with open(iniFileLocation, 'wb') as configfile:
        parser.write(configfile)



# for testing this python file stand alone
#addConfigItem(str(sys.argv[1]), str(sys.argv[2]), str(sys.argv[3]), str(sys.argv[4]) )

#PS C:\Users\IEUser\vm\auto\myauto2\src> 
#python  .\resources\iniWriterForAutoit.py resources\sendouts.ini  LOGIN  Job robot_TBE_SO_Scout_GREG_1_20141024085931


def readConfigItem(iniFileLocation, thisSection, thisOption):

    config = ConfigParser.ConfigParser()
    config.read(iniFileLocation)
    print "iniFileLocation: %s" % iniFileLocation
    print "thisSection: %s" % thisSection
    print "thisOption: %s" % thisOption

    returnItem = config.get(thisSection, thisOption)

    return  returnItem

