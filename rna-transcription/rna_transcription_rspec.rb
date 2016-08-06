require_relative 'rna_transcription'

RSpec.describe Complement do

  it "the rna complement of cytosine is guanine" do 
    expect(Complement.of_dna('C')).to eq('G')
  end

  it "the rna complement of guanine is cytosine" do 
    expect(Complement.of_dna('G')).to eq('C')
  end

  it "the rna complement of thymine is adenine" do 
    expect(Complement.of_dna('T')).to eq('A')
  end

  it "the rna complement of adenine is uracil" do 
    expect(Complement.of_dna('A')).to eq('U')
  end

  it "the rna complement" do 
    expect(Complement.of_dna('ACGTGGTCTTAA')).to eq('UGCACCAGAAUU')
  end

  it "the dna correctly handles invalid input" do 
    expect(Complement.of_dna('U')).to eq('')
  end

  it "the dna correctly handles completely invalid input" do 
    expect(Complement.of_dna('XXX')).to eq('')
  end

  it "the dna correctly handles partially invalid input" do 
    expect(Complement.of_dna('ACGTXXXCTTAA')).to eq('')
  end

end