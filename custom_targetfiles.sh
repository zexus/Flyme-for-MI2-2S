#!/bin/bash

MERGED_DIR=out/merged_target_files
SYSTEM_DIR=$MERGED_DIR/SYSTEM
DATA_DIR=$MERGED_DIR/DATA
FLYME_DIR=$DATA_DIR/media/app

rm -rf $DATA_DIR
mkdir -p $FLYME_DIR

for file in `grep -rns "board_remove_apps" Makefile | cut -d "=" -f2`
do
    if [ -d "$SYSTEM_DIR/app/$file" ];then
        echo "Moving $file from SYSTEM/APP to DATA"
        mv $SYSTEM_DIR/app/$file $FLYME_DIR/
    fi
    if [ -d "$SYSTEM_DIR/priv-app/$file" ];then
        echo "Moving $file from SYSTEM/PRIV-APP TO DATA"
        mv $SYSTEM_DIR/priv-app/$file $FLYME_DIR/
    fi
done

cp -rf $FLYME_DIR $DATA_DIR
