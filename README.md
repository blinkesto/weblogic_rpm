# weblogic_rpm

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
```bash
# Install VM
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.3.0

# Install Weblogic
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.2.0

# Do opatch


# Create RPM from /opt/oracle/product/fmw-<version>
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.2.0

# Create a new VM and install the created rpm
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.2.0
```

# Output

What|Where
---|---
Vagrant | build/os/wls/
RPM|build/|
