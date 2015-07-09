#! /bin/bash

rm -fr out;

mkdir out;

cat inPath.scm > out/final.scm;
cat inStr.scm >> out/final.scm;
cat cli.scm >> out/final.scm;

gsc -o out/inPath -exe out/final.scm;

echo "DONE";
