#!/bin/sh

# compile java files
mkdir -p WebContent/WEB-INF/classes
javac -cp "build/lib/*" -d WebContent/WEB-INF/classes ../src/*

mkdir -p WebContent/WEB-INF/lib
cp -R "build/lib" "WebContent/WEB-INF/"

# create war file
mkdir -p deploy
cd WebContent
jar -cvf ../deploy/app.war *
