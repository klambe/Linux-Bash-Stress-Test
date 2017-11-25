#!/bin/bash


cpu=`mpstat 2 1 -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
echo "idle is $cpu"

mpstat 5 1 -o JSON |jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'
