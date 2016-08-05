class Gigasecond
    
    GIGASECOND = 10**9

    def self.from(datetime)
        Time.at(datetime.to_i + GIGASECOND).getutc
    end

end