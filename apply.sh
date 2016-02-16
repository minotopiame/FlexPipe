#!/bin/bash
echo ""
echo "============ Apply patches to BungeeCord"
echo ""

cd BungeeCord

if [[ -z $(git config --local user.name) ]]; then
	git config --local user.name "flexpipe build script"
	git config --local user.email "flexpipe_build_script@null.flexpipe.minotopia.me"
fi

git am -3 ../patches/*.patch

cd ../
