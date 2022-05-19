#!/bin/bash

# Script to find related jobs and configmaps from the openshift-marketplace
function find_files_includes
{
    oc get job,configmap -n openshift-marketplace | tr -s " " | awk '{print $1}' | grep $1 > $1.list
    touch include-$1.list
    for VAR in $(cat $1.list)
    do
        oc describe $VAR -n openshift-marketplace | grep -i $2
        if  [ $? -eq 0 ]
        then
            echo "$VAR'da Bulundu"
            echo "$VAR" >> include-$1.list
        else
            echo "$VAR'da YOK"
        fi
    done
    rm $1.list
    echo "$1s are save as include-$1.list file"
}
# run functions
find_files_includes job $1
find_files_includes configmap $1