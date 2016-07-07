#!/bin/bash

mkdir tmp

convert -units PixelsPerInch -density 600 ./input/*.pdf ./tmp/output_%02d.jpg
mogrify -rotate 270 ./tmp/output_*.jpg
echo "pdf to jpg has done"

convert -crop 50%x50% ./tmp/output_* -density 300 ./tmp/outputmain_%02d.jpg
echo "croped"

convert  ./tmp/outputmain_*.jpg output.pdf

rm -rf tmp
echo "done"
