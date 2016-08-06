class Complement 

  def self.of_dna(nucleotide)
    
    rna_transcription_table = {:G => 'C', :C => 'G', :T => 'A', :A => 'U'}
    
    transcription = nucleotide.chars.map do |char|
      item = char.to_sym

      return '' if not rna_transcription_table.has_key? item
      
      rna_transcription_table[item]
    end

    transcription.join('')

  end

end