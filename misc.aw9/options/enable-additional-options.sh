#!/bin/bash

cd /compile/source/linux-orangepi

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
# this results in a kernel panic if disabled :)
#./scripts/config -d CONFIG_SUNXI_EXT_PHY
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0

for i in `cat /compile/doc/orangepi/misc.aw9/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/orangepi/misc.aw9/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
