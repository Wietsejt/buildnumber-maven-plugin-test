#! /bin/bash

set -e

for ((n=0;n<1000;n++))
do
  echo "$n"
  mvn buildnumber:create
done