# Gradle commands sample

## Create the VM used to build the RPM and create an RPM from standard weblogic install
```bash
# Install OS
gradle :run:os:install -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.3.0


# Install Weblogic
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.3.0

# Create RPM
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.3.0

# Stop the VM
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0
gradle :run:os:halt -Pos=centos7 -Pwls=12.2.1.2.0
```

# RPM will be at PROJECT_ROOT/out/

## Create VM used to test RPM install and install the RPM
```bash
# Install RPM 
gradle :run:rpm:install -Pos=centos6 -Pwls=12.1.3.0.0

# Stop VM
gradle :run:rpm:halt -Pos=centos6 -Pwls=12.1.3.0.0

```


```bash
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.2.0
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.2.0
```

```bash
gradle :run:os:install -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:rpm:create -Pos=centos7 -Pwls=12.2.1.3.0
gradle :run:rpm:install -Pos=centos7 -Pwls=12.2.1.3.0
```

#Other gradle commands

```
gradle :run:weblogic:copy_templates -Pos=centos7  -Pwls=12.2.1.2.0
```

gradle :run:os:install -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:weblogic:install -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:rpm:create -Pos=centos6 -Pwls=12.2.1.3.0
gradle :run:rpm:install -Pos=centos6 -Pwls=12.2.1.3.0

git remote set-url origin git@github.com:blinkesto/weblogic_rpm.git