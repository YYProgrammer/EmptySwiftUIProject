#!/bin/sh

if [[ "$(cat /var/tmp/swiftlint-strict.log)" != "" ]];  then
    echo ""
    echo ""
    echo "------ ERROR: swiftlint violations，needs to be manually repaired ------"
    cat /var/tmp/swiftlint-strict.log
    echo ""
    echo ""
    exit 1 
fi
