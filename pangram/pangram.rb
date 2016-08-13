module BookKeeping 
	VERSION = 2
end

module Pangram 

	def self.is_pangram?(setence)
		('a'..'z').select { |letter| !setence.downcase.include? letter }.empty?
	end

end