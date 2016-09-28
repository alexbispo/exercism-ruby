#!/usr/bin/env ruby

class LeftRotation

  def initialize(number_of_integers, number_of_rotations, initial_state)
    if number_of_integers < 1 or number_of_integers > 100_000
      raise ArgumentError, "the number of integers must be between 1 and 100_000"
    end
    if number_of_rotations < 1 or number_of_rotations > number_of_integers
      raise ArgumentError, "number of rotations must be between 1 and the number of integers"
    end

    @integers = initial_state.split(" ").map { |e| e.to_i }
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
  number_of_integers, number_of_rotations = gets.chomp.split(" ")
  state = gets.chomp
  puts LeftRotation.new(number_of_integers.to_i, number_of_rotations.to_i, state).call
end