#!/bin/env bash

FMW_INSTALLER=fmw_12.1.3.0.0_wls.jar
BINARIES_DIR=/mnt/files
JDK_RPM=jdk-8u161-linux-x64.rpm
STAGE_DIR=/vagrant/files

sudo yum install -y rng-tools
sudo service rngd start
sudo chkconfig rngd on

sudo groupadd oinstall
sudo useradd -g oinstall oracle

sudo mkdir -p /opt/oracle/product
sudo chown -R oracle:oinstall /opt/oracle

sudo rpm -Uvh $BINARIES_DIR/$JDK_RPM
sudo ln -s /usr/java/latest /opt/java/latest

usermod -G oinstall ansible

if [[ $FMW_INSTALLER == fmw* ]]; then
    sudo -S -u oracle java -Xmx1024m  -jar $BINARIES_DIR/$FMW_INSTALLER -silent -responseFile $STAGE_DIR/weblogic/Response.rsp -invPtrLoc $STAGE_DIR/weblogic/oraInst.loc
else

    sudo -S -u oracle java -Xmx1024m  -jar $BINARIES_DIR/$FMW_INSTALLER -mode=silent -silent_xml=$STAGE_DIR/weblogic/silent.xml
fi

sudo rm -rf /tmp/OraInstall*

#sudo -S -u oracle /opt/oracle/middleware/oracle_common/common/bin/wlst.sh /mnt/files/weblogic/createdomain.wlst
#sudo -S -u oracle mkdir /opt/oracle/domains/base_domain/servers/AdminServer/security
#sudo -S -u oracle echo "username=weblogic" >> /opt/oracle/domains/base_domain/servers/AdminServer/security/boot.properties
#sudo -S -u oracle echo "password=bread4all" >> /opt/oracle/domains/base_domain/servers/AdminServer/security/boot.properties