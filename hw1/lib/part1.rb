
def palindrome?(string)
  a = string.gsub(/[^\w*]*/,'').downcase
  return a == a.reverse 
end

def count_words(string)
  h = Hash.new(0)
  string.downcase.scan(/\w+/).each do |word|
    h[word.to_sym] += 1
  end
  return h
end
