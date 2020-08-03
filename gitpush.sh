#!/bin/bash
commit=$1
token=$2
v=`echo "$commit"| awk '{print $1}'`
echo "$v"
array=($(echo $commit | awk '{gsub(",","\n")} 1' | awk '{print $1}'))
echo "$array"
echo "git pull https://$token@github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git"
echo "git cherry-pick $v"
echo "git push https://$token@github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git"
echo "hello"
