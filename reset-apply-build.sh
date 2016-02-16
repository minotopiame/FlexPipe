#!/bin/bash -x
echo "============================================================"
echo "            ____ _    ____ _  _ ___  _ ___  ____            "
echo "            |___ |    |___  \/  |__] | |__] |___            "
echo "            |    |___ |___ _/\_ |    | |    |___            "
echo "                                                            "
echo "============================================================"
echo ""
echo "======= Patches BungeeCord to create FlexPipe and builds it"
echo ""

./reset.sh || exit 1
./apply.sh || exit 2
./build.sh || exit 3

echo ""
echo "======= Done"