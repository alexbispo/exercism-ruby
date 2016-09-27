#!/usr/bin/env ruby
require_relative '../left_rotation'

RSpec.describe LeftRotation do 

  it 'given array length 5, and perform 4 left rotations' do 
    expect(LeftRotation.new(5, 4, "1 2 3 4 5").call).to eq("5 1 2 3 4")  
  end

  it 'given array length 5, and perform 1 left rotations' do 
    expect(LeftRotation.new(5, 2, "1 2 3 4 5").call).to eq("3 4 5 1 2")  
  end

  it "given array length 100_001 , must raise ArgumentError" do
    expect { LeftRotation.new(100_001, 2) }.to raise_error(ArgumentError)
  end

  it "given array length 0, must raise ArgumentError" do
    expect { LeftRotation.new(0, 2) }.to raise_error(ArgumentError)
  end

  it "given left rotation great than array length, must raise ArgumentError" do
    expect { LeftRotation.new(5, 6) }.to raise_error(ArgumentError)
  end

  it "given left rotation 0, must raise ArgumentError" do
    expect { LeftRotation.new(5, 0) }.to raise_error(ArgumentError)
  end

end