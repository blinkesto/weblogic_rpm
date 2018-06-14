# weblogic_rpm

# USAGE
```bash
# Create CentOS6 and Weblogic 12.1.3.0.0
./weblogic_rpm.py create  --os=centos6 --wls=12.2.1.2.0
./weblogic_rpm.py install --os=centos6 --wls=12.2.1.2.0

# Create CentOS7 and Weblogic 12.1.3.0.0
./weblogic_rpm.py create  --os=centos7 --wls=12.2.1.2.0
./weblogic_rpm.py install --os=centos7 --wls=12.2.1.2.0

```

# IMPROVEMENTS
- Now we can create RPMs for both OS versions and 3 WLS versions 
- MW_HOME is now /opt/oracle/product/fmw-version.  /opt/oracle/middleware is a symlink to that.
- Now we can upgrade/rollback by updating the symlink.
- JDK is installed using standard Oracle rpms.  I'm not building RPMS that already exist just to install certs, that's ridiculous.
- /opt/oracle/java is a symlink to /usr/java/default
- Now we can upgrade/rollback by updating symlink and export JAVA_HOME not grepping 10 files (which might change for every patch) to look for "/opt/oracle/java/1.8.0.161" which has caused so many issues.  
- Removed JDK dependency from weblogic rpm.  What purpose did that serve?
- Can install multiple versions 

# TODO

remove from properties
mw_dir=fmw-12cR1-12.1.3.0.0
mw_path=/opt/oracle/product

