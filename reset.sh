#!/bin/bash -e
echo ""
echo "======= Setting up base BungeeCord"
echo ""
if [ -d "BungeeCord" ] && [[ $(ls BungeeCord) ]]; then
  cd BungeeCord
  git fetch origin
  git reset --hard origin/master
  cd ../
  echo "======= BungeeCord updated to latest version"
else
  if [ -d "BungeeCord" ]; then
    rm -rfd BungeeCord || rm -rf BungeeCord
  fi
  git clone https://github.com/SpigotMC/BungeeCord.git BungeeCord
  echo "======= BungeeCord newly cloned"
fi