#!/usr/bin/env bash

declare -a os=("centos6" "centos7")
declare -a wls=("10.3.6.0.0" "12.1.3.0.0" "12.2.1.2.0" "12.2.1.3.0")

for i in "${os[@]}"
do
    for j in "${wls[@]}"
    do
        echo "gradle :run:os:install -Pos=$i -Pwls=$j"
        echo "gradle :run:weblogic:install -Pos=$i -Pwls=$j"
        echo "gradle :run:rpm:create -Pos=$i -Pwls=$j"
        echo "gradle :run:os:destroy -Pos=$i -Pwls=$j"
        echo ""
    done
    echo ""
done