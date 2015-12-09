#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11917312 3bcd271a1e0b5de36fa3d5876f76c14230991939 8318976 8b76ed5e95d7637b985eed0302d510ae5bf5133f
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:11917312:3bcd271a1e0b5de36fa3d5876f76c14230991939; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8318976:8b76ed5e95d7637b985eed0302d510ae5bf5133f EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 3bcd271a1e0b5de36fa3d5876f76c14230991939 11917312 8b76ed5e95d7637b985eed0302d510ae5bf5133f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
