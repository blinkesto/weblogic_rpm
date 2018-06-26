
#!/bin/env bash

REL=1

BUILD_USER=oracle
RPMBUILD_DIR=/home/$BUILD_USER/rpmbuild
FILES_DIR=/vagrant/files/rpm
OUT_DIR=/out/

mkdir -p $RPMBUILD_DIR/{SPECS,SOURCES}
cp $FILES_DIR/weblogic.spec $RPMBUILD_DIR/SPECS/weblogic.spec
cd /opt/oracle/product/
tar czf $RPMBUILD_DIR/SOURCES/fmw-12cR1-12.1.3.0.0.tgz fmw-12cR1-12.1.3.0.0
rpmbuild -bb $RPMBUILD_DIR/SPECS/weblogic.spec
