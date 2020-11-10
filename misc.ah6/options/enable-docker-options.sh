#!/bin/bash

cd /compile/source/linux-orangepi

for i in `cat /compile/doc/orangepi/misc.ah6/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/orangepi/misc.ah6/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
