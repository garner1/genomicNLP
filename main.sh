#!/usr/bin/env bash

# bash module/process_reference.sh /home/garner1/Work/dataset/genomicNLP AAGCTT /home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa

sample=XZ68
barcode=GTCGTCGC
exp="$sample"_"$barcode"
datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
datadir_ref=/home/garner1/Work/dataset/genomicNLP
ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
echo "Start with experiment " $exp
time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

sample=XZ69
barcode=ACGACCGC
exp="$sample"_"$barcode"
datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
datadir_ref=/home/garner1/Work/dataset/genomicNLP
ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
echo "Start with experiment " $exp
time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

sample=XZ70
barcode=TGATGCGC
exp="$sample"_"$barcode"
datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
datadir_ref=/home/garner1/Work/dataset/genomicNLP
ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
echo "Start with experiment " $exp
time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

sample=XZ71
barcode=CATCAATC
exp="$sample"_"$barcode"
datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
datadir_ref=/home/garner1/Work/dataset/genomicNLP
ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
echo "Start with experiment " $exp
time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

sample=XZ72
barcode=GTCGTATC
exp="$sample"_"$barcode"
datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
datadir_ref=/home/garner1/Work/dataset/genomicNLP
ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
echo "Start with experiment " $exp
time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ64
# barcode=CATCACGC
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ74
# barcode=CATCATCC
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ75
# barcode=TCACACGC
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ76
# barcode=TCACAGAG
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ77
# barcode=CTAACTCA
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# sample=XZ78
# barcode=GAATCCGA
# exp="$sample"_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
# bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
# source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
# echo "Start with experiment " $exp
# time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
###############################################################################
# sample=XZ33
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# sample=XZ37
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# sample=XZ38
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# sample=XZ43
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# sample=XZ45
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# sample=XZ63
# while read line; do
#     barcode=$line
#     exp="$sample"_"$barcode"
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/$sample/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_$sample

# while read line; do	     
#     barcode=$line
#     exp=XZ31_$barcode
#     datadir_exp=/home/garner1/Work/dataset/genomicNLP/$exp
#     datadir_ref=/home/garner1/Work/dataset/genomicNLP
#     ref=/home/garner1/Work/genomes/Homo_sapiens.GRCh37.dna.primary_assembly.fa/GRCh37.fa
#     bamfile=/home/garner1/Work/dataset/reduced_sequencing/XZ31/outdata/$barcode.deduplicated.bam
#     source_bamfile=/home/garner1/Work/dataset/reduced_sequencing/XZ31/outdata/$barcode.sorted.bam
#     echo "Start with experiment " $exp
#     time bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
# done < barcodes_XZ31

##################################################################
# barcode=ACGACATC
# exp=M1A-1_XZ31_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/binning.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=ACGACATC
# exp=M1A-1_XZ31_"$barcode"
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=TGATGATC
# exp=M1A-2_XZ31_TGATGATC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=CATCATCC
# exp=M1A-3_XZ31_CATCATCC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=GTCGTTCC
# exp=M1A-4_XZ31_GTCGTTCC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=ACGACTCC
# exp=M1A-5_XZ31_ACGACTCC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=TGATGGAA
# exp=M1B-5_XZ31_TGATGGAA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=TCACACGC
# exp=M1B-6_XZ31_TCACACGC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=GTCGTCGC
# exp=T1-2_XZ31_GTCGTCGC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=ACGACCGC
# exp=T1-3_XZ31_ACGACCGC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=CATCAATC
# exp=T1-5_XZ31_CATCAATC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_1/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile
###########################################
# barcode=TCACAGAG
# exp=M2A-1_XZ31_TCACAGAG
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=GACACGAG
# exp=M2A-3_XZ31_GACACGAG
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=TAGGTCGC
# exp=M2B-1_XZ31_TAGGTCGC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=CTAACTCA
# exp=M2B-2_XZ31_CTAACTCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=GCTTGTCA
# exp=M2B-3_XZ31_GCTTGTCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=ATGTGCGC
# exp=T2-2_XZ31_ATGTGCGC
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=TCACATCA
# exp=T2-3_XZ31_TCACATCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=CGTGTTCA
# exp=T2-4_XZ31_CGTGTTCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=GACACTCA
# exp=T2-5_XZ31_GACACTCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile

# barcode=ATGTGTCA
# exp=T2-6_XZ31_ATGTGTCA
# datadir_exp=/home/garner1/Work/dataset/genomicNLP/"$exp"
# datadir_ref=/home/garner1/Work/dataset/genomicNLP
# ref=/home/garner1/Work/genomes/hg19.fa
# bamfile=~/Work/dataset/CNV/bamfiles/patient_2/selection/"$exp".bam
# source_bamfile=/media/bicroserver_2-seq/RESTSEQ_PIPELINE_OUTPUT/XZ31/outdata/"$barcode".sorted.bam
# bash module/process_experiment.sh $datadir_exp $datadir_ref $ref $bamfile $source_bamfile


