#!/usr/bin/env ruby
require_relative '../palindrome'

RSpec.describe Palindrome do 

  it 'given a list that contain two hidden palindromes' do 
    expect(Palindrome.new(3,["aaab", "baa", "aaa"]).index).to eq([3, 0, -1])  
	end

  it "given a number of test cases greater than 20, must raise ArgumentError" do
    expect { Palindrome.new(21,["aaab", "baa", "aaa"]) }.to raise_error(ArgumentError)
  end

  it "given a number of test cases less than 1, must raise ArgumentError" do
    expect { Palindrome.new(0,["aaab", "baa", "aaa"]) }.to raise_error(ArgumentError)
  end
end