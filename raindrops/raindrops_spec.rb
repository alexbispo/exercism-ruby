#!/usr/bin/env ruby
require_relative 'raindrops'

RSpec.describe Raindrops do

  it "1" do 
    expect(Raindrops.convert(1)).to eq('1')
  end

  it "3" do 
    expect(Raindrops.convert(3)).to eq('Pling')
  end

  it "5" do 
    expect(Raindrops.convert(5)).to eq('Plang')
  end

  it "7" do 
    expect(Raindrops.convert(7)).to eq('Plong')
  end

  it "6" do 
    expect(Raindrops.convert(6)).to eq('Pling')
  end 

  it "9" do 
    expect(Raindrops.convert(9)).to eq('Pling')
  end

  it "10" do 
    expect(Raindrops.convert(10)).to eq('Plang')
  end

  it "14" do 
    expect(Raindrops.convert(14)).to eq('Plong')
  end                    

  it "15" do 
    expect(Raindrops.convert(15)).to eq('PlingPlang')
  end

  it "21" do 
    expect(Raindrops.convert(21)).to eq('PlingPlong')
  end

  it "25" do 
    expect(Raindrops.convert(25)).to eq('Plang')
  end

  it "35" do 
    expect(Raindrops.convert(35)).to eq('PlangPlong')
  end

  it "49" do 
    expect(Raindrops.convert(49)).to eq('Plong')
  end

  it "52" do 
    expect(Raindrops.convert(52)).to eq('52')
  end

  it "105" do 
    expect(Raindrops.convert(105)).to eq('PlingPlangPlong')
  end

  it "check BookKeeping VERSION" do
    expect(BookKeeping::VERSION).to eq(2)
  end

end
