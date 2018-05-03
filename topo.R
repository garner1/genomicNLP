library("TDA")
library("scatterplot3d")

X <- as.matrix(read.table('/home/garner1/Work/dataset/genomicNLP/AAGCTT.csv', sep=","))

maxscale = 1
tseq <- seq(0, maxscale, length=100)

Diag <- ripsDiag(X=X[1:500,], maxdimension=1, maxscale=maxscale, library = "GUDHI",printProgress = TRUE)
plot(Diag[["diagram"]], barcode=TRUE)

hdim=0
Land1 <- landscape(Diag[["diagram"]],dimension = hdim, KK = 1, tseq)
Land2 <- landscape(Diag[["diagram"]],dimension = hdim, KK = 2, tseq)
Land3 <- landscape(Diag[["diagram"]],dimension = hdim, KK = 3, tseq)
plot(tseq, Land1, type="l", main = x)
lines(tseq, Land2, col="green")
lines(tseq, Land3, col="red")
Sil <- silhouette(Diag[["diagram"]], dimension = 0, p = 1, tseq)
plot(tseq, Sil, type="l", main = x)
scatterplot3d(X)
