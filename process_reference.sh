#!/usr/bin/env bash

datadir_ref=$1
cutsite=$2			# the restriction enzyme cutsite we are using
ref=$3				# the reference genome

workdir=$PWD

##############
# PROVIDE A bed FILE ASSOCIATED TO A CUTSITE NEIGHBOROUGH
##############
mkdir -p $datadir_ref
cd $datadir_ref
bash /home/garner1/Dropbox/pipelines/aux.scripts/script_split_genome_wrt_enzyme.sh $ref $cutsite # produce the cutsite bed file
awk '{OFS="\t";print $1,$2-100,$3+100}' $cutsite.bed | awk '$2>0' > "$cutsite"_larger.bed    # enlarge the cutsite bedfile to a neighbourough
bedtools getfasta -fi $ref -bed "$cutsite"_larger.bed -bedOut -s |
    tr '[:lower:]' '[:upper:]' |
    sed -e 's/^CHR/chr/' |
    LC_ALL=C grep -v N > refExtendedDoc.bed # create the bed file associated to the cutsite
##############
# PROCESS THE REFERENCE BED FILE TO GENERATE A WORD2VEC MODEL 
##############
echo 'Prepare kmer table'                          
g++ -std=c++11 $workdir/module/kmers.cpp -o $workdir/module/kmers # compile kmers
cd $datadir_ref
awk '{print $4 >> $1; close($1)}' refExtendedDoc.bed # split by chromosome 
parallel "sed -i 's/$/NNNNNN/' {}" ::: chr* #introduce the Ns to count the kmers

echo "Count kmers ..."
mkdir -p "$datadir_ref"/6mer
rm -f "$datadir_ref"/6mer/*
cd $datadir_ref
parallel "cat {} | tr -d '\n' | $workdir/module/kmers 6 6 |LC_ALL=C grep -v 'N' | awk 'NF == 2' > 6mer/{}.tsv" ::: chr*

echo "Prepare information tables ..."
cd $datadir_ref/6mer                            
parallel "bash $workdir/module/parse_kmer_table.sh {} 6 1.0" ::: chr{?,??}.tsv                                    
rm *kmer*                                          
rename 's/tsv.table.tsv/table.tsv/' *tsv           

echo "Tokenize the documents"
mkdir -p "$datadir_ref"/docs
# SEGMENT THE GENOME
g++ -std=c++11 $workdir/module/tokenizer_withMean.cpp -o $workdir/module/mean # compile the tokenizer 
cd $datadir_ref
parallel "sed -i 's/NNNNNN//' {}" ::: chr*
parallel "$workdir/module/mean {} 6mer/{.}.table.tsv | cut -d' ' -f2- > docs/{.}.txt" ::: chr*

echo "Run word2vec on the reference corpus ..."    
python $workdir/module/word2vector.py $datadir_ref/docs $datadir_ref/model

