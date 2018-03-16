#!/usr/bin/env bash

datadir=$1
cutsite=$2			# the restriction enzyme cutsite we are using
ref=$3				# the reference genome
bamfile=$4			# restseq deduplicated bam file
source_bamfile=$5		# restseq file with sequence, in case of merged libraries this file has to be the merged bam file

workdir=$PWD

# ##############
# # PROVIDE A bed FILE ASSOCIATED TO A CUTSITE NEIGHBOROUGH
# ##############
# cd $datadir
# bash /home/garner1/Dropbox/pipelines/aux.scripts/script_split_genome_wrt_enzyme.sh $ref $cutsite # produce the cutsite bed file
# awk '{OFS="\t";print $1,$2-100,$3+100}' $cutsite.bed | awk '$2>0' > "$cutsite"_larger.bed    # enlarge the cutsite bedfile to a neighbourough
# bedtools getfasta -fi $ref -bed "$cutsite"_larger.bed -bedOut -s |
#     tr '[:lower:]' '[:upper:]' |
#     sed -e 's/^CHR/chr/' |
#     LC_ALL=C grep -v N > refExtendedDoc.bed # create the bed file associated to the cutsite
# cd $workdir
# ##############
# # PROCESS THE REFERENCE BED FILE TO GENERATE A WORD2VEC MODEL 
# ##############
# echo 'Prepare kmer table'                          
# g++ -std=c++11 ./module/kmers.cpp -o ./module/kmers # compile kmers
# cd $datadir
# awk '{print $4 >> $1; close($1)}' refExtendedDoc.bed # split by chromosome 
# parallel "sed -i 's/$/NNNNNN/' {}" ::: chr* #introduce the Ns to count the kmers
# cd $workdir

# echo "Count kmers ..."
# mkdir -p "$datadir"/6mer
# rm -f "$datadir"/6mer/*
# cd $datadir
# time parallel "cat {} | tr -d '\n' | $workdir/module/kmers 6 6 |LC_ALL=C grep -v 'N' | awk 'NF == 2' > 6mer/{}.tsv" ::: chr*
# cd $workdir

# echo "Prepare information tables ..."
# cd $datadir/6mer                            
# parallel "bash $workdir/module/parse_kmer_table.sh {} 6 1.0" ::: chr{?,??}.tsv                                    
# rm *kmer*                                          
# rename 's/tsv.table.tsv/table.tsv/' *tsv           
# cd $workdir

# echo "Tokenize the documents"
# mkdir -p "$datadir"/docs
# # SEGMENT THE GENOME
# g++ -std=c++11 ./module/tokenizer_withMean.cpp -o ./module/mean # compile the tokenizer 
# cd $datadir
# parallel "sed -i 's/NNNNNN//' {}" ::: chr*
# parallel "$workdir/module/mean {} 6mer/{.}.table.tsv | cut -d' ' -f2- > docs/{.}.txt" ::: chr*
# cd $workdir

# echo "Run word2vec on the reference corpus ..."    
# time python module/word2vector.py $datadir/docs $datadir/model

###############
# STARTING WITH A DEDUPLICATED BAM FILE, PREPARE A DOCUMENT
############### 
# mkdir -p "$datadir"/experiment
# rm -f "$datadir"/experiment/*
# cd "$datadir"/experiment
# bedtools intersect -b $bamfile -a $source_bamfile | samtools view - | cut -f1,10 > tag-seq.txt # extract tag and sequence from experiment
# bedtools intersect -b $bamfile -a $source_bamfile | bedtools bamtobed -i - > experiment.bed # get locations of the experiment sequences
# LC_ALL=C join --nocheck-order -1 4 -2 1 experiment.bed tag-seq.txt | awk '{print $2,$3,$4,$5,$6,$7,$1}' | tr ' ' '\t' > loc-seq.bed # get the experimental loc and sequence
# cat loc-seq.bed | awk '{OFS="\t"; $2=$2-100;$3=$3+100; print $1,$2,$3,$4,$5,$6}' | awk '$2>0' > loc_extended-seq.exp.bed # extend the experimental location
# cat loc_extended-seq.exp.bed | awk '{OFS="\t"; $2=$2+100;$3=$3-100; print $1,$2,$3,$4,$5,$6}' > loc-seq.bed
# bedtools getfasta -fi $ref -bed loc_extended-seq.exp.bed |
#     tr '[:lower:]' '[:upper:]' | sed -e 's/^>CHR/>chr/' > loc_extended-seq.ref.fa # get the reference sequence associated to experimental extended seq
# bioawk -c fastx '{print $name"\t"$seq}' loc_extended-seq.ref.fa | tr ':-' '\t\t' > loc_extended-seq.ref.bed # transform fasta to bed
# paste loc_extended-seq.ref.bed loc-seq.bed | awk '{OFS="\t";print $1,$2,$3,substr($4,1,$6-$2)$10substr($4,$7-$2+1,$3-$7)}' > loc_extended-seq_extended.exp.bed # substituted exp seq into reference
# rm loc_extended-seq.ref.fa loc-seq.bed loc_extended-seq.exp.bed experiment.bed tag-seq.txt # clean directory
# cd $workdir

# echo "Tokenize experimental and reference sequences"
# cd $datadir/experiment
# awk '{print $4 > $1".expdoc"}' loc_extended-seq_extended.exp.bed # extract sequence
# awk '{print $4 > $1".refdoc"}' loc_extended-seq.ref.bed		 # extract sequence
# parallel "$workdir/module/mean {} ../6mer/{.}.table.tsv | cut -d' ' -f2- > ../docs/{.}.exp.txt" ::: *.expdoc # segment sequence
# parallel "$workdir/module/mean {} ../6mer/{.}.table.tsv | cut -d' ' -f2- > ../docs/{.}.ref.txt" ::: *.refdoc # segment sequence
# awk '{print $1":"$2"-"$3 > $1".locations"}' loc_extended-seq_extended.exp.bed
# parallel "paste -d '|' {} ../docs/{.}.exp.txt ../docs/{.}.ref.txt > ../docs/{.}.loc-docs" ::: chr*.locations
# cd $workdir

# echo "Compare experimental and reference documents"
# cd $datadir/docs
# parallel "python $workdir/module/compare-experiment2reference.py {}" ::: chr{?,??}.loc-docs
# mv ../experiment/chr{?,??}.locations .
# parallel "paste {} {.}.loc-docs.signal | tr ' ' '\t' > {.}.signal.bed" ::: chr{?,??}.locations
# cd $workdir

echo "Binning the genome and plotting the experiment/reference dissimilarity..."
cd $datadir
window=10000000
genome=hg19
sliding=1000000
bash ~/Work/pipelines/aux.scripts/fetchChromSizes.sh $genome | grep -v "_" > sizes
bedtools makewindows -g sizes -w "$window" -s "$sliding" -i winnum > "$window"_"$genome"
cd docs
parallel "grep -v 'nan' {} | tr ':-' '\t\t'| sponge {}" ::: chr*.signal.bed
parallel "bedtools intersect -a $datadir/"$window"_"$genome" -b {} -wa -wb | datamash -s -g 1,2,3 median 8 | sort -k2,2n > {}.binned" ::: chr*.signal.bed
