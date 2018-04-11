require 'pycall/import'
include PyCall::Import

pyimport 'gensim'

model = gensim::models::word2vec.Word2Vec.load(ARGV[0])
results = model.most_similar(positive: ARGV[1], topn: 10)

results.each do |r|
  puts "#{r[0]}\t#{r[1]}"
end
