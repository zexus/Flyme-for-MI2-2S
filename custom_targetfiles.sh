#!/bin/bash

MERGED_DIR=out/merged_target_files
SYSTEM_DIR=$MERGED_DIR/SYSTEM
DATA_DIR=$MERGED_DIR/DATA
FLYME_DIR=$DATA_DIR/media
DATA_CONF=overlay/system/etc/data.conf

rm -rf $DATA_DIR
mkdir -p $FLYME_DIR/fonts
mkdir -p $FLYME_DIR/app

function appRemoveToData ()
{
	for file in `grep -rns "app2data" $DATA_CONF | cut -d "=" -f2`
	do
	    if [ -d "$SYSTEM_DIR/app/$file" ];then
		echo "Moving $file from SYSTEM/APP to DATA..."
		mv $SYSTEM_DIR/app/$file $FLYME_DIR/app/
	    fi
	done
}

function privAppRemoveToData ()
{
	for file in `grep -rns "priv_app2data" $DATA_CONF | cut -d "=" -f2`
	do
	    if [ -d "$SYSTEM_DIR/priv-app/$file" ];then
		echo "Moving $file from SYSTEM/PRIV-APP to DATA..."
		mv $SYSTEM_DIR/priv-app/$file $FLYME_DIR/app/
	    fi
	done
}

function fontRemoveToData ()
{
	for file in `grep -rns "fonts2data" $DATA_CONF | cut -d "=" -f2`
	do
	    if [ -f "$SYSTEM_DIR/fonts/$file" ];then
		echo "Moving $file from SYSTEM/FONTS to DATA..."
		mv $SYSTEM_DIR/fonts/$file $FLYME_DIR/fonts/
	    fi
	done
}

appRemoveToData;
privAppRemoveToData;
fontRemoveToData;

cp -rf $FLYME_DIR/app $DATA_DIR/
