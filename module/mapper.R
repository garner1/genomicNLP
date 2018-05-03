library(devtools)
devtools::install_github("paultpearson/TDAmapper")
devtools::install_github("christophergandrud/networkD3")

library(TDAmapper)
library(ggplot2)

First.Example.data = data.frame( x=2*cos(0.5*(1:100)), y=sin(1:100) )
qplot(First.Example.data$x,First.Example.data$y)

First.Example.dist = dist(First.Example.data)
First.Example.mapper <- mapper(dist_object = First.Example.dist,
                               filter_values = First.Example.data$x,
                               num_intervals = 6,
                               percent_overlap = 50,
                               num_bins_when_clustering = 10)

#################
library(TDAmapper)
require(fastcluster) 
library(igraph)
library(FactoMineR)

X <- as.matrix(read.table('/home/garner1/Work/dataset/genomicNLP/AAGCTT.csv', sep=","))

numbpoints <- 10000
First.Example.dist <- dist(X[1:numbpoints,])

example.pca <- PCA(X[1:numbpoints,],graph = FALSE)

First.Example.mapper <- mapper(dist_object = First.Example.dist,
                               filter_values = list(example.pca$ind$coord[,1],example.pca$ind$coord[,2]),
                               num_intervals = c(10,10),
                               percent_overlap = 50,
                               num_bins_when_clustering = 10)
First.Example.graph <- graph.adjacency(First.Example.mapper$adjacency, mode="undirected")
plot(First.Example.graph, layout = layout.auto(First.Example.graph) )
