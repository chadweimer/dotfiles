#!/bin/sh

mkdir -p ~/.tmp
wget -O ~/.tmp/nanorc.zip https://github.com/scopatz/nanorc/archive/master.zip
mkdir -p ~/.nano/

cd ~/.nano/ || exit
unzip -o ~/.tmp/nanorc.zip
mv nanorc-master/* ./
rm -rf nanorc-master
rm ~/.tmp/nanorc.zip
