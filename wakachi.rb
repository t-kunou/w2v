sepalated = `mecab -F"%f[6] " -U"%m " -E"\n" #{ARGV[0]}`

File.open(ARGV[1], 'w') {|f|
  f.write sepalated
}
