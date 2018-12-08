#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31931726:00b69fd70a8e89c52fd4d8183dedb3876f9e0f7f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30489930:46f25620d8973fd10bd9f02a1f73fde58eb2aa31 EMMC:/dev/block/bootdevice/by-name/recovery 00b69fd70a8e89c52fd4d8183dedb3876f9e0f7f 31931726 46f25620d8973fd10bd9f02a1f73fde58eb2aa31:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
