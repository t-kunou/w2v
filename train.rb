require 'pycall/import'
include PyCall::Import

pyimport 'gensim'

sentences = gensim::models::word2vec.LineSentence.new('text/wakachied.txt') 

model = gensim::models::word2vec.Word2Vec.new(
  sentences,
  sg: 1,
  size: 100,
  min_count: 1,
  window: 10,
  hs: 1,
  negative: 0
)

model.save('train.model')
