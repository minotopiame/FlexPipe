#!/bin/bash
echo ""
echo "============ Apply patches to BungeeCord"
echo ""

cd BungeeCord

git am -3 ../patches/*.patch

cd ../
