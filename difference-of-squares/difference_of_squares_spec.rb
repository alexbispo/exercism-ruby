#!/usr/bin/env ruby
require_relative 'difference_of_squares'

RSpec.describe Squares do 
  
  it 'square of sum 5' do 
    expect(Squares.new(5).square_of_sum).to eq(225)
  end

  it 'square of sum 10' do
    expect(Squares.new(10).square_of_sum).to eq(3_025)
  end

  it 'square of sum 100' do
    expect(Squares.new(100).square_of_sum).to eq(25_502_500)
  end

  it 'sum of squares 5' do 
    expect(Squares.new(5).sum_of_squares).to eq(55)
  end

  it 'sum of squares 10' do 
    expect(Squares.new(10).sum_of_squares).to eq(385)
  end

  it 'sum of squares 100' do 
    expect(Squares.new(100).sum_of_squares).to eq(338_350)
  end

  it 'difference of squares 0' do
    expect(Squares.new(0).difference).to eq(0)
  end

  it 'difference of squares 5' do
    expect(Squares.new(5).difference).to eq(170)
  end

  it 'difference of squares 10' do
    expect(Squares.new(10).difference).to eq(2_640)
  end

  it 'difference of squares 100' do
    expect(Squares.new(100).difference).to eq(25_164_150)
  end

  it 'consistent_difference' do
    squares = Squares.new(10)
    expect(squares.difference).to eq(squares.difference)
  end

  it 'bookkeeping version 3' do 
    expect(BookKeeping::VERSION).to eq(3)  
  end

end
