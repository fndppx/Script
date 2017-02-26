#!/bin/bash
DIRECTORY="/Users/SXJH/Desktop/QingClass/QingClassProject/QingClass"
echo "------------------------------"
echo "Passed Resources with xcassets folder argument is <$DIRECTORY>"
echo "------------------------------"
echo "Processing asset:"
XSAASSETSD="$(find "$DIRECTORY" -name '*.xcassets')"
for xcasset in $XSAASSETSD
do
    echo "---$xcasset"
    IMAGESETS="$(find "$xcasset" -name '*.imageset')"
    for imageset in $IMAGESETS
    do
        echo "------$imageset"
        FILES="$(find "$imageset" -name '*.png')"
        for file in $FILES 
        do
            echo "---------$file"
            sips -m "/System/Library/Colorsync/Profiles/sRGB Profile.icc" $file --out $file
        done
    done
done
echo "------------------------------"
echo "script successfully finished"
echo "------------------------------"



#DIRECTORY="/Users/SXJH/Desktop/Animation"
#echo "------------------------------"
#echo "Passed Resources with xcassets folder argument is <$DIRECTORY>"
#echo "------------------------------"
#echo "Processing asset:"
#XSAASSETSD="$(find "$DIRECTORY" -name '*.imageset')"
##for xcasset in $XSAASSETSD
##do
##echo "---$xcasset"
##IMAGESETS="$(find "$xcasset" -name '*.imageset')"
#for imageset in $XSAASSETSD
#do
#echo "------$imageset"
#FILES="$(find "$imageset" -name '*.png')"
#for file in $FILES
#do
#echo "---------$file"
#sips -m "/System/Library/Colorsync/Profiles/sRGB Profile.icc" $file --out $file
##done
#done
#done
#echo "------------------------------"
#echo "script successfully finished"
#echo "------------------------------"

