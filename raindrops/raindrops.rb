module BookKeeping
  VERSION = 2
end

class Raindrops

  def self.convert(number)
    factors = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

    raindrops = []

    dividendo = number
    divisor = 2

    while divisor <= dividendo

      if dividendo % divisor == 0
        raindrops << factors[divisor] if factors.has_key? divisor
        
        dividendo = dividendo / divisor
      else
        divisor += 1
      end

    end

    return number.to_s if raindrops.empty?

    raindrops.uniq.join('') 

  end

end