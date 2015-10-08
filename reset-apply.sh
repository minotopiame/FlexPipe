#!/bin/bash
echo "=============================================="
echo "============ Patching BungeeCord ============="
echo "=============================================="

echo "============ Setting up base BungeeCord"
if [ -d "BungeeCord" ]; then
  cd BungeeCord
  git fetch origin
  git reset --hard origin/master
  cd ../
else
  git clone https://github.com/SpigotMC/BungeeCord.git BungeeCord
fi

echo "============ Apply patches"

cd BungeeCord

git am -3 ../patches/*.patch

cd ../