#!/usr/bin/env ruby
require_relative '../palindrome'

RSpec.describe Palindrome do 

  it 'given aaab' do 
    expect(Palindrome.find_strange_index("aaab")).to eq(3)  
	end

  it 'given aaa' do 
    expect(Palindrome.find_strange_index("aaa")).to eq(-1)
  end

  it 'given baa' do 
    expect(Palindrome.find_strange_index("baa")).to eq(0)
  end

  it 'given bcbc' do 
    expect(Palindrome.find_strange_index("bcbc")).to satisfy { |value| value == 0 or value == 3 }
  end

  it "given a string with length greater than 100_005, must raise ArgumentError" do
    expect { Palindrome.find_strange_index("a"*100_006) }.to raise_error(ArgumentError)
  end

  it "given a string with length less than 1, must raise ArgumentError" do
    expect { Palindrome.find_strange_index("") }.to raise_error(ArgumentError)
  end
end