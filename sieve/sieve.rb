class Sieve 

	def initialize(limit) 
		@range = (2..limit)
	end

	def primes
		return [] if @range.last < 2

		multiples = []

		@range.each do |n|
				next if multiples.include? n

			(n+1..@range.last).each do |i|
				multiples << i if i % n == 0
			end

		end

		@range.to_a - multiples
	end

end