#!/usr/bin/env ruby

class LeftRotation

	def initialize(array_length, number_of_rotations, initial_state)
		if array_length < 1 or array_length > 100_000
			raise ArgumentError, "array_length must be between 1 and 100_000"
		end
		if number_of_rotations < 1 or number_of_rotations > array_length
			raise ArgumentError, "number_of_rotations must be between 1 and array_length"
		end

		@integers = initial_state.split(" ").each { |e| e.to_i }
		@number_of_rotations = number_of_rotations
	end

	def call 
		for i in (1..@number_of_rotations) 
			move = @integers.shift
			@integers << move
		end
		@integers.join(" ")
	end

end

if __FILE__ == $0
	n, d = gets.chomp.split(" ")
	state = gets.chomp
	puts LeftRotation.new(n.to_i, d.to_i, state).call
end