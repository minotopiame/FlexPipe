#!/bin/bash -e
echo "============================================================"
echo "            ____ _    ____ _  _ ___  _ ___  ____            "
echo "            |___ |    |___  \/  |__] | |__] |___            "
echo "            |    |___ |___ _/\_ |    | |    |___            "
echo "                                                            "
echo "============================================================"
echo ""
echo "======= Patches BungeeCord to create FlexPipe and builds it"
echo ""

./reset.sh
./apply.sh
./build.sh

echo ""
echo "======= Done"