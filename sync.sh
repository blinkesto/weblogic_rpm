#!/usr/bin/env bash
rsync --verbose --recursive --exclude '*rpm' --exclude '*.jar' --exclude 'build/*' /Users/kdooley/IdeaProjects/weblogic_rpm/* ~/weblogic_rpm/