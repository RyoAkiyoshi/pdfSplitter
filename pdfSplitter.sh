#!/bin/bash

#作業用のフォルダを作成
mkdir intermedia
rootdir="/Users/tomitahayato/Desktop/pdfSplitter/"
intermediadir=${rootdir}"intermedia/"
rootfilepath=${rootdir}"test/*.pdf"

#フォルダ内ファイル用の配列
counter=0
for file in ${rootfilepath}
do
    filearray+=("${file}")
    convert ${file} ${intermediadir}output${counter}.jpg
    convert -crop 50%x100% ${intermediadir}output${counter}.jpg ${intermediadir}split${counter}.jpg
    counter=$(($counter+1))
    echo "${counter} image is done"
done

convert ${intermediadir}split* dist.pdf
#後片付け
#rm -rf intermedia
