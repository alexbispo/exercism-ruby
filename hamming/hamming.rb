module Hamming
    
    def self.compute(a, b)
        raise ArgumentError if a.length != b.length

        return 0 if a == b

        count = 0

        for i in (0...a.length)
            count += 1 if a.chars[i] != b.chars[i]
        end

        count

    end
    
end