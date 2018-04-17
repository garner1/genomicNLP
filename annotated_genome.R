library(EnsDb.Hsapiens.v75)

## Making a "short cut"
edb <- EnsDb.Hsapiens.v75
## print some informations for this package
edb

## For what organism was the database generated?
organism(edb)

## will just get exons for all genes on chromosomes 1 to 22, X and Y.
## Note: want to get rid of the "LRG" genes!!!
EnsGenes <- exonsBy(edb, by = "gene", filter = AnnotationFilterList(SeqNameFilter(c(1:22, "X", "Y")),GeneIdFilter("ENSG", "startsWith")))
keys <- keys(edb)
annotation.result <- select(edb, keys=keys, columns=c("GENEID","SYMBOL","GENENAME","ENTREZID"),keytype="GENEID")
write.csv(annotation.result, file = "annotation.csv")

df <- data.frame(EnsGenes)
write.table(df, file="exon_annotation.bed", quote=F, sep="\t", row.names=F, col.names=T)
