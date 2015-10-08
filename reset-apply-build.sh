#!/bin/bash
echo "============ Patching BungeeCord"
echo "============ Doing full run"

./reset.sh
./apply.sh
./build.sh

echo "============ Full run done"