#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10450944 d38378f60463c265f29768e1dba280a0a3fceef5 8171520 be4fcd00c01463bde02286bf3db7cde6541d2716
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10450944:d38378f60463c265f29768e1dba280a0a3fceef5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8171520:be4fcd00c01463bde02286bf3db7cde6541d2716 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d38378f60463c265f29768e1dba280a0a3fceef5 10450944 be4fcd00c01463bde02286bf3db7cde6541d2716:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
