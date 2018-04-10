#########################
temp = read.csv("/home/garner1/Work/dataset/genomicNLP/patient_1.nlp.signal.tsv", header = FALSE, sep="\t")
mydata = t(scale(t(as.matrix(temp)),center=FALSE,scale=FALSE))  # only subtract the mean value
d <- dist(mydata, method = "euclidean")
hc1 <- hclust(d, method = "complete" )
plot(hc1,hang=0.1,
     labels = c("M1A-1","M1A-2","M1A-3","M1A-4","M1A-5","M1B-5","M1B-6","T1-2","T1-3","T1-5"),
     main="Patient 1")
############################
temp = read.csv("/home/garner1/Work/dataset/genomicNLP/patient_2.nlp.signal.tsv", header = FALSE, sep="\t")
d <- dist(as.matrix(temp), method = "euclidean")
hc1 <- hclust(d, method = "complete" )
plot(hc1,hang=0.1,
     labels=c("M2A-1","M2A-3","M2B-1","M2B-2","M2B-3","T2-2","T2-3","T2-4","T2-5","T2-6"),
     main="Patient 2")
###################################
temp = read.csv("/home/garner1/Work/dataset/CNV/100kbp_30_segmented/PrimaryMetastatBC/XZ33/data.tsv", header = FALSE, sep="\t")
d <- dist(as.matrix(temp), method = "euclidean")
hc1 <- hclust(d, method = "complete" )
plot(hc1,hang=0.1,
     labels=c("M1B","T5B","T4B","M11","T8","M2A","T1","M8B","M9B","M12A","T11","M2B","M1A","T5A","T4A","M10A","M13A","T12","M5B","M14A","T2","M5A"),
     main="XZ33 hierarchical clustering ")

