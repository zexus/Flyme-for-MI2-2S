#!/bin/bash


jarBaseName=$1
tempSmaliDir=$2

if [ $jarBaseName == "framework" ];then
	echo ">>> in custom_jar $jarBaseName"
	echo ">>> in custom_dir $tempSmaliDir"
	patch $tempSmaliDir/smali_classes2/meizu/security/FlymePermissionManager.smali FlymePermissionManager.smali.patch
fi

