# weblogic_rpm

# TODO
- Destroy VMs.  There are 12 VMs created, can't have them all running.
- opatch automation


# Setup 

## VirtualBox
Setup DHCP on the private network

## Vagrant


## Intelij (TODO)
Open 

## Add binaries to project (TODO: Create a script to download) 
Add fmw_*_wls.jar files to files/
Add jdk-*-linux-x64.rpm to files/ 

# Generate Run Scripts (TODO: Write the scripts to file)
```bash
python create.py
```

# Run
```bash
STLC02NL0W6G3QP:weblogic_rpm kdooley$cat centos7_12.1.3.0.0.sh 
#!/usr/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:install -Pos=centos7 -Pwls=12.1.3.0.0

STLC02NL0W6G3QP:weblogic_rpm kdooley$ time centos7_12.1.3.0.0.sh 
...
real    9m14.413s
user    0m7.839s
sys     0m1.330s
```

What|Where
---|---
Vagrant | build/$OS/$WLS/
RPM|build/$OS/$WLS/fmw-*.rpm|


# Sample run files (TODO)
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