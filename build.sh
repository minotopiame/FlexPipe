#!/bin/bash
echo "============ Build BungeeCord"

cd BungeeCord

mvn clean install

cd ../

echo "============ Copy final jar"

cp BungeeCord/bootstrap/target/BungeeCord.jar ./

echo "============ Final BungeeCord jar copied to ./BungeeCord.jar"
