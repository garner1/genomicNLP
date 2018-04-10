#!/usr/bin/env bash

datadir_exp=$1
datadir_ref=$2
ref=$3				# the reference genome
bamfile=$4			# restseq deduplicated bam file
source_bamfile=$5		# restseq file with sequence, in case of merged libraries this file has to be the merged bam file

workdir=$PWD

echo "Binning the genome and plotting the experiment/reference dissimilarity..."
cd $datadir_exp
window=100000
genome=hg19
sliding=50000
bash ~/Work/pipelines/aux.scripts/fetchChromSizes.sh $genome | grep -v "_" > sizes
# bedtools makewindows -g sizes -w "$window" -s "$sliding" -i winnum > "$window"_"$genome"
bedtools makewindows -g sizes -w "$window" -i winnum > "$window"_"$genome"
cd docs
# parallel "grep -v 'nan' {} | tr ':-' '\t\t'| sponge {}" ::: chr*.signal.bed
parallel "bedtools intersect -a $datadir_exp/"$window"_"$genome" -b {} -wa -wb | datamash -s -g 1,2,3 sum 8 | sort -k2,2n > {}.binned" ::: chr*.signal.bed
# TO PLOT THE RESULT:  cat chr1.signal.bed.binned|cut -f2,4 |gnuplot -p -e "plot '/dev/stdin' using 1:2"
