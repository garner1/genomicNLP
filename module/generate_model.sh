#!/usr/bin/env bash

datadir_ref=$1		 # /home/garner1/Work/dataset/genomicNLP
cutsite=$2			# the restriction enzyme cutsite we are using

workdir=$PWD

##############
# GENERATE A WORD2VEC MODEL 
# ##############
echo "Run word2vec on the reference corpus ..."    
python $workdir/module/word2vector.py $datadir_ref/$cutsite/docs $datadir_ref/$cutsite/model
