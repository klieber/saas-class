def combine_anagrams(words)
  map = Hash.new([])
  words.each { |word|
    key = word.downcase.chars.sort.join
    map[key] = [] unless map.has_key?(key)
    map[key].push(word)
  }
  return map.values
end
