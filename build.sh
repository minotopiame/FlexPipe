#!/bin/bash -e

patcher_commit=`git rev-parse --short HEAD`

cd BungeeCord

echo ""
echo "======= Recieving maven version..."

maven_version=$(mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version -B -N | grep '^[[:digit:]]' | tail -1)

origin_commit=`git rev-parse --short origin/master`

if [ -z "$BUILD_NUMBER" ]; then
    BUILD_NUMBER="0"
    echo "======= Set BUILD_NUMBER to 0, as it was not set";
fi

echo "======= Building FlexPipe version git:$maven_version:origin-$origin_commit:patcher-$patcher_commit:$BUILD_NUMBER"
echo ""
exit
mvn clean install -Dorigin_commit=$origin_commit -Dpatcher_commit=$patcher_commit -Dbuild.number=$BUILD_NUMBER

cd ../

echo ""
echo "======= FlexPipe build finished"
echo "======= Copy final jars"
echo ""

mkdir -p target/modules/ || true

cp BungeeCord/bootstrap/target/FlexPipe.jar ./target/

cp BungeeCord/module/*/target/*.jar ./target/modules/

echo ""
echo "======= FlexPipe and module jars copied to ./target/"
