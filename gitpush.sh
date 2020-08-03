#!/bin/bash
commit=$1
token=$2
v=`echo "$commit"| awk '{print $1}'`
#echo "$v"
#array=($(echo $commit | awk '{gsub(",","\n")} 1' | awk '{print $1}'))
#echo "$array"
#echo "git pull https://$token@github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git"
#echo "git cherry-pick $v"
#echo "git push https://$token@github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git"
 

array=$(echo $commit | awk '{gsub(",","\n")} 1' | awk '{print $1}')
#echo "$array"
for i in `echo $array`

do

  echo $i

  git cherry-pick $i

  #git push https://$token@github.com/thermofisher/tfsds-databricks-ci-test-2.git

done
git push https://$token@github.com/thermofisher/tfsds-databricks-ci-test-2.git
