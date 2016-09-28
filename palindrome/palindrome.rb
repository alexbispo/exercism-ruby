#!/usr/bin/env ruby

module Palindrome

  # usando recursividade, menos performático
  # def self.find_strange_index(i = -1, c = "", s)
  #   s == s.reverse ? i : find_strange_index(i+1, s.insert(i, c).slice!(i+1), s)
  # end

  def self.find_strange_index(str)
    if str.length < 1 or str.length > 100_005
      raise ArgumentError, "the string muste be between 1 and 100_005"
    end

    str.downcase!
    return -1 if str.reverse == str
    sl = str.length - 1
    for i in (0..sl)
      s = str.slice!(i)
      if str == str.reverse
        return i
      end
      str.insert(i, s)
    end
  end
end


if __FILE__ == $0
  t = gets.chomp.to_i
  raise(ArgumentError, "the number of test must be between 1 and 20 ") if t < 1 or t > 20 
  output = (1..t).map {  Palindrome.find_strange_index(gets.chomp) }
  output.each { |e| puts e }
end