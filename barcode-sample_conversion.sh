#!/usr/bin/env bash

lib=$1				   # ex: XZ31
dict="$lib"_barcode-sample_dic.tsv				# barcode-sample dictionary

# The directory needs to be hard coded
# for i in $( ls -d /home/garner1/Work/dataset/genomicNLP/XZ63_* ); do # !!!!!PICK THE PROPER DIR!!!!!
#     barcode=`echo $i | cut -d'_' -f2`
#     name=`echo $i | cut -d'_' -f1`
#     sample=`cat $dict | grep $barcode | cut -f2`
#     new_name="$name"_"$sample"
#     # echo $i $new_name
#     mv $i $new_name
# done

for i in $( ls -d /home/garner1/Work/dataset/reduced_sequencing/"$lib"/outdata/????????.* ); do # !!!!!PICK THE PROPER DIR!!!!!
    barcode=`echo $i | cut -d'.' -f1 | rev | cut -d'/' -f1 | rev`
    prefix=`echo $i | cut -d'.' -f1 | rev | cut -d'/' -f2- | rev`
    postfix=`echo $i | cut -d'.' -f2-`
    sample=`cat $dict | grep $barcode | cut -f2`
    new_name="$prefix"/"$sample"."$postfix"
    # echo $new_name
    # echo $i
    mv $i $new_name
done
