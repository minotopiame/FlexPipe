#!/bin/bash

patcher_commit=`git rev-parse --short HEAD`

cd BungeeCord

origin_commit=`git rev-parse --short origin/master`

echo "============ Build BungeeCord from commit $origin_commit"

mvn clean install -Dorigin_commit=$origin_commit -Dpatcher_commit=$patcher_commit -Dbuild.number=$BUILD_NUMBER

cd ../

echo "============ Copy final jar"

cp BungeeCord/bootstrap/target/BungeeCord.jar ./

echo "============ Final BungeeCord jar copied to ./BungeeCord.jar"
