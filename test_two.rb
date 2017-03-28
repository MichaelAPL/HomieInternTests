# Given an array of randomly generated cars, return all Car objects  made between 1982 and 1993.

require_relative 'lib/data_generator'

class TestTwo

  data_generator = DataGenerator.new
  cars_array = data_generator.cars

  puts 'Cars made between 1982 and 1993:'
  cars_array.each do |car|
    if car.year >= 1982 and car.year <= 1993
      puts 'car manufacturer: ' + "#{car.manufacturer}"
      puts 'car model: ' + "#{car.model}"
      puts 'car year: ' + "#{car.year}"
      puts ''
    end
  end
  
end
