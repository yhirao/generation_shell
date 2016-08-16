#!/bin/sh
TARGET_DIR=/home/soiginta/tmp/generation_test/targets
cd ${TARGET_DIR}
GENERATION=5

CNT=0
for file in `ls -1t ${1}*`
do
    CNT=$((CNT+1))
        
    if [ ${CNT} -le ${GENERATION} ] 
    then
        continue
    fi
    echo "rm ${file}"
    eval "rm ${file}"
done
