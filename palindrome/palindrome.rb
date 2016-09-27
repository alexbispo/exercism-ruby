#!/usr/bin/env ruby

class Palindrome 

	def initialize(number_of_test_cases, test_cases)
		if number_of_test_cases < 1 or number_of_test_cases > 20
			raise ArgumentError, "number of test cases must be between 1 and 20"
		end

		@number_of_test_cases = number_of_test_cases
		@test_cases = test_cases
	end

	def index
		result = []
		limit = @number_of_test_cases -1
		for i in (0..limit)
			str = @test_cases[i]
			cp = str.clone
			if cp.reverse == cp
				result << -1
				next
			end
			
			inner_limit = cp.length - 1
			for j in (0..inner_limit) 
				str.slice!(j)
				if str.reverse == str
					result << j
					break
				end
				str = cp.clone
			end
		end
		result
	end
end

if __FILE__ == $0
	t = gets.chomp.to_i
	test_cases = []
	for i in (1..t)
		test_cases << gets.chomp
	end
	output = Palindrome.new(t, test_cases).index
	output.each { |e| puts e }
end