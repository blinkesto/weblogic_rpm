#!/bin/env python
import subprocess

os_list=['centos7', 'centos6']
wls_list=['12.1.3.0.0','12.2.1.2.0','12.2.1.3.0']
gradle_setup_list=[
    ':run:os:install',
    ':run:weblogic:install',
    ':run:os:halt'
]

gradle_install_list=[
    ':run:rpm:create',
    ':run:rpm:install'
]

for os in os_list:
    for wls in wls_list:
        print "#!/bin/env bash"
        for gradle in gradle_setup_list:
            # subprocess.check_output(['gradle',':run:os:install', '-Pos=%s' % os, '-Pwls=' % wls])
            os_opt =  "-Pos=%s" % os
            wls_opt = "-Pwls=%s" % wls
            # print ('gradle %s %s %s && \\n' % (gradle, os_opt, wls_opt))
            print ('gradle %s %s %s' % (gradle, os_opt, wls_opt))
        print ""

for os in os_list:
    for wls in wls_list:
        print "#!/bin/env bash"
        for gradle in gradle_install_list:
            # subprocess.check_output(['gradle',':run:os:install', '-Pos=%s' % os, '-Pwls=' % wls])
            os_opt =  "-Pos=%s" % os
            wls_opt = "-Pwls=%s" % wls
            # print ('gradle %s %s %s && \\n' % (gradle, os_opt, wls_opt))
            print ('gradle %s %s %s' % (gradle, os_opt, wls_opt))
        print ""