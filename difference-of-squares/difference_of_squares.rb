module BookKeeping

	VERSION = 3

end

class Squares

	def initialize(naturals_number)
		@naturals_number = naturals_number
	end 

	def square_of_sum
		(0..@naturals_number).inject(:+) ** 2
	end

	def sum_of_squares 
		(0..@naturals_number).map { |n| n ** 2 }.inject(:+)
	end

	def difference
		square_of_sum - sum_of_squares
	end

end