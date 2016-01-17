#!/bin/bash
echo "============ Build BungeeCord"

cd BungeeCord

origin_commit=`git rev-parse --short origin/master`

mvn clean install -Dorigin_commit=$origin_commit -Dbuild.number=$BUILD_NUMBER

cd ../

echo "============ Copy final jar"

cp BungeeCord/bootstrap/target/BungeeCord.jar ./

echo "============ Final BungeeCord jar copied to ./BungeeCord.jar"
