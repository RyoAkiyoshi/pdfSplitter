#!/bin/bash

mkdir tmp

#convert -rotate 270 ./input/*.jpg ./tmp/output1_%02d.jpg
convert -rotate 270 ./input/*_?.jpg ./tmp/output1_%02d.jpg
convert -rotate 270 ./input/*_??.jpg ./tmp/output2_%02d.jpg
echo "rotated"
convert -crop 50%x50% ./tmp/output?_* ./tmp/outputmain_%02d.jpg
echo "croped"
convert ./tmp/outputmain*.jpg output.pdf

rm -rf tmp
echo "done"
