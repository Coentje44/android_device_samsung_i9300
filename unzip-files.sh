#!/bin/sh

VENDOR=samsung
DEVICE=i9300

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    #adb pull /system/$FILE $BASE/$FILE
    unzip -j -o ../../../update.zip system/$FILE -d $BASE/$DIR
done

./setup-makefiles.sh
