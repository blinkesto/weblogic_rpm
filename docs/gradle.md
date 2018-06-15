# Gradle commands sample

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


