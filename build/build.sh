#!/bin/sh

# compile java files
mkdir -p ../WebContent/WEB-INF/classes
javac -cp "../lib/*" -d ../WebContent/WEB-INF/classes ../src/*

mkdir -p ../WebContent/WEB-INF/lib
cp -R "../lib" "../WebContent/WEB-INF/"

cd ../WebContent
jar -cvf ../app.war *
