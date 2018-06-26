
#!/bin/env bash
JDK_RPM=jdk-8u161-linux-x64.rpm
STAGE_DIR=/mnt/files

REL=1

sudo yum install -y rng-tools
sudo service rngd start
sudo chkconfig rngd on

sudo groupadd oinstall
sudo useradd -g oinstall oracle

sudo rpm -Uvh $STAGE_DIR/$JDK_RPM
sudo ln -s /usr/java/latest /opt/java

sudo yum -y install /out/fmw-12cR1-12.1.3.0.0-1.el6.x86_64.rpm