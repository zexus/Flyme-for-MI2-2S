#!/system/bin/sh
sysid=`cat /proc/cmdline | busybox grep system1`
if [ -n "$sysid" ]; then
sysid=1
fi
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9183232:ef9381dbdb7dcd445464e369393c26783ca216b1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot$sysid:7534592:1879ac76663ec8e407beb85991449fde6969acc4 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery ef9381dbdb7dcd445464e369393c26783ca216b1 9183232 1879ac76663ec8e407beb85991449fde6969acc4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
