#!/bin/sh

find **/**/jars -type d -print > jarFolders.txt
cat jarFolders.txt | while read directory;
do
    ls -t ${directory} | awk 'NR>1' | while read jarFile;
    do
	rm ${directory}/${jarFile}
    done;
done;
