# Gradle commands sample

```bash
# Install OS
gradle :run:os:install      -Pos=centos6 -Pwls=12.1.3.0.0 
gradle :run:os:test:install -Pos=centos6 -Pwls=12.1.3.0.0 

# Install Weblogic
gradle :run:weblogic:install      -Pos=centos6 -Pwls=12.1.3.0.0
gradle :run:weblogic:test:install -Pos=centos6 -Pwls=12.1.3.0.0

# Create RPM
gradle :run:rpm:create      -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:rpm:test:create -Pos=centos7 -Pwls=12.1.3.0.0

# Stop VM
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0

# Install RPM 
gradle :run:rpm:install      -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:rpm:test:install -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:rpm:halt         -Pos=centos7 -Pwls=12.1.3.0.0 
```