#!/bin/bash
echo "============ Apply patches to BungeeCord"

cd BungeeCord

git am -3 ../patches/*.patch

cd ../
