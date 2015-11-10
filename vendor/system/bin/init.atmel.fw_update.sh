#!/system/bin/sh
result=`cat /sys/bus/i2c/devices/3-004b/update_fw`
case "$result" in
	"family_id=0x82, variant_id=0x19, version=0x10, build=0xaa")
	echo 1 > /sys/bus/i2c/devices/3-004b/update_fw_flag;;
	"family_id=0x82, variant_id=0x19, version=0x10, build=0x01")
	echo "Firmware 2.0";;
esac
