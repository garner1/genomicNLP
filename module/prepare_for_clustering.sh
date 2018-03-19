#!/user/bin/env bash

ref_bin=$1 # reference binned genome ex:/home/garner1/Work/dataset/genomicNLP/100000_hg19
data_dir=$2 # dir containing the processed data: ex /home/garner1/Work/dataset/genomicNLP/M1A-1_XZ31_ACGACATC/docs
data_work=$3 # ex: home/garner1/Work/dataset/genomicNLP

cat $ref_bin | awk '{OFS="\t";print $1"_"$2"_"$3}' | sort -k1,1 > $data_work/base_ref.tsv # parse binned ref genome
cat $data_dir/chr*.signal.bed.binned |  awk '{OFS="\t";print $1"_"$2"_"$3, $4}' | sort -k1,1 > $data_dir/concat_file.tsv # concatenate data wrt chr
join -e'0.0' -a1 -a2 $data_work/base_ref.tsv -o 0 1.2 2.2 $data_dir/concat_file.tsv | tr ' _' '\t\t' | sort -k1,1 -k2,2n | cut -f-3,5 > $data_dir/genomic_binned_signal.tsv # produce bin-signal file
