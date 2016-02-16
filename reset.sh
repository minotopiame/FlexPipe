#!/bin/bash
echo ""
echo "======= Setting up base BungeeCord"
echo ""
if [ -d "BungeeCord" ]; then
  cd BungeeCord
  git fetch origin
  git reset --hard origin/master
  cd ../
else
  git clone https://github.com/SpigotMC/BungeeCord.git BungeeCord
fi
