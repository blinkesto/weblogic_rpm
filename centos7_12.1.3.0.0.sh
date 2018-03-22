#!/usr/bin/env bash
gradle :run:os:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:weblogic:install -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:create -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:os:halt -Pos=centos7 -Pwls=12.1.3.0.0 &&
gradle :run:rpm:install -Pos=centos7 -Pwls=12.1.3.0.0