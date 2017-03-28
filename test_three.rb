# Given an array of randomly generated cars, perform the following operations:
#
# * Remove any duplicate Car objects.
# * Sort the remaining Cars by price.
# * Genarate an array of strings in the format: "<manufacturer>: <model> - <formatted price>"
#     - Car.price is an instance of a Money class https://github.com/RubyMoney/money
#
# Example: ["Dodge: Durango - $1237.45", "Ford: Bronco - $4825.33", ...]

require_relative 'lib/data_generator'

class TestThree
  data_generator = DataGenerator.new
  cars_array = data_generator.cars
  string_array = []

  cars_array = cars_array.uniq{ |x| x.model}
  cars_array = cars_array.sort{ |x, y| x.price.cents <=> y.price.cents }

  cars_array.each do |car|
    string = "#{car.manufacturer}: #{car.model} - $#{(car.price.cents.to_i/100.0).to_s}"
    string_array << string
  end

  puts string_array
end
