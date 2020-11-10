#!/bin/bash

cd /compile/source/linux-orangepi

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0
./scripts/config -d CONFIG_SUNXI_EXT_PHY
./scripts/config -d CONFIG_SUNXI_EPHY
./scripts/config -d CONFIG_SPARD_WLAN_SUPPORT
./scripts/config -d CONFIG_SC23XX
./scripts/config -d CONFIG_AW_WIFI_DEVICE_UWE5622
./scripts/config -d CONFIG_AW_BIND_VERIFY
./scripts/config -d CONFIG_WLAN_UWE5622
./scripts/config -d CONFIG_SPRDWL_NG
./scripts/config -d CONFIG_TTY_OVERY_SDIO
./scripts/config -d CONFIG_BLK_DEV_RAM
./scripts/config -d CONFIG_BLK_DEV_COUNT
./scripts/config -d CONFIG_BLK_DEV_SIZE

for i in `cat /compile/doc/orangepi/misc.aw9/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/orangepi/misc.aw9/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
