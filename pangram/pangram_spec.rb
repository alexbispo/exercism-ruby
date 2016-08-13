#!/usr/bin/env ruby
# encoding: utf-8
require_relative 'pangram'

# Test data version:
# deb225e Implement canonical dataset for scrabble-score problem (#255)

RSpec.describe Pangram do 

  it 'setence empty' do 
    expect(Pangram.is_pangram?('')).to be_falsey
  end

  it 'pangram with only lower case' do 
    str = 'the quick brown fox jumps over the lazy dog'
    expect(Pangram.is_pangram?(str)).to be_truthy
  end

  it 'missing character x' do 
    str = 'a quick movement of the enemy will jeopardize five gunboats'
    expect(Pangram.is_pangram?(str)).to be_falsey
  end

  it 'pangram with underscores' do
    str = 'the_quick_brown_fox_jumps_over_the_lazy_dog'
    expect(Pangram.is_pangram?(str)).to be_truthy
  end

  it 'pangram with numbers' do
    str = 'the 1 quick brown fox jumps over the 2 lazy dogs'
    expect(Pangram.is_pangram?(str)).to be_truthy
  end

  it 'missing letters replaced by numbers' do
    str = '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
    expect(Pangram.is_pangram?(str)).to be_falsey
  end

  it 'pangram with mixed case and punctuation' do
    str = '"Five quacking Zephyrs jolt my wax bed."'
    expect(Pangram.is_pangram?(str)).to be_truthy
  end

  it 'pangram with non ascii characters' do
    str = 'Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.'
    expect(Pangram.is_pangram?(str)).to be_truthy
  end

  it 'non alphabet pangram with only lower case' do
    str = '快速的棕色狐狸跳過懶狗'
    expect(Pangram.is_pangram?(str)).to be_falsey
  end

  it 'BookKeeping version be 2' do
    expect(BookKeeping::VERSION).to eq(2)
  end

end
