# weblogic_rpm

#SETUP
See docs/setup.md


# USAGE
```bash
# Install OS
gradle :run:os:install -Pos=centos6 -Pwls=12.1.3.0.0

# Install Weblogic
gradle :run:weblogic:install -Pos=centos6 -Pwls=12.1.3.0.0

# Create RPM
gradle :run:rpm:create -Pos=centos6 -Pwls=12.1.3.0.0
```

RPM will be at PROJECT_ROOT/out/
```bash
# Stop VM
gradle :run:os:halt -Pos=centos6 -Pwls=12.1.3.0.0

# Install RPM 
gradle :run:rpm:install -Pos=centos6 -Pwls=12.1.3.0.0

# Stop VM
gradle :run:rpm:halt -Pos=centos6 -Pwls=12.1.3.0.0

```

# IMPROVEMENTS
- Can create RPMs for both OS versions and 3 WLS versions 
- MW_HOME is now /opt/oracle/product/fmw-version.  /opt/oracle/middleware is a symlink to that.
- Can upgrade/rollback by updating the symlink.
- JDK is installed using standard Oracle rpms.  
- /opt/oracle/java is a symlink to /usr/java/default
- Now we can upgrade/rollback by updating symlink and export JAVA_HOME instead of grepping 10 files (which might change for every patch) to look for "/opt/oracle/java/1.8.0.161" which has caused so many issues.  
- Removed JDK dependency from weblogic rpm.  What purpose did that serve?
- Can install multiple versions on the same VM

# TODO
- Installation location is not easily updateable
- Fix the tests
- determine method to test truststore when new certs added
- Create Java RPMs 

=======


