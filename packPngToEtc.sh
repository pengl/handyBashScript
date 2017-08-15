#!/bin/bash
# $1 source directory of png
# $2 output directory
sourcePath=$1
outputPath=$2
cd $sourcePath
for fileName in `ls`
do
	if [ ${fileName##*.} = "png" ]; then
		etcpack $fileName $outputPath -ktx -f RGBA8
	fi
done
