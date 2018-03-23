#!/bin/env python
import subprocess

os_list=['centos7', 'centos6']
wls_list=['12.1.3.0.0','12.2.1.2.0','12.2.1.3.0']
gradle_setup_list=[
    ':run:os:install',
    ':run:weblogic:install',
    ':run:rpm:create',
    ':run:os:halt'
]

gradle_install_list=[
    ':run:rpm:install'
]

cmd_list = []

for os in os_list:
    cmd_str =  ""
    for wls in wls_list:
        cmd_list=[]
        for gradle_setup in gradle_setup_list:
            os_opt =  "-Pos=%s" % os
            wls_opt = "-Pwls=%s" % wls
            cmd_list.append('gradle %s %s %s' % (gradle_setup, os_opt, wls_opt))
            cmd_list.append("&&")
        print ' '.join(cmd_list[:-1])

        cmd_list=[]
        for gradle_install in gradle_install_list:
            os_opt =  "-Pos=%s" % os
            wls_opt = "-Pwls=%s" % wls
            cmd_list.append('gradle %s %s %s' % (gradle_install, os_opt, wls_opt))
            cmd_list.append("&&")
        print ' '.join(cmd_list[:-1])