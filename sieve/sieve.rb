class Sieve 
	def initialize(limit) 
		@range = (2..limit)
	end

	def primes
		@range.to_a - @range.flat_map { |i| multiples_of(i) }
	end

	def multiples_of(number)
		((number * 2)..@range.last).step(number).to_a
	end
end