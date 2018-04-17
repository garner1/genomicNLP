#!/usr/bin/env bash

dict=$1				# barcode-sample dictionary

# The directory needs to be hard coded
for i in $( ls -d /home/garner1/Work/dataset/genomicNLP/XZ37_* ); do
    barcode=`echo $i | cut -d'_' -f2`
    name=`echo $i | cut -d'_' -f1`
    sample=`cat $dict | grep $barcode | cut -f2`
    new_name="$name"_"$sample"
    # echo $i $new_name
    mv $i $new_name
done
