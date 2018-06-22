#!/bin/sh

cp /mnt/files/test_war_2.war /opt/oracle/deploy/test_war.war
/opt/oracle/product/fmw-12cR1-12.1.3.0.0/oracle_common/common/bin/wlst.sh deploy.wlst

