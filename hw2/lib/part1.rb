# metaprogramming to the rescue!

class Numeric
  @@currencies = {
    'dollar' => 1,
    'yen' => 0.013,
    'euro' => 1.292,
    'rupee' => 0.019
  }

  def in(currency) 
    eval %Q[self.#{currency}]
  end 

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end

puts 5.euros
puts 5.yen
puts 5.rupee
puts 5.dollars
puts 1.dollar.in(:euros)
puts 1.dollar.in(:rupees)
puts 10.rupees.in(:euro)

class String 
  def palindrome?
    a = self.gsub(/[^\w*]*/,'').downcase
    return a == a.reverse
  end
end

puts "foo".palindrome?
puts "woow".palindrome?

module Enumerable
  def palindrome?
    self == self.reverse
  end
end

puts [1,2,3,2,1].palindrome?
puts [2,3,2,1].palindrome?
