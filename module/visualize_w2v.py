#!/usr/bin/env python

# Import the class
import kmapper as km
import numpy as np
import scipy
import pandas as pd
from scipy.linalg import toeplitz
from copy import copy
import gensim, logging
import sys

path2model = sys.argv[1]

model = gensim.models.Word2Vec.load(path2model)
V = model.wv.vocab
data = model[model.wv.vocab][:10000,:]

# Initialize
mapper = km.KeplerMapper(verbose=1)

# Fit to and transform the data
projected_data = mapper.fit_transform(data, projection=[0,1]) # X-Y axis

# Create dictionary called 'graph' with nodes, edges and meta-information
graph = mapper.map(projected_data, data, nr_cubes=20)

# Visualize it
mapper.visualize(graph, path_html="make_circles_keplermapper_output.html",
                 title="make_circles")

############################################

# import hypertools as hyp
# import numpy as np
# import scipy
# import pandas as pd
# from scipy.linalg import toeplitz
# from copy import copy
# import gensim, logging
# import sys

# path2model = sys.argv[1]

# model = gensim.models.Word2Vec.load(path2model)
# V = model.wv.vocab
# X = model[model.wv.vocab]

# np.savetxt("/home/garner1/Work/dataset/genomicNLP/AAGCTT.csv", X, delimiter=",")

# geo = hyp.plot(X, '.', ndims=3)

############################################
# import sys
# import csv
# import numpy as np
# import pandas as pd
# import os.path
# import pickle
# from sklearn.manifold import TSNE
# from sklearn.decomposition import PCA
# import matplotlib.pyplot as plt
# import gensim, logging
# from os import listdir
# from os.path import isfile, join

# logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s', level=logging.INFO)

# path2model = sys.argv[1]

# model = gensim.models.Word2Vec.load(path2model)
# V = model.wv.vocab.keys()
# V = model.wv.vocab
# X = model[model.wv.vocab]

# pca = PCA(n_components=2)
# idx = np.random.randint(X.shape[0], size=100)
# result = pca.fit_transform(X[idx,:])

# words = list(V)
# subset = [ words[i] for i in idx ]
# plt.scatter(result[:, 0], result[:, 1])
# plt.show()
##########################################
# for i, word in enumerate(subset):
#     plt.annotate(word, xy=(result[i, 0], result[i, 1]))
# plt.show()

# print (model.wv['GAGATGGA'])
# print (model.wv.most_similar('GAGATGGA'))

# onlyfiles = [f for f in listdir(inpath) if isfile(join(inpath, f))]
# sentences = []
# for f in listdir(inpath):       # sequentially add all files in directory
#     filename = join(inpath, f)
#     with open(filename,'rb') as f:
#         sentences.extend(pickle.load(f))
#     print filename, len(sentences)
# model = gensim.models.Word2Vec(sentences, min_count=10, workers=32)

# tsne = TSNE(n_components=2)
# X_tsne = tsne.fit_transform(X)

# idx = np.random.randint(X.shape[0], size=10000)
# X_tsne = tsne.fit_transform(X[idx,:])

# plt.scatter(X_tsne[:, 0], X_tsne[:, 1])
# plt.show()

########################################
# model = gensim.models.Word2Vec(iter=1)  # an empty model, no training yet
# model.build_vocab(sentences)  # can be a non-repeatable, 1-pass generator

# with open('/home/garner1/Work/dataset/genome_segmentation/sentence_directory/xab.inputReads_sentences.txt','rb') as f:
#     new_sentences = pickle.load(f)
# model.train(new_sentences,total_examples=model.corpus_count, epochs=model.iter)  # can be a non-repeatable, 1-pass generator

# with open('/home/garner1/Work/dataset/genome_segmentation/sentence_directory/xac.inputReads_sentences.txt','rb') as f:
#     new_sentences = pickle.load(f)
# model.train(new_sentences,total_examples=model.corpus_count, epochs=model.iter)  # can be a non-repeatable, 1-pass generator

