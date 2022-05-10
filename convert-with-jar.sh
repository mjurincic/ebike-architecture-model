#!/bin/sh
# converts all puml files to svg

BASEDIR=$(dirname "$0")
mkdir -p $BASEDIR/dist
# rm $BASEDIR/dist/*
for FILE in $BASEDIR/*.puml; do
  echo Converting $FILE..
  java -jar plantuml.jar -tsvg $FILE
done
mv $BASEDIR/*.svg $BASEDIR/dist/
echo Done