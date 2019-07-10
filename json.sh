#!/bin/bash

## Prettier
function jsonval {
    echo $1  | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); print "====> JSON Output: \n ";for (i=1; i<=n; i++) print "\t" a[i] }' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g'
}
jsonval $1