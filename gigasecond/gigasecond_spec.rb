require 'date'
require 'time'
require_relative 'gigasecond'
require_relative 'book_keeping'

# Test data version: 9b8b80c

  
  RSpec.describe Gigasecond do
    
    it 'calculate gigaseconds from date 2011_04_25' do
      result = Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
      expect(result).to eq(Time.utc(2043, 1, 1, 1, 46, 40)) 
    end

    it 'calculate gigaseconds from date 1977_06_13' do
      result = Gigasecond.from(Time.utc(1977, 6, 13, 0, 0, 0))
      expect(result).to eq(Time.utc(2009, 2, 19, 1, 46, 40)) 
    end

    it 'calculate gigaseconds from date 1959_07_19' do
      result = Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))
      expect(result).to eq(Time.utc(1991, 3, 27, 1, 46, 40)) 
    end

    it 'calculate gigaseconds from full_time_specified' do
      result = Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))
      expect(result).to eq(Time.utc(2046, 10, 2, 23, 46, 40)) 
    end

    it 'calculate gigaseconds from time_with_day_roll_over' do
      result = Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59))
      expect(result).to eq(Time.utc(2046, 10, 3, 1, 46, 39)) 
    end

    it 'calculate gigaseconds from Alex\'s birthday' do
      result = Gigasecond.from(Time.utc(1988, 11, 21, 10, 32, 59))
      expect(result).to eq(Time.utc(2020, 7, 30, 12, 19, 39)) 
    end

    it 'calculate gigaseconds from Adriano\'s birthday' do
      result = Gigasecond.from(Time.utc(1982, 7, 5, 7, 30, 0))
      expect(result).to eq(Time.utc(2014, 3, 13, 9, 16, 40)) 
    end


    it 'check BookKeeping VERSION' do
      expect(BookKeeping::VERSION).to eq(3)
    end
  
  end
  