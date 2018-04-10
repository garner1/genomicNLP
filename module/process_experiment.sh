#!/usr/bin/env bash

datadir_exp=$1
datadir_ref=$2
ref=$3				# the reference genome
bamfile=$4			# restseq deduplicated bam file
source_bamfile=$5		# restseq file with sequence, in case of merged libraries this file has to be the merged bam file

workdir=$PWD

mkdir -p $datadir_exp
cd $datadir_exp

#######################
#### STARTING WITH A DEDUPLICATED BAM FILE, PREPARE A DOCUMENT
#######################
mkdir -p "$datadir_exp"/experiment
rm -f "$datadir_exp"/experiment/*
cd "$datadir_exp"/experiment

# Change chr word from bam file
# bam2bed < $bamfile | cut -f-6 | LC_ALL=C sort -k4,4 > $bamfile.bed
# bam2bed < $source_bamfile | cut -f4,12 | LC_ALL=C sort -k1,1 > $source_bamfile.txt
# LC_ALL=C join -1 4 -2 1 $bamfile.bed $source_bamfile.txt > selection

##IN EXTENSION REMEMBER THAT THE REFERENCE IS THE CUTSITE LOC NOT THE SEQ LOCATION
# cat loc-seq.bed | awk '{OFS="\t"; $2=$2-100;$3=$3+100; print $1,$2,$3,$4,$5,$6,$7}' | awk '$2>0' > loc_extended-seq.exp.bed # extend the experimental location
# cat loc_extended-seq.exp.bed | awk '{OFS="\t"; $2=$2+100;$3=$3-100; print $1,$2,$3,$4,$5,$6}' > loc-seq.bed
# bedtools getfasta -fi $ref -bed loc_extended-seq.exp.bed |
#     tr '[:lower:]' '[:upper:]' | sed -e 's/^>CHR/>chr/' > loc_extended-seq.ref.fa # get the reference sequence associated to experimental extended seq
# bioawk -c fastx '{print $name"\t"$seq}' loc_extended-seq.ref.fa | tr ':-' '\t\t' > loc_extended-seq.ref.bed # transform fasta to bed
# paste loc_extended-seq.ref.bed loc-seq.bed |
#     awk '{OFS="\t";print $1,$2,$3,substr($4,1,$6-$2)$10substr($4,$7-$2+1,$3-$7)}' > loc_extended-seq_extended.exp.bed # substituted exp seq into reference

# rm loc_extended-seq.ref.fa loc-seq.bed loc_extended-seq.exp.bed experiment.bed tag-seq.txt # clean directory

# echo "Tokenize experimental and reference sequences"
# cd $datadir_exp/experiment
# mkdir -p $datadir_exp/docs
# awk '{print $4 > $1".expdoc"}' loc_extended-seq_extended.exp.bed # extract sequence
# awk '{print $4 > $1".refdoc"}' loc_extended-seq.ref.bed		 # extract sequence
# parallel "$workdir/module/mean {} $datadir_ref/6mer/{.}.table.tsv | cut -d' ' -f2- > ../docs/{.}.exp.txt" ::: *.expdoc # segment sequence
# parallel "$workdir/module/mean {} $datadir_ref/6mer/{.}.table.tsv | cut -d' ' -f2- > ../docs/{.}.ref.txt" ::: *.refdoc # segment sequence
# awk '{print $1":"$2"-"$3 > $1".locations"}' loc_extended-seq_extended.exp.bed
# parallel "paste -d '|' {} ../docs/{.}.exp.txt ../docs/{.}.ref.txt > ../docs/{.}.loc-docs" ::: chr*.locations

# echo "Compare experimental and reference documents"
# cd $datadir_exp/docs
# parallel "python $workdir/module/compare-experiment2reference.py {}" ::: chr{?,??}.loc-docs
# mv ../experiment/chr{?,??}.locations .
# parallel "paste {} {.}.loc-docs.signal | tr ' ' '\t' > {.}.signal.bed" ::: chr{?,??}.locations

# echo "Binning the genome and plotting the experiment/reference dissimilarity..."
# cd $datadir_exp
# window=100000
# genome=hg19
# sliding=50000
# bash ~/Work/pipelines/aux.scripts/fetchChromSizes.sh $genome | grep -v "_" > sizes
# # bedtools makewindows -g sizes -w "$window" -s "$sliding" -i winnum > "$window"_"$genome"
# bedtools makewindows -g sizes -w "$window" -i winnum > "$window"_"$genome"
# cd docs
# parallel "grep -v 'nan' {} | tr ':-' '\t\t'| sponge {}" ::: chr*.signal.bed
# parallel "bedtools intersect -a $datadir_exp/"$window"_"$genome" -b {} -wa -wb | datamash -s -g 1,2,3 median 8 | sort -k2,2n > {}.binned" ::: chr*.signal.bed
# # TO PLOT THE RESULT:  cat chr1.signal.bed.binned|cut -f2,4 |gnuplot -p -e "plot '/dev/stdin' using 1:2"
