# weblogic_rpm

# TODO
Destroy VMs
opatch automation


# Setup 

## VirtualBox
Setup DHCP on the private network

## Vagrant


## Intelij 
Open 

## files/ 
Add fmw_*_wls.jar files to files/
Add jdk-*-linux-x64.rpm to files/ 

# Run
```python
#!/bin/env python
import subprocess

os_list=['centos7', 'centos6']
wls_list=['12.1.3.0.0','12.2.1.2.0','12.2.1.3.0']

for os in os_list:
    for wls in wls_list:
        # subprocess.check_output(['gradle',':run:os:install', '-Pos=%s' % os, '-Pwls=' % wls])
        print (['gradle',':run:os:install', '-Pos=%s' % os, '-Pwls=' % wls])

# Install VM
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.3.0

# Install Weblogic
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.2.0

# Stop the VM
gradle :run:os:halt -Pos=centos7 -Pwls=12.2.1.3.0

# Do opatch


# Create RPM from /opt/oracle/product/fmw-<version>
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.2.0

# Create a new VM and install the created rpm
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.2.0
```

# Output

```bash
STLC02NL0W6G3QP:weblogic_rpm kdooley$ cat centos7_12.1.3.0.0.sh 
#!/usr/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:install -Pos=centos7 -Pwls=12.1.3.0.0STLC02NL0W6G3QP:weblogic_rpm kdooley$ 

time ./centos7_12.1.3.0.0.sh 
...
real    9m14.413s
user    0m7.839s
sys     0m1.330s


```

What|Where
---|---
Vagrant | build/os/wls/
RPM|build/|

```bash
#!/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.1.3.0.0 && \n
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.1.3.0.0 && \n
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0 && \n
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0 && \n
gradle :run:rpm:install -Pos=centos7 -Pwls=12.1.3.0.0

#!/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:os:halt -Pos=centos7 -Pwls=12.2.1.2.0

#!/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:os:halt -Pos=centos7 -Pwls=12.2.1.3.0

#!/bin/env bash
gradle :run:os:install -Pos=centos6 -Pwls=12.1.3.0.0
gradle :run:weblogic:install -Pos=centos6 -Pwls=12.1.3.0.0
gradle :run:os:halt -Pos=centos6 -Pwls=12.1.3.0.0

#!/bin/env bash
gradle :run:os:install -Pos=centos6 -Pwls=12.2.1.2.0
gradle :run:weblogic:install -Pos=centos6 -Pwls=12.2.1.2.0
gradle :run:os:halt -Pos=centos6 -Pwls=12.2.1.2.0

#!/bin/env bash
gradle :run:os:install -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:weblogic:install -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:os:halt -Pos=centos6 -Pwls=12.2.1.3.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:rpm:install -Pos=centos7 -Pwls=12.1.3.0.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.2.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.3.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos6 -Pwls=12.1.3.0.0
gradle :run:rpm:install -Pos=centos6 -Pwls=12.1.3.0.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos6 -Pwls=12.2.1.2.0
gradle :run:rpm:install -Pos=centos6 -Pwls=12.2.1.2.0

#!/bin/env bash
gradle :run:rpm:create -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:rpm:install -Pos=centos6 -Pwls=12.2.1.3.0


```